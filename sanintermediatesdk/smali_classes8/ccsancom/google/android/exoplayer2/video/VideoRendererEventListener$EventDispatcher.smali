.class public final Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;
.super Ljava/lang/Object;
.source "VideoRendererEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EventDispatcher"
.end annotation


# instance fields
.field private final handler:Lccsanandroid/os/Handler;

.field private final listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;)V
    .locals 1
    .param p1, "handler"    # Lccsanandroid/os/Handler;
    .param p2, "listener"    # Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    if-eqz p2, :cond_0

    invoke-static {p1}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    .line 167
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 168
    return-void
.end method


# virtual methods
.method public decoderInitialized(Ljava/lang/String;JJ)V
    .locals 9
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 180
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 181
    new-instance v8, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-direct/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda9;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;JJ)V

    invoke-virtual {v0, v8}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 187
    :cond_0
    return-void
.end method

.method public decoderReleased(Ljava/lang/String;)V
    .locals 2
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 240
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 241
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda8;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 243
    :cond_0
    return-void
.end method

.method public disabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 247
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 248
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 249
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda3;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 255
    :cond_0
    return-void
.end method

.method public droppedFrames(IJ)V
    .locals 2
    .param p1, "droppedFrameCount"    # I
    .param p2, "elapsedMs"    # J

    .line 207
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 208
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda0;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;IJ)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 210
    :cond_0
    return-void
.end method

.method public enabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 2
    .param p1, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 172
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 173
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda4;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_0
    return-void
.end method

.method public inputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 2
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 196
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 197
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda2;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 203
    :cond_0
    return-void
.end method

.method public synthetic lambda$decoderInitialized$1$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/String;JJ)V
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "initializedTimestampMs"    # J
    .param p4, "initializationDurationMs"    # J

    .line 183
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 184
    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-interface/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderInitialized(Ljava/lang/String;JJ)V

    .line 183
    return-void
.end method

.method public synthetic lambda$decoderReleased$7$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/String;)V
    .locals 1
    .param p1, "decoderName"    # Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDecoderReleased(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$disabled$8$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "counters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 251
    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 252
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoDisabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 253
    return-void
.end method

.method public synthetic lambda$droppedFrames$3$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(IJ)V
    .locals 1
    .param p1, "droppedFrameCount"    # I
    .param p2, "elapsedMs"    # J

    .line 208
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    return-void
.end method

.method public synthetic lambda$enabled$0$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 1
    .param p1, "decoderCounters"    # Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 173
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoEnabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    return-void
.end method

.method public synthetic lambda$inputFormatChanged$2$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V
    .locals 1
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;
    .param p2, "decoderReuseEvaluation"    # Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 199
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;)V

    .line 200
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoInputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 201
    return-void
.end method

.method public synthetic lambda$renderedFirstFrame$6$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/Object;J)V
    .locals 1
    .param p1, "output"    # Ljava/lang/Object;
    .param p2, "renderTimeMs"    # J

    .line 234
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onRenderedFirstFrame(Ljava/lang/Object;J)V

    return-void
.end method

.method public synthetic lambda$reportVideoFrameProcessingOffset$4$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(JI)V
    .locals 1
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 217
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    .line 218
    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoFrameProcessingOffset(JI)V

    .line 217
    return-void
.end method

.method public synthetic lambda$videoCodecError$9$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Ljava/lang/Exception;)V
    .locals 1
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 260
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoCodecError(Ljava/lang/Exception;)V

    return-void
.end method

.method public synthetic lambda$videoSizeChanged$5$com-google-android-exoplayer2-video-VideoRendererEventListener$EventDispatcher(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 1
    .param p1, "videoSize"    # Lccsancom/google/android/exoplayer2/video/VideoSize;

    .line 225
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->listener:Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener;->onVideoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    return-void
.end method

.method public renderedFirstFrame(Ljava/lang/Object;)V
    .locals 4
    .param p1, "output"    # Ljava/lang/Object;

    .line 231
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 233
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 234
    .local v0, "renderTimeMs":J
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    new-instance v3, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0, p1, v0, v1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda7;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Object;J)V

    invoke-virtual {v2, v3}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 236
    .end local v0    # "renderTimeMs":J
    :cond_0
    return-void
.end method

.method public reportVideoFrameProcessingOffset(JI)V
    .locals 2
    .param p1, "totalProcessingOffsetUs"    # J
    .param p3, "frameCount"    # I

    .line 214
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 215
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda1;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;JI)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 220
    :cond_0
    return-void
.end method

.method public videoCodecError(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "videoCodecError"    # Ljava/lang/Exception;

    .line 259
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 260
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda6;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public videoSizeChanged(Lccsancom/google/android/exoplayer2/video/VideoSize;)V
    .locals 2
    .param p1, "videoSize"    # Lccsancom/google/android/exoplayer2/video/VideoSize;

    .line 224
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;->handler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 225
    new-instance v1, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher$$ExternalSyntheticLambda5;-><init>(Lccsancom/google/android/exoplayer2/video/VideoRendererEventListener$EventDispatcher;Lccsancom/google/android/exoplayer2/video/VideoSize;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 227
    :cond_0
    return-void
.end method
