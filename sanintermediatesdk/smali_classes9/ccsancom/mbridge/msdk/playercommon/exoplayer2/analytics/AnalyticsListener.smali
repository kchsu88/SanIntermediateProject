.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;
.super Ljava/lang/Object;
.source "AnalyticsListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;
    }
.end annotation


# virtual methods
.method public abstract onAudioSessionId(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onAudioUnderrun(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onBandwidthEstimate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
.end method

.method public abstract onDecoderDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onDecoderEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onDecoderInitialized(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
.end method

.method public abstract onDecoderInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
.end method

.method public abstract onDownstreamFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
.end method

.method public abstract onDrmKeysLoaded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRemoved(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmKeysRestored(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onDrmSessionManagerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
.end method

.method public abstract onDroppedVideoFrames(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
.end method

.method public abstract onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
.end method

.method public abstract onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
.end method

.method public abstract onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
.end method

.method public abstract onLoadStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
.end method

.method public abstract onLoadingChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onMediaPeriodCreated(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onMediaPeriodReleased(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V
.end method

.method public abstract onNetworkTypeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsanandroid/net/NetworkInfo;)V
.end method

.method public abstract onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
.end method

.method public abstract onPlayerStateChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
.end method

.method public abstract onPositionDiscontinuity(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onReadingStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onRenderedFirstFrame(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsanandroid/view/Surface;)V
.end method

.method public abstract onRepeatModeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onSeekProcessed(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onSeekStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
.end method

.method public abstract onShuffleModeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
.end method

.method public abstract onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
.end method

.method public abstract onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
.end method

.method public abstract onUpstreamDiscarded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
.end method

.method public abstract onVideoSizeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
.end method

.method public abstract onViewportSizeChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
.end method
