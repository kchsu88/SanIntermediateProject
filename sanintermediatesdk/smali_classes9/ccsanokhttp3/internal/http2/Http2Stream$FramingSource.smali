.class final Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;
.super Ljava/lang/Object;
.source "Http2Stream.java"

# interfaces
.implements Lccsanokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/internal/http2/Http2Stream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FramingSource"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field closed:Z

.field finished:Z

.field private final maxByteCount:J

.field private final readBuffer:Lccsanokio/Buffer;

.field private final receiveBuffer:Lccsanokio/Buffer;

.field final synthetic this$0:Lccsanokhttp3/internal/http2/Http2Stream;

.field private trailers:Lccsanokhttp3/Headers;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 339
    const-class v0, Lccsanokhttp3/internal/http2/Http2Stream;

    return-void
.end method

.method constructor <init>(Lccsanokhttp3/internal/http2/Http2Stream;J)V
    .locals 0
    .param p2, "maxByteCount"    # J

    .line 364
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance p1, Lccsanokio/Buffer;

    invoke-direct {p1}, Lccsanokio/Buffer;-><init>()V

    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lccsanokio/Buffer;

    .line 344
    new-instance p1, Lccsanokio/Buffer;

    invoke-direct {p1}, Lccsanokio/Buffer;-><init>()V

    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    .line 365
    iput-wide p2, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    .line 366
    return-void
.end method

.method static synthetic access$000(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;)Lccsanokio/Buffer;
    .locals 1
    .param p0, "x0"    # Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 339
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lccsanokio/Buffer;

    return-object v0
.end method

.method static synthetic access$100(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;)Lccsanokio/Buffer;
    .locals 1
    .param p0, "x0"    # Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 339
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    return-object v0
.end method

.method static synthetic access$200(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;)Lccsanokhttp3/Headers;
    .locals 1
    .param p0, "x0"    # Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 339
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lccsanokhttp3/Headers;

    return-object v0
.end method

.method static synthetic access$202(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;Lccsanokhttp3/Headers;)Lccsanokhttp3/Headers;
    .locals 0
    .param p0, "x0"    # Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;
    .param p1, "x1"    # Lccsanokhttp3/Headers;

    .line 339
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->trailers:Lccsanokhttp3/Headers;

    return-object p1
.end method

.method private updateConnectionFlowControl(J)V
    .locals 1
    .param p1, "read"    # J

    .line 434
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0, p1, p2}, Lccsanokhttp3/internal/http2/Http2Connection;->updateConnectionFlowControl(J)V

    .line 436
    return-void

    .line 434
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public close()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 499
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    monitor-enter v0

    .line 500
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    .line 501
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    invoke-virtual {v1}, Lccsanokio/Buffer;->size()J

    move-result-wide v1

    .line 502
    .local v1, "bytesDiscarded":J
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    invoke-virtual {v3}, Lccsanokio/Buffer;->clear()V

    .line 503
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v3}, Ljava/lang/Object;->notifyAll()V

    .line 504
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 505
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-lez v0, :cond_0

    .line 506
    invoke-direct {p0, v1, v2}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 508
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream;->cancelStreamIfNecessary()V

    .line 509
    return-void

    .line 504
    .end local v1    # "bytesDiscarded":J
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public read(Lccsanokio/Buffer;J)J
    .locals 11
    .param p1, "sink"    # Lccsanokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 369
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_7

    .line 372
    :goto_0
    const-wide/16 v2, -0x1

    .line 373
    .local v2, "readBytesDelivered":J
    const/4 v4, 0x0

    .line 377
    .local v4, "errorExceptionToDeliver":Ljava/io/IOException;
    iget-object v5, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    monitor-enter v5

    .line 378
    :try_start_0
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v6}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 380
    :try_start_1
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    if-eqz v6, :cond_1

    .line 382
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v6, :cond_0

    .line 383
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    goto :goto_1

    .line 384
    :cond_0
    new-instance v6, Lccsanokhttp3/internal/http2/StreamResetException;

    iget-object v7, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v7, v7, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-direct {v6, v7}, Lccsanokhttp3/internal/http2/StreamResetException;-><init>(Lccsanokhttp3/internal/http2/ErrorCode;)V

    :goto_1
    move-object v4, v6

    .line 387
    :cond_1
    iget-boolean v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-nez v6, :cond_6

    .line 390
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    invoke-virtual {v6}, Lccsanokio/Buffer;->size()J

    move-result-wide v6

    cmp-long v8, v6, v0

    if-lez v8, :cond_2

    .line 392
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    invoke-virtual {v6}, Lccsanokio/Buffer;->size()J

    move-result-wide v7

    invoke-static {p2, p3, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v7

    invoke-virtual {v6, p1, v7, v8}, Lccsanokio/Buffer;->read(Lccsanokio/Buffer;J)J

    move-result-wide v6

    move-wide v2, v6

    .line 393
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-wide v7, v6, Lccsanokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    add-long/2addr v7, v2

    iput-wide v7, v6, Lccsanokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 395
    if-nez v4, :cond_3

    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-wide v6, v6, Lccsanokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    iget-object v8, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v8, v8, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v8, v8, Lccsanokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lccsanokhttp3/internal/http2/Settings;

    .line 397
    invoke-virtual {v8}, Lccsanokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-long v8, v8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_3

    .line 400
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-object v7, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget v7, v7, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    iget-object v8, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-wide v8, v8, Lccsanokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    invoke-virtual {v6, v7, v8, v9}, Lccsanokhttp3/internal/http2/Http2Connection;->writeWindowUpdateLater(IJ)V

    .line 401
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iput-wide v0, v6, Lccsanokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    goto :goto_2

    .line 403
    :cond_2
    iget-boolean v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v6, :cond_3

    if-nez v4, :cond_3

    .line 405
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v6}, Lccsanokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 409
    :try_start_2
    iget-object v6, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v6, v6, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v6}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    monitor-exit v5

    goto/16 :goto_0

    :cond_3
    :goto_2
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 410
    nop

    .line 411
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 415
    const-wide/16 v0, -0x1

    cmp-long v5, v2, v0

    if-eqz v5, :cond_4

    .line 417
    invoke-direct {p0, v2, v3}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 418
    return-wide v2

    .line 421
    :cond_4
    if-nez v4, :cond_5

    .line 429
    return-wide v0

    .line 426
    :cond_5
    throw v4

    .line 388
    :cond_6
    :try_start_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v2    # "readBytesDelivered":J
    .end local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    .end local p1    # "sink":Lccsanokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 409
    .restart local v2    # "readBytesDelivered":J
    .restart local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    .restart local p1    # "sink":Lccsanokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_0
    move-exception v0

    :try_start_4
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v1, v1, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .end local v2    # "readBytesDelivered":J
    .end local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    .end local p1    # "sink":Lccsanokio/Buffer;
    .end local p2    # "byteCount":J
    throw v0

    .line 411
    .restart local v2    # "readBytesDelivered":J
    .restart local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    .restart local p1    # "sink":Lccsanokio/Buffer;
    .restart local p2    # "byteCount":J
    :catchall_1
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 369
    .end local v2    # "readBytesDelivered":J
    .end local v4    # "errorExceptionToDeliver":Ljava/io/IOException;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method receive(Lccsanokio/BufferedSource;J)V
    .locals 18
    .param p1, "in"    # Lccsanokio/BufferedSource;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 443
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 445
    move-wide/from16 v3, p2

    .end local p2    # "byteCount":J
    .local v3, "byteCount":J
    :goto_0
    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_8

    .line 448
    iget-object v7, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    monitor-enter v7

    .line 449
    :try_start_0
    iget-boolean v0, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    move v8, v0

    .line 450
    .local v8, "finished":Z
    iget-object v0, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    invoke-virtual {v0}, Lccsanokio/Buffer;->size()J

    move-result-wide v9

    add-long/2addr v9, v3

    iget-wide v11, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->maxByteCount:J

    const/4 v0, 0x1

    const/4 v13, 0x0

    cmp-long v14, v9, v11

    if-lez v14, :cond_0

    const/4 v9, 0x1

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    .line 451
    .local v9, "flowControlError":Z
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 454
    if-eqz v9, :cond_1

    .line 455
    invoke-interface {v2, v3, v4}, Lccsanokio/BufferedSource;->skip(J)V

    .line 456
    iget-object v0, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    sget-object v5, Lccsanokhttp3/internal/http2/ErrorCode;->FLOW_CONTROL_ERROR:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v5}, Lccsanokhttp3/internal/http2/Http2Stream;->closeLater(Lccsanokhttp3/internal/http2/ErrorCode;)V

    .line 457
    return-void

    .line 461
    :cond_1
    if-eqz v8, :cond_2

    .line 462
    invoke-interface {v2, v3, v4}, Lccsanokio/BufferedSource;->skip(J)V

    .line 463
    return-void

    .line 467
    :cond_2
    iget-object v7, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lccsanokio/Buffer;

    invoke-interface {v2, v7, v3, v4}, Lccsanokio/BufferedSource;->read(Lccsanokio/Buffer;J)J

    move-result-wide v10

    .line 468
    .local v10, "read":J
    const-wide/16 v14, -0x1

    cmp-long v7, v10, v14

    if-eqz v7, :cond_7

    .line 469
    sub-long v14, v3, v10

    .line 474
    .end local v3    # "byteCount":J
    .local v14, "byteCount":J
    const-wide/16 v3, 0x0

    .line 475
    .local v3, "bytesDiscarded":J
    iget-object v7, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    monitor-enter v7

    .line 476
    :try_start_1
    iget-boolean v12, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v12, :cond_3

    .line 477
    iget-object v0, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lccsanokio/Buffer;

    invoke-virtual {v0}, Lccsanokio/Buffer;->size()J

    move-result-wide v12

    move-wide v3, v12

    .line 478
    iget-object v0, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lccsanokio/Buffer;

    invoke-virtual {v0}, Lccsanokio/Buffer;->clear()V

    goto :goto_3

    .line 480
    :cond_3
    iget-object v12, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    invoke-virtual {v12}, Lccsanokio/Buffer;->size()J

    move-result-wide v16

    cmp-long v12, v16, v5

    if-nez v12, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 481
    .local v0, "wasEmpty":Z
    :goto_2
    iget-object v12, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->readBuffer:Lccsanokio/Buffer;

    iget-object v13, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->receiveBuffer:Lccsanokio/Buffer;

    invoke-virtual {v12, v13}, Lccsanokio/Buffer;->writeAll(Lccsanokio/Source;)J

    .line 482
    if-eqz v0, :cond_5

    .line 483
    iget-object v12, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v12}, Ljava/lang/Object;->notifyAll()V

    .line 486
    .end local v0    # "wasEmpty":Z
    :cond_5
    :goto_3
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 487
    cmp-long v0, v3, v5

    if-lez v0, :cond_6

    .line 488
    invoke-direct {v1, v3, v4}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->updateConnectionFlowControl(J)V

    .line 490
    .end local v3    # "bytesDiscarded":J
    .end local v8    # "finished":Z
    .end local v9    # "flowControlError":Z
    .end local v10    # "read":J
    :cond_6
    move-wide v3, v14

    goto :goto_0

    .line 486
    .restart local v3    # "bytesDiscarded":J
    .restart local v8    # "finished":Z
    .restart local v9    # "flowControlError":Z
    .restart local v10    # "read":J
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 468
    .end local v14    # "byteCount":J
    .local v3, "byteCount":J
    :cond_7
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 451
    .end local v8    # "finished":Z
    .end local v9    # "flowControlError":Z
    .end local v10    # "read":J
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 491
    :cond_8
    return-void

    .line 443
    .end local v3    # "byteCount":J
    .restart local p2    # "byteCount":J
    :cond_9
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public timeout()Lccsanokio/Timeout;
    .locals 1

    .line 494
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->this$0:Lccsanokhttp3/internal/http2/Http2Stream;

    iget-object v0, v0, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
