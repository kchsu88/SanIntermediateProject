.class public final synthetic Lccsancom/google/android/exoplayer2/Player$EventListener$-CC;
.super Ljava/lang/Object;
.source "Player.java"


# direct methods
.method public static $default$onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Player$Commands;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "availableCommands"    # Lccsancom/google/android/exoplayer2/Player$Commands;

    .line 190
    return-void
.end method

.method public static $default$onEvents(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/Player$Events;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "player"    # Lccsancom/google/android/exoplayer2/Player;
    .param p2, "events"    # Lccsancom/google/android/exoplayer2/Player$Events;

    .line 405
    return-void
.end method

.method public static $default$onIsLoadingChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "isLoading"    # Z

    .line 175
    return-void
.end method

.method public static $default$onIsPlayingChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "isPlaying"    # Z

    .line 250
    return-void
.end method

.method public static $default$onLoadingChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "isLoading"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 179
    return-void
.end method

.method public static $default$onMaxSeekToPreviousPositionChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "maxSeekToPreviousPositionMs"    # J

    .line 365
    return-void
.end method

.method public static $default$onMediaItemTransition(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/MediaItem;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "mediaItem"    # Lccsancom/google/android/exoplayer2/MediaItem;
    .param p2, "reason"    # I

    .line 117
    return-void
.end method

.method public static $default$onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "mediaMetadata"    # Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 162
    return-void
.end method

.method public static $default$onPlayWhenReadyChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;ZI)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "playWhenReady"    # Z
    .param p2, "reason"    # I

    .line 229
    return-void
.end method

.method public static $default$onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "playbackParameters"    # Lccsancom/google/android/exoplayer2/PlaybackParameters;

    .line 334
    return-void
.end method

.method public static $default$onPlaybackStateChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "playbackState"    # I

    .line 217
    return-void
.end method

.method public static $default$onPlaybackSuppressionReasonChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "playbackSuppressionReason"    # I

    .line 240
    return-void
.end method

.method public static $default$onPlayerError(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "error"    # Lccsancom/google/android/exoplayer2/PlaybackException;

    .line 285
    return-void
.end method

.method public static $default$onPlayerErrorChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/PlaybackException;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "error"    # Lccsancom/google/android/exoplayer2/PlaybackException;

    .line 298
    return-void
.end method

.method public static $default$onPlayerStateChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;ZI)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "playWhenReady"    # Z
    .param p2, "playbackState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    return-void
.end method

.method public static $default$onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "mediaMetadata"    # Lccsancom/google/android/exoplayer2/MediaMetadata;

    .line 165
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "reason"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 304
    return-void
.end method

.method public static $default$onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "oldPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p2, "newPosition"    # Lccsancom/google/android/exoplayer2/Player$PositionInfo;
    .param p3, "reason"    # I

    .line 321
    return-void
.end method

.method public static $default$onRepeatModeChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "repeatMode"    # I

    .line 260
    return-void
.end method

.method public static $default$onSeekBackIncrementChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "seekBackIncrementMs"    # J

    .line 344
    return-void
.end method

.method public static $default$onSeekForwardIncrementChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "seekForwardIncrementMs"    # J

    .line 354
    return-void
.end method

.method public static $default$onSeekProcessed(Lccsancom/google/android/exoplayer2/Player$EventListener;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 373
    return-void
.end method

.method public static $default$onShuffleModeEnabledChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "shuffleModeEnabled"    # Z

    .line 270
    return-void
.end method

.method public static $default$onTimelineChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/Timeline;I)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "timeline"    # Lccsancom/google/android/exoplayer2/Timeline;
    .param p2, "reason"    # I

    .line 101
    return-void
.end method

.method public static $default$onTrackSelectionParametersChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "parameters"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionParameters;

    .line 200
    return-void
.end method

.method public static $default$onTracksChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "trackGroups"    # Lccsancom/google/android/exoplayer2/source/TrackGroupArray;
    .param p2, "trackSelections"    # Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 134
    return-void
.end method

.method public static $default$onTracksInfoChanged(Lccsancom/google/android/exoplayer2/Player$EventListener;Lccsancom/google/android/exoplayer2/TracksInfo;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/Player$EventListener;
    .param p1, "tracksInfo"    # Lccsancom/google/android/exoplayer2/TracksInfo;

    .line 144
    return-void
.end method
