.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;
.super Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;
.source "SingleSampleMediaChunk.java"


# instance fields
.field private volatile bytesLoaded:I

.field private volatile loadCompleted:Z

.field private final sampleFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field private final trackType:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 15

    .line 63
    move-object v14, p0

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v12, p10

    invoke-direct/range {v0 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunk;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJ)V

    .line 73
    move/from16 v0, p12

    iput v0, v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    .line 74
    move-object/from16 v0, p13

    iput-object v0, v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 75
    return-void
.end method


# virtual methods
.method public final bytesLoaded()J
    .locals 2

    .line 85
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public final cancelLoad()V
    .locals 0

    .line 93
    return-void
.end method

.method public final isLoadCompleted()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    return v0
.end method

.method public final load()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;->subrange(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    move-result-object v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-interface {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;->open(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;)J

    move-result-wide v0

    .line 102
    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 103
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    move-wide v5, v0

    goto :goto_0

    .line 102
    :cond_0
    move-wide v5, v0

    .line 105
    :goto_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    int-to-long v3, v1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/DefaultExtractorInput;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;JJ)V

    .line 106
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->getOutput()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunkOutput;

    move-result-object v1

    .line 107
    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunkOutput;->setSampleOffsetUs(J)V

    .line 108
    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->trackType:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/BaseMediaChunkOutput;->track(II)Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;

    move-result-object v4

    .line 109
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->sampleFormat:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    invoke-interface {v4, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->format(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    .line 111
    nop

    .line 112
    :goto_1
    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v3, v1, :cond_1

    .line 113
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    add-int/2addr v1, v3

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 114
    const v1, 0x7fffffff

    invoke-interface {v4, v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleData(Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/ExtractorInput;IZ)I

    move-result v3

    goto :goto_1

    .line 116
    :cond_1
    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->bytesLoaded:I

    .line 117
    iget-wide v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->startTimeUs:J

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface/range {v4 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput;->sampleMetadata(JIIILccsancom/mbridge/msdk/playercommon/exoplayer2/extractor/TrackOutput$CryptoData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 120
    nop

    .line 121
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->loadCompleted:Z

    .line 122
    return-void

    .line 119
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/chunk/SingleSampleMediaChunk;->dataSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->closeQuietly(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    .line 120
    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
