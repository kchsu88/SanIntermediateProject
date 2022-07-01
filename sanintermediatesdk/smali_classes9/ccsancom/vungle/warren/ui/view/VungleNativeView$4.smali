.class Lccsancom/vungle/warren/ui/view/VungleNativeView$4;
.super Lccsanandroid/content/BroadcastReceiver;
.source "VungleNativeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/vungle/warren/ui/view/VungleNativeView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/VungleNativeView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/vungle/warren/ui/view/VungleNativeView;

    .line 341
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$4;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-direct {p0}, Lccsanandroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "intent"    # Lccsanandroid/content/Intent;

    .line 344
    const-string v0, "command"

    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "command":Ljava/lang/String;
    const-string v1, "stopAll"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 346
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/VungleNativeView$4;->this$0:Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v1, v2}, Lccsancom/vungle/warren/ui/view/VungleNativeView;->finishDisplayingAdInternal(Z)V

    goto :goto_0

    .line 348
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lccsancom/vungle/warren/ui/view/VungleNativeView;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#onAttachedToWindow"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    const-string v2, "Receiving Invalid Broadcast: %1$s"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/vungle/warren/VungleLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    :goto_0
    return-void
.end method
