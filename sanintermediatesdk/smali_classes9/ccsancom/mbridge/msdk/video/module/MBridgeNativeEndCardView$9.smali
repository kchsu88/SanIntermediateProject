.class final Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;
.super Ljava/lang/Object;
.source "MBridgeNativeEndCardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 480
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->d(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v2}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->e(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v3}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->f(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v4}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->g(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 481
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/widget/RelativeLayout;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->i(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->startAnimation(Lccsanandroid/view/animation/Animation;)V

    .line 482
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->h(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/widget/RelativeLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/RelativeLayout;->setVisibility(I)V

    .line 483
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->j(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 484
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView$9;->a:Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;->a(Lccsancom/mbridge/msdk/video/module/MBridgeNativeEndCardView;)Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 486
    :cond_0
    return-void
.end method
