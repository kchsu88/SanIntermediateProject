.class final Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;
.super Lccsancom/mbridge/msdk/widget/a;
.source "MBMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/nativex/view/MBMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V
    .locals 0

    .line 473
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-direct {p0}, Lccsancom/mbridge/msdk/widget/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lccsanandroid/view/View;)V
    .locals 3

    .line 477
    const-string v0, "MBMediaView"

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 478
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->d(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 481
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showSoundIndicator(Z)V

    .line 482
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object v1

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->showProgressView(Z)V

    .line 484
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->f(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->g(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_4

    .line 485
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->halfLoadingViewisVisible()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->e(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 489
    :cond_2
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->h(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    goto :goto_1

    .line 486
    :cond_3
    :goto_0
    const-string p1, "is loading or no playing return;"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void

    .line 490
    :cond_4
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->c(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 491
    const-string p1, "fullScreenShowUI"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->i(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)V

    .line 493
    return-void

    .line 495
    :cond_5
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 496
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->j(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;)Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/content/Context;)V

    goto :goto_1

    .line 498
    :cond_6
    iget-object v1, p0, Lccsancom/mbridge/msdk/nativex/view/MBMediaView$10;->a:Lccsancom/mbridge/msdk/nativex/view/MBMediaView;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {v1, p1}, Lccsancom/mbridge/msdk/nativex/view/MBMediaView;->a(Lccsancom/mbridge/msdk/nativex/view/MBMediaView;Lccsanandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    :goto_1
    goto :goto_2

    .line 501
    :catchall_0
    move-exception p1

    .line 502
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 504
    :goto_2
    return-void
.end method
