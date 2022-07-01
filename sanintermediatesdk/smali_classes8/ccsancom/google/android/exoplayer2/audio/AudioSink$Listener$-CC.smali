.class public final synthetic Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener$-CC;
.super Ljava/lang/Object;
.source "AudioSink.java"


# direct methods
.method public static $default$onAudioSinkError(Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;Ljava/lang/Exception;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 131
    return-void
.end method

.method public static $default$onOffloadBufferEmptying(Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;

    .line 101
    return-void
.end method

.method public static $default$onOffloadBufferFull(Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;
    .param p1, "bufferEmptyingDeadlineMs"    # J

    .line 109
    return-void
.end method

.method public static $default$onPositionAdvancing(Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;J)V
    .locals 0
    .param p0, "_this"    # Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 77
    return-void
.end method
