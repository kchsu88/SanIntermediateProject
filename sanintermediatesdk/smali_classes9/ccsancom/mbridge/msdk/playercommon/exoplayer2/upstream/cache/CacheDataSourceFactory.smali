.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;
.super Ljava/lang/Object;
.source "CacheDataSourceFactory.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;


# instance fields
.field private final cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

.field private final cacheReadDataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

.field private final cacheWriteDataSinkFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;

.field private final eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource$EventListener;

.field private final flags:I

.field private final upstreamFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;I)V
    .locals 6

    .line 48
    const-wide/32 v4, 0x200000

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;IJ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;IJ)V
    .locals 7

    .line 56
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSourceFactory;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/FileDataSourceFactory;-><init>()V

    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSinkFactory;

    invoke-direct {v4, p1, p4, p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSinkFactory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;J)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    .line 68
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 69
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 70
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;

    .line 71
    iput p5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    .line 72
    iput-object p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    .line 73
    return-void
.end method


# virtual methods
.method public final bridge synthetic createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    move-result-object v0

    return-object v0
.end method

.method public final createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;
    .locals 8

    .line 77
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->cache:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->upstreamFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v2

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheReadDataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 78
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v3

    .line 79
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->cacheWriteDataSinkFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink$Factory;->createDataSink()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v4, v0

    iget v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->flags:I

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSourceFactory;->eventListener:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource$EventListener;

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSink;ILccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheDataSource$EventListener;)V

    .line 77
    return-object v7
.end method
