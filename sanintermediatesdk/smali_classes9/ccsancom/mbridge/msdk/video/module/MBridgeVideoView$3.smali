.class final Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$3;
.super Ljava/lang/Object;
.source "MBridgeVideoView.java"

# interfaces
.implements Lccsanandroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;


# direct methods
.method constructor <init>(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)V
    .locals 0

    .line 291
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Lccsanandroid/view/View;)V
    .locals 2

    .line 294
    const/4 p1, 0x2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 295
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    invoke-static {v0}, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->c(Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;)Lccsancom/mbridge/msdk/playercommon/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const/4 p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 298
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView$3;->a:Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;

    iget-object v0, v0, Lccsancom/mbridge/msdk/video/module/MBridgeVideoView;->e:Lccsancom/mbridge/msdk/video/module/a/a;

    const/4 v1, 0x5

    invoke-interface {v0, v1, p1}, Lccsancom/mbridge/msdk/video/module/a/a;->a(ILjava/lang/Object;)V

    .line 299
    return-void
.end method
