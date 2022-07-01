.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;
.source "DataChunk.java"


# static fields
.field private static final READ_GRANULARITY:I = 0x4000


# instance fields
.field private data:[B

.field private limit:I

.field private volatile loadCanceled:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;[B)V
    .locals 11

    .line 50
    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v9, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/Chunk;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJ)V

    .line 52
    move-object/from16 v1, p7

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->data:[B

    .line 53
    return-void
.end method

.method private maybeExpandData()V
    .locals 4

    .line 110
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->data:[B

    const/16 v1, 0x4000

    if-nez v0, :cond_0

    .line 111
    new-array v0, v1, [B

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->data:[B

    goto :goto_0

    .line 112
    :cond_0
    array-length v2, v0

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_1

    .line 115
    array-length v2, v0

    add-int/2addr v2, v1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->data:[B

    .line 117
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public bytesLoaded()J
    .locals 2

    .line 68
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->limit:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    .line 76
    return-void
.end method

.method protected abstract consume([BI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getDataHolder()[B
    .locals 1

    .line 63
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->data:[B

    return-object v0
.end method

.method public final load()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 81
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->limit:I

    .line 83
    nop

    .line 84
    :cond_0
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_1

    .line 85
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->maybeExpandData()V

    .line 86
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->limit:I

    const/16 v4, 0x4000

    invoke-interface {v0, v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->read([BII)I

    move-result v0

    .line 87
    if-eq v0, v1, :cond_0

    .line 88
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->limit:I

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->limit:I

    goto :goto_0

    .line 91
    :cond_1
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->loadCanceled:Z

    if-nez v0, :cond_2

    .line 92
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->data:[B

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->limit:I

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->consume([BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 96
    nop

    .line 97
    return-void

    .line 95
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/DataChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 96
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method
