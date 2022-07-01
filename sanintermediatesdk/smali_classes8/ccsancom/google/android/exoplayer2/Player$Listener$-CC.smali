.class public final synthetic Lccsancom/google/android/exoplayer2/Player$Listener$-CC;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method public static $default$onAudioAttributesChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "audioAttributes"    # Lccsancom/google/android/exoplayer2/audio/AudioAttributes;

    .line 1008
    return-void
.end method

.method public static $default$onAudioSessionIdChanged(Lccsancom/google/android/exoplayer2/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "audioSessionId"    # I

    .line 1001
    return-void
.end method

.method public static $default$onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Player$Commands;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "availableCommands"    # Lccsancom/google/android/exoplayer2/Player$Commands;

    .line 955
    return-void
.end method

.method public static $default$onCues(Lccsancom/google/android/exoplayer2/Player$Listener;Ljava/util/List;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 1065
    .local p1, "cues":Ljava/util/List;, "Ljava/util/List<Lccsancom/google/android/exoplayer2/text/Cue;>;"
    return-void
.end method

.method public static $default$onDeviceInfoChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/DeviceInfo;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "deviceInfo"    # Lccsancom/google/android/exoplayer2/DeviceInfo;

    .line 1025
    return-void
.end method

.method public static $default$onDeviceVolumeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;IZ)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "volume"    # I
    .param p2, "muted"    # Z

    .line 1028
    return-void
.end method

.method public static $default$onEvents(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "player"    # Lccsancom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lccsancom/google/android/exoplayer2/Player$Events;

    .line 1031
    return-void
.end method

.method public static $default$onIsLoadingChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "isLoading"    # Z

    .line 952
    return-void
.end method

.method public static $default$onIsPlayingChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "isPlaying"    # Z

    .line 969
    return-void
.end method

.method public static $default$onMediaItemTransition(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/MediaItem;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "reason"    # I

    .line 946
    return-void
.end method

.method public static $default$onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "mediaMetadata"    # Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 1075
    return-void
.end method

.method public static $default$onMetadata(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/metadata/Metadata;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "metadata"    # Lccsancom/google/android/exoplayer2/metadata/Metadata;

    .line 1072
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Lccsancom/google/android/exoplayer2/Player$Listener;ZI)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 962
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "playbackParameters"    # Lccsancom/google/android/exoplayer2/PlaybackParameters;

    .line 988
    return-void
.end method

.method public static $default$onPlaybackStateChanged(Lccsancom/google/android/exoplayer2/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "playbackState"    # I

    .line 958
    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Lccsancom/google/android/exoplayer2/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "playbackSuppressionReason"    # I

    .line 966
    return-void
.end method

.method public static $default$onPlayerError(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "error"    # Lccsancom/google/android/exoplayer2/PlaybackException;

    .line 978
    return-void
.end method

.method public static $default$onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "error"    # Lccsancom/google/android/exoplayer2/PlaybackException;

    .line 981
    return-void
.end method

.method public static $default$onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "mediaMetadata"    # Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 1078
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "oldPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "newPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 985
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Lccsancom/google/android/exoplayer2/Player$Listener;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;

    .line 1055
    return-void
.end method

.method public static $default$onRepeatModeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "repeatMode"    # I

    .line 972
    return-void
.end method

.method public static $default$onSeekBackIncrementChanged(Lccsancom/google/android/exoplayer2/Player$Listener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "seekBackIncrementMs"    # J

    .line 994
    return-void
.end method

.method public static $default$onSeekForwardIncrementChanged(Lccsancom/google/android/exoplayer2/Player$Listener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "seekForwardIncrementMs"    # J

    .line 991
    return-void
.end method

.method public static $default$onShuffleModeEnabledChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "shuffleModeEnabled"    # Z

    .line 975
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "skipSilenceEnabled"    # Z

    .line 1022
    return-void
.end method

.method public static $default$onSurfaceSizeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;II)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 1049
    return-void
.end method

.method public static $default$onTimelineChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/Timeline;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;
    .param p2, "reason"    # I

    .line 942
    return-void
.end method

.method public static $default$onTracksInfoChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/TracksInfo;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "tracksInfo"    # Lccsancom/google/android/exoplayer2/TracksInfo;

    .line 949
    return-void
.end method

.method public static $default$onVideoSizeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "videoSize"    # Lccsancom/google/android/exoplayer2/video/VideoSize;

    .line 1038
    return-void
.end method

.method public static $default$onVolumeChanged(Lccsancom/google/android/exoplayer2/Player$Listener;F)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$Listener;
    .param p1, "volume"    # F

    .line 1015
    return-void
.end method
