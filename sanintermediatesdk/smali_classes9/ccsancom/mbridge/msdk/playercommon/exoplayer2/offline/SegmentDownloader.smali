.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;
.super Ljava/lang/Object;
.source "SegmentDownloader.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest<",
        "TM;TK;>;K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/Downloader;"
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE_BYTES:I = 0x20000


# instance fields
.field private final cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

.field private final dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

.field private volatile downloadedBytes:J

.field private volatile downloadedSegments:I

.field private final isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final manifestUri:Lccsanandroid/net/Uri;

.field private final offlineDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

.field private final priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

.field private final streamKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TK;>;"
        }
    .end annotation
.end field

.field private volatile totalSegments:I


# direct methods
.method public constructor <init>(Lccsanandroid/net/Uri;Ljava/util/List;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/net/Uri;",
            "Ljava/util/List<",
            "TK;>;",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;",
            ")V"
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->manifestUri:Lccsanandroid/net/Uri;

    .line 87
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    .line 88
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;->getCache()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    .line 89
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    .line 90
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;->buildCacheDataSource(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    .line 91
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/DownloaderConstructorHelper;->getPriorityTaskManager()Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    .line 92
    const/4 p1, -0x1

    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 93
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    return-void
.end method

.method private initDownload()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->manifestUri:Lccsanandroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->getManifest(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 209
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->streamKeys:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;->copy(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;

    .line 211
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->getSegments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    .line 212
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 213
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 214
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 215
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 216
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 217
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;

    .line 218
    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    invoke-static {v3, v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->getCached(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;)V

    .line 219
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 220
    iget-wide v3, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->alreadyCachedBytes:J

    iget-wide v5, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->contentLength:J

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    .line 222
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 223
    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 216
    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 226
    :cond_2
    return-object v0
.end method

.method private removeUri(Lccsanandroid/net/Uri;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->generateKey(Lccsanandroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->remove(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Ljava/lang/String;)V

    .line 231
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 139
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 140
    return-void
.end method

.method public final download()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    const/16 v1, -0x3e8

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->add(I)V

    .line 111
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->initDownload()Ljava/util/List;

    move-result-object v0

    .line 112
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 113
    const/high16 v2, 0x20000

    new-array v2, v2, [B

    .line 114
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;

    invoke-direct {v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;-><init>()V

    .line 115
    const/4 v3, 0x0

    const/4 v13, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-ge v13, v3, :cond_0

    .line 117
    nop

    .line 118
    :try_start_1
    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    const/16 v8, -0x3e8

    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->isCanceled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v11, 0x1

    .line 117
    move-object v6, v2

    move-object v9, v12

    invoke-static/range {v3 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil;->cache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;[BLccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;Ljava/util/concurrent/atomic/AtomicBoolean;Z)V

    .line 127
    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    :try_start_2
    iget-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v5, v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v3, v5

    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 130
    nop

    .line 115
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 129
    :catchall_0
    move-exception v0

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    iget-wide v4, v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheUtil$CachingCounters;->newlyCachedBytes:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    .line 130
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 133
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 134
    nop

    .line 135
    return-void

    .line 133
    :catchall_1
    move-exception v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->priorityTaskManager:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/PriorityTaskManager;->remove(I)V

    .line 134
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final getDownloadPercentage()F
    .locals 3

    .line 150
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->totalSegments:I

    .line 151
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedSegments:I

    .line 152
    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    const/high16 v2, 0x42c80000    # 100.0f

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    mul-float v1, v1, v2

    int-to-float v0, v0

    div-float v2, v1, v0

    :goto_0
    return v2

    .line 153
    :cond_2
    :goto_1
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public final getDownloadedBytes()J
    .locals 2

    .line 144
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->downloadedBytes:J

    return-wide v0
.end method

.method protected abstract getManifest(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            "Lccsanandroid/net/Uri;",
            ")TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected abstract getSegments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;",
            "TM;Z)",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final remove()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 161
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->manifestUri:Lccsanandroid/net/Uri;

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->getManifest(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->offlineDataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->getSegments(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/FilterableManifest;Z)Ljava/util/List;

    move-result-object v0

    .line 163
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 164
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader$Segment;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->uri:Lccsanandroid/net/Uri;

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->removeUri(Lccsanandroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->manifestUri:Lccsanandroid/net/Uri;

    invoke-direct {p0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->removeUri(Lccsanandroid/net/Uri;)V

    .line 171
    throw v0

    .line 166
    :catch_0
    move-exception v0

    .line 170
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->manifestUri:Lccsanandroid/net/Uri;

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/offline/SegmentDownloader;->removeUri(Lccsanandroid/net/Uri;)V

    .line 171
    nop

    .line 172
    return-void
.end method
