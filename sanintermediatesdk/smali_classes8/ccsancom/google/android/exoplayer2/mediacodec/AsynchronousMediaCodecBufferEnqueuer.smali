.class Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;
.super Ljava/lang/Object;
.source "AsynchronousMediaCodecBufferEnqueuer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    }
.end annotation


# static fields
.field private static final MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_OPEN_CV:I = 0x2

.field private static final MSG_QUEUE_INPUT_BUFFER:I = 0x0

.field private static final MSG_QUEUE_SECURE_INPUT_BUFFER:I = 0x1

.field private static final QUEUE_SECURE_LOCK:Ljava/lang/Object;


# instance fields
.field private final codec:Lccsanandroid/media/MediaCodec;

.field private final conditionVariable:Lccsancom/google/android/exoplayer2/util/ConditionVariable;

.field private handler:Lccsanandroid/os/Handler;

.field private final handlerThread:Lccsanandroid/os/HandlerThread;

.field private final pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/RuntimeException;",
            ">;"
        }
    .end annotation
.end field

.field private started:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->QUEUE_SECURE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/media/MediaCodec;Lccsanandroid/os/HandlerThread;)V
    .locals 1
    .param p1, "codec"    # Lccsanandroid/media/MediaCodec;
    .param p2, "queueingThread"    # Lccsanandroid/os/HandlerThread;

    .line 71
    new-instance v0, Lccsancom/google/android/exoplayer2/util/ConditionVariable;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/util/ConditionVariable;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;-><init>(Lccsanandroid/media/MediaCodec;Lccsanandroid/os/HandlerThread;Lccsancom/google/android/exoplayer2/util/ConditionVariable;)V

    .line 72
    return-void
.end method

.method constructor <init>(Lccsanandroid/media/MediaCodec;Lccsanandroid/os/HandlerThread;Lccsancom/google/android/exoplayer2/util/ConditionVariable;)V
    .locals 1
    .param p1, "codec"    # Lccsanandroid/media/MediaCodec;
    .param p2, "handlerThread"    # Lccsanandroid/os/HandlerThread;
    .param p3, "conditionVariable"    # Lccsancom/google/android/exoplayer2/util/ConditionVariable;

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Lccsanandroid/media/MediaCodec;

    .line 78
    iput-object p2, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Lccsanandroid/os/HandlerThread;

    .line 79
    iput-object p3, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lccsancom/google/android/exoplayer2/util/ConditionVariable;

    .line 80
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    .line 81
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Lccsanandroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;
    .param p1, "x1"    # Lccsanandroid/os/Message;

    .line 46
    invoke-direct {p0, p1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doHandleMessage(Lccsanandroid/os/Message;)V

    return-void
.end method

.method private blockUntilHandlerThreadIsIdle()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lccsancom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/ConditionVariable;->close()Z

    .line 185
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Lccsanandroid/os/Handler;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 186
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lccsancom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/ConditionVariable;->block()V

    .line 187
    return-void
.end method

.method private static copy(Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;Lccsanandroid/media/MediaCodec$CryptoInfo;)V
    .locals 3
    .param p0, "cryptoInfo"    # Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;
    .param p1, "frameworkCryptoInfo"    # Lccsanandroid/media/MediaCodec$CryptoInfo;

    .line 292
    iget v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->numSubSamples:I

    iput v0, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 293
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfClearData:[I

    iget-object v1, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 294
    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object v0

    iput-object v0, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 295
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->numBytesOfEncryptedData:[I

    iget-object v1, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 296
    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([I[I)[I

    move-result-object v0

    iput-object v0, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 297
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->key:[B

    iget-object v1, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 298
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->iv:[B

    iget-object v1, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->iv:[B

    invoke-static {v0, v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy([B[B)[B

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 299
    iget v0, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->mode:I

    iput v0, p1, Lccsanandroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 300
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 301
    new-instance v0, Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;

    iget v1, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->encryptedBlocks:I

    iget v2, p0, Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;->clearBlocks:I

    invoke-direct {v0, v1, v2}, Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 304
    .local v0, "pattern":Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;
    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaCodec$CryptoInfo;->setPattern(Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;)V

    .line 306
    .end local v0    # "pattern":Lccsanandroid/media/MediaCodec$CryptoInfo$Pattern;
    :cond_0
    return-void
.end method

.method private static copy([B[B)[B
    .locals 2
    .param p0, "src"    # [B
    .param p1, "dst"    # [B

    .line 338
    if-nez p0, :cond_0

    .line 339
    return-object p1

    .line 342
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 345
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 346
    return-object p1

    .line 343
    :cond_2
    :goto_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method private static copy([I[I)[I
    .locals 2
    .param p0, "src"    # [I
    .param p1, "dst"    # [I

    .line 317
    if-nez p0, :cond_0

    .line 318
    return-object p1

    .line 321
    :cond_0
    if-eqz p1, :cond_2

    array-length v0, p1

    array-length v1, p0

    if-ge v0, v1, :cond_1

    goto :goto_0

    .line 324
    :cond_1
    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 325
    return-object p1

    .line 322
    :cond_2
    :goto_0
    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    return-object v0
.end method

.method private doHandleMessage(Lccsanandroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Lccsanandroid/os/Message;

    .line 197
    const/4 v0, 0x0

    .line 198
    .local v0, "params":Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    iget v1, p1, Lccsanandroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 217
    new-instance v1, Ljava/lang/IllegalStateException;

    iget v2, p1, Lccsanandroid/os/Message;->what:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->setPendingRuntimeException(Ljava/lang/RuntimeException;)V

    goto :goto_0

    .line 214
    :pswitch_0
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->conditionVariable:Lccsancom/google/android/exoplayer2/util/ConditionVariable;

    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/util/ConditionVariable;->open()Z

    .line 215
    goto :goto_0

    .line 205
    :pswitch_1
    iget-object v1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    .line 206
    iget v2, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget v3, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iget-object v4, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Lccsanandroid/media/MediaCodec$CryptoInfo;

    iget-wide v5, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v7, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doQueueSecureInputBuffer(IILccsanandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 212
    goto :goto_0

    .line 200
    :pswitch_2
    iget-object v1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    move-object v0, v1

    check-cast v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    .line 201
    iget v2, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->index:I

    iget v3, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->offset:I

    iget v4, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->size:I

    iget-wide v5, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->presentationTimeUs:J

    iget v7, v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->flags:I

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->doQueueInputBuffer(IIIJI)V

    .line 203
    nop

    .line 219
    :goto_0
    if-eqz v0, :cond_0

    .line 220
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->recycleMessageParams(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;)V

    .line 222
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private doQueueInputBuffer(IIIJI)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flag"    # I

    .line 227
    :try_start_0
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Lccsanandroid/media/MediaCodec;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsanandroid/media/MediaCodec;->queueInputBuffer(IIIJI)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->setPendingRuntimeException(Ljava/lang/RuntimeException;)V

    .line 231
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private doQueueSecureInputBuffer(IILccsanandroid/media/MediaCodec$CryptoInfo;JI)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "info"    # Lccsanandroid/media/MediaCodec$CryptoInfo;
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .line 239
    :try_start_0
    sget-object v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->QUEUE_SECURE_LOCK:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :try_start_1
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->codec:Lccsanandroid/media/MediaCodec;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-wide v5, p4

    move v7, p6

    invoke-virtual/range {v1 .. v7}, Lccsanandroid/media/MediaCodec;->queueSecureInputBuffer(IILccsanandroid/media/MediaCodec$CryptoInfo;JI)V

    .line 241
    monitor-exit v0

    .line 244
    goto :goto_0

    .line 241
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local p1    # "index":I
    .end local p2    # "offset":I
    .end local p3    # "info":Lccsanandroid/media/MediaCodec$CryptoInfo;
    .end local p4    # "presentationTimeUs":J
    .end local p6    # "flags":I
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 242
    .restart local p1    # "index":I
    .restart local p2    # "offset":I
    .restart local p3    # "info":Lccsanandroid/media/MediaCodec$CryptoInfo;
    .restart local p4    # "presentationTimeUs":J
    .restart local p6    # "flags":I
    :catch_0
    move-exception v0

    .line 243
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->setPendingRuntimeException(Ljava/lang/RuntimeException;)V

    .line 245
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_0
    return-void
.end method

.method private flushHandlerThread()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Lccsanandroid/os/Handler;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    .line 177
    .local v0, "handler":Lccsanandroid/os/Handler;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 178
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->blockUntilHandlerThreadIsIdle()V

    .line 180
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 181
    return-void
.end method

.method private static getMessageParams()Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    .locals 2

    .line 248
    sget-object v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 249
    :try_start_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    new-instance v1, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    invoke-direct {v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;-><init>()V

    monitor-exit v0

    return-object v1

    .line 252
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    monitor-exit v0

    return-object v1

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private maybeThrowException()V
    .locals 2

    .line 165
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/RuntimeException;

    .line 166
    .local v0, "exception":Ljava/lang/RuntimeException;
    if-nez v0, :cond_0

    .line 169
    return-void

    .line 167
    :cond_0
    throw v0
.end method

.method private static recycleMessageParams(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;)V
    .locals 2
    .param p0, "params"    # Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    .line 258
    sget-object v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->MESSAGE_PARAMS_INSTANCE_POOL:Ljava/util/ArrayDeque;

    monitor-enter v0

    .line 259
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 260
    monitor-exit v0

    .line 261
    return-void

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public flush()V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v0, :cond_0

    .line 140
    :try_start_0
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flushHandlerThread()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :cond_0
    :goto_0
    return-void
.end method

.method public queueInputBuffer(IIIJI)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "size"    # I
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .line 109
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 110
    invoke-static {}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v7

    .line 111
    .local v7, "messageParams":Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->setQueueParams(IIIJI)V

    .line 112
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Lccsanandroid/os/Handler;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v7}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    .line 113
    .local v0, "message":Lccsanandroid/os/Message;
    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 114
    return-void
.end method

.method public queueSecureInputBuffer(IILccsancom/google/android/exoplayer2/decoder/CryptoInfo;JI)V
    .locals 8
    .param p1, "index"    # I
    .param p2, "offset"    # I
    .param p3, "info"    # Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;
    .param p4, "presentationTimeUs"    # J
    .param p6, "flags"    # I

    .line 127
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->maybeThrowException()V

    .line 128
    invoke-static {}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->getMessageParams()Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;

    move-result-object v7

    .line 129
    .local v7, "messageParams":Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;
    const/4 v3, 0x0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->setQueueParams(IIIJI)V

    .line 130
    iget-object v0, v7, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$MessageParams;->cryptoInfo:Lccsanandroid/media/MediaCodec$CryptoInfo;

    invoke-static {p3, v0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->copy(Lccsancom/google/android/exoplayer2/decoder/CryptoInfo;Lccsanandroid/media/MediaCodec$CryptoInfo;)V

    .line 131
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Lccsanandroid/os/Handler;

    .line 132
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v7}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v0

    .line 133
    .local v0, "message":Lccsanandroid/os/Message;
    invoke-virtual {v0}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 134
    return-void
.end method

.method setPendingRuntimeException(Ljava/lang/RuntimeException;)V
    .locals 1
    .param p1, "exception"    # Ljava/lang/RuntimeException;

    .line 193
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->pendingRuntimeException:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public shutdown()V
    .locals 1

    .line 152
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->flush()V

    .line 154
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->quit()Z

    .line 156
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    .line 157
    return-void
.end method

.method public start()V
    .locals 2

    .line 89
    iget-boolean v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Lccsanandroid/os/HandlerThread;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 91
    new-instance v0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handlerThread:Lccsanandroid/os/HandlerThread;

    .line 92
    invoke-virtual {v1}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer$1;-><init>(Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->handler:Lccsanandroid/os/Handler;

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->started:Z

    .line 100
    :cond_0
    return-void
.end method

.method public waitUntilQueueingComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/mediacodec/AsynchronousMediaCodecBufferEnqueuer;->blockUntilHandlerThreadIsIdle()V

    .line 162
    return-void
.end method
