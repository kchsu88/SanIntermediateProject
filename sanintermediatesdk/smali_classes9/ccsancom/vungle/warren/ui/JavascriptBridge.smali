.class public Lccsancom/vungle/warren/ui/JavascriptBridge;
.super Ljava/lang/Object;
.source "JavascriptBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;
    }
.end annotation


# instance fields
.field private handler:Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;


# direct methods
.method public constructor <init>(Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;)V
    .locals 0
    .param p1, "mraidHandler"    # Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lccsancom/vungle/warren/ui/JavascriptBridge;->handler:Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;

    .line 16
    return-void
.end method


# virtual methods
.method public performAction(Ljava/lang/String;)V
    .locals 2
    .param p1, "action"    # Ljava/lang/String;
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "actionClicked("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "JavascriptBridge"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v0, p0, Lccsancom/vungle/warren/ui/JavascriptBridge;->handler:Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;

    invoke-interface {v0, p1}, Lccsancom/vungle/warren/ui/JavascriptBridge$MraidHandler;->onMraidAction(Ljava/lang/String;)V

    .line 22
    return-void
.end method
