.class public abstract Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;
.super Lccsancom/google/android/exoplayer2/BaseRenderer;
.source "DecoderAudioRenderer.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/MediaClock;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lccsancom/google/android/exoplayer2/decoder/Decoder<",
        "Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;",
        "+",
        "Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;",
        "+",
        "Lccsancom/google/android/exoplayer2/decoder/DecoderException;",
        ">;>",
        "Lccsancom/google/android/exoplayer2/BaseRenderer;",
        "Lccsancom/google/android/exoplayer2/util/MediaClock;"
    }
.end annotation


# static fields
.field private static final REINITIALIZATION_STATE_NONE:I = 0x0

.field private static final REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM:I = 0x1

.field private static final REINITIALIZATION_STATE_WAIT_END_OF_STREAM:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DecoderAudioRenderer"


# instance fields
.field private allowFirstBufferPositionDiscontinuity:Z

.field private allowPositionDiscontinuity:Z

.field private final audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

.field private audioTrackNeedsConfigure:Z

.field private currentPositionUs:J

.field private decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

.field private decoderDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

.field private decoderReceivedBuffers:Z

.field private decoderReinitializationState:I

.field private encoderDelay:I

.field private encoderPadding:I

.field private final eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

.field private experimentalKeepAudioTrackOnSeek:Z

.field private final flagsOnlyBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

.field private inputFormat:Lccsancom/google/android/exoplayer2/Format;

.field private inputStreamEnded:Z

.field private outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

.field private outputStreamEnded:Z

.field private sourceDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 145
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lccsancom/google/android/exoplayer2/audio/AudioProcessor;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lccsancom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 146
    return-void
.end method

.method public varargs constructor <init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;[Lccsancom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1
    .param p1, "eventHandler"    # Lccsanandroid/os/Handler;
    .param p2, "eventListener"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioCapabilities"    # Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;
    .param p4, "audioProcessors"    # [Lccsancom/google/android/exoplayer2/audio/AudioProcessor;

    .line 174
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    new-instance v0, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;

    invoke-direct {v0, p3, p4}, Lccsancom/google/android/exoplayer2/audio/DefaultAudioSink;-><init>(Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;[Lccsancom/google/android/exoplayer2/audio/AudioProcessor;)V

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/audio/AudioSink;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/audio/AudioSink;)V
    .locals 3
    .param p1, "eventHandler"    # Lccsanandroid/os/Handler;
    .param p2, "eventListener"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioSink"    # Lccsancom/google/android/exoplayer2/audio/AudioSink;

    .line 187
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/BaseRenderer;-><init>(I)V

    .line 188
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-direct {v1, p1, p2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;-><init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;)V

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    .line 189
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    .line 190
    new-instance v1, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer$AudioSinkListener;-><init>(Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer$1;)V

    invoke-interface {p3, v1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->setListener(Lccsancom/google/android/exoplayer2/audio/AudioSink$Listener;)V

    .line 191
    invoke-static {}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->newNoDataInstance()Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 192
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 193
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 194
    return-void
.end method

.method public varargs constructor <init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;[Lccsancom/google/android/exoplayer2/audio/AudioProcessor;)V
    .locals 1
    .param p1, "eventHandler"    # Lccsanandroid/os/Handler;
    .param p2, "eventListener"    # Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;
    .param p3, "audioProcessors"    # [Lccsancom/google/android/exoplayer2/audio/AudioProcessor;

    .line 158
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;-><init>(Lccsanandroid/os/Handler;Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener;Lccsancom/google/android/exoplayer2/audio/AudioCapabilities;[Lccsancom/google/android/exoplayer2/audio/AudioProcessor;)V

    .line 159
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;)Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;

    .line 83
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    return-object v0
.end method

.method private drainOutputBuffer()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;,
            Lccsancom/google/android/exoplayer2/decoder/DecoderException;,
            Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;,
            Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException;,
            Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 371
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 372
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->dequeueOutputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 373
    if-nez v0, :cond_0

    .line 374
    return v1

    .line 376
    :cond_0
    iget v0, v0, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    if-lez v0, :cond_1

    .line 377
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v0, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iget v3, v3, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->skippedOutputBufferCount:I

    add-int/2addr v2, v3

    iput v2, v0, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->skippedOutputBufferCount:I

    .line 378
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->handleDiscontinuity()V

    .line 382
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->isEndOfStream()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_3

    .line 383
    iget v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    .line 385
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 386
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 388
    iput-boolean v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    goto :goto_0

    .line 390
    :cond_2
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 391
    iput-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 393
    :try_start_0
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_0
    .catch Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 397
    nop

    .line 399
    :goto_0
    return v1

    .line 394
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lccsancom/google/android/exoplayer2/Format;

    iget-boolean v2, v0, Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    const/16 v3, 0x138a

    invoke-virtual {p0, v0, v1, v2, v3}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;ZI)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 402
    .end local v0    # "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :cond_3
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    if-eqz v0, :cond_4

    .line 403
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    .line 404
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getOutputFormat(Lccsancom/google/android/exoplayer2/decoder/Decoder;)Lccsancom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 405
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/Format;->buildUpon()Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 406
    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/Format$Builder;->setEncoderDelay(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    iget v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 407
    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/Format$Builder;->setEncoderPadding(I)Lccsancom/google/android/exoplayer2/Format$Builder;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/Format$Builder;->build()Lccsancom/google/android/exoplayer2/Format;

    move-result-object v0

    .line 409
    .local v0, "outputFormat":Lccsancom/google/android/exoplayer2/Format;
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v4, v0, v1, v2}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->configure(Lccsancom/google/android/exoplayer2/Format;I[I)V

    .line 410
    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 413
    .end local v0    # "outputFormat":Lccsancom/google/android/exoplayer2/Format;
    :cond_4
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iget-object v4, v4, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    iget-object v5, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    iget-wide v5, v5, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->timeUs:J

    invoke-interface {v0, v4, v5, v6, v3}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->handleBuffer(Ljava/nio/ByteBuffer;JI)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 415
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v1, v0, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    add-int/2addr v1, v3

    iput v1, v0, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    .line 416
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 417
    iput-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 418
    return v3

    .line 421
    :cond_5
    return v1
.end method

.method private feedInputBuffer()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/decoder/DecoderException;,
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 425
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    iget v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    if-nez v2, :cond_1

    .line 433
    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->dequeueInputBuffer()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 434
    if-nez v0, :cond_1

    .line 435
    return v1

    .line 439
    :cond_1
    iget v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 440
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->setFlags(I)V

    .line 441
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v0, v4}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 442
    iput-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 443
    iput v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 444
    return v1

    .line 447
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getFormatHolder()Lccsancom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 448
    .local v0, "formatHolder":Lccsancom/google/android/exoplayer2/FormatHolder;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v0, v3, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->readSource(Lccsancom/google/android/exoplayer2/FormatHolder;Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 470
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 450
    :pswitch_0
    return v1

    .line 455
    :pswitch_1
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 456
    iput-boolean v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 457
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    iget-object v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v3, v4}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 458
    iput-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 459
    return v1

    .line 461
    :cond_3
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->flip()V

    .line 462
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    iput-object v3, v1, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->format:Lccsancom/google/android/exoplayer2/Format;

    .line 463
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onQueueInputBuffer(Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V

    .line 464
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-interface {v1, v3}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->queueInputBuffer(Ljava/lang/Object;)V

    .line 465
    iput-boolean v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 466
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v3, v1, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    add-int/2addr v3, v4

    iput v3, v1, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->inputBufferCount:I

    .line 467
    iput-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 468
    return v4

    .line 452
    :pswitch_2
    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onInputFormatChanged(Lccsancom/google/android/exoplayer2/FormatHolder;)V

    .line 453
    return v4

    .line 429
    .end local v0    # "formatHolder":Lccsancom/google/android/exoplayer2/FormatHolder;
    :cond_4
    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private flushDecoder()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 480
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 482
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    goto :goto_0

    .line 484
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 485
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    if-eqz v1, :cond_1

    .line 486
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;->release()V

    .line 487
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 489
    :cond_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->flush()V

    .line 490
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 492
    :goto_0
    return-void
.end method

.method private maybeInitDecoder()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 611
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_0

    .line 612
    return-void

    .line 615
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;)V

    .line 617
    const/4 v0, 0x0

    .line 618
    .local v0, "cryptoConfig":Lccsancom/google/android/exoplayer2/decoder/CryptoConfig;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    if-eqz v1, :cond_2

    .line 619
    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSession;->getCryptoConfig()Lccsancom/google/android/exoplayer2/decoder/CryptoConfig;

    move-result-object v0

    .line 620
    if-nez v0, :cond_2

    .line 621
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/drm/DrmSession;->getError()Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;

    move-result-object v1

    .line 622
    .local v1, "drmError":Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    if-eqz v1, :cond_1

    goto :goto_0

    .line 627
    :cond_1
    return-void

    .line 633
    .end local v1    # "drmError":Lccsancom/google/android/exoplayer2/drm/DrmSession$DrmSessionException;
    :cond_2
    :goto_0
    const/16 v1, 0xfa1

    :try_start_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 634
    .local v2, "codecInitializingTimestamp":J
    const-string v4, "createAudioDecoder"

    invoke-static {v4}, Lccsancom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 635
    iget-object v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v4, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createDecoder(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/CryptoConfig;)Lccsancom/google/android/exoplayer2/decoder/Decoder;

    move-result-object v4

    iput-object v4, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    .line 636
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/TraceUtil;->endSection()V

    .line 637
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 638
    .local v4, "codecInitializedTimestamp":J
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v7, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    .line 639
    invoke-interface {v7}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v7

    sub-long v10, v4, v2

    .line 638
    move-wide v8, v4

    invoke-virtual/range {v6 .. v11}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderInitialized(Ljava/lang/String;JJ)V

    .line 642
    iget-object v6, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v7, v6, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I

    add-int/lit8 v7, v7, 0x1

    iput v7, v6, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->decoderInitCount:I
    :try_end_0
    .catch Lccsancom/google/android/exoplayer2/decoder/DecoderException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    .end local v2    # "codecInitializingTimestamp":J
    .end local v4    # "codecInitializedTimestamp":J
    nop

    .line 652
    return-void

    .line 648
    :catch_0
    move-exception v2

    .line 649
    .local v2, "e":Ljava/lang/OutOfMemoryError;
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;I)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 643
    .end local v2    # "e":Ljava/lang/OutOfMemoryError;
    :catch_1
    move-exception v2

    .line 644
    .local v2, "e":Lccsancom/google/android/exoplayer2/decoder/DecoderException;
    const-string v3, "DecoderAudioRenderer"

    const-string v4, "Audio codec error"

    invoke-static {v3, v4, v2}, Lccsancom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 645
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v3, v2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 646
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v2, v3, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;I)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1
.end method

.method private onInputFormatChanged(Lccsancom/google/android/exoplayer2/FormatHolder;)V
    .locals 9
    .param p1, "formatHolder"    # Lccsancom/google/android/exoplayer2/FormatHolder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 679
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/FormatHolder;->format:Lccsancom/google/android/exoplayer2/Format;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/android/exoplayer2/Format;

    .line 680
    .local v0, "newFormat":Lccsancom/google/android/exoplayer2/Format;
    iget-object v1, p1, Lccsancom/google/android/exoplayer2/FormatHolder;->drmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    invoke-direct {p0, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setSourceDrmSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;)V

    .line 681
    iget-object v7, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    .line 682
    .local v7, "oldFormat":Lccsancom/google/android/exoplayer2/Format;
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    .line 683
    iget v1, v0, Lccsancom/google/android/exoplayer2/Format;->encoderDelay:I

    iput v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderDelay:I

    .line 684
    iget v1, v0, Lccsancom/google/android/exoplayer2/Format;->encoderPadding:I

    iput v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->encoderPadding:I

    .line 686
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    if-nez v1, :cond_0

    .line 687
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 688
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 689
    return-void

    .line 693
    :cond_0
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    if-eq v2, v3, :cond_1

    .line 694
    new-instance v8, Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    .line 696
    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v6, 0x80

    move-object v1, v8

    move-object v3, v7

    move-object v4, v0

    invoke-direct/range {v1 .. v6}, Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/Format;II)V

    .local v1, "evaluation":Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    goto :goto_0

    .line 702
    .end local v1    # "evaluation":Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    :cond_1
    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v7, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->canReuseDecoder(Ljava/lang/String;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    move-result-object v1

    .line 705
    .restart local v1    # "evaluation":Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    :goto_0
    iget v2, v1, Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;->result:I

    if-nez v2, :cond_3

    .line 706
    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 708
    iput v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    goto :goto_1

    .line 711
    :cond_2
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 712
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 713
    iput-boolean v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 716
    :cond_3
    :goto_1
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    invoke-virtual {v2, v3, v1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->inputFormatChanged(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;)V

    .line 717
    return-void
.end method

.method private processEndOfStream()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
        }
    .end annotation

    .line 475
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 476
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V

    .line 477
    return-void
.end method

.method private releaseDecoder()V
    .locals 3

    .line 655
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 656
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    .line 657
    const/4 v1, 0x0

    iput v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReinitializationState:I

    .line 658
    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderReceivedBuffers:Z

    .line 659
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v1, :cond_0

    .line 660
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    iget v2, v1, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->decoderReleaseCount:I

    .line 661
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v1}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->release()V

    .line 662
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    invoke-interface {v2}, Lccsancom/google/android/exoplayer2/decoder/Decoder;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->decoderReleased(Ljava/lang/String;)V

    .line 663
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    .line 665
    :cond_0
    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setDecoderDrmSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;)V

    .line 666
    return-void
.end method

.method private setDecoderDrmSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Lccsancom/google/android/exoplayer2/drm/DrmSession;

    .line 674
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;Lccsancom/google/android/exoplayer2/drm/DrmSession;)V

    .line 675
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    .line 676
    return-void
.end method

.method private setSourceDrmSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;)V
    .locals 1
    .param p1, "session"    # Lccsancom/google/android/exoplayer2/drm/DrmSession;

    .line 669
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    invoke-static {v0, p1}, Lccsancom/google/android/exoplayer2/drm/DrmSession$-CC;->replaceSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;Lccsancom/google/android/exoplayer2/drm/DrmSession;)V

    .line 670
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->sourceDrmSession:Lccsancom/google/android/exoplayer2/drm/DrmSession;

    .line 671
    return-void
.end method

.method private updateCurrentPosition()V
    .locals 5

    .line 732
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->isEnded()Z

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->getCurrentPositionUs(Z)J

    move-result-wide v0

    .line 733
    .local v0, "newCurrentPositionUs":J
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 734
    nop

    .line 735
    iget-boolean v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    if-eqz v2, :cond_0

    .line 736
    move-wide v2, v0

    goto :goto_0

    .line 737
    :cond_0
    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 738
    const/4 v2, 0x0

    iput-boolean v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 740
    :cond_1
    return-void
.end method


# virtual methods
.method protected canReuseDecoder(Ljava/lang/String;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/Format;)Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;
    .locals 7
    .param p1, "decoderName"    # Ljava/lang/String;
    .param p2, "oldFormat"    # Lccsancom/google/android/exoplayer2/Format;
    .param p3, "newFormat"    # Lccsancom/google/android/exoplayer2/Format;

    .line 364
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    new-instance v6, Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lccsancom/google/android/exoplayer2/decoder/DecoderReuseEvaluation;-><init>(Ljava/lang/String;Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/Format;II)V

    return-object v6
.end method

.method protected abstract createDecoder(Lccsancom/google/android/exoplayer2/Format;Lccsancom/google/android/exoplayer2/decoder/CryptoConfig;)Lccsancom/google/android/exoplayer2/decoder/Decoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/android/exoplayer2/Format;",
            "Lccsancom/google/android/exoplayer2/decoder/CryptoConfig;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/decoder/DecoderException;
        }
    .end annotation
.end method

.method public experimentalSetEnableKeepAudioTrackOnSeek(Z)V
    .locals 0
    .param p1, "enableKeepAudioTrackOnSeek"    # Z

    .line 206
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iput-boolean p1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    .line 207
    return-void
.end method

.method public getMediaClock()Lccsancom/google/android/exoplayer2/util/MediaClock;
    .locals 0

    .line 212
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    return-object p0
.end method

.method protected abstract getOutputFormat(Lccsancom/google/android/exoplayer2/decoder/Decoder;)Lccsancom/google/android/exoplayer2/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/android/exoplayer2/Format;"
        }
    .end annotation
.end method

.method public getPlaybackParameters()Lccsancom/google/android/exoplayer2/PlaybackParameters;
    .locals 1

    .line 520
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->getPlaybackParameters()Lccsancom/google/android/exoplayer2/PlaybackParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPositionUs()J
    .locals 2

    .line 507
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 508
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 510
    :cond_0
    iget-wide v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    return-wide v0
.end method

.method protected final getSinkFormatSupport(Lccsancom/google/android/exoplayer2/Format;)I
    .locals 1
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 256
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->getFormatSupport(Lccsancom/google/android/exoplayer2/Format;)I

    move-result v0

    return v0
.end method

.method public handleMessage(ILjava/lang/Object;)V
    .locals 2
    .param p1, "messageType"    # I
    .param p2, "message"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 580
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    packed-switch p1, :pswitch_data_0

    .line 605
    :pswitch_0
    invoke-super {p0, p1, p2}, Lccsancom/google/android/exoplayer2/BaseRenderer;->handleMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 596
    :pswitch_1
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->setAudioSessionId(I)V

    .line 597
    goto :goto_0

    .line 593
    :pswitch_2
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->setSkipSilenceEnabled(Z)V

    .line 594
    goto :goto_0

    .line 589
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AuxEffectInfo;

    .line 590
    .local v0, "auxEffectInfo":Lccsancom/google/android/exoplayer2/audio/AuxEffectInfo;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->setAuxEffectInfo(Lccsancom/google/android/exoplayer2/audio/AuxEffectInfo;)V

    .line 591
    goto :goto_0

    .line 585
    .end local v0    # "auxEffectInfo":Lccsancom/google/android/exoplayer2/audio/AuxEffectInfo;
    :pswitch_4
    move-object v0, p2

    check-cast v0, Lccsancom/google/android/exoplayer2/audio/AudioAttributes;

    .line 586
    .local v0, "audioAttributes":Lccsancom/google/android/exoplayer2/audio/AudioAttributes;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v1, v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->setAudioAttributes(Lccsancom/google/android/exoplayer2/audio/AudioAttributes;)V

    .line 587
    goto :goto_0

    .line 582
    .end local v0    # "audioAttributes":Lccsancom/google/android/exoplayer2/audio/AudioAttributes;
    :pswitch_5
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    move-object v1, p2

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {v0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->setVolume(F)V

    .line 583
    nop

    .line 608
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public isEnded()Z
    .locals 1

    .line 496
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->isEnded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isReady()Z
    .locals 1

    .line 501
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->hasPendingData()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    if-eqz v0, :cond_0

    .line 502
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->isSourceReady()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputBuffer:Lccsancom/google/android/exoplayer2/decoder/SimpleDecoderOutputBuffer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 501
    :goto_1
    return v0
.end method

.method protected onDisabled()V
    .locals 3

    .line 566
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    .line 567
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioTrackNeedsConfigure:Z

    .line 569
    :try_start_0
    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->setSourceDrmSession(Lccsancom/google/android/exoplayer2/drm/DrmSession;)V

    .line 570
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->releaseDecoder()V

    .line 571
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 573
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 574
    nop

    .line 575
    return-void

    .line 573
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->disabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 574
    throw v0
.end method

.method protected onEnabled(ZZ)V
    .locals 2
    .param p1, "joining"    # Z
    .param p2, "mayRenderStartOfStream"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 526
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    new-instance v0, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    .line 527
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->enabled(Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;)V

    .line 528
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getConfiguration()Lccsancom/google/android/exoplayer2/RendererConfiguration;

    move-result-object v0

    iget-boolean v0, v0, Lccsancom/google/android/exoplayer2/RendererConfiguration;->tunneling:Z

    if-eqz v0, :cond_0

    .line 529
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->enableTunnelingV21()V

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->disableTunneling()V

    .line 533
    :goto_0
    return-void
.end method

.method protected onPositionDiscontinuity()V
    .locals 1

    .line 329
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 330
    return-void
.end method

.method protected onPositionReset(JZ)V
    .locals 1
    .param p1, "positionUs"    # J
    .param p3, "joining"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 537
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->experimentalKeepAudioTrackOnSeek:Z

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->experimentalFlushWithoutAudioTrackRelease()V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->flush()V

    .line 543
    :goto_0
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 544
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 545
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowPositionDiscontinuity:Z

    .line 546
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 547
    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    .line 548
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_1

    .line 549
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flushDecoder()V

    .line 551
    :cond_1
    return-void
.end method

.method protected onQueueInputBuffer(Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;)V
    .locals 5
    .param p1, "buffer"    # Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    .line 720
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isDecodeOnly()Z

    move-result v0

    if-nez v0, :cond_1

    .line 724
    iget-wide v0, p1, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iget-wide v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x7a120

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 725
    iget-wide v0, p1, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->timeUs:J

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->currentPositionUs:J

    .line 727
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->allowFirstBufferPositionDiscontinuity:Z

    .line 729
    :cond_1
    return-void
.end method

.method protected onStarted()V
    .locals 1

    .line 555
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->play()V

    .line 556
    return-void
.end method

.method protected onStopped()V
    .locals 1

    .line 560
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->updateCurrentPosition()V

    .line 561
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->pause()V

    .line 562
    return-void
.end method

.method public render(JJ)V
    .locals 5
    .param p1, "positionUs"    # J
    .param p3, "elapsedRealtimeUs"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/google/android/exoplayer2/ExoPlaybackException;
        }
    .end annotation

    .line 261
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->outputStreamEnded:Z

    const/16 v1, 0x138a

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->playToEndOfStream()V
    :try_end_0
    .catch Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    nop

    .line 268
    return-void

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v2, v0, Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lccsancom/google/android/exoplayer2/Format;

    iget-boolean v3, v0, Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;ZI)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 272
    .end local v0    # "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :cond_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    if-nez v0, :cond_3

    .line 274
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->getFormatHolder()Lccsancom/google/android/exoplayer2/FormatHolder;

    move-result-object v0

    .line 275
    .local v0, "formatHolder":Lccsancom/google/android/exoplayer2/FormatHolder;
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->clear()V

    .line 276
    iget-object v2, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    const/4 v3, 0x2

    invoke-virtual {p0, v0, v2, v3}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->readSource(Lccsancom/google/android/exoplayer2/FormatHolder;Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;I)I

    move-result v2

    .line 277
    .local v2, "result":I
    const/4 v3, -0x5

    if-ne v2, v3, :cond_1

    .line 278
    invoke-direct {p0, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->onInputFormatChanged(Lccsancom/google/android/exoplayer2/FormatHolder;)V

    goto :goto_0

    .line 279
    :cond_1
    const/4 v3, -0x4

    if-ne v2, v3, :cond_2

    .line 281
    iget-object v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->flagsOnlyBuffer:Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;

    invoke-virtual {v3}, Lccsancom/google/android/exoplayer2/decoder/DecoderInputBuffer;->isEndOfStream()Z

    move-result v3

    invoke-static {v3}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 282
    const/4 v3, 0x1

    iput-boolean v3, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputStreamEnded:Z

    .line 284
    :try_start_1
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->processEndOfStream()V
    :try_end_1
    .catch Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 288
    nop

    .line 289
    return-void

    .line 285
    :catch_1
    move-exception v3

    .line 286
    .local v3, "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;I)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 292
    .end local v3    # "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :cond_2
    return-void

    .line 297
    .end local v0    # "formatHolder":Lccsancom/google/android/exoplayer2/FormatHolder;
    .end local v2    # "result":I
    :cond_3
    :goto_0
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->maybeInitDecoder()V

    .line 299
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoder:Lccsancom/google/android/exoplayer2/decoder/Decoder;

    if-eqz v0, :cond_6

    .line 302
    const/16 v0, 0x1389

    :try_start_2
    const-string v2, "drainAndFeed"

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/TraceUtil;->beginSection(Ljava/lang/String;)V

    .line 303
    :goto_1
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->drainOutputBuffer()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    .line 304
    :cond_4
    :goto_2
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->feedInputBuffer()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_2

    .line 305
    :cond_5
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/TraceUtil;->endSection()V
    :try_end_2
    .catch Lccsancom/google/android/exoplayer2/decoder/DecoderException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 320
    nop

    .line 321
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->decoderCounters:Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    goto :goto_3

    .line 317
    :catch_2
    move-exception v0

    .line 318
    .local v0, "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    iget-object v2, v0, Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;->format:Lccsancom/google/android/exoplayer2/Format;

    iget-boolean v3, v0, Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;->isRecoverable:Z

    invoke-virtual {p0, v0, v2, v3, v1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;ZI)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 314
    .end local v0    # "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$WriteException;
    :catch_3
    move-exception v1

    .line 315
    .local v1, "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException;->format:Lccsancom/google/android/exoplayer2/Format;

    iget-boolean v3, v1, Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException;->isRecoverable:Z

    invoke-virtual {p0, v1, v2, v3, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;ZI)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 311
    .end local v1    # "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$InitializationException;
    :catch_4
    move-exception v1

    .line 312
    .local v1, "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
    iget-object v2, v1, Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;->format:Lccsancom/google/android/exoplayer2/Format;

    invoke-virtual {p0, v1, v2, v0}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;I)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v0

    throw v0

    .line 306
    .end local v1    # "e":Lccsancom/google/android/exoplayer2/audio/AudioSink$ConfigurationException;
    :catch_5
    move-exception v0

    .line 308
    .local v0, "e":Lccsancom/google/android/exoplayer2/decoder/DecoderException;
    const-string v1, "DecoderAudioRenderer"

    const-string v2, "Audio codec error"

    invoke-static {v1, v2, v0}, Lccsancom/google/android/exoplayer2/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 309
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->eventDispatcher:Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;

    invoke-virtual {v1, v0}, Lccsancom/google/android/exoplayer2/audio/AudioRendererEventListener$EventDispatcher;->audioCodecError(Ljava/lang/Exception;)V

    .line 310
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->inputFormat:Lccsancom/google/android/exoplayer2/Format;

    const/16 v2, 0xfa3

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->createRendererException(Ljava/lang/Throwable;Lccsancom/google/android/exoplayer2/Format;I)Lccsancom/google/android/exoplayer2/ExoPlaybackException;

    move-result-object v1

    throw v1

    .line 323
    .end local v0    # "e":Lccsancom/google/android/exoplayer2/decoder/DecoderException;
    :cond_6
    :goto_3
    return-void
.end method

.method public setPlaybackParameters(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V
    .locals 1
    .param p1, "playbackParameters"    # Lccsancom/google/android/exoplayer2/PlaybackParameters;

    .line 515
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->setPlaybackParameters(Lccsancom/google/android/exoplayer2/PlaybackParameters;)V

    .line 516
    return-void
.end method

.method protected final sinkSupportsFormat(Lccsancom/google/android/exoplayer2/Format;)Z
    .locals 1
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 245
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->audioSink:Lccsancom/google/android/exoplayer2/audio/AudioSink;

    invoke-interface {v0, p1}, Lccsancom/google/android/exoplayer2/audio/AudioSink;->supportsFormat(Lccsancom/google/android/exoplayer2/Format;)Z

    move-result v0

    return v0
.end method

.method public final supportsFormat(Lccsancom/google/android/exoplayer2/Format;)I
    .locals 4
    .param p1, "format"    # Lccsancom/google/android/exoplayer2/Format;

    .line 218
    .local p0, "this":Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;, "Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer<TT;>;"
    iget-object v0, p1, Lccsancom/google/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/MimeTypes;->isAudio(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 219
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v0

    return v0

    .line 221
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/android/exoplayer2/audio/DecoderAudioRenderer;->supportsFormatInternal(Lccsancom/google/android/exoplayer2/Format;)I

    move-result v0

    .line 222
    .local v0, "formatSupport":I
    const/4 v2, 0x2

    if-gt v0, v2, :cond_1

    .line 223
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/RendererCapabilities$-CC;->create(I)I

    move-result v1

    return v1

    .line 226
    :cond_1
    sget v2, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    const/16 v1, 0x20

    .line 227
    .local v1, "tunnelingSupport":I
    :cond_2
    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lccsancom/google/android/exoplayer2/RendererCapabilities$-CC;->create(III)I

    move-result v2

    return v2
.end method

.method protected abstract supportsFormatInternal(Lccsancom/google/android/exoplayer2/Format;)I
.end method
