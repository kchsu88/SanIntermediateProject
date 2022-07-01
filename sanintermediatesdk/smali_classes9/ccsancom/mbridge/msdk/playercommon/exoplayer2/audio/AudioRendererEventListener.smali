.class public interface abstract Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    }
.end annotation


# virtual methods
.method public abstract onAudioDecoderInitialized(Ljava/lang/String;JJ)V
.end method

.method public abstract onAudioDisabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioEnabled(Lccsancom/mbridge/msdk/playercommon/exoplayer2/decoder/DecoderCounters;)V
.end method

.method public abstract onAudioInputFormatChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Format;)V
.end method

.method public abstract onAudioSessionId(I)V
.end method

.method public abstract onAudioSinkUnderrun(IJJ)V
.end method
