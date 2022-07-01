.class public abstract Lccsancom/san/ads/core/BaseAdLoaderManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final getDownloadingCount:[B

.field public static final resume:I


# instance fields
.field protected IncentiveDownloadUtils:Ljava/lang/String;

.field private final IncentiveSDK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected addDownloadListener:Lccsancom/san/ads/AdFormat;

.field protected final deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

.field protected getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

.field protected getDownloadedList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

.field protected getDownloadedRecordByUrl:Lccsancom/san/ads/AdSize;

.field protected getDownloadingList:Lccsansan/bq/removeDownloadListener;

.field protected getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

.field private getPackageNameByRecord:J

.field private getThumbPathByRecord:J

.field protected pause:Z

.field protected removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final trackReportShow:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingCount:[B

    const/16 v0, 0x6e

    sput v0, Lccsancom/san/ads/core/BaseAdLoaderManager;->resume:I

    return-void

    :array_0
    .array-data 1
        0x40t
        0x7dt
        0x30t
        -0x72t
        -0x15t
        0x2t
        -0x16t
        -0x5t
        -0x2t
        -0x3t
        0x2et
        -0x3dt
        -0x14t
        -0x7t
        -0xet
        0x7t
        -0x11t
        -0xet
        0x3et
        -0x1dt
        -0x34t
        -0x7t
        -0xet
        0x7t
        -0x1bt
        -0x4t
    .end array-data
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->DEFAULT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getThumbPathByRecord:J

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveSDK:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    .line 20
    iput-object p2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/ads/core/BaseAdLoaderManager;)Lccsancom/san/ads/base/AdWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/base/AdWrapper;)Lccsancom/san/ads/base/AdWrapper;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    return-object p1
.end method

.method static synthetic addDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method private deleteDownList()Lccsancom/san/ads/base/AdWrapper;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->isValid()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    :cond_0
    invoke-static {}, Lccsancom/san/ads/core/AdCacheManager;->getInstance()Lccsancom/san/ads/core/AdCacheManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/core/AdCacheManager;->getCachedAdByPlacementId(Ljava/lang/String;)Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    .line 4
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    return-object v0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/ads/core/BaseAdLoaderManager;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getPackageNameByRecord:J

    return-wide v0
.end method

.method private declared-synchronized getDownloadingList(Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V
    .locals 8

    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_2

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getThumbPathByRecord:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x32

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    new-array v0, v1, [Ljava/lang/Object;

    .line 7
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    aput-object p2, v0, v2

    const-string p2, "%s#triggerOnSpotCallback will start next item with adError = %s"

    .line 8
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "BaseAdLoaderManager"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getThumbPathByRecord:J

    if-eqz p1, :cond_1

    .line 13
    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getRemainedDelayTime()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    :cond_1
    :try_start_2
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList()V
    :try_end_2
    .catch Lccsancom/san/ads/AdError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 19
    :try_start_3
    invoke-virtual {p0, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    .line 24
    :cond_2
    :try_start_4
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v3, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 25
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->isFastReturn()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 26
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    const-string v4, "%s has FastReturn load of placement"

    invoke-static {v4, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v4, "BaseAdLoaderManager"

    invoke-static {v4, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p1, "BaseAdLoaderManager"

    .line 28
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "%s has finished load of placement "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    if-nez v5, :cond_4

    const-string v5, "with no result"

    goto :goto_1

    :cond_4
    const-string v5, "with CachedAd"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_2
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz p1, :cond_6

    .line 32
    iget-object v4, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    if-nez v4, :cond_5

    const/4 v1, 0x3

    :cond_5
    invoke-virtual {p1, v1}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(I)V

    .line 34
    :cond_6
    invoke-static {}, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener()Lccsansan/bq/getDownloadStatusByUrl;

    move-result-object p1

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lccsansan/bq/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 35
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {p1, v3}, Lccsancom/san/ads/core/AdLoaderManagerFactory;->removeAdLoaderManager(Ljava/lang/String;Z)V

    .line 37
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V

    .line 39
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-direct {p0, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 40
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    iget-object p2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    if-nez v1, :cond_7

    const/4 v1, 0x0

    goto :goto_3

    :cond_7
    const/4 v1, 0x1

    :goto_3
    invoke-static {p1, p2, v1, v0}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsansan/bq/removeDownloadListener;Lccsancom/san/ads/base/AdWrapper;ILjava/util/HashMap;)V

    .line 43
    :cond_8
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    iget-object p2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_4

    :cond_9
    const/4 p2, 0x1

    :goto_4
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    invoke-static {p1, p2, v1, v0}, Lccsansan/bn/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/bq/removeDownloadListener;ILccsancom/san/ads/base/AdWrapper;Ljava/util/HashMap;)V

    .line 46
    :cond_a
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lccsansan/bq/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p1

    if-nez p1, :cond_d

    .line 47
    new-array p1, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v3

    const-string p2, "%s has finished of placement and all item step into death"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseAdLoaderManager"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    if-eqz p1, :cond_b

    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->isFastReturn()Z

    move-result p1

    if-nez p1, :cond_c

    .line 49
    :cond_b
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-static {p1}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsansan/bq/removeDownloadListener;)Z

    .line 51
    :cond_c
    sget-object p1, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->DEFAULT:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 52
    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    .line 53
    iput-boolean v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause:Z

    .line 54
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->onDestroy()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_d
    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getDownloadingList(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)Z
    .locals 1

    .line 91
    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    if-eq p1, v0, :cond_1

    sget-object v0, Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;->START_LOAD_IN_TIME:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private getDownloadingList(Z)Z
    .locals 7

    .line 28
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez p1, :cond_3

    .line 29
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-direct {p0, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-direct {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownList()Lccsancom/san/ads/base/AdWrapper;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 31
    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->hasDelayTimeRestrictions()Z

    move-result p1

    if-nez p1, :cond_3

    .line 32
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_0

    .line 34
    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedCount:Lccsancom/san/ads/base/AdWrapper;

    invoke-virtual {v3}, Lccsancom/san/ads/base/AdWrapper;->getSpotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 35
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/bq/removeDownloadListener;->IncentiveSDK$1()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedList()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-gez p1, :cond_1

    return v2

    .line 38
    :cond_1
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(I)V

    .line 40
    :cond_2
    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(Z)V

    return v1

    :cond_3
    return v2
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    return-object p0
.end method

.method private removeDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    new-instance v0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;

    invoke-direct {v0, p0}, Lccsancom/san/ads/core/BaseAdLoaderManager$1;-><init>(Lccsancom/san/ads/core/BaseAdLoaderManager;)V

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    return-void
.end method

.method private removeDownloadListener(Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 21
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/ads/core/BaseAdLoaderManager$2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/san/ads/core/BaseAdLoaderManager$2;-><init>(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static unifiedDownload(SIB)Ljava/lang/String;
    .locals 5

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x4

    mul-int/lit8 p0, p0, 0x4

    rsub-int/lit8 p0, p0, 0x17

    mul-int/lit8 p2, p2, 0x4

    add-int/lit8 p2, p2, 0x61

    sget-object v0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingCount:[B

    new-array v1, p0, [B

    const/4 v2, -0x1

    add-int/2addr p0, v2

    if-nez v0, :cond_0

    move p2, p1

    move v3, p2

    move p1, p0

    goto :goto_1

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, 0x1

    int-to-byte v3, p2

    aput-byte v3, v1, v2

    if-ne v2, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, v1, p1}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p1

    move v4, p1

    move p1, p0

    move p0, p2

    move p2, v4

    :goto_1
    neg-int v3, v3

    add-int/2addr p0, v3

    add-int/lit8 p0, p0, -0x8

    add-int/lit8 p2, p2, 0x1

    move v4, p2

    move p2, p0

    move p0, p1

    move p1, v4

    goto :goto_0
.end method

.method static synthetic unifiedDownload(Lccsancom/san/ads/core/BaseAdLoaderManager;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveSDK:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method


# virtual methods
.method protected declared-synchronized IncentiveDownloadUtils(Z)V
    .locals 4

    monitor-enter p0

    .line 55
    :try_start_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 58
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 63
    :cond_1
    :try_start_1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->ActionTypeDownload()Z

    move-result v0

    invoke-direct {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    monitor-exit p0

    return-void

    .line 65
    :cond_2
    :try_start_2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(Z)Ljava/util/List;

    move-result-object p1

    .line 66
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->hasSucceedByPassingRestrictions()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->ActionTypeDownload()Z

    move-result v0

    if-nez v0, :cond_3

    .line 69
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(I)V

    .line 70
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v0, v1

    const-string p1, "%s #dirty finished with %s"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseAdLoaderManager"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit p0

    return-void

    :cond_4
    nop

    .line 78
    :try_start_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/ads/AdInfo;

    .line 79
    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdInfo;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_6
    if-nez v2, :cond_7

    .line 83
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 84
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    .line 54
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method protected IncentiveDownloadUtils()Z
    .locals 5

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getDownloadedList()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getThumbPathByRecord()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->resume()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/san/ads/AdInfo;

    if-nez v2, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->hasFinished()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1

    .line 5
    :cond_4
    const/4 v0, 0x0

    .line 7
    :goto_1
    if-eqz v0, :cond_5

    return v3

    .line 14
    :cond_5
    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/bq/removeDownloadListener;->getDownloadingCount()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/ads/AdInfo;

    if-nez v3, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->hasFinished()Z

    move-result v3

    if-nez v3, :cond_6

    :cond_8
    const/4 v0, 0x1

    :cond_9
    xor-int/2addr v0, v1

    return v0

    :cond_a
    :goto_3
    return v1
.end method

.method protected addDownloadListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveSDK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 4
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 5
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportClick:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getPackageNameByRecord:J

    .line 7
    iput-wide v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getThumbPathByRecord:J

    .line 8
    iput-boolean v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause:Z

    return-void
.end method

.method public cancelAdLoad(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->onDestroy()V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownItem:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadStatusByUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl()V

    goto :goto_0

    .line 11
    :cond_2
    sget-object v0, Lccsancom/san/ads/AdError;->CANCEL_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {v0, p1}, Lccsancom/san/ads/AdError;->setErrorMessage(Ljava/lang/String;)Lccsancom/san/ads/AdError;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdError;)V

    :goto_0
    return-void
.end method

.method protected declared-synchronized deleteDownItem()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized getDownloadStatusByUrl()Z
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 11
    :try_start_0
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    monitor-exit p0

    return v2

    .line 13
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->resume()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/ads/AdInfo;

    if-nez v3, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_3
    if-eqz v0, :cond_4

    monitor-exit p0

    return v2

    .line 22
    :cond_4
    :try_start_2
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->getDownloadingCount()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/san/ads/AdInfo;

    if-nez v3, :cond_6

    goto :goto_1

    .line 24
    :cond_6
    invoke-virtual {v3}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    goto :goto_2

    .line 22
    :cond_7
    move v2, v0

    .line 24
    :goto_2
    monitor-exit p0

    return v2

    .line 10
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method protected getDownloadedList()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method protected getDownloadedRecordByUrl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/ads/AdError;
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsansan/cm/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/cm/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 90
    :cond_0
    sget-object v0, Lccsancom/san/ads/AdError;->PACING_PLACEMENT_ERROR:Lccsancom/san/ads/AdError;

    throw v0

    .line 91
    :cond_1
    sget-object v0, Lccsancom/san/ads/AdError;->CAPPING_PLACEMENT_ERROR:Lccsancom/san/ads/AdError;

    throw v0
.end method

.method protected getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/ads/base/SANBaseAd;
    .locals 5

    .line 87
    const/4 v0, 0x2

    :try_start_0
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p3, v1, p1

    new-array p3, v0, [Ljava/lang/Class;

    int-to-byte v0, v2

    int-to-byte v3, v0

    int-to-byte v4, v3

    invoke-static {v0, v3, v4}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(SIB)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    aput-object v0, p3, v2

    const-class v0, Ljava/lang/String;

    aput-object v0, p3, p1

    invoke-static {p2, v1, p3}, Lccsansan/bw/getPackageNameByRecord;->addDownloadListener(Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/base/SANBaseAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 90
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "createMediationLoader "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseAdLoaderManager"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method protected declared-synchronized getDownloadingList()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/ads/AdError;
        }
    .end annotation

    monitor-enter p0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5
    new-array v0, v2, [Ljava/lang/Object;

    .line 6
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s will break this request, as all items have finished"

    .line 7
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdLoaderManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 13
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->performAction()V

    .line 14
    :cond_1
    iget-wide v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getPackageNameByRecord:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getPackageNameByRecord:J

    .line 15
    :cond_2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->ActionTypeDownload()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Z)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    monitor-exit p0

    return-void

    .line 18
    :cond_4
    :try_start_2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_5

    .line 19
    invoke-virtual {p0, v2}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils(Z)V

    .line 20
    :cond_5
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    .line 3
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getDownloadingRecordByUrl()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(Z)V

    return-void
.end method

.method public isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public markLoading()Lccsancom/san/ads/core/BaseAdLoaderManager;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-object p0
.end method

.method public onDestroy()V
    .locals 4

    .line 1
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "%s #onDestroy called"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "BaseAdLoaderManager"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->trackReportShow:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveSDK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->getDownloadingList()V

    .line 9
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-static {v1}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsansan/bq/removeDownloadListener;)Z

    :cond_1
    nop

    .line 11
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    .line 12
    iput-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    .line 13
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener()V

    .line 14
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "%s #onDestroy executed"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected pause()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-nez v1, :cond_0

    const-string v1, "NilStrategy"

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lccsansan/bq/removeDownloadListener;->resolveUrl()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected removeDownloadListener(J)V
    .locals 0

    return-void
.end method

.method protected removeDownloadListener(Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownList()Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 4
    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p1, v1

    const-string v0, "%s #onAdLoadError NO FILL"

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "BaseAdLoaderManager"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lccsancom/san/ads/AdError;->NO_FILL:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdError;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {v0, p1}, Lccsancom/san/ads/base/AdWrapper;->setFastReturn(Z)V

    .line 9
    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz p1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    :cond_1
    return-void
.end method

.method public setAdFormat(Lccsancom/san/ads/AdFormat;)Lccsancom/san/ads/core/BaseAdLoaderManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener:Lccsancom/san/ads/AdFormat;

    return-object p0
.end method

.method public setAdListener(Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;)Lccsancom/san/ads/core/BaseAdLoaderManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->deleteDownList:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    return-object p0
.end method

.method public setAdSize(Lccsancom/san/ads/AdSize;)Lccsancom/san/ads/core/BaseAdLoaderManager;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedRecordByUrl:Lccsancom/san/ads/AdSize;

    return-object p0
.end method

.method public setLoadTiming(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)Lccsancom/san/ads/core/BaseAdLoaderManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lccsansan/bq/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)V

    .line 2
    :cond_0
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    return-object p0
.end method

.method public setLocalExtras(Ljava/util/Map;)Lccsancom/san/ads/core/BaseAdLoaderManager;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/san/ads/core/BaseAdLoaderManager;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener:Ljava/util/Map;

    return-object p0
.end method

.method public startLoad()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener()V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener()Lccsansan/bq/getDownloadStatusByUrl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener:Lccsancom/san/ads/AdFormat;

    invoke-virtual {v0, v1, v2}, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)Lccsansan/bq/removeDownloadListener;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    .line 5
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener()V

    .line 7
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getDownloadedList()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedList:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    invoke-virtual {v0, v3}, Lccsansan/bq/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)V

    .line 17
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener:Lccsancom/san/ads/AdFormat;

    invoke-virtual {v0, v3}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdFormat;)V

    .line 18
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedRecordByUrl:Lccsancom/san/ads/AdSize;

    invoke-virtual {v0, v3}, Lccsansan/bq/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdSize;)V

    .line 19
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener:Ljava/util/Map;

    invoke-virtual {v0, v3}, Lccsansan/bq/removeDownloadListener;->removeDownloadListener(Ljava/util/Map;)V

    .line 21
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 22
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-static {v0}, Lccsansan/cc/unifiedDownload;->removeDownloadListener(Lccsansan/bq/removeDownloadListener;)V

    .line 25
    :try_start_0
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedRecordByUrl()V
    :try_end_0
    .catch Lccsancom/san/ads/AdError; {:try_start_0 .. :try_end_0} :catch_1

    .line 33
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/cm/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 36
    :try_start_1
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList()V
    :try_end_1
    .catch Lccsancom/san/ads/AdError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdError;)V

    :goto_0
    return-void

    :catch_1
    move-exception v0

    .line 39
    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/bq/removeDownloadListener;->getDownloadStatusByUrl()V

    .line 40
    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v2, v1}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(I)V

    .line 41
    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdError;)V

    return-void

    .line 42
    :cond_2
    :goto_1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz v0, :cond_3

    .line 43
    invoke-virtual {v0, v1}, Lccsansan/bq/removeDownloadListener;->getDownloadingList(I)V

    :cond_3
    nop

    .line 44
    new-array v0, v2, [Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 46
    const-string v1, "%s failed with PlacementStrategy = null, pls check if the placementId is correct, or contact with AM"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdLoaderManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-array v0, v2, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    aput-object v1, v0, v3

    const-string v1, "Please check if the placementId[%s] is correct, or contact with AM"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lccsancom/san/ads/AdError;->PARAMETER_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method protected unifiedDownload(Lccsancom/san/ads/AdError;)V
    .locals 3

    .line 24
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const-string v1, "%s #onAdLoadError %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdLoaderManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    :cond_0
    return-void
.end method

.method protected unifiedDownload()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected unifiedDownload(Lccsancom/san/ads/AdInfo;)Z
    .locals 10

    .line 41
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getPlacementId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v0, v2, v3, v4}, Lccsansan/cm/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 46
    invoke-virtual {p1, v0}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    .line 47
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz v0, :cond_1

    .line 48
    sget-object v2, Lccsancom/san/ads/AdError;->CAPPING_SPOT_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {v0, p1, v2}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    :cond_1
    return v1

    .line 53
    :cond_2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lccsansan/cm/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x6

    .line 54
    invoke-virtual {p1, v0}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    .line 55
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz v0, :cond_3

    .line 56
    sget-object v2, Lccsancom/san/ads/AdError;->PACING_SPOT_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {v0, p1, v2}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    :cond_3
    return v1

    .line 61
    :cond_4
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getDownloadedCount()Lccsancom/san/ads/AdFormat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/ads/AdInfo;->getLoaderClassName(Lccsancom/san/ads/AdFormat;)Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getSpotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/ads/base/SANBaseAd;

    move-result-object v2

    const-string v3, "BaseAdLoaderManager"

    const/4 v5, 0x3

    if-nez v2, :cond_6

    .line 64
    new-array v0, v4, [Ljava/lang/Object;

    .line 65
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getDetailId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 66
    const-string v2, "%s NONSUPPORT, cannot create a correct mediation"

    invoke-static {v2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, v5}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    .line 70
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    sget-object v2, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    invoke-static {v0, p1, v2}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    .line 71
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {v0, p1, v2}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    :cond_5
    return v1

    .line 76
    :cond_6
    iget-object v6, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    invoke-virtual {v2, v6}, Lccsancom/san/ads/base/SANBaseAd;->setAdLoadListener(Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;)V

    .line 77
    iget-object v6, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadedRecordByUrl:Lccsancom/san/ads/AdSize;

    invoke-virtual {p1, v6}, Lccsancom/san/ads/AdInfo;->setAdSize(Lccsancom/san/ads/AdSize;)V

    .line 78
    invoke-virtual {p1, v4}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(I)V

    .line 79
    iget-object v6, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener:Ljava/util/Map;

    invoke-virtual {p1, v6}, Lccsancom/san/ads/AdInfo;->setLocalExtras(Ljava/util/Map;)V

    .line 81
    new-array v5, v5, [Ljava/lang/Object;

    .line 82
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getDetailId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    aput-object v0, v5, v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-wide v8, p0, Lccsancom/san/ads/core/BaseAdLoaderManager;->getPackageNameByRecord:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v5, v6

    .line 83
    const-string v1, "%s#doLoadItem with %s on [%s]"

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v3, Lccsancom/san/ads/core/BaseAdLoaderManager$3;

    invoke-direct {v3, p0, p1, v0, v2}, Lccsancom/san/ads/core/BaseAdLoaderManager$3;-><init>(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/AdInfo;Ljava/lang/String;Lccsancom/san/ads/base/SANBaseAd;)V

    const/4 p1, 0x4

    invoke-virtual {v1, v3, p1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    return v4

    :cond_7
    :goto_0
    return v1
.end method
