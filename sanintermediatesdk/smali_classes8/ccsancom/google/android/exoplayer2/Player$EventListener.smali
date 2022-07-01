.class public interface abstract Lccsancom/google/android/exoplayer2/Player$EventListener;
.super Ljava/lang/Object;
.source "Player.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EventListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Commands;)V
.end method

.method public abstract onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V
.end method

.method public abstract onIsLoadingChanged(Z)V
.end method

.method public abstract onIsPlayingChanged(Z)V
.end method

.method public abstract onLoadingChanged(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onMaxSeekToPreviousPositionChanged(J)V
.end method

.method public abstract onMediaItemTransition(Lccsancom/google/android/exoplayer2/MediaItem;I)V
.end method

.method public abstract onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onPlayWhenReadyChanged(ZI)V
.end method

.method public abstract onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlaybackStateChanged(I)V
.end method

.method public abstract onPlaybackSuppressionReasonChanged(I)V
.end method

.method public abstract onPlayerError(Lccsancom/google/android/exoplayer2/PlaybackException;)V
.end method

.method public abstract onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/PlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(ZI)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onPositionDiscontinuity(I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
.end method

.method public abstract onRepeatModeChanged(I)V
.end method

.method public abstract onSeekBackIncrementChanged(J)V
.end method

.method public abstract onSeekForwardIncrementChanged(J)V
.end method

.method public abstract onSeekProcessed()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onShuffleModeEnabledChanged(Z)V
.end method

.method public abstract onTimelineChanged(Lccsancom/google/android/exoplayer2/Timeline;I)V
.end method

.method public abstract onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
.end method

.method public abstract onTracksChanged(Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onTracksInfoChanged(Lccsancom/google/android/exoplayer2/TracksInfo;)V
.end method
