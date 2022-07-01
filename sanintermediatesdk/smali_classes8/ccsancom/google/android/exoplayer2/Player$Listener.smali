.class public interface abstract Lccsancom/google/android/exoplayer2/Player$Listener;
.super Ljava/lang/Object;
.source "Player.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/Player$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/Player;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract onAudioAttributesChanged(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V
.end method

.method public abstract onAudioSessionIdChanged(I)V
.end method

.method public abstract onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Commands;)V
.end method

.method public abstract onCues(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/text/Cue;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onDeviceInfoChanged(Lccsancom/google/android/exoplayer2/DeviceInfo;)V
.end method

.method public abstract onDeviceVolumeChanged(IZ)V
.end method

.method public abstract onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V
.end method

.method public abstract onIsLoadingChanged(Z)V
.end method

.method public abstract onIsPlayingChanged(Z)V
.end method

.method public abstract onMediaItemTransition(Lccsancom/google/android/exoplayer2/MediaItem;I)V
.end method

.method public abstract onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onMetadata(Lccsancom/google/android/exoplayer2/metadata/Metadata;)V
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

.method public abstract onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
.end method

.method public abstract onRenderedFirstFrame()V
.end method

.method public abstract onRepeatModeChanged(I)V
.end method

.method public abstract onSeekBackIncrementChanged(J)V
.end method

.method public abstract onSeekForwardIncrementChanged(J)V
.end method

.method public abstract onShuffleModeEnabledChanged(Z)V
.end method

.method public abstract onSkipSilenceEnabledChanged(Z)V
.end method

.method public abstract onSurfaceSizeChanged(II)V
.end method

.method public abstract onTimelineChanged(Lccsancom/google/android/exoplayer2/Timeline;I)V
.end method

.method public abstract onTracksInfoChanged(Lccsancom/google/android/exoplayer2/TracksInfo;)V
.end method

.method public abstract onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
.end method

.method public abstract onVolumeChanged(F)V
.end method
