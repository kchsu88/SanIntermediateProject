.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink;
.super Ljava/lang/Object;
.source "AudioSink.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$WriteException;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$InitializationException;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$ConfigurationException;,
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$Listener;
    }
.end annotation


# static fields
.field public static final CURRENT_POSITION_NOT_SET:J = -0x8000000000000000L


# virtual methods
.method public abstract configure(IIII[III)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$ConfigurationException;
        }
    .end annotation
.end method

.method public abstract disableTunneling()V
.end method

.method public abstract enableTunnelingV21(I)V
.end method

.method public abstract getCurrentPositionUs(Z)J
.end method

.method public abstract getPlaybackParameters()Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
.end method

.method public abstract handleBuffer(Ljava/nio/ByteBuffer;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$InitializationException;,
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract handleDiscontinuity()V
.end method

.method public abstract hasPendingData()Z
.end method

.method public abstract isEncodingSupported(I)Z
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
            Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation
.end method

.method public abstract release()V
.end method

.method public abstract reset()V
.end method

.method public abstract setAudioAttributes(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioAttributes;)V
.end method

.method public abstract setAudioSessionId(I)V
.end method

.method public abstract setListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioSink$Listener;)V
.end method

.method public abstract setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;
.end method

.method public abstract setVolume(F)V
.end method
