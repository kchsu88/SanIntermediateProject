.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$DefaultEventListener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DefaultEventListener"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingChanged(Z)V
    .locals 0

    .line 299
    return-void
.end method

.method public onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 329
    return-void
.end method

.method public onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .line 319
    return-void
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 0

    .line 304
    return-void
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 324
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 309
    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    .line 334
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 314
    return-void
.end method

.method public onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V
    .locals 0

    .line 343
    return-void
.end method

.method public onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    .line 288
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$DefaultEventListener;->onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;)V

    .line 289
    return-void
.end method

.method public onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 294
    return-void
.end method
