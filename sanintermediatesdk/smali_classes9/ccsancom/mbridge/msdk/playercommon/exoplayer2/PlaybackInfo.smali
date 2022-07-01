.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# instance fields
.field public volatile bufferedPositionUs:J

.field public final contentPositionUs:J

.field public final isLoading:Z

.field public final manifest:Ljava/lang/Object;

.field public final periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final playbackState:I

.field public volatile positionUs:J

.field public final startPositionUs:J

.field public final timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

.field public final trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

.field public final trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;JLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 12

    .line 46
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    const/4 v0, 0x0

    invoke-direct {v3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(I)V

    const/4 v2, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 56
    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 69
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    .line 70
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 71
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    .line 72
    iput-wide p6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    .line 73
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->positionUs:J

    .line 74
    iput-wide p4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 75
    iput p8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    .line 76
    iput-boolean p9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 77
    iput-object p10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    .line 78
    iput-object p11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    .line 79
    return-void
.end method

.method private static copyMutablePositions(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)V
    .locals 2

    .line 177
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->positionUs:J

    iput-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->positionUs:J

    .line 178
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    iput-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 179
    return-void
.end method


# virtual methods
.method public final copyWithIsLoading(Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
    .locals 13

    .line 144
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    move v9, p1

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 155
    invoke-static {p0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->copyMutablePositions(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)V

    .line 156
    return-object v12
.end method

.method public final copyWithPeriodIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
    .locals 13

    .line 96
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 100
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->copyWithPeriodIndex(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    move-result-object v3

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    iget-boolean v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 107
    invoke-static {p0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->copyMutablePositions(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)V

    .line 108
    return-object v12
.end method

.method public final copyWithPlaybackState(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
    .locals 13

    .line 128
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget-boolean v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    move v8, p1

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 139
    invoke-static {p0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->copyMutablePositions(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)V

    .line 140
    return-object v12
.end method

.method public final copyWithTimeline(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
    .locals 13

    .line 112
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    iget-boolean v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v10, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    iget-object v11, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 123
    invoke-static {p0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->copyMutablePositions(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)V

    .line 124
    return-object v12
.end method

.method public final copyWithTrackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
    .locals 13

    .line 161
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-wide v6, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    iget v8, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    iget-boolean v9, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    move-object v0, v12

    move-object v10, p1

    move-object v11, p2

    invoke-direct/range {v0 .. v11}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 172
    invoke-static {p0, v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->copyMutablePositions(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;)V

    .line 173
    return-object v12
.end method

.method public final fromNewPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
    .locals 14

    .line 83
    move-object v0, p0

    new-instance v13, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    .line 88
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v1

    if-eqz v1, :cond_0

    move-wide/from16 v7, p4

    goto :goto_0

    :cond_0
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    move-wide v7, v4

    :goto_0
    iget v9, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    move-object v1, v13

    move-object v4, p1

    move-wide/from16 v5, p2

    invoke-direct/range {v1 .. v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 83
    return-object v13
.end method
