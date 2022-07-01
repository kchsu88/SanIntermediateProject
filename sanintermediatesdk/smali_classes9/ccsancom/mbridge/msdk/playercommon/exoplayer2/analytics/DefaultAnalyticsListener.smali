.class public abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/DefaultAnalyticsListener;
.super Ljava/lang/Object;
.source "DefaultAnalyticsListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioSessionId(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 135
    return-void
.end method

.method public onAudioUnderrun(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 139
    return-void
.end method

.method public onBandwidthEstimate(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJJ)V
    .locals 0

    .line 108
    return-void
.end method

.method public onDecoderDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 132
    return-void
.end method

.method public onDecoderEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    .line 121
    return-void
.end method

.method public onDecoderInitialized(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILjava/lang/String;J)V
    .locals 0

    .line 125
    return-void
.end method

.method public onDecoderInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ILccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
    .locals 0

    .line 128
    return-void
.end method

.method public onDownstreamFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    .line 92
    return-void
.end method

.method public onDrmKeysLoaded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 156
    return-void
.end method

.method public onDrmKeysRemoved(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 165
    return-void
.end method

.method public onDrmKeysRestored(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 162
    return-void
.end method

.method public onDrmSessionManagerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Ljava/lang/Exception;)V
    .locals 0

    .line 159
    return-void
.end method

.method public onDroppedVideoFrames(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IJ)V
    .locals 0

    .line 142
    return-void
.end method

.method public onLoadCanceled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    .line 81
    return-void
.end method

.method public onLoadCompleted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    .line 77
    return-void
.end method

.method public onLoadError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;Ljava/io/IOException;Z)V
    .locals 0

    .line 89
    return-void
.end method

.method public onLoadStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$LoadEventInfo;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    .line 73
    return-void
.end method

.method public onLoadingChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 62
    return-void
.end method

.method public onMediaPeriodCreated(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 98
    return-void
.end method

.method public onMediaPeriodReleased(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 101
    return-void
.end method

.method public onMetadata(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/metadata/Metadata;)V
    .locals 0

    .line 117
    return-void
.end method

.method public onNetworkTypeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsanandroid/net/NetworkInfo;)V
    .locals 0

    .line 114
    return-void
.end method

.method public onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 0

    .line 53
    return-void
.end method

.method public onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .locals 0

    .line 65
    return-void
.end method

.method public onPlayerStateChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;ZI)V
    .locals 0

    .line 37
    return-void
.end method

.method public onPositionDiscontinuity(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 43
    return-void
.end method

.method public onReadingStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 104
    return-void
.end method

.method public onRenderedFirstFrame(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsanandroid/view/Surface;)V
    .locals 0

    .line 153
    return-void
.end method

.method public onRepeatModeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 56
    return-void
.end method

.method public onSeekProcessed(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 49
    return-void
.end method

.method public onSeekStarted(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;)V
    .locals 0

    .line 46
    return-void
.end method

.method public onShuffleModeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Z)V
    .locals 0

    .line 59
    return-void
.end method

.method public onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;I)V
    .locals 0

    .line 40
    return-void
.end method

.method public onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 69
    return-void
.end method

.method public onUpstreamDiscarded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSourceEventListener$MediaLoadData;)V
    .locals 0

    .line 95
    return-void
.end method

.method public onVideoSizeChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;IIIF)V
    .locals 0

    .line 150
    return-void
.end method

.method public onViewportSizeChange(Lccsancom/mbridge/msdk/playercommon/exoplayer2/analytics/AnalyticsListener$EventTime;II)V
    .locals 0

    .line 111
    return-void
.end method
