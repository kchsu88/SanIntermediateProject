.class public final Lccsancom/mbridge/msdk/video/bt/module/b/a;
.super Ljava/lang/Object;
.source "DecoratorRewardVideoListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;


# instance fields
.field private a:Lccsancom/mbridge/msdk/video/bt/module/b/g;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/video/bt/module/b/g;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    .line 13
    return-void
.end method


# virtual methods
.method public final onAdClose(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onAdClose(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V

    .line 27
    :cond_0
    return-void
.end method

.method public final onAdCloseWithIVReward(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    .locals 0

    .line 53
    return-void
.end method

.method public final onAdShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 17
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 18
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onAdShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 20
    :cond_0
    return-void
.end method

.method public final onEndcardShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onEndcardShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 61
    :cond_0
    return-void
.end method

.method public final onLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 82
    :cond_0
    return-void
.end method

.method public final onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 32
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 34
    :cond_0
    return-void
.end method

.method public final onVideoAdClicked(ZLccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 38
    iget-object p1, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz p1, :cond_0

    .line 39
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onVideoAdClicked(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 41
    :cond_0
    return-void
.end method

.method public final onVideoComplete(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onVideoComplete(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 48
    :cond_0
    return-void
.end method

.method public final onVideoLoadFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onVideoLoadFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 68
    :cond_0
    return-void
.end method

.method public final onVideoLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/video/bt/module/b/a;->a:Lccsancom/mbridge/msdk/video/bt/module/b/g;

    if-eqz v0, :cond_0

    .line 73
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/video/bt/module/b/g;->onVideoLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 75
    :cond_0
    return-void
.end method
