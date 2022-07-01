.class public final Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "AudioRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private final listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;)V
    .locals 1
    .param p1, "handler"    # Lccsanandroid/os/Handler;
    .param p2, "listener"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    .line 163
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 164
    return-void
.end method


# virtual methods
.method public audioCodecError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 251
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 252
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 254
    :cond_0
    return-void
.end method

.method public audioSinkError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 244
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 245
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    :cond_0
    return-void
.end method

.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 176
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 177
    new-instance v8, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 183
    :cond_0
    return-void
.end method

.method public decoderReleased(Ljava/lang/String;)V
    .locals 2
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 218
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 219
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 221
    :cond_0
    return-void
.end method

.method public disabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 225
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 226
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 227
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 233
    :cond_0
    return-void
.end method

.method public enabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 168
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 169
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 171
    :cond_0
    return-void
.end method

.method public inputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 2
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 189
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 190
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 196
    :cond_0
    return-void
.end method

.method public synthetic lambda$audioCodecError$9$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "audioCodecError"    # Ljava/lang/Exception;

    .line 252
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic lambda$audioSinkError$8$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "audioSinkError"    # Ljava/lang/Exception;

    .line 245
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioSinkError(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic lambda$decoderInitialized$1$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 179
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 180
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderInitialized(Ljava/lang/String;JJ)V

    .line 179
    return-void
.end method

.method public synthetic lambda$decoderReleased$5$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Ljava/lang/String;)V
    .locals 1
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 219
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disabled$6$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 229
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 230
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 231
    return-void
.end method

.method public synthetic lambda$enabled$0$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 169
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic lambda$inputFormatChanged$2$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 192
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;)V

    .line 193
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 194
    return-void
.end method

.method public synthetic lambda$positionAdvancing$3$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(J)V
    .locals 1
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 202
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioPositionAdvancing(J)V

    return-void
.end method

.method public synthetic lambda$skipSilenceEnabledChanged$7$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(Z)V
    .locals 1
    .param p1, "skipSilenceEnabled"    # Z

    .line 238
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onSkipSilenceEnabledChanged(Z)V

    return-void
.end method

.method public synthetic lambda$underrun$4$com-google-android-exoplayer2-audio-AudioRendererEventListener$EventDispatcher(IJJ)V
    .locals 7
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 211
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;

    .line 212
    move v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;->onAudioUnderrun(IJJ)V

    .line 211
    return-void
.end method

.method public positionAdvancing(J)V
    .locals 2
    .param p1, "playoutStartSystemTimeMs"    # J

    .line 200
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;J)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    :cond_0
    return-void
.end method

.method public skipSilenceEnabledChanged(Z)V
    .locals 2
    .param p1, "skipSilenceEnabled"    # Z

    .line 237
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 238
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;Z)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 240
    :cond_0
    return-void
.end method

.method public underrun(IJJ)V
    .locals 9
    .param p1, "bufferSize"    # I
    .param p2, "bufferSizeMs"    # J
    .param p4, "elapsedSinceLastFeedMs"    # J

    .line 208
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 209
    new-instance v8, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;IJJ)V

    invoke-virtual {v0, v8}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 214
    :cond_0
    return-void
.end method
