.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation


# virtual methods
.method public abstract onLoadingChanged(Z)V
.end method

.method public abstract onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
.end method

.method public abstract onPositionDiscontinuity(I)V
.end method

.method public abstract onRepeatModeChanged(I)V
.end method

.method public abstract onSeekProcessed()V
.end method

.method public abstract onShuffleModeEnabledChanged(Z)V
.end method

.method public abstract onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
.end method

.method public abstract onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
.end method
