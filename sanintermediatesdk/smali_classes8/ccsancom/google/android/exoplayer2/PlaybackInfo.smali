.class final Lccsancom/google/android/exoplayer2/PlaybackInfo;
.super Ljava/lang/Object;
.source "PlaybackInfo.java"


# static fields
.field private static final PLACEHOLDER_MEDIA_PERIOD_ID:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;


# instance fields
.field public volatile bufferedPositionUs:J

.field public final discontinuityStartPositionUs:J

.field public final isLoading:Z

.field public final loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final offloadSchedulingEnabled:Z

.field public final periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

.field public final playWhenReady:Z

.field public final playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

.field public final playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

.field public final playbackState:I

.field public final playbackSuppressionReason:I

.field public volatile positionUs:J

.field public final requestedContentPositionUs:J

.field public final sleepingForOffload:Z

.field public final staticMetadata:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/metadata/Metadata;",
            ">;"
        }
    .end annotation
.end field

.field public final timeline:Lccsancom/google/android/exoplayer2/Timeline;

.field public volatile totalBufferedDurationUs:J

.field public final trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

.field public final trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-void
.end method

.method public constructor <init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V
    .locals 16
    .param p1, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;
    .param p2, "periodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p3, "requestedContentPositionUs"    # J
    .param p5, "discontinuityStartPositionUs"    # J
    .param p7, "playbackState"    # I
    .param p8, "playbackError"    # Lccsancom/google/android/exoplayer2/ExoPlaybackException;
    .param p9, "isLoading"    # Z
    .param p10, "trackGroups"    # Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .param p11, "trackSelectorResult"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .param p13, "loadingMediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p14, "playWhenReady"    # Z
    .param p15, "playbackSuppressionReason"    # I
    .param p16, "playbackParameters"    # Lccsancom/google/android/exoplayer2/PlaybackParameters;
    .param p17, "bufferedPositionUs"    # J
    .param p19, "totalBufferedDurationUs"    # J
    .param p21, "positionUs"    # J
    .param p23, "offloadSchedulingEnabled"    # Z
    .param p24, "sleepingForOffload"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/Timeline;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "JJI",
            "Lccsancom/google/android/exoplayer2/ExoPlaybackException;",
            "Z",
            "Lccsancom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/metadata/Metadata;",
            ">;",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "ZI",
            "Lccsancom/google/android/exoplayer2/PlaybackParameters;",
            "JJJZZ)V"
        }
    .end annotation

    .line 166
    .local p12, "staticMetadata":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/metadata/Metadata;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 167
    move-object/from16 v1, p1

    iput-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    .line 168
    move-object/from16 v2, p2

    iput-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 169
    move-wide/from16 v3, p3

    iput-wide v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    .line 170
    move-wide/from16 v5, p5

    iput-wide v5, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    .line 171
    move/from16 v7, p7

    iput v7, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    .line 172
    move-object/from16 v8, p8

    iput-object v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    .line 173
    move/from16 v9, p9

    iput-boolean v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    .line 174
    move-object/from16 v10, p10

    iput-object v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    .line 175
    move-object/from16 v11, p11

    iput-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    .line 176
    move-object/from16 v12, p12

    iput-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    .line 177
    move-object/from16 v13, p13

    iput-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 178
    move/from16 v14, p14

    iput-boolean v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    .line 179
    move/from16 v15, p15

    iput v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    .line 180
    move-object/from16 v1, p16

    iput-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    .line 181
    move-wide/from16 v1, p17

    iput-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    .line 182
    move-wide/from16 v1, p19

    iput-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    .line 183
    move-wide/from16 v1, p21

    iput-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    .line 184
    move/from16 v1, p23

    iput-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    .line 185
    move/from16 v2, p24

    iput-boolean v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    .line 186
    return-void
.end method

.method public static createDummy(Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 26
    .param p0, "emptyTrackSelectorResult"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    move-object/from16 v11, p0

    .line 103
    new-instance v25, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v0, v25

    sget-object v1, Lccsancom/google/android/exoplayer2/Timeline;->EMPTY:Lccsancom/google/android/exoplayer2/Timeline;

    sget-object v13, Lccsancom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object v2, v13

    sget-object v10, Lccsancom/google/android/exoplayer2/source/TrackGroupArray;->EMPTY:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    .line 113
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v12

    sget-object v16, Lccsancom/google/android/exoplayer2/PlaybackParameters;->DEFAULT:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v0 .. v24}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    .line 103
    return-object v25
.end method

.method public static getDummyPeriodForEmptyTimeline()Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .locals 1

    .line 190
    sget-object v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->PLACEHOLDER_MEDIA_PERIOD_ID:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    return-object v0
.end method


# virtual methods
.method public copyWithIsLoading(Z)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "isLoading"    # Z

    move-object/from16 v0, p0

    move/from16 v10, p1

    .line 338
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithLoadingMediaPeriodId(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "loadingMediaPeriodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    .line 368
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithNewPosition(Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJJJLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "periodId"    # Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;
    .param p2, "positionUs"    # J
    .param p4, "requestedContentPositionUs"    # J
    .param p6, "discontinuityStartPositionUs"    # J
    .param p8, "totalBufferedDurationUs"    # J
    .param p10, "trackGroups"    # Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .param p11, "trackSelectorResult"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;",
            "JJJJ",
            "Lccsancom/google/android/exoplayer2/source/TrackGroupArray;",
            "Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/metadata/Metadata;",
            ">;)",
            "Lccsancom/google/android/exoplayer2/PlaybackInfo;"
        }
    .end annotation

    .local p12, "staticMetadata":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/metadata/Metadata;>;"
    move-object/from16 v0, p0

    move-object/from16 v3, p1

    move-wide/from16 v22, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v20, p8

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    .line 218
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithOffloadSchedulingEnabled(Z)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "offloadSchedulingEnabled"    # Z

    move-object/from16 v0, p0

    move/from16 v24, p1

    .line 463
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlayWhenReady(ZI)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackSuppressionReason"    # I

    move-object/from16 v0, p0

    move/from16 v15, p1

    move/from16 v16, p2

    .line 402
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    move-object/from16 v27, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlaybackError(Lccsancom/google/android/exoplayer2/ExoPlaybackException;)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "playbackError"    # Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-object/from16 v0, p0

    move-object/from16 v9, p1

    .line 308
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlaybackParameters(Lccsancom/google/android/exoplayer2/PlaybackParameters;)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "playbackParameters"    # Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v0, p0

    move-object/from16 v17, p1

    .line 432
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithPlaybackState(I)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "playbackState"    # I

    move-object/from16 v0, p0

    move/from16 v8, p1

    .line 278
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithSleepingForOffload(Z)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "sleepingForOffload"    # Z

    move-object/from16 v0, p0

    move/from16 v25, p1

    .line 493
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v2, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->timeline:Lccsancom/google/android/exoplayer2/Timeline;

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method

.method public copyWithTimeline(Lccsancom/google/android/exoplayer2/Timeline;)Lccsancom/google/android/exoplayer2/PlaybackInfo;
    .locals 29
    .param p1, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 248
    new-instance v26, Lccsancom/google/android/exoplayer2/PlaybackInfo;

    move-object/from16 v1, v26

    iget-object v3, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->periodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-wide v4, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->requestedContentPositionUs:J

    iget-wide v6, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->discontinuityStartPositionUs:J

    iget v8, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackState:I

    iget-object v9, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackError:Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    iget-boolean v10, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->isLoading:Z

    iget-object v11, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/google/android/exoplayer2/source/TrackGroupArray;

    iget-object v12, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v13, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->staticMetadata:Ljava/util/List;

    iget-object v14, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->loadingMediaPeriodId:Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-boolean v15, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playWhenReady:Z

    move-object/from16 v27, v1

    iget v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackSuppressionReason:I

    move/from16 v16, v1

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->playbackParameters:Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-object/from16 v17, v1

    move-object/from16 v28, v2

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    move-wide/from16 v18, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->totalBufferedDurationUs:J

    move-wide/from16 v20, v1

    iget-wide v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->positionUs:J

    move-wide/from16 v22, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->offloadSchedulingEnabled:Z

    move/from16 v24, v1

    iget-boolean v1, v0, Lccsancom/google/android/exoplayer2/PlaybackInfo;->sleepingForOffload:Z

    move/from16 v25, v1

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    invoke-direct/range {v1 .. v25}, Lccsancom/google/android/exoplayer2/PlaybackInfo;-><init>(Lccsancom/google/android/exoplayer2/Timeline;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;JJILccsancom/google/android/exoplayer2/ExoPlaybackException;ZLccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectorResult;Ljava/util/List;Lccsancom/google/android/exoplayer2/source/MediaSource$MediaPeriodId;ZILccsancom/google/android/exoplayer2/PlaybackParameters;JJJZZ)V

    return-object v26
.end method
