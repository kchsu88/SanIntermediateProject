.class Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/db/IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/rewarded/MadsRewardedAd;->innerLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;


# direct methods
.method constructor <init>(Lccsancom/san/mads/rewarded/MadsRewardedAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 1
    const-string v0, "Mads.RewardedAd"

    const-string v1, "#onRewardedVideoAdClose"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, v1}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->access$500(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public addDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.RewardedAd"

    const-string v1, "#onUserEarnedReward"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_COMPLETE:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, v1}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->access$600(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 1
    const-string v0, "Mads.RewardedAd"

    const-string v1, "#onRewardedVideoAdShown"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, v1}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->access$200(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public getDownloadingList(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onRewardedVideoAdFailed ,error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.RewardedAd"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    invoke-static {v0, p1}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->access$100(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.RewardedAd"

    const-string v1, "#onRewardedVideoAdClicked"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, v1}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->access$400(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onRewardedVideoAdShowError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.RewardedAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {p1, v0}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->access$300(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 4

    .line 1
    const-string v0, "Mads.RewardedAd"

    const-string v1, "#onRewardedVideoAdLoaded"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    new-instance v1, Lccsancom/san/ads/base/FullScreenAdWrapper;

    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;->addDownloadListener:Lccsancom/san/mads/rewarded/MadsRewardedAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/FullScreenAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-static {v0, v1}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->access$000(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/AdWrapper;)V

    return-void
.end method
