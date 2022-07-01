.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;
.super Ljava/lang/Object;
.source "MediaPeriodHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaPeriodHolder"


# instance fields
.field public hasEnabledTracks:Z

.field public info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

.field public final mayRetainStreamFlags:[Z

.field public final mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

.field private final mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field public next:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;

.field private periodTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

.field public prepared:Z

.field private final rendererCapabilities:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;

.field public rendererPositionOffsetUs:J

.field public final sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

.field public trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

.field private final trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

.field public trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

.field public final uid:Ljava/lang/Object;


# direct methods
.method public constructor <init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;JLccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;

    .line 77
    iget-wide v0, p8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr p2, v0

    iput-wide p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 78
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

    .line 79
    iput-object p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 80
    invoke-static {p7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->uid:Ljava/lang/Object;

    .line 81
    iput-object p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    .line 82
    array-length p2, p1

    new-array p2, p2, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 83
    array-length p1, p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    .line 84
    iget-object p1, p8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->id:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-interface {p6, p1, p5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->createPeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/Allocator;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    move-result-object p3

    .line 85
    iget-wide p1, p8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 p4, -0x8000000000000000L

    cmp-long p6, p1, p4

    if-eqz p6, :cond_0

    .line 86
    new-instance p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;

    const/4 p4, 0x1

    const-wide/16 p5, 0x0

    iget-wide p7, p8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    move-object p2, p1

    invoke-direct/range {p2 .. p8}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;ZJJ)V

    move-object p3, p1

    .line 93
    :cond_0
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 94
    return-void
.end method

.method private associateNoSampleRenderersWithEmptySampleStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;)V
    .locals 3

    .line 279
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 280
    aget-object v1, v1, v0

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    .line 281
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/EmptySampleStream;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/EmptySampleStream;-><init>()V

    aput-object v1, p1, v0

    .line 279
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 285
    :cond_1
    return-void
.end method

.method private disableTrackSelectionsInResult(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 3

    .line 253
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_1

    .line 254
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 255
    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->selections:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 256
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 257
    invoke-interface {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->disable()V

    .line 253
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 260
    :cond_1
    return-void
.end method

.method private disassociateNoSampleRenderersWithEmptySampleStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;)V
    .locals 3

    .line 267
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 268
    aget-object v1, v1, v0

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    .line 269
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 267
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_1
    return-void
.end method

.method private enableTrackSelectionsInResult(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 3

    .line 243
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->length:I

    if-ge v0, v1, :cond_1

    .line 244
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    .line 245
    iget-object v2, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->selections:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v2, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v2

    .line 246
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    .line 247
    invoke-interface {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->enable()V

    .line 243
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 250
    :cond_1
    return-void
.end method

.method private updatePeriodTrackSelectorResult(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 1

    .line 233
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    if-eqz v0, :cond_0

    .line 234
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->disableTrackSelectionsInResult(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 236
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    .line 237
    if-eqz p1, :cond_1

    .line 238
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->enableTrackSelectionsInResult(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 240
    :cond_1
    return-void
.end method


# virtual methods
.method public final applyTrackSelection(JZ)J
    .locals 1

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;

    array-length v0, v0

    new-array v0, v0, [Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->applyTrackSelection(JZ[Z)J

    move-result-wide p1

    return-wide p1
.end method

.method public final applyTrackSelection(JZ[Z)J
    .locals 11

    .line 182
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    iget v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->length:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_1

    .line 183
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    if-nez p3, :cond_0

    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    .line 184
    invoke-virtual {v4, v5, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;I)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    aput-boolean v3, v2, v1

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_1
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->disassociateNoSampleRenderersWithEmptySampleStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;)V

    .line 190
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    invoke-direct {p0, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->updatePeriodTrackSelectorResult(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 192
    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    iget-object p3, p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->selections:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;

    .line 193
    iget-object v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 195
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v5

    iget-object v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mayRetainStreamFlags:[Z

    iget-object v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    .line 194
    move-object v8, p4

    move-wide v9, p1

    invoke-interface/range {v4 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;[Z[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;[ZJ)J

    move-result-wide p1

    .line 200
    iget-object p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    invoke-direct {p0, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->associateNoSampleRenderersWithEmptySampleStream([Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;)V

    .line 203
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    .line 204
    const/4 p4, 0x0

    :goto_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->sampleStreams:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/SampleStream;

    array-length v2, v1

    if-ge p4, v2, :cond_5

    .line 205
    aget-object v1, v1, p4

    if-eqz v1, :cond_2

    .line 206
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v1, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->isRendererEnabled(I)Z

    move-result v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 208
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;

    aget-object v1, v1, p4

    invoke-interface {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;->getTrackType()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_4

    .line 209
    iput-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    goto :goto_4

    .line 212
    :cond_2
    invoke-virtual {p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;->get(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-static {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 204
    :cond_4
    :goto_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 215
    :cond_5
    return-wide p1
.end method

.method public final continueLoading(J)V
    .locals 1

    .line 156
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    .line 157
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->continueLoading(J)Z

    .line 158
    return-void
.end method

.method public final getBufferedPositionUs(Z)J
    .locals 5

    .line 127
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    .line 128
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    return-wide v0

    .line 130
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    .line 131
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    if-eqz p1, :cond_1

    .line 132
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->durationUs:J

    goto :goto_0

    .line 133
    :cond_1
    nop

    .line 131
    :goto_0
    return-wide v0
.end method

.method public final getDurationUs()J
    .locals 2

    .line 114
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->durationUs:J

    return-wide v0
.end method

.method public final getNextLoadPositionUs()J
    .locals 2

    .line 137
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getNextLoadPositionUs()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public final getRendererOffset()J
    .locals 2

    .line 105
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    return-wide v0
.end method

.method public final handlePrepared(F)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->prepared:Z

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 143
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->selectTracks(F)Z

    .line 144
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    const/4 p1, 0x0

    invoke-virtual {p0, v0, v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->applyTrackSelection(JZ)J

    move-result-wide v0

    .line 145
    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->startPositionUs:J

    sub-long/2addr v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererPositionOffsetUs:J

    .line 146
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->copyWithStartPositionUs(J)Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    .line 147
    return-void
.end method

.method public final isFullyBuffered()Z
    .locals 5

    .line 109
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->hasEnabledTracks:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    .line 110
    invoke-interface {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->getBufferedPositionUs()J

    move-result-wide v0

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 109
    :goto_0
    return v0
.end method

.method public final reevaluateBuffer(J)V
    .locals 1

    .line 150
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->prepared:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->toPeriodTime(J)J

    move-result-wide p1

    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;->reevaluateBuffer(J)V

    .line 153
    :cond_0
    return-void
.end method

.method public final release()V
    .locals 5

    .line 219
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->updatePeriodTrackSelectorResult(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 221
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->info:Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodInfo;->endPositionUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 222
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ClippingMediaPeriod;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V

    goto :goto_0

    .line 224
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->mediaPeriod:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;->releasePeriod(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaPeriod;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    goto :goto_1

    .line 226
    :catch_0
    move-exception v0

    .line 228
    const-string v1, "MediaPeriodHolder"

    const-string v2, "Period release failed."

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :goto_1
    return-void
.end method

.method public final selectTracks(F)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->rendererCapabilities:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 162
    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;->selectTracks([Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererCapabilities;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->periodTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->isEquivalent(Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 164
    return v2

    .line 166
    :cond_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    .line 167
    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->selections:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;->getAll()[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    move-result-object v0

    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 168
    if-eqz v3, :cond_1

    .line 169
    invoke-interface {v3, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;->onPlaybackSpeed(F)V

    .line 167
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public final toPeriodTime(J)J
    .locals 2

    .line 101
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public final toRendererTime(J)J
    .locals 2

    .line 97
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/MediaPeriodHolder;->getRendererOffset()J

    move-result-wide v0

    add-long/2addr p1, v0

    return-wide p1
.end method
