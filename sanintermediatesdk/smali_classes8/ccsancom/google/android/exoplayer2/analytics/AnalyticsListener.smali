.class public interface abstract Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;,
        Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventFlags;,
        Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;
    }
.end annotation


# static fields
.field public static final EVENT_AUDIO_ATTRIBUTES_CHANGED:I = 0x3f8

.field public static final EVENT_AUDIO_CODEC_ERROR:I = 0x40d

.field public static final EVENT_AUDIO_DECODER_INITIALIZED:I = 0x3f1

.field public static final EVENT_AUDIO_DECODER_RELEASED:I = 0x3f5

.field public static final EVENT_AUDIO_DISABLED:I = 0x3f6

.field public static final EVENT_AUDIO_ENABLED:I = 0x3f0

.field public static final EVENT_AUDIO_INPUT_FORMAT_CHANGED:I = 0x3f2

.field public static final EVENT_AUDIO_POSITION_ADVANCING:I = 0x3f3

.field public static final EVENT_AUDIO_SESSION_ID:I = 0x3f7

.field public static final EVENT_AUDIO_SINK_ERROR:I = 0x3fa

.field public static final EVENT_AUDIO_UNDERRUN:I = 0x3f4

.field public static final EVENT_AVAILABLE_COMMANDS_CHANGED:I = 0xd

.field public static final EVENT_BANDWIDTH_ESTIMATE:I = 0x3ee

.field public static final EVENT_DOWNSTREAM_FORMAT_CHANGED:I = 0x3ec

.field public static final EVENT_DRM_KEYS_LOADED:I = 0x407

.field public static final EVENT_DRM_KEYS_REMOVED:I = 0x40a

.field public static final EVENT_DRM_KEYS_RESTORED:I = 0x409

.field public static final EVENT_DRM_SESSION_ACQUIRED:I = 0x406

.field public static final EVENT_DRM_SESSION_MANAGER_ERROR:I = 0x408

.field public static final EVENT_DRM_SESSION_RELEASED:I = 0x40b

.field public static final EVENT_DROPPED_VIDEO_FRAMES:I = 0x3ff

.field public static final EVENT_IS_LOADING_CHANGED:I = 0x3

.field public static final EVENT_IS_PLAYING_CHANGED:I = 0x7

.field public static final EVENT_LOAD_CANCELED:I = 0x3ea

.field public static final EVENT_LOAD_COMPLETED:I = 0x3e9

.field public static final EVENT_LOAD_ERROR:I = 0x3eb

.field public static final EVENT_LOAD_STARTED:I = 0x3e8

.field public static final EVENT_MAX_SEEK_TO_PREVIOUS_POSITION_CHANGED:I = 0x12

.field public static final EVENT_MEDIA_ITEM_TRANSITION:I = 0x1

.field public static final EVENT_MEDIA_METADATA_CHANGED:I = 0xe

.field public static final EVENT_METADATA:I = 0x3ef

.field public static final EVENT_PLAYBACK_PARAMETERS_CHANGED:I = 0xc

.field public static final EVENT_PLAYBACK_STATE_CHANGED:I = 0x4

.field public static final EVENT_PLAYBACK_SUPPRESSION_REASON_CHANGED:I = 0x6

.field public static final EVENT_PLAYER_ERROR:I = 0xa

.field public static final EVENT_PLAYER_RELEASED:I = 0x40c

.field public static final EVENT_PLAYLIST_METADATA_CHANGED:I = 0xf

.field public static final EVENT_PLAY_WHEN_READY_CHANGED:I = 0x5

.field public static final EVENT_POSITION_DISCONTINUITY:I = 0xb

.field public static final EVENT_RENDERED_FIRST_FRAME:I = 0x403

.field public static final EVENT_REPEAT_MODE_CHANGED:I = 0x8

.field public static final EVENT_SEEK_BACK_INCREMENT_CHANGED:I = 0x10

.field public static final EVENT_SEEK_FORWARD_INCREMENT_CHANGED:I = 0x11

.field public static final EVENT_SHUFFLE_MODE_ENABLED_CHANGED:I = 0x9

.field public static final EVENT_SKIP_SILENCE_ENABLED_CHANGED:I = 0x3f9

.field public static final EVENT_SURFACE_SIZE_CHANGED:I = 0x405

.field public static final EVENT_TIMELINE_CHANGED:I = 0x0

.field public static final EVENT_TRACKS_CHANGED:I = 0x2

.field public static final EVENT_UPSTREAM_DISCARDED:I = 0x3ed

.field public static final EVENT_VIDEO_CODEC_ERROR:I = 0x40e

.field public static final EVENT_VIDEO_DECODER_INITIALIZED:I = 0x3fd

.field public static final EVENT_VIDEO_DECODER_RELEASED:I = 0x400

.field public static final EVENT_VIDEO_DISABLED:I = 0x401

.field public static final EVENT_VIDEO_ENABLED:I = 0x3fc

.field public static final EVENT_VIDEO_FRAME_PROCESSING_OFFSET:I = 0x402

.field public static final EVENT_VIDEO_INPUT_FORMAT_CHANGED:I = 0x3fe

.field public static final EVENT_VIDEO_SIZE_CHANGED:I = 0x404

.field public static final EVENT_VOLUME_CHANGED:I = 0x3fb


# virtual methods
.method public abstract onAudioAttributesChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V
.end method

.method public abstract onAudioCodecError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onAudioDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAudioDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
.end method

.method public abstract onAudioDecoderReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onAudioDisabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioEnabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onAudioPositionAdvancing(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onAudioSessionIdChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onAudioSinkError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onAudioUnderrun(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onAvailableCommandsChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Player$Commands;)V
.end method

.method public abstract onBandwidthEstimate(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onDecoderDisabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDecoderEnabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDecoderInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/google/android/exoplayer2/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDownstreamFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onDrmKeysLoaded(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRemoved(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRestored(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onDrmSessionAcquired(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onDrmSessionManagerError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onDrmSessionReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDroppedVideoFrames(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
.end method

.method public abstract onEvents(Lccsancom/google/android/exoplayer2/Player;Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$Events;)V
.end method

.method public abstract onIsLoadingChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onIsPlayingChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onLoadCanceled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadCompleted(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;Ljava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/LoadEventInfo;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onLoadingChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onMaxSeekToPreviousPositionChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onMediaItemTransition(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaItem;I)V
.end method

.method public abstract onMediaMetadataChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onMetadata(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/metadata/Metadata;)V
.end method

.method public abstract onPlayWhenReadyChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
.end method

.method public abstract onPlaybackParametersChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlaybackStateChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onPlaybackSuppressionReasonChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onPlayerError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/PlaybackException;)V
.end method

.method public abstract onPlayerReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onPlayerStateChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPlaylistMetadataChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/MediaMetadata;)V
.end method

.method public abstract onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onPositionDiscontinuity(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Player$PositionInfo;Lccsancom/google/android/exoplayer2/Player$PositionInfo;I)V
.end method

.method public abstract onRenderedFirstFrame(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Object;J)V
.end method

.method public abstract onRepeatModeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onSeekBackIncrementChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onSeekForwardIncrementChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;J)V
.end method

.method public abstract onSeekProcessed(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onSeekStarted(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onShuffleModeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onSkipSilenceEnabledChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onSurfaceSizeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
.end method

.method public abstract onTimelineChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onTracksChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/TrackGroupArray;Lccsancom/google/android/exoplayer2/trackselection/TrackSelectionArray;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onTracksInfoChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/TracksInfo;)V
.end method

.method public abstract onUpstreamDiscarded(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/source/MediaLoadData;)V
.end method

.method public abstract onVideoCodecError(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onVideoDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;J)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoDecoderInitialized(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;JJ)V
.end method

.method public abstract onVideoDecoderReleased(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/String;)V
.end method

.method public abstract onVideoDisabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoEnabled(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onVideoFrameProcessingOffset(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;JI)V
.end method

.method public abstract onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
.end method

.method public abstract onVideoSizeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract onVideoSizeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/google/android/exoplayer2/video/VideoSize;)V
.end method

.method public abstract onVolumeChanged(Lccsancom/google/android/exoplayer2/analytics/AnalyticsListener$EventTime;F)V
.end method
