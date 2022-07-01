.class public Lccsancom/san/mads/banner/MadsBannerAd;
.super Lccsancom/san/mads/base/BaseMadsAd;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/IBannerAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "Mads.BannerAd"


# instance fields
.field private mAdSize:Lccsancom/san/ads/AdSize;

.field private mAdView:Lccsancom/san/mads/banner/getDownloadingList;

.field protected mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/mads/base/BaseMadsAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 2
    sget-object p1, Lccsancom/san/ads/AdSize;->BANNER:Lccsancom/san/ads/AdSize;

    iput-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdSize:Lccsancom/san/ads/AdSize;

    return-void
.end method

.method static synthetic access$002(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/mads/banner/getDownloadingList;)Lccsancom/san/mads/banner/getDownloadingList;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdView:Lccsancom/san/mads/banner/getDownloadingList;

    return-object p1
.end method

.method static synthetic access$100(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/base/AdWrapper;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    return-void
.end method

.method static synthetic access$200(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lccsancom/san/ads/base/SANBaseAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method


# virtual methods
.method public getAdData()Lccsansan/dt/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

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
    sget-object v0, Lccsancom/san/ads/AdFormat;->BANNER:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdSize:Lccsancom/san/ads/AdSize;

    return-object v0
.end method

.method public getAdView()Lccsanandroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdView:Lccsancom/san/mads/banner/getDownloadingList;

    return-object v0
.end method

.method public innerLoad()V
    .locals 3

    .line 1
    invoke-super {p0}, Lccsancom/san/ads/base/SANBaseAd;->innerLoad()V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/san/mads/banner/MadsBannerAd;->setAdSize(Lccsancom/san/ads/AdSize;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lccsancom/san/mads/banner/addDownloadListener;

    iget-object v1, p0, Lccsancom/san/mads/base/BaseMadsAd;->mContext:Lccsanandroid/content/Context;

    invoke-virtual {p0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/san/mads/banner/addDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    iput-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

    .line 8
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

    iget-object v1, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdSize:Lccsancom/san/ads/AdSize;

    invoke-virtual {v0, v1}, Lccsancom/san/mads/banner/addDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdSize;)V

    .line 9
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

    new-instance v1, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;

    invoke-direct {v1, p0}, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;-><init>(Lccsancom/san/mads/banner/MadsBannerAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/banner/addDownloadListener;->removeDownloadListener(Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;)V

    .line 36
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl()V

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#innerLoad() size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdSize:Lccsancom/san/ads/AdSize;

    invoke-virtual {v1}, Lccsancom/san/ads/AdSize;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdSize:Lccsancom/san/ads/AdSize;

    invoke-virtual {v1}, Lccsancom/san/ads/AdSize;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.BannerAd"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isAdReady()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingList()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    const-string v0, "Mads.BannerAd"

    const-string v2, "This Ad is Expired."

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdView:Lccsancom/san/mads/banner/getDownloadingList;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdView:Lccsancom/san/mads/banner/getDownloadingList;

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mBannerLoader:Lccsancom/san/mads/banner/addDownloadListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsancom/san/mads/banner/addDownloadListener;->unifiedDownload()V

    :cond_0
    return-void
.end method

.method public setAdSize(Lccsancom/san/ads/AdSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd;->mAdSize:Lccsancom/san/ads/AdSize;

    return-void
.end method
