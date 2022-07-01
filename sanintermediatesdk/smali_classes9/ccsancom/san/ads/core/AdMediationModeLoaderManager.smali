.class public Lccsancom/san/ads/core/AdMediationModeLoaderManager;
.super Lccsancom/san/ads/core/BaseAdLoaderManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;
    }
.end annotation


# instance fields
.field private final deleteDownList:Lccsanandroid/os/Handler;

.field private final getDownloadedCount:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private getPackageNameByRecord:Lccsansan/cu/unifiedDownload$addDownloadListener;

.field private final trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/core/BaseAdLoaderManager;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getDownloadedCount:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    invoke-static {}, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener()Lccsansan/bq/getDownloadStatusByUrl;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/bq/getDownloadStatusByUrl;->IncentiveDownloadUtils()Lccsanandroid/os/HandlerThread;

    move-result-object p1

    .line 11
    new-instance p2, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lccsanandroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p2, p0, p1}, Lccsancom/san/ads/core/AdMediationModeLoaderManager$MediationLoaderHandler;-><init>(Lccsancom/san/ads/core/AdMediationModeLoaderManager;Lccsanandroid/os/Looper;)V

    iput-object p2, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->deleteDownList:Lccsanandroid/os/Handler;

    return-void
.end method

.method private addDownloadListener(IILccsancom/san/ads/AdInfo;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p3}, Lccsancom/san/ads/AdInfo;->hasDelayTimeRestrictions()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#checkHasFinished hasRestrictions:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/san/ads/AdInfo;->getSpotId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ",i="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SANAd.LoaderManager.M"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v0
.end method

.method private getDownloadedCount()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getPackageNameByRecord:Lccsansan/cu/unifiedDownload$addDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/cu/unifiedDownload;->unifiedDownload()Lccsansan/cu/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getPackageNameByRecord:Lccsansan/cu/unifiedDownload$addDownloadListener;

    invoke-virtual {v0, v1}, Lccsansan/cu/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cu/unifiedDownload$addDownloadListener;)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getPackageNameByRecord:Lccsansan/cu/unifiedDownload$addDownloadListener;

    :cond_0
    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/ads/core/AdMediationModeLoaderManager;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->unifiedDownload(I)V

    return-void
.end method

.method private unifiedDownload(I)V
    .locals 5

    .line 11
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->deleteDownList:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v1, :cond_1

    .line 12
    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    const/16 v0, 0xf

    if-ne v0, p1, :cond_0

    .line 13
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->removeDownloadListener()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->AdError()J

    move-result-wide v0

    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 16
    iget-object v2, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->deleteDownList:Lccsanandroid/os/Handler;

    invoke-virtual {v2, p1, v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected IncentiveDownloadUtils()Z
    .locals 10

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getDownloadedList()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getThumbPathByRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->ActionTypeDownload()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    const/4 v0, -0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    .line 10
    :goto_0
    iget-object v7, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v7}, Lccsansan/bq/removeDownloadListener;->getDownloadingCount()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const-string v8, "SANAd.LoaderManager.M"

    if-ge v3, v7, :cond_8

    .line 11
    iget-object v7, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v7}, Lccsansan/bq/removeDownloadListener;->getDownloadingCount()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/san/ads/AdInfo;

    if-nez v7, :cond_2

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v7}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v9

    if-eqz v9, :cond_3

    if-ne v4, v0, :cond_3

    move v4, v3

    goto :goto_1

    .line 17
    :cond_3
    invoke-virtual {v7}, Lccsancom/san/ads/AdInfo;->isRunning()Z

    move-result v9

    if-eqz v9, :cond_4

    if-ne v5, v0, :cond_4

    .line 19
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "#checkHasFinished topFirstRunningIndex:"

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    .line 22
    :cond_4
    invoke-direct {p0, v5, v3, v7}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->addDownloadListener(IILccsancom/san/ads/AdInfo;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_1

    .line 26
    :cond_5
    invoke-virtual {v7}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v7

    if-eqz v7, :cond_6

    move v6, v3

    :cond_6
    if-ltz v6, :cond_7

    goto :goto_2

    :cond_7
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_8
    :goto_2
    if-ltz v6, :cond_b

    if-lez v4, :cond_9

    if-gt v6, v4, :cond_b

    .line 35
    :cond_9
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x2

    .line 36
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    .line 37
    invoke-virtual {v2}, Lccsansan/bq/removeDownloadListener;->getDownloadingCount()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    .line 38
    const-string v2, "%s hasFinished cause hasWinner %s"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v1

    .line 43
    :cond_b
    invoke-super {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils()Z

    move-result v0

    return v0

    :cond_c
    :goto_3
    return v1
.end method

.method protected addDownloadListener()V
    .locals 2

    .line 1
    invoke-super {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener()V

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getDownloadedCount:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->deleteDownList:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method protected getDownloadedList()J
    .locals 4

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_fast_return_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-wide/16 v2, 0x7d0

    if-eqz v1, :cond_0

    return-wide v2

    .line 6
    :cond_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener:Lccsancom/san/ads/AdFormat;

    invoke-virtual {v0}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "time"

    .line 8
    invoke-virtual {v1, v0, v2, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    .line 11
    const-string v1, "SANAd.LoaderManager.M"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-wide v2
.end method

.method protected getDownloadingList()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/ads/AdError;
        }
    .end annotation

    .line 2
    invoke-super {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList()V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    .line 4
    invoke-direct {p0, v0}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->unifiedDownload(I)V

    const/4 v0, 0x5

    .line 5
    invoke-direct {p0, v0}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->unifiedDownload(I)V

    goto :goto_0

    :cond_0
    nop

    .line 7
    invoke-direct {p0, v1}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->unifiedDownload(I)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->deleteDownList:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2
    invoke-super {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->onDestroy()V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getDownloadedCount:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    invoke-direct {p0}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getDownloadedCount()V

    return-void
.end method

.method protected removeDownloadListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getDownloadStatusByUrl()V

    :cond_0
    return-void
.end method

.method protected removeDownloadListener(J)V
    .locals 2

    .line 17
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->deleteDownList:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    const/16 v1, 0x14

    .line 18
    invoke-virtual {v0, v1, p1, p2}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method protected unifiedDownload()Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-nez v2, :cond_0

    const-string v2, "NULL PlacementStrategy"

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v2}, Lccsansan/bq/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 3
    const-string v2, "%s fireHeaderBidding"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SANAd.LoaderManager.M"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getDownloadedCount:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    return v3

    .line 10
    :cond_1
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->resume()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 14
    :cond_2
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->performActionWhenOffline()J

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->removeDownloadListener(J)V

    .line 16
    new-instance v1, Lccsancom/san/ads/core/AdMediationModeLoaderManager$1;

    invoke-direct {v1, p0}, Lccsancom/san/ads/core/AdMediationModeLoaderManager$1;-><init>(Lccsancom/san/ads/core/AdMediationModeLoaderManager;)V

    iput-object v1, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getPackageNameByRecord:Lccsansan/cu/unifiedDownload$addDownloadListener;

    .line 24
    invoke-static {}, Lccsansan/cu/unifiedDownload;->unifiedDownload()Lccsansan/cu/unifiedDownload;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/ads/core/AdMediationModeLoaderManager;->getPackageNameByRecord:Lccsansan/cu/unifiedDownload$addDownloadListener;

    invoke-virtual {v1, v2}, Lccsansan/cu/unifiedDownload;->removeDownloadListener(Lccsansan/cu/unifiedDownload$addDownloadListener;)V

    .line 26
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->ActionTypeReserveApp()Lccsancom/san/ads/AdInfo;

    move-result-object v1

    .line 27
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2}, Lccsanorg/json/JSONArray;-><init>()V

    .line 29
    iget-object v4, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/bq/removeDownloadListener;->resume()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/san/ads/AdInfo;

    .line 30
    invoke-virtual {v5}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result v6

    if-eqz v6, :cond_4

    goto :goto_1

    .line 33
    :cond_4
    invoke-virtual {v5}, Lccsancom/san/ads/AdInfo;->isHeaderBidding()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v5}, Lccsancom/san/ads/AdInfo;->hasHBSucceed()Z

    move-result v6

    if-nez v6, :cond_3

    .line 34
    iget-object v6, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v6}, Lccsansan/bq/removeDownloadListener;->resolveUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lccsancom/san/ads/AdInfo;->buildParams(Ljava/lang/String;)Lccsansan/cu/addDownloadListener;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 35
    invoke-virtual {v5}, Lccsansan/cu/addDownloadListener;->addDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 36
    invoke-virtual {v5}, Lccsansan/cu/addDownloadListener;->addDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_1

    :cond_5
    if-nez v1, :cond_6

    return v3

    .line 45
    :cond_6
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_7

    .line 46
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    .line 45
    :cond_7
    const-string v2, ""

    .line 49
    :goto_2
    invoke-virtual {v1, v2}, Lccsancom/san/ads/AdInfo;->setPassengerHBParams(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0, v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdInfo;)Z

    return v0

    :cond_8
    :goto_3
    return v3
.end method
