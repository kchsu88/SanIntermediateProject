.class public final synthetic Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$-CC;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# direct methods
.method public static $default$onAudioCodecError(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 128
    return-void
.end method

.method public static $default$onAudioDecoderInitialized(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/String;JJ)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 58
    return-void
.end method

.method public static $default$onAudioDecoderReleased(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/String;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 99
    return-void
.end method

.method public static $default$onAudioDisabled(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 106
    return-void
.end method

.method public static $default$onAudioEnabled(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 47
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/Format;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 62
    return-void
.end method

.method public static $default$onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 73
    return-void
.end method

.method public static $default$onAudioPositionAdvancing(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 82
    return-void
.end method

.method public static $default$onAudioSinkError(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 147
    return-void
.end method

.method public static $default$onAudioUnderrun(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;IJJ)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 92
    return-void
.end method

.method public static $default$onSkipSilenceEnabledChanged(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Z)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p1, "skipSilenceEnabled"    # Z

    .line 113
    return-void
.end method
