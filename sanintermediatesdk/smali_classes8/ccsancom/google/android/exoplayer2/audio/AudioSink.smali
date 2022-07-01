.class public interface abstract Lccsancom/google/android/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/audio/AudioSink$SinkFormatSupport;,
        Lccsancom/google/android/exoplayer2/audio/AudioSink$UnexpectedDiscontinuityException;,
        Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;,
        Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
        Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
        Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L

.field public static final SINK_FORMAT_SUPPORTED_DIRECTLY:I = 0x2

.field public static final SINK_FORMAT_SUPPORTED_WITH_TRANSCODING:I = 0x1

.field public static final SINK_FORMAT_UNSUPPORTED:I


# virtual methods
.method public abstract configure(Lccsancom/google/android/exoplayer2/Format;I[I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21()V
.end method

.method public abstract experimentalFlushWithoutAudioTrackRelease()V
.end method

.method public abstract flush()V
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getFormatSupport(Lccsancom/google/android/exoplayer2/Format;)I
.end method

.method public abstract getPlaybackParameters()Lccsancom/google/android/exoplayer2/PlaybackParameters;
.end method

.method public abstract getSkipSilenceEnabled()Z
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;JI)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEnded()Z
.end method

.method public abstract pause()V
.end method

.method public abstract play()V
.end method

.method public abstract playToEndOfStream()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setAuxEffectInfo(Lccsancom/google/android/exoplayer2/audio/AuxEffectInfo;)V
.end method

.method public abstract setListener(Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;)V
.end method

.method public abstract setPlaybackParameters(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
.end method

.method public abstract setSkipSilenceEnabled(Z)V
.end method

.method public abstract setVolume(F)V
.end method

.method public abstract supportsFormat(Lccsancom/google/android/exoplayer2/Format;)Z
.end method
