.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;
.super Ljava/lang/Object;
.source "MBridgeVideoView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->setNotchPadding(IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;IIII)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iput p2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->a:I

    iput p3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->b:I

    iput p4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->c:I

    iput p5, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1284
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    iget v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->a:I

    iget v2, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->b:I

    iget v3, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->c:I

    iget v4, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->d:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsanandroid/widget/FrameLayout;->setPadding(IIII)V

    .line 1285
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v1}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->q(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/view/animation/AlphaAnimation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->startAnimation(Lccsanandroid/view/animation/Animation;)V

    .line 1286
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$7;->e:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->p(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsanandroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 1287
    return-void
.end method
