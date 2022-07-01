.class final Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$4;
.super Ljava/lang/Object;
.source "MediaViewPlayerView.java"

# interfaces
.implements Lccsanandroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->onClickPlayerView()V
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

    .line 511
    iput-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$4;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Lccsanandroid/view/animation/Animation;)V
    .locals 1

    .line 518
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$4;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->f(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)Lccsanandroid/widget/ImageView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object p1, p0, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView$4;->a:Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;

    invoke-static {p1}, Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;->g(Lccsancom/mbridge/msdk/nativex/view/MediaViewPlayerView;)V

    .line 520
    return-void
.end method

.method public final onAnimationRepeat(Lccsanandroid/view/animation/Animation;)V
    .locals 0

    .line 524
    return-void
.end method

.method public final onAnimationStart(Lccsanandroid/view/animation/Animation;)V
    .locals 0

    .line 514
    return-void
.end method
