.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;
.super Ljava/lang/Object;
.source "SingleSampleMediaPeriod.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;",
        ">;"
    }
.end annotation


# static fields
.field private static final INITIAL_SAMPLE_SIZE:I = 0x400


# instance fields
.field private final dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

.field private final dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

.field private final durationUs:J

.field private errorCount:I

.field private final eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

.field final format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

.field final loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

.field loadingFinished:Z

.field loadingSucceeded:Z

.field private final minLoadableRetryCount:I

.field notifiedReadingStarted:Z

.field sampleData:[B

.field sampleSize:I

.field private final sampleStreams:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

.field final treatLoadErrorsAsEndOfStream:Z


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;JILccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;Z)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    .line 75
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 76
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    .line 77
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 78
    iput p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->minLoadableRetryCount:I

    .line 79
    iput-object p7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    .line 80
    iput-boolean p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    .line 81
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    const/4 p2, 0x1

    new-array p4, p2, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    new-instance p5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;

    new-array p2, p2, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    const/4 p6, 0x0

    aput-object p3, p2, p6

    invoke-direct {p5, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V

    aput-object p5, p4, p6

    invoke-direct {p1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroup;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 82
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    .line 83
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    const-string p2, "Loader:SingleSampleMediaPeriod"

    invoke-direct {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    .line 84
    invoke-virtual {p7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodCreated()V

    .line 85
    return-void
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;
    .locals 0

    .line 38
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    return-object p0
.end method


# virtual methods
.method public final continueLoading(J)Z
    .locals 17

    .line 137
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v1, :cond_1

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->dataSourceFactory:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;

    .line 142
    invoke-interface {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;->createDataSource()Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource;)V

    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->minLoadableRetryCount:I

    .line 141
    invoke-virtual {v1, v2, v0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->startLoading(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Callback;I)J

    move-result-wide v15

    .line 145
    iget-object v4, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    const/4 v6, 0x1

    const/4 v7, -0x1

    iget-object v8, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    iget-wide v13, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    invoke-virtual/range {v4 .. v16}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJ)V

    .line 155
    const/4 v1, 0x1

    return v1

    .line 138
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public final discardBuffer(JZ)V
    .locals 0

    .line 128
    return-void
.end method

.method public final getAdjustedSeekPositionUs(JLccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)J
    .locals 0

    .line 187
    return-wide p1
.end method

.method public final getBufferedPositionUs()J
    .locals 2

    .line 174
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-eqz v0, :cond_0

    const-wide/high16 v0, -0x8000000000000000L

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    .line 169
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->isLoading()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    :goto_1
    return-wide v0
.end method

.method public final getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->tracks:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final maybeThrowPrepareError()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    return-void
.end method

.method public final onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    .line 216
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object/from16 v3, p1

    iget-object v2, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-wide v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 227
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v16, v3

    .line 216
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    invoke-virtual/range {v1 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 228
    return-void
.end method

.method public final bridge synthetic onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJZ)V
    .locals 7

    .line 38
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJZ)V

    return-void
.end method

.method public final onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v12, p2

    move-wide/from16 v14, p4

    .line 195
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object/from16 v8, p1

    iget-object v2, v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    iget-wide v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 206
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v16, v3

    .line 195
    const/4 v3, 0x1

    const/4 v4, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v18, 0x0

    move-wide/from16 v8, v18

    invoke-virtual/range {v1 .. v17}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJJ)V

    .line 207
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I

    move-result v1

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->sampleSize:I

    .line 208
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$200(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)[B

    move-result-object v1

    iput-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->sampleData:[B

    .line 209
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 210
    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loadingSucceeded:Z

    .line 211
    return-void
.end method

.method public final bridge synthetic onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJ)V
    .locals 6

    .line 38
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJ)V

    return-void
.end method

.method public final onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;)I
    .locals 24

    .line 233
    move-object/from16 v0, p0

    iget v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->errorCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->errorCount:I

    .line 234
    iget-boolean v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->treatLoadErrorsAsEndOfStream:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    iget v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->minLoadableRetryCount:I

    if-lt v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 235
    :goto_0
    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    move-object/from16 v3, p1

    iget-object v6, v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->dataSpec:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;

    const/4 v7, 0x1

    const/4 v8, -0x1

    iget-object v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->format:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    iget-wide v14, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->durationUs:J

    .line 246
    invoke-static/range {p1 .. p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;->access$100(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;)I

    move-result v3

    int-to-long v2, v3

    move-wide/from16 v20, v2

    .line 235
    move-wide/from16 v16, p2

    move-wide/from16 v18, p4

    move-object/from16 v22, p6

    move/from16 v23, v1

    invoke-virtual/range {v5 .. v23}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->loadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSpec;IILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;ILjava/lang/Object;JJJJJLjava/io/IOException;Z)V

    .line 249
    if-eqz v1, :cond_1

    .line 250
    const/4 v1, 0x1

    iput-boolean v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loadingFinished:Z

    .line 251
    const/4 v1, 0x2

    return v1

    .line 253
    :cond_1
    return v4
.end method

.method public final bridge synthetic onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader$Loadable;JJLjava/io/IOException;)I
    .locals 7

    .line 38
    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SourceLoadable;JJLjava/io/IOException;)I

    move-result p1

    return p1
.end method

.method public final prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;J)V
    .locals 0

    .line 94
    invoke-interface {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod$Callback;->onPrepared(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    .line 95
    return-void
.end method

.method public final readDiscontinuity()J
    .locals 2

    .line 160
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->notifiedReadingStarted:Z

    if-nez v0, :cond_0

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->readingStarted()V

    .line 162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->notifiedReadingStarted:Z

    .line 164
    :cond_0
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 0

    .line 133
    return-void
.end method

.method public final release()V
    .locals 1

    .line 88
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->loader:Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Loader;->release()V

    .line 89
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->eventDispatcher:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$EventDispatcher;->mediaPeriodReleased()V

    .line 90
    return-void
.end method

.method public final seekToUs(J)J
    .locals 2

    .line 179
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 180
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;->reset()V

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 182
    :cond_0
    return-wide p1
.end method

.method public final selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;[Z[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;[ZJ)J
    .locals 4

    .line 110
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 111
    aget-object v1, p3, v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    aget-boolean v1, p2, v0

    if-nez v1, :cond_1

    .line 112
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    aget-object v3, p3, v0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 113
    aput-object v2, p3, v0

    .line 115
    :cond_1
    aget-object v1, p3, v0

    if-nez v1, :cond_2

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    .line 116
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;

    invoke-direct {v1, p0, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$SampleStreamImpl;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod$1;)V

    .line 117
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SingleSampleMediaPeriod;->sampleStreams:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    aput-object v1, p3, v0

    .line 119
    const/4 v1, 0x1

    aput-boolean v1, p4, v0

    .line 110
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 122
    :cond_3
    return-wide p5
.end method
