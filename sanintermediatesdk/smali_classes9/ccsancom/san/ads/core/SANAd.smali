.class public abstract Lccsancom/san/ads/core/SANAd;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Ljava/lang/String;

.field protected addDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deleteDownItem:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

.field private deleteDownList:Lccsanandroid/os/Handler;

.field public getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

.field private getDownloadedCount:Lccsancom/san/ads/base/IAdListener$AdActionListener;

.field public getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

.field protected getDownloadedRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdActionListener;

.field private getDownloadingCount:Lccsanandroid/content/Context;

.field protected getDownloadingList:Lccsancom/san/ads/AdFormat;

.field public getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field public removeDownloadListener:Lccsancom/san/ads/AdSize;

.field public unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->DEFAULT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 5
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingCount:Lccsanandroid/content/Context;

    .line 6
    invoke-direct {p0, p2}, Lccsancom/san/ads/core/SANAd;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 7
    iput-object p3, p0, Lccsancom/san/ads/core/SANAd;->addDownloadListener:Ljava/util/Map;

    .line 9
    new-instance p1, Lccsancom/san/ads/core/SANAd$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lccsancom/san/ads/core/SANAd$1;-><init>(Lccsancom/san/ads/core/SANAd;Lccsanandroid/os/Looper;)V

    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->deleteDownList:Lccsanandroid/os/Handler;

    return-void
.end method

.method private getDownloadingList(ILjava/lang/String;Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 61
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-interface {v0, p3}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    :cond_0
    nop

    .line 63
    const/4 p3, 0x0

    iput-object p3, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    .line 65
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    sget-object v1, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    if-eq v0, v1, :cond_1

    sget-object v1, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD_IN_TIME:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    if-ne v0, v1, :cond_3

    .line 66
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 67
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 68
    const-string v1, "failed_reason"

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    nop

    .line 70
    invoke-static {p3, p3, p1, v0}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsansan/bq/removeDownloadListener;Lccsancom/san/ads/base/AdWrapper;ILjava/util/HashMap;)V

    :cond_3
    return-void
.end method

.method static synthetic unifiedDownload(Lccsancom/san/ads/core/SANAd;)Lccsanandroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingCount:Lccsanandroid/content/Context;

    return-object p0
.end method

.method private unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 71
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingCount:Lccsanandroid/content/Context;

    const-string v1, "ad_ids_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1, p1, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    move-object v0, p1

    .line 81
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getRetargetAdId originAdId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " retargetAdId = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SANAd"

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsancom/san/ads/base/IAdListener$AdActionListener;
    .locals 1

    .line 15
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedCount:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    if-nez v0, :cond_0

    .line 16
    new-instance v0, Lccsancom/san/ads/core/SANAd$3;

    invoke-direct {v0, p0}, Lccsancom/san/ads/core/SANAd$3;-><init>(Lccsancom/san/ads/core/SANAd;)V

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedCount:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    .line 60
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedCount:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    return-object v0
.end method

.method public addDownloadListener(Z)V
    .locals 4

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingCount:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsancom/san/ads/core/AdLoaderManagerFactory;->getAdLoaderManager(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    const/4 v1, -0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 6
    new-array p1, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "%s failed with AdLoaderManager = null, pls check Context or placementId"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SANAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    sget-object p1, Lccsancom/san/ads/AdError;->PARAMETER_ERROR:Lccsancom/san/ads/AdError;

    const-string v0, "no loader manager"

    invoke-direct {p0, v1, v0, p1}, Lccsancom/san/ads/core/SANAd;->getDownloadingList(ILjava/lang/String;Lccsancom/san/ads/AdError;)V

    return-void

    .line 12
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingList:Lccsancom/san/ads/AdFormat;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->getAdFormat()Lccsancom/san/ads/AdFormat;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingList:Lccsancom/san/ads/AdFormat;

    .line 13
    :cond_2
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingList:Lccsancom/san/ads/AdFormat;

    if-nez v0, :cond_3

    .line 14
    new-array p1, v3, [Ljava/lang/Object;

    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    aput-object v0, p1, v2

    const-string v0, "%s failed with mAdFormat = null, pls check the DOC to use correct API"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "SANAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    sget-object p1, Lccsancom/san/ads/AdError;->PARAMETER_ERROR:Lccsancom/san/ads/AdError;

    const-string v0, "no ad format"

    invoke-direct {p0, v1, v0, p1}, Lccsancom/san/ads/core/SANAd;->getDownloadingList(ILjava/lang/String;Lccsancom/san/ads/AdError;)V

    return-void

    .line 21
    :cond_3
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->hasInitialized()Z

    move-result v0

    if-nez v0, :cond_4

    const-string p1, "message"

    .line 23
    invoke-static {p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 24
    new-instance p1, Lccsancom/san/ads/AdError;

    const/16 v0, 0x7d3

    const-string v2, "San SDK not initialized!"

    invoke-direct {p1, v0, v2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    const-string v0, "San SDK not initialized!"

    invoke-direct {p0, v1, v0, p1}, Lccsancom/san/ads/core/SANAd;->getDownloadingList(ILjava/lang/String;Lccsancom/san/ads/AdError;)V

    return-void

    .line 28
    :cond_4
    monitor-enter p0

    .line 29
    :try_start_0
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-virtual {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    iget-object p1, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-virtual {p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setLoadTiming(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)Lccsancom/san/ads/core/BaseAdLoaderManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "SANAd"

    const-string v0, "%s failed with multi load on same time, its loading , pls wait for callback"

    .line 31
    :try_start_1
    new-array v1, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, -0x1

    const-string v0, "is loading"

    .line 34
    :try_start_2
    sget-object v1, Lccsancom/san/ads/AdError;->LOAD_TOO_FREQUENTLY:Lccsancom/san/ads/AdError;

    invoke-direct {p0, p1, v0, v1}, Lccsancom/san/ads/core/SANAd;->getDownloadingList(ILjava/lang/String;Lccsancom/san/ads/AdError;)V

    .line 35
    monitor-exit p0

    return-void

    .line 38
    :cond_5
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-virtual {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->markLoading()Lccsancom/san/ads/core/BaseAdLoaderManager;

    .line 39
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    invoke-virtual {p0, p1}, Lccsancom/san/ads/core/SANAd;->unifiedDownload(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 41
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingCount:Lccsanandroid/content/Context;

    .line 2
    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    .line 3
    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedCount:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    .line 4
    iget-object v1, p0, Lccsancom/san/ads/core/SANAd;->deleteDownList:Lccsanandroid/os/Handler;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    nop

    .line 6
    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->deleteDownList:Lccsanandroid/os/Handler;

    .line 7
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    if-eqz v0, :cond_1

    .line 8
    const-string v1, "onDestroy"

    invoke-virtual {v0, v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->cancelAdLoad(Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/ads/core/AdLoaderManagerFactory;->removeAdLoaderManager(Ljava/lang/String;)V

    return-void
.end method

.method public fastLoadInTime(J)V
    .locals 3

    .line 1
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD_IN_TIME:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 2
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->getDownloadingList()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 4
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->deleteDownList:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1, p2}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method public abstract getAdFormat()Lccsancom/san/ads/AdFormat;
.end method

.method protected getDownloadingList()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/SANAd;->addDownloadListener(Z)V

    return-void
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->unifiedDownload()Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public load()V
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 2
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->getDownloadingList()V

    return-void
.end method

.method public preload()V
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->PRELOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 2
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->getDownloadingList()V

    return-void
.end method

.method public preloadAfterShown(J)V
    .locals 0

    .line 1
    sget-object p1, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->PRELOAD_AFTER_SHOWN:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 2
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->getDownloadingList()V

    return-void
.end method

.method protected removeDownloadListener(Z)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
    .locals 0

    .line 2
    iget-object p1, p0, Lccsancom/san/ads/core/SANAd;->deleteDownItem:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lccsancom/san/ads/core/SANAd$2;

    invoke-direct {p1, p0}, Lccsancom/san/ads/core/SANAd$2;-><init>(Lccsancom/san/ads/core/SANAd;)V

    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->deleteDownItem:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    .line 14
    :cond_0
    iget-object p1, p0, Lccsancom/san/ads/core/SANAd;->deleteDownItem:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    return-object p1
.end method

.method public setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    return-void
.end method

.method public setAdLoadListener(Lccsancom/san/ads/base/IAdListener$AdLoadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-void
.end method

.method public unifiedDownload()Lccsancom/san/ads/base/AdWrapper;
    .locals 2

    .line 7
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    :cond_0
    invoke-static {}, Lccsancom/san/ads/core/AdCacheManager;->getInstance()Lccsancom/san/ads/core/AdCacheManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/core/AdCacheManager;->getCachedAdByPlacementId(Ljava/lang/String;)Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    .line 10
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    return-object v0
.end method

.method protected unifiedDownload(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->getAdFormat()Lccsancom/san/ads/AdFormat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setAdFormat(Lccsancom/san/ads/AdFormat;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 2
    invoke-virtual {v0, v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setLoadTiming(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lccsancom/san/ads/core/SANAd;->removeDownloadListener(Z)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setAdListener(Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->removeDownloadListener:Lccsancom/san/ads/AdSize;

    .line 4
    invoke-virtual {p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setAdSize(Lccsancom/san/ads/AdSize;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->addDownloadListener:Ljava/util/Map;

    .line 5
    invoke-virtual {p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setLocalExtras(Ljava/util/Map;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->startLoad()V

    return-void
.end method
