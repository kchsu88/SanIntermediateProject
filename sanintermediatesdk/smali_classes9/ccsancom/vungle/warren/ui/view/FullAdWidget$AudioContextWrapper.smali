.class public Lccsancom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;
.super Lccsanandroid/content/ContextWrapper;
.source "FullAdWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/view/FullAdWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AudioContextWrapper"
.end annotation


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0
    .param p1, "base"    # Lccsanandroid/content/Context;

    .line 528
    invoke-direct {p0, p1}, Lccsanandroid/content/ContextWrapper;-><init>(Lccsanandroid/content/Context;)V

    .line 529
    return-void
.end method


# virtual methods
.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 533
    const-string v0, "audio"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 534
    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget$AudioContextWrapper;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 536
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/content/ContextWrapper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
