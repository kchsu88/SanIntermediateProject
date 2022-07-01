.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V
    .locals 0

    .line 435
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 439
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->pause()V

    .line 440
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->c(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsanandroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->d(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    .line 442
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->e(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    .line 443
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/nativex/listener/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 444
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->b(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsancom/mbridge/msdk/nativex/listener/a;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/nativex/listener/a;->c()V

    .line 446
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$2;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->a(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    goto :goto_0

    .line 447
    :catchall_0
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaViewPlayerView"

    invoke-static {v1, v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 450
    :goto_0
    return-void
.end method
