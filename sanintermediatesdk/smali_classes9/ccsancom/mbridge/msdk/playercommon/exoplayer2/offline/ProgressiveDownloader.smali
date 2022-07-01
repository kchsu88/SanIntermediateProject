.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;
.super Ljava/lang/Object;
.source "ProgressiveDownloader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private final cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

.field private final cachingCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

.field private final dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

.field private final dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

.field private final isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;


# direct methods
.method public constructor <init>(Lccsanandroid/net/Uri;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 9

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;-><init>(Lccsanandroid/net/Uri;JJLjava/lang/String;I)V

    iput-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 52
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;->getCache()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    .line 53
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    .line 54
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;->getPriorityTaskManager()Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    .line 55
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    .line 56
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 2

    .line 80
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 81
    return-void
.end method

.method public final download()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 63
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    const/high16 v0, 0x20000

    new-array v5, v0, [B

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    const/16 v7, -0x3e8

    iget-object v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-object v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v10, 0x1

    invoke-static/range {v2 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->cache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;[BLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 75
    nop

    .line 76
    return-void

    .line 74
    :catchall_0
    move-exception v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 75
    throw v0
.end method

.method public final getDownloadPercentage()F
    .locals 5

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    .line 91
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 92
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0

    .line 93
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->totalCachedBytes()J

    move-result-wide v2

    long-to-float v2, v2

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v2, v2, v3

    long-to-float v0, v0

    div-float v0, v2, v0

    .line 91
    :goto_0
    return v0
.end method

.method public final getDownloadedBytes()J
    .locals 2

    .line 85
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cachingCounters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->totalCachedBytes()J

    move-result-wide v0

    return-wide v0
.end method

.method public final remove()V
    .locals 2

    .line 98
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/ProgressiveDownloader;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getKey(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->remove(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    .line 99
    return-void
.end method
