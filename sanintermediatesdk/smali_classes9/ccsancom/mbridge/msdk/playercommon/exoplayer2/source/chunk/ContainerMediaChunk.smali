.class public Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;
.source "ContainerMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private final chunkCount:I

.field private final extractorWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

.field private volatile loadCanceled:Z

.field private volatile loadCompleted:Z

.field private final sampleOffsetUs:J


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJIJLccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;)V
    .locals 3

    .line 72
    move-object v0, p0

    invoke-direct/range {p0 .. p13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJ)V

    .line 82
    move/from16 v1, p14

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    .line 83
    move-wide/from16 v1, p15

    iput-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    .line 84
    move-object/from16 v1, p17

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 85
    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    .line 99
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 1

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    .line 107
    return-void
.end method

.method public getNextChunkIndex()J
    .locals 4

    .line 89
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->chunkIndex:J

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->chunkCount:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public isLoadCompleted()Z
    .locals 1

    .line 94
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->subrange(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 115
    :try_start_0
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iget-wide v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    .line 116
    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v5

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;JJ)V

    .line 117
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->getOutput()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v0

    .line 120
    iget-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 121
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

    .line 122
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->seekTimeUs:J

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->seekTimeUs:J

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->sampleOffsetUs:J

    sub-long/2addr v2, v4

    .line 121
    :goto_0
    invoke-virtual {v1, v0, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->init(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper$TrackOutputProvider;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 126
    :cond_1
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->extractorWrapper:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ChunkExtractorWrapper;->extractor:Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;

    .line 127
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 128
    :goto_1
    if-nez v2, :cond_2

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCanceled:Z

    if-nez v3, :cond_2

    .line 129
    const/4 v2, 0x0

    invoke-interface {v0, v7, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/Extractor;->read(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/PositionHolder;)I

    move-result v2

    goto :goto_1

    .line 131
    :cond_2
    const/4 v0, 0x1

    if-eq v2, v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :try_start_2
    invoke-interface {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 134
    nop

    .line 136
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 137
    nop

    .line 138
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->loadCompleted:Z

    .line 139
    return-void

    .line 133
    :catchall_0
    move-exception v0

    :try_start_3
    invoke-interface {v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;->getPosition()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v3, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->absoluteStreamPosition:J

    sub-long/2addr v1, v3

    long-to-int v2, v1

    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->bytesLoaded:I

    .line 134
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 136
    :catchall_1
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/ContainerMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 137
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
