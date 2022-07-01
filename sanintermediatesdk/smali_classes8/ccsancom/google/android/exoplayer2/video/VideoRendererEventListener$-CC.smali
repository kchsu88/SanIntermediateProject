.class public final synthetic Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$-CC;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# direct methods
.method public static $default$onDroppedFrames(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;IJ)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "count"    # I
    .param p2, "elapsedMs"    # J

    .line 84
    return-void
.end method

.method public static $default$onRenderedFirstFrame(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Object;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 122
    return-void
.end method

.method public static $default$onVideoCodecError(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 151
    return-void
.end method

.method public static $default$onVideoDecoderInitialized(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 57
    return-void
.end method

.method public static $default$onVideoDecoderReleased(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 129
    return-void
.end method

.method public static $default$onVideoDisabled(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 136
    return-void
.end method

.method public static $default$onVideoEnabled(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 46
    return-void
.end method

.method public static $default$onVideoFrameProcessingOffset(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;JI)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 104
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    return-void
.end method

.method public static $default$onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 72
    return-void
.end method

.method public static $default$onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
    .param p1, "videoSize"    # Lccsancom/google/android/exoplayer2/video/VideoSize;

    .line 112
    return-void
.end method
