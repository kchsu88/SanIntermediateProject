.class Lccsancom/san/mediation/loader/MintegralRewardedAd$1;
.super Ljava/lang/Object;
.source "MintegralRewardedAd.java"

# interfaces
.implements Lccsancom/mbridge/msdk/out/RewardVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/MintegralRewardedAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

.field final synthetic val$mbRewardVideoHandler:Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/MintegralRewardedAd;Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/MintegralRewardedAd;

    .line 30
    iput-object p1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iput-object p2, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->val$mbRewardVideoHandler:Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClose(Lccsancom/mbridge/msdk/out/MBridgeIds;Lccsancom/mbridge/msdk/out/RewardInfo;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "rewardInfo"    # Lccsancom/mbridge/msdk/out/RewardInfo;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdClose spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 60
    return-void
.end method

.method public onAdShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdShow spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 54
    return-void
.end method

.method public onEndcardShow(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onEndcardShow spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public onLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onLoadSuccess spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public onShowFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "s"    # Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onShowFail spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 66
    return-void
.end method

.method public onVideoAdClicked(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onVideoAdClicked spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 72
    return-void
.end method

.method public onVideoComplete(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onVideoComplete spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_COMPLETE:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 78
    return-void
.end method

.method public onVideoLoadFail(Lccsancom/mbridge/msdk/out/MBridgeIds;Ljava/lang/String;)V
    .locals 2
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;
    .param p2, "s"    # Ljava/lang/String;

    .line 45
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->access$002(Lccsancom/san/mediation/loader/MintegralRewardedAd;Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;)Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    .line 46
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    invoke-static {p2}, Lccsancom/san/mediation/loader/BaseMintegralAd;->parseToSanError(Ljava/lang/String;)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdFailedToLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public onVideoLoadSuccess(Lccsancom/mbridge/msdk/out/MBridgeIds;)V
    .locals 4
    .param p1, "mBridgeIds"    # Lccsancom/mbridge/msdk/out/MBridgeIds;

    .line 33
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->val$mbRewardVideoHandler:Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->access$002(Lccsancom/san/mediation/loader/MintegralRewardedAd;Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;)Lccsancom/mbridge/msdk/out/MBRewardVideoHandler;

    .line 34
    iget-object v0, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    new-instance v1, Lccsancom/san/ads/base/FullScreenAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/FullScreenAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/MintegralRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/MintegralRewardedAd$1;->this$0:Lccsancom/san/mediation/loader/MintegralRewardedAd;

    invoke-virtual {v1}, Lccsancom/san/mediation/loader/MintegralRewardedAd;->getLoadDurationLog()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mintegral.Rewarded"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    return-void
.end method
