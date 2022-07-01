.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ExoPlayerImpl"


# instance fields
.field private final emptyTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

.field private final eventHandler:Lccsanandroid/os/Handler;

.field private hasPendingPrepare:Z

.field private hasPendingSeek:Z

.field private final internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

.field private final internalPlayerHandler:Lccsanandroid/os/Handler;

.field private final listeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private maskingPeriodIndex:I

.field private maskingWindowIndex:I

.field private maskingWindowPositionMs:J

.field private pendingOperationAcks:I

.field private final pendingPlaybackInfoUpdates:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;",
            ">;"
        }
    .end annotation
.end field

.field private final period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

.field private playWhenReady:Z

.field private playbackError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

.field private playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

.field private playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

.field private final renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

.field private repeatMode:I

.field private shuffleModeEnabled:Z

.field private final trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

.field private final window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;


# direct methods
.method public constructor <init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V
    .locals 13

    .line 89
    move-object v11, p0

    move-object v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Init "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ExoPlayerLib/2.8.4"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ExoPlayerImpl"

    invoke-static {v2, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    array-length v0, v1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkState(Z)V

    .line 93
    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    .line 94
    invoke-static {p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

    .line 95
    iput-boolean v2, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 96
    iput v2, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 97
    iput-boolean v2, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 98
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 99
    new-instance v8, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    array-length v0, v1

    new-array v0, v0, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;

    array-length v2, v1

    new-array v2, v2, [Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;

    const/4 v3, 0x0

    invoke-direct {v8, v0, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/RendererConfiguration;[Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelection;Ljava/lang/Object;)V

    iput-object v8, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    .line 104
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;-><init>()V

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    .line 105
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 106
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 107
    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    .line 108
    :goto_1
    new-instance v9, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$1;

    invoke-direct {v9, p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$1;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;Lccsanandroid/os/Looper;)V

    iput-object v9, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->eventHandler:Lccsanandroid/os/Handler;

    .line 114
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    sget-object v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    const-wide/16 v4, 0x0

    sget-object v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    move-object v2, v0

    move-object v7, v8

    invoke-direct/range {v2 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;JLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    .line 120
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingPlaybackInfoUpdates:Ljava/util/ArrayDeque;

    .line 121
    new-instance v12, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    iget-boolean v5, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    iget v6, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v7, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    move-object v0, v12

    move-object v1, p1

    move-object v2, p2

    move-object v3, v8

    move-object/from16 v4, p3

    move-object v8, v9

    move-object v9, p0

    move-object/from16 v10, p4

    invoke-direct/range {v0 .. v10}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;-><init>([Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;ZIZLccsanandroid/os/Handler;Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer;Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;)V

    iput-object v12, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    .line 133
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-virtual {v12}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->getPlaybackLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, v11, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayerHandler:Lccsanandroid/os/Handler;

    .line 134
    return-void
.end method

.method private getResetPlaybackInfo(ZZI)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;
    .locals 15

    .line 638
    move-object v0, p0

    if-eqz p1, :cond_0

    .line 639
    const/4 v1, 0x0

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 640
    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 641
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    goto :goto_0

    .line 643
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 644
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentPeriodIndex()I

    move-result v1

    iput v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 645
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 647
    :goto_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    .line 648
    if-eqz p2, :cond_1

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    goto :goto_1

    :cond_1
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    :goto_1
    move-object v4, v2

    .line 649
    if-eqz p2, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    :goto_2
    move-object v5, v2

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v6, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-wide v7, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-wide v9, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    const/4 v12, 0x0

    .line 655
    if-eqz p2, :cond_3

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;->EMPTY:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    goto :goto_3

    :cond_3
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    :goto_3
    move-object v13, v2

    .line 656
    if-eqz p2, :cond_4

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->emptyTrackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    goto :goto_4

    :cond_4
    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    :goto_4
    move-object v14, v2

    move-object v3, v1

    move/from16 v11, p3

    invoke-direct/range {v3 .. v14}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJIZLccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;)V

    .line 647
    return-object v1
.end method

.method private handlePlaybackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;IZI)V
    .locals 7

    .line 603
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    sub-int/2addr v0, p2

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 604
    if-nez v0, :cond_4

    .line 605
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->startPositionUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v0, v2

    if-nez p2, :cond_0

    .line 607
    iget-object v1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    const-wide/16 v2, 0x0

    iget-wide v4, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    .line 608
    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->fromNewPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;JJ)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    move-result-object p1

    move-object v1, p1

    goto :goto_0

    .line 605
    :cond_0
    move-object v1, p1

    .line 611
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->hasPendingPrepare:Z

    if-eqz p1, :cond_2

    :cond_1
    iget-object p1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 612
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 614
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 615
    iput p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 616
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 620
    :cond_2
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->hasPendingPrepare:Z

    if-eqz p1, :cond_3

    .line 621
    const/4 v4, 0x0

    goto :goto_1

    .line 622
    :cond_3
    const/4 p1, 0x2

    const/4 v4, 0x2

    .line 623
    :goto_1
    iget-boolean v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->hasPendingSeek:Z

    .line 624
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->hasPendingPrepare:Z

    .line 625
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->hasPendingSeek:Z

    .line 626
    const/4 v6, 0x0

    move-object v0, p0

    move v2, p3

    move v3, p4

    invoke-direct/range {v0 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;ZIIZZ)V

    .line 634
    :cond_4
    return-void
.end method

.method private playbackInfoPositionUsToWindowPositionMs(J)J
    .locals 3

    .line 691
    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->usToMs(J)J

    move-result-wide p1

    .line 692
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 693
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 694
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    add-long/2addr p1, v0

    .line 696
    :cond_0
    return-wide p1
.end method

.method private shouldMaskPosition()Z
    .locals 1

    .line 700
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private updatePlaybackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;ZIIZZ)V
    .locals 15

    .line 666
    move-object v0, p0

    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingPlaybackInfoUpdates:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    .line 667
    xor-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingPlaybackInfoUpdates:Ljava/util/ArrayDeque;

    new-instance v14, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;

    iget-object v5, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v6, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    iget-object v7, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->trackSelector:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;

    iget-boolean v12, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    move-object v3, v14

    move-object/from16 v4, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    move/from16 v13, p6

    invoke-direct/range {v3 .. v13}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;Ljava/util/Set;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;ZIIZZZ)V

    invoke-virtual {v2, v14}, Ljava/util/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 680
    move-object/from16 v2, p1

    iput-object v2, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    .line 681
    if-eqz v1, :cond_0

    .line 682
    return-void

    .line 684
    :cond_0
    :goto_0
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingPlaybackInfoUpdates:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 685
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingPlaybackInfoUpdates:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peekFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl$PlaybackInfoUpdate;->notifyListeners()V

    .line 686
    iget-object v1, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingPlaybackInfoUpdates:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    goto :goto_0

    .line 688
    :cond_1
    return-void
.end method


# virtual methods
.method public final addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V
    .locals 1

    .line 153
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 154
    return-void
.end method

.method public final varargs blockingSendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 7

    .line 397
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 398
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p1, v3

    .line 399
    iget-object v5, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;

    .line 400
    invoke-virtual {p0, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v5

    iget v6, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    .line 401
    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v5

    iget-object v4, v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    .line 402
    invoke-virtual {v5, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v4

    .line 403
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->send()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v4

    .line 399
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 405
    :cond_0
    nop

    .line 406
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    .line 407
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 408
    :goto_2
    if-eqz v4, :cond_1

    .line 410
    :try_start_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->blockUntilDelivered()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    .line 411
    nop

    .line 416
    const/4 v4, 0x0

    goto :goto_2

    .line 414
    :catch_0
    move-exception v5

    .line 415
    invoke-virtual {v5}, Ljava/util/concurrent/TimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ExoPlayerImpl"

    invoke-static {v6, v5}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    goto :goto_2

    .line 412
    :catch_1
    move-exception v0

    .line 413
    nop

    .line 416
    const/4 v0, 0x1

    goto :goto_2

    .line 418
    :cond_1
    goto :goto_1

    .line 419
    :cond_2
    if-eqz v0, :cond_3

    .line 421
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 423
    :cond_3
    return-void
.end method

.method public final createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;
    .locals 7

    .line 387
    new-instance v6, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v3, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 391
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayerHandler:Lccsanandroid/os/Handler;

    move-object v0, v6

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Sender;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;ILccsanandroid/os/Handler;)V

    .line 387
    return-object v6
.end method

.method public final getBufferedPercentage()I
    .locals 9

    .line 494
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getBufferedPosition()J

    move-result-wide v0

    .line 495
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getDuration()J

    move-result-wide v2

    .line 496
    const/16 v4, 0x64

    const/4 v5, 0x0

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v0, v6

    if-eqz v8, :cond_2

    cmp-long v8, v2, v6

    if-nez v8, :cond_0

    goto :goto_0

    .line 497
    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v8, v2, v6

    if-nez v8, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v6, 0x64

    mul-long v0, v0, v6

    div-long/2addr v0, v2

    long-to-int v1, v0

    invoke-static {v1, v5, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->constrainValue(III)I

    move-result v4

    goto :goto_1

    .line 496
    :cond_2
    :goto_0
    const/4 v4, 0x0

    :goto_1
    return v4
.end method

.method public final getBufferedPosition()J
    .locals 2

    .line 485
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 486
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 488
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->bufferedPositionUs:J

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfoPositionUsToWindowPositionMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getContentPosition()J
    .locals 4

    .line 529
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 531
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-wide v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->contentPositionUs:J

    invoke-static {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 533
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentAdGroupIndex()I
    .locals 1

    .line 519
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getCurrentAdIndexInAdGroup()I
    .locals 1

    .line 524
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final getCurrentManifest()Ljava/lang/Object;
    .locals 1

    .line 564
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->manifest:Ljava/lang/Object;

    return-object v0
.end method

.method public final getCurrentPeriodIndex()I
    .locals 1

    .line 427
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 428
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    return v0

    .line 430
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    return v0
.end method

.method public final getCurrentPosition()J
    .locals 2

    .line 475
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    return-wide v0

    .line 478
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-wide v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->positionUs:J

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfoPositionUsToWindowPositionMs(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getCurrentTag()Ljava/lang/Object;
    .locals 4

    .line 333
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    .line 334
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 335
    const/4 v0, 0x0

    goto :goto_0

    .line 336
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Z)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->tag:Ljava/lang/Object;

    .line 334
    :goto_0
    return-object v0
.end method

.method public final getCurrentTimeline()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;
    .locals 1

    .line 559
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    return-object v0
.end method

.method public final getCurrentTrackGroups()Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;
    .locals 1

    .line 549
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackGroups:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;

    return-object v0
.end method

.method public final getCurrentTrackSelections()Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;
    .locals 1

    .line 554
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->trackSelectorResult:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectorResult;->selections:Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;

    return-object v0
.end method

.method public final getCurrentWindowIndex()I
    .locals 3

    .line 436
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    return v0

    .line 439
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    move-result-object v0

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->windowIndex:I

    return v0
.end method

.method public final getDuration()J
    .locals 4

    .line 459
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 460
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    return-wide v0

    .line 463
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 464
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    .line 465
    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->periodIndex:I

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriod(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 466
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    iget v2, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adGroupIndex:I

    iget v1, v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->adIndexInAdGroup:I

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;->getAdDurationUs(II)J

    move-result-wide v0

    .line 467
    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->usToMs(J)J

    move-result-wide v0

    return-wide v0

    .line 469
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public final getNextWindowIndex()I
    .locals 4

    .line 445
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 446
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 447
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getNextWindowIndex(IIZ)I

    move-result v0

    .line 446
    :goto_0
    return v0
.end method

.method public final getPlayWhenReady()Z
    .locals 1

    .line 215
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    return v0
.end method

.method public final getPlaybackError()Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;
    .locals 1

    .line 168
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    return-object v0
.end method

.method public final getPlaybackLooper()Lccsanandroid/os/Looper;
    .locals 1

    .line 148
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->getPlaybackLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
    .locals 1

    .line 320
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    return-object v0
.end method

.method public final getPlaybackState()I
    .locals 1

    .line 163
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->playbackState:I

    return v0
.end method

.method public final getPreviousWindowIndex()I
    .locals 4

    .line 452
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 453
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    .line 454
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->repeatMode:I

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPreviousWindowIndex(IIZ)I

    move-result v0

    .line 453
    :goto_0
    return v0
.end method

.method public final getRendererCount()I
    .locals 1

    .line 539
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    array-length v0, v0

    return v0
.end method

.method public final getRendererType(I)I
    .locals 1

    .line 544
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->renderers:[Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;

    aget-object p1, v0, p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Renderer;->getTrackType()I

    move-result p1

    return p1
.end method

.method public final getRepeatMode()I
    .locals 1

    .line 231
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->repeatMode:I

    return v0
.end method

.method public final getShuffleModeEnabled()Z
    .locals 1

    .line 247
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    return v0
.end method

.method public final getTextComponent()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$TextComponent;
    .locals 1

    .line 143
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getVideoComponent()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;
    .locals 1

    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method final handleEvent(Lccsanandroid/os/Message;)V
    .locals 4

    .line 569
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 594
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 587
    :pswitch_0
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    .line 588
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    .line 589
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 590
    invoke-interface {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V

    .line 591
    goto :goto_0

    .line 592
    :cond_0
    goto :goto_3

    .line 578
    :pswitch_1
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 579
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 580
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackParameters:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 581
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 582
    invoke-interface {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 583
    goto :goto_1

    :cond_1
    goto :goto_3

    .line 571
    :pswitch_2
    iget-object v0, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget v1, p1, Lccsanandroid/os/Message;->arg1:I

    iget v2, p1, Lccsanandroid/os/Message;->arg2:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    iget p1, p1, Lccsanandroid/os/Message;->arg2:I

    invoke-direct {p0, v0, v1, v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->handlePlaybackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;IZI)V

    .line 576
    nop

    .line 596
    :cond_3
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final isCurrentWindowDynamic()Z
    .locals 3

    .line 502
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 503
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->isDynamic:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isCurrentWindowSeekable()Z
    .locals 3

    .line 508
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 509
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v1

    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v0

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->isSeekable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 252
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-boolean v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->isLoading:Z

    return v0
.end method

.method public final isPlayingAd()Z
    .locals 1

    .line 514
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shouldMaskPosition()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->periodId:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource$MediaPeriodId;->isAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V
    .locals 1

    .line 173
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V

    .line 174
    return-void
.end method

.method public final prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V
    .locals 8

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    .line 179
    nop

    .line 180
    const/4 v0, 0x2

    invoke-direct {p0, p2, p3, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getResetPlaybackInfo(ZZI)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 186
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->hasPendingPrepare:Z

    .line 187
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 188
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;ZZ)V

    .line 189
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;ZIIZZ)V

    .line 196
    return-void
.end method

.method public final release()V
    .locals 3

    .line 371
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Release "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ExoPlayerLib/2.8.4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->DEVICE_DEBUG_INFO:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-static {}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerLibraryInfo;->registeredModules()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 371
    const-string v1, "ExoPlayerImpl"

    invoke-static {v1, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->release()V

    .line 375
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->eventHandler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 376
    return-void
.end method

.method public final removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V
    .locals 1

    .line 158
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 159
    return-void
.end method

.method public final seekTo(IJ)V
    .locals 10

    .line 272
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    iget-object v0, v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;->timeline:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;

    .line 273
    if-ltz p1, :cond_6

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindowCount()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 276
    :cond_0
    const/4 v7, 0x1

    iput-boolean v7, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->hasPendingSeek:Z

    .line 277
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v7

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 278
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->isPlayingAd()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 282
    const-string p1, "ExoPlayerImpl"

    const-string p2, "seekTo ignored because an ad is playing"

    invoke-static {p1, p2}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->eventHandler:Lccsanandroid/os/Handler;

    const/4 p2, -0x1

    iget-object p3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    .line 284
    invoke-virtual {p1, v2, v7, p2, p3}, Lccsanandroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    .line 289
    invoke-virtual {p1}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 290
    return-void

    .line 292
    :cond_1
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowIndex:I

    .line 293
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v1, :cond_3

    .line 294
    cmp-long v1, p2, v3

    if-nez v1, :cond_2

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_2
    move-wide v3, p2

    :goto_0
    iput-wide v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 295
    iput v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    goto :goto_2

    .line 297
    :cond_3
    cmp-long v1, p2, v3

    if-nez v1, :cond_4

    .line 298
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    invoke-virtual {v0, p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getWindow(ILccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;->getDefaultPositionUs()J

    move-result-wide v1

    goto :goto_1

    :cond_4
    invoke-static {p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->msToUs(J)J

    move-result-wide v1

    :goto_1
    move-wide v8, v1

    .line 299
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->window:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->period:Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;

    .line 300
    move-object v1, v0

    move v4, p1

    move-wide v5, v8

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;->getPeriodPosition(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Window;Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline$Period;IJ)Lccsanandroid/util/Pair;

    move-result-object v1

    .line 301
    invoke-static {v8, v9}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->usToMs(J)J

    move-result-wide v2

    iput-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingWindowPositionMs:J

    .line 302
    iget-object v1, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->maskingPeriodIndex:I

    .line 304
    :goto_2
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-static {p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/C;->msToUs(J)J

    move-result-wide p2

    invoke-virtual {v1, v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->seekTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;IJ)V

    .line 305
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 306
    invoke-interface {p2, v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onPositionDiscontinuity(I)V

    .line 307
    goto :goto_3

    .line 308
    :cond_5
    return-void

    .line 274
    :cond_6
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;

    invoke-direct {v1, v0, p1, p2, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/IllegalSeekPositionException;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;IJ)V

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public final seekTo(J)V
    .locals 1

    .line 267
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 268
    return-void
.end method

.method public final seekToDefaultPosition()V
    .locals 1

    .line 257
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getCurrentWindowIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->seekToDefaultPosition(I)V

    .line 258
    return-void
.end method

.method public final seekToDefaultPosition(I)V
    .locals 2

    .line 262
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->seekTo(IJ)V

    .line 263
    return-void
.end method

.method public final varargs sendMessages([Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;)V
    .locals 5

    .line 380
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 381
    iget-object v3, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->target:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;

    invoke-virtual {p0, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->createMessage(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage$Target;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    iget v4, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->messageType:I

    invoke-virtual {v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setType(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v3

    iget-object v2, v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayer$ExoPlayerMessage;->message:Ljava/lang/Object;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;->send()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlayerMessage;

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method public final setPlayWhenReady(Z)V
    .locals 8

    .line 200
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    if-eq v0, p1, :cond_0

    .line 201
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playWhenReady:Z

    .line 202
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->setPlayWhenReady(Z)V

    .line 203
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackInfo:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;ZIIZZ)V

    .line 211
    :cond_0
    return-void
.end method

.method public final setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 1

    .line 312
    if-nez p1, :cond_0

    .line 313
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    .line 315
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 316
    return-void
.end method

.method public final setRepeatMode(I)V
    .locals 2

    .line 220
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->repeatMode:I

    if-eq v0, p1, :cond_0

    .line 221
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->repeatMode:I

    .line 222
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->setRepeatMode(I)V

    .line 223
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 224
    invoke-interface {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onRepeatModeChanged(I)V

    .line 225
    goto :goto_0

    .line 227
    :cond_0
    return-void
.end method

.method public final setSeekParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)V
    .locals 1

    .line 325
    if-nez p1, :cond_0

    .line 326
    sget-object p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;->DEFAULT:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;

    .line 328
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->setSeekParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/SeekParameters;)V

    .line 329
    return-void
.end method

.method public final setShuffleModeEnabled(Z)V
    .locals 2

    .line 236
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 237
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->shuffleModeEnabled:Z

    .line 238
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->setShuffleModeEnabled(Z)V

    .line 239
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->listeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;

    .line 240
    invoke-interface {v1, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;->onShuffleModeEnabledChanged(Z)V

    .line 241
    goto :goto_0

    .line 243
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 1

    .line 341
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->stop(Z)V

    .line 342
    return-void
.end method

.method public final stop(Z)V
    .locals 8

    .line 346
    if-eqz p1, :cond_0

    .line 347
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->playbackError:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;

    .line 349
    :cond_0
    nop

    .line 350
    const/4 v0, 0x1

    invoke-direct {p0, p1, p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->getResetPlaybackInfo(ZZI)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;

    move-result-object v2

    .line 358
    iget v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    add-int/2addr v1, v0

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->pendingOperationAcks:I

    .line 359
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->internalPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImplInternal;->stop(Z)V

    .line 360
    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerImpl;->updatePlaybackInfo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackInfo;ZIIZZ)V

    .line 367
    return-void
.end method
