.class public Lccsancom/san/ads/SANBanner;
.super Lccsancom/san/ads/core/SANAd;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/IBannerAd;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/SANBanner$AutoRefreshHandler;
    }
.end annotation


# instance fields
.field private deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

.field private final getDownloadingCount:Lccsanandroid/os/Handler;

.field private final pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

.field private resume:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/ads/SANBanner;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/ads/core/SANAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    .line 3
    sget-object p2, Lccsancom/san/ads/AdSize;->BANNER:Lccsancom/san/ads/AdSize;

    iput-object p2, p0, Lccsancom/san/ads/core/SANAd;->removeDownloadListener:Lccsancom/san/ads/AdSize;

    .line 4
    new-instance p2, Lccsancom/san/ads/SANBanner$AutoRefreshHandler;

    invoke-direct {p2, p0}, Lccsancom/san/ads/SANBanner$AutoRefreshHandler;-><init>(Lccsancom/san/ads/SANBanner;)V

    iput-object p2, p0, Lccsancom/san/ads/SANBanner;->getDownloadingCount:Lccsanandroid/os/Handler;

    .line 5
    new-instance p2, Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    invoke-direct {p2, p1}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    .line 6
    new-instance p1, Lccsancom/san/ads/SANBanner$1;

    invoke-direct {p1, p0}, Lccsancom/san/ads/SANBanner$1;-><init>(Lccsancom/san/ads/SANBanner;)V

    invoke-virtual {p2, p1}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->setBannerWindowStatusListener(Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/ads/SANBanner;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lccsancom/san/ads/core/SANAd;->addDownloadListener(Z)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method private addDownloadListener()V
    .locals 5

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "banner_refresh_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-wide/16 v3, 0x7530

    const-string v1, "banner_refresh_interval"

    invoke-static {v0, v1, v3, v4}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#triggerAutoRefresh refreshInterval = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SANBanner"

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v3, p0, Lccsancom/san/ads/SANBanner;->getDownloadingCount:Lccsanandroid/os/Handler;

    invoke-virtual {v3, v2}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object v3, p0, Lccsancom/san/ads/SANBanner;->getDownloadingCount:Lccsanandroid/os/Handler;

    invoke-virtual {v3, v2, v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic deleteDownItem(Lccsancom/san/ads/SANBanner;)Lccsancom/san/mads/banner/IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    return-object p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/ads/SANBanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/SANBanner;->removeDownloadListener()V

    return-void
.end method

.method private removeDownloadListener()V
    .locals 2

    .line 2
    const-string v0, "SANBanner"

    const-string v1, "#stopAutoRefresh"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/ads/SANBanner;->getDownloadingCount:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/ads/SANBanner;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/SANBanner;->addDownloadListener()V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method


# virtual methods
.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/AdFormat;->BANNER:Lccsancom/san/ads/AdFormat;

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd;->removeDownloadListener:Lccsancom/san/ads/AdSize;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/AdFormat;->setAdSize(Lccsancom/san/ads/AdSize;)Lccsancom/san/ads/AdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->removeDownloadListener:Lccsancom/san/ads/AdSize;

    return-object v0
.end method

.method public getAdView()Lccsanandroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    invoke-virtual {v0, v1}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/ads/base/AdWrapper;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->unifiedDownload()Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    .line 5
    instance-of v1, v0, Lccsancom/san/ads/base/BannerAdWrapper;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->isAdReady()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils()Lccsancom/san/ads/base/IAdListener$AdActionListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V

    .line 7
    iget-object v1, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    check-cast v0, Lccsancom/san/ads/base/BannerAdWrapper;

    invoke-virtual {v1, v0}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->setBannerAdWrapper(Lccsancom/san/ads/base/BannerAdWrapper;)V

    .line 9
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/SANBanner;->pause:Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    return-object v0
.end method

.method public removeDownloadListener(Z)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
    .locals 1

    if-nez p1, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/SANBanner;->resume:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lccsancom/san/ads/SANBanner$2;

    invoke-direct {v0, p0}, Lccsancom/san/ads/SANBanner$2;-><init>(Lccsancom/san/ads/SANBanner;)V

    iput-object v0, p0, Lccsancom/san/ads/SANBanner;->resume:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    :cond_0
    if-eqz p1, :cond_1

    .line 17
    iget-object v0, p0, Lccsancom/san/ads/SANBanner;->deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-nez v0, :cond_1

    .line 18
    new-instance v0, Lccsancom/san/ads/SANBanner$3;

    invoke-direct {v0, p0}, Lccsancom/san/ads/SANBanner$3;-><init>(Lccsancom/san/ads/SANBanner;)V

    iput-object v0, p0, Lccsancom/san/ads/SANBanner;->deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    :cond_1
    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, Lccsancom/san/ads/SANBanner;->deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lccsancom/san/ads/SANBanner;->resume:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    :goto_0
    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->deleteDownItem:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    return-object p1
.end method

.method public setAdSize(Lccsancom/san/ads/AdSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->removeDownloadListener:Lccsancom/san/ads/AdSize;

    return-void
.end method
