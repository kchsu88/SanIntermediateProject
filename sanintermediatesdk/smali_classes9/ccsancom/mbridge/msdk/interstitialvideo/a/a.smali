.class public final Lccsancom/mbridge/msdk/interstitialvideo/a/a;
.super Ljava/lang/Object;
.source "DecoratorInterstitialListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/videocommon/listener/InterVideoOutListener;


# instance fields
.field private a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    .line 14
    return-void
.end method


# virtual methods
.method public final onAdClose(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 26
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onAdClose(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V

    .line 28
    :cond_0
    return-void
.end method

.method public final onAdCloseWithIVReward(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    .locals 1

    .line 53
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onAdCloseWithIVReward(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V

    .line 56
    :cond_0
    return-void
.end method

.method public final onAdShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 19
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onAdShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 21
    :cond_0
    return-void
.end method

.method public final onEndcardShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onEndcardShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 63
    :cond_0
    return-void
.end method

.method public final onLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 82
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 84
    :cond_0
    return-void
.end method

.method public final onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 1

    .line 32
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 35
    :cond_0
    return-void
.end method

.method public final onVideoAdClicked(ZLccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 0

    .line 39
    iget-object p1, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz p1, :cond_0

    .line 40
    invoke-interface {p1, p2}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoAdClicked(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 42
    :cond_0
    return-void
.end method

.method public final onVideoComplete(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoComplete(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 49
    :cond_0
    return-void
.end method

.method public final onVideoLoadFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoLoadFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method

.method public final onVideoLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/interstitialvideo/a/a;->a:Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;

    if-eqz v0, :cond_0

    .line 75
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;->onVideoLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V

    .line 77
    :cond_0
    return-void
.end method
