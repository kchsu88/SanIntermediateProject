.class Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;
.super Ljava/lang/Object;
.source "MintegralInterstitialVideoAd.java"

# interfaces
.implements Lccsancom/mbridge/msdk/interstitialvideo/out/InterstitialVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

.field final synthetic val$interstitialHandler:Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    .line 39
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iput-object p2, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->val$interstitialHandler:Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "rewardInfo"    # Lccsancom/mbridge/msdk/out/RewardInfo;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdClose spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 69
    return-void
.end method

.method public onAdCloseWithIVReward(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "rewardInfo"    # Lccsancom/mbridge/msdk/out/RewardInfo;

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdCloseWithIVReward spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public onAdShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdShow spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 63
    return-void
.end method

.method public onEndcardShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onEndcardShow spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public onLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLoadSuccess spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "s"    # Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onShowFail spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 75
    return-void
.end method

.method public onVideoAdClicked(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onVideoAdClicked spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 81
    return-void
.end method

.method public onVideoComplete(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onVideoComplete spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_COMPLETE:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 87
    return-void
.end method

.method public onVideoLoadFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "s"    # Ljava/lang/String;

    .line 54
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->access$002(Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;)Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    .line 55
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    invoke-static {p2}, Lccsancom/san/mediation/loader/BaseMintegralAd;->parseToSanError(Ljava/lang/String;)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onInterstitialLoadFail spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public onVideoLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 4
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 47
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->val$interstitialHandler:Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->access$002(Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;)Lccsancom/mbridge/msdk/interstitialvideo/out/MBInterstitialVideoHandler;

    .line 48
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    new-instance v1, Lccsancom/san/ads/base/FullScreenAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/FullScreenAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralInterstitialVideoAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method
