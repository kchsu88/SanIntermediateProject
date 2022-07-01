.class public Lccsancom/san/mads/rewarded/MadsRewardedAd;
.super Lccsancom/san/mads/base/BaseMadsAd;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/IFullScreenAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mads.RewardedAd"


# instance fields
.field private mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/mads/base/BaseMadsAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/AdWrapper;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    return-void
.end method

.method static synthetic access$100(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method static synthetic access$500(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method static synthetic access$600(Lccsancom/san/mads/rewarded/MadsRewardedAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedList()V

    :cond_0
    return-void
.end method

.method public getAdData()Lccsansan/dt/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedCount()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public innerLoad()V
    .locals 3

    .line 1
    invoke-super {p0}, Lccsancom/san/ads/base/SANBaseAd;->innerLoad()V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lccsancom/san/mads/rewarded/removeDownloadListener;

    iget-object v1, p0, Lccsancom/san/mads/base/BaseMadsAd;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/san/mads/rewarded/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    iput-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    .line 4
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    new-instance v1, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsancom/san/mads/rewarded/MadsRewardedAd$removeDownloadListener;-><init>(Lccsancom/san/mads/rewarded/MadsRewardedAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/rewarded/removeDownloadListener;->unifiedDownload(Lccsansan/db/IncentiveDownloadUtils;)V

    .line 47
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl()V

    .line 48
    const-string v0, "Mads.RewardedAd"

    const-string v1, "#innerLoad()"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAdReady()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public show()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#show() isAdReady = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->isAdReady()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSpotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/base/SANBaseAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.RewardedAd"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/mads/rewarded/MadsRewardedAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/rewarded/MadsRewardedAd;->mRewardedLoader:Lccsancom/san/mads/rewarded/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/rewarded/removeDownloadListener;->unifiedDownload()V

    :cond_0
    return-void
.end method
