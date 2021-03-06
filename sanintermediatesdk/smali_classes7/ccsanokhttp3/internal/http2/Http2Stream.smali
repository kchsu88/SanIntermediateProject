.class public final Lccsanokhttp3/internal/http2/Http2Stream;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;,
        Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;,
        Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bytesLeftInWriteWindow:J

.field final connection:Lccsanokhttp3/internal/http2/Http2Connection;

.field errorCode:Lccsanokhttp3/internal/http2/ErrorCode;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field errorException:Ljava/io/IOException;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hasResponseHeaders:Z

.field private final headersQueue:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lccsanokhttp3/Headers;",
            ">;"
        }
    .end annotation
.end field

.field final id:I

.field final readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

.field final sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

.field private final source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

.field unacknowledgedBytesRead:J

.field final writeTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 36
    return-void
.end method

.method constructor <init>(ILccsanokhttp3/internal/http2/Http2Connection;ZZLccsanokhttp3/Headers;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "connection"    # Lccsanokhttp3/internal/http2/Http2Connection;
    .param p3, "outFinished"    # Z
    .param p4, "inFinished"    # Z
    .param p5, "headers"    # Lccsanokhttp3/Headers;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->unacknowledgedBytesRead:J

    .line 62
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    .line 69
    new-instance v1, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lccsanokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 70
    new-instance v1, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-direct {v1, p0}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;-><init>(Lccsanokhttp3/internal/http2/Http2Stream;)V

    iput-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->writeTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    .line 84
    if-eqz p2, :cond_5

    .line 86
    iput p1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    .line 87
    iput-object p2, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    .line 88
    iget-object v1, p2, Lccsanokhttp3/internal/http2/Http2Connection;->peerSettings:Lccsanokhttp3/internal/http2/Settings;

    .line 89
    invoke-virtual {v1}, Lccsanokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 90
    new-instance v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-object v2, p2, Lccsanokhttp3/internal/http2/Http2Connection;->okHttpSettings:Lccsanokhttp3/internal/http2/Settings;

    invoke-virtual {v2}, Lccsanokhttp3/internal/http2/Settings;->getInitialWindowSize()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {v1, p0, v2, v3}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;-><init>(Lccsanokhttp3/internal/http2/Http2Stream;J)V

    iput-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    .line 91
    new-instance v2, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-direct {v2, p0}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;-><init>(Lccsanokhttp3/internal/http2/Http2Stream;)V

    iput-object v2, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    .line 92
    iput-boolean p4, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 93
    iput-boolean p3, v2, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 94
    if-eqz p5, :cond_0

    .line 95
    invoke-interface {v0, p5}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_0
    invoke-virtual {p0}, Lccsanokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p5, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "locally-initiated streams shouldn\'t have headers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lccsanokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p5, :cond_3

    goto :goto_1

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remotely-initiated streams should have headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_4
    :goto_1
    return-void

    .line 84
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private closeInternal(Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z
    .locals 2
    .param p1, "errorCode"    # Lccsanokhttp3/internal/http2/ErrorCode;
    .param p2, "errorException"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 281
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 282
    monitor-enter p0

    .line 283
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    monitor-exit p0

    return v1

    .line 286
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-eqz v0, :cond_1

    .line 287
    monitor-exit p0

    return v1

    .line 289
    :cond_1
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    .line 290
    iput-object p2, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    .line 291
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 292
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1}, Lccsanokhttp3/internal/http2/Http2Connection;->removeStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    .line 294
    const/4 v0, 0x1

    return v0

    .line 292
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 281
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method addBytesToWriteWindow(J)V
    .locals 3
    .param p1, "delta"    # J

    .line 640
    iget-wide v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->bytesLeftInWriteWindow:J

    .line 641
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 642
    :cond_0
    return-void
.end method

.method cancelStreamIfNecessary()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 516
    monitor-enter p0

    .line 517
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 518
    .local v0, "cancel":Z
    :goto_0
    invoke-virtual {p0}, Lccsanokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v1

    .line 519
    .local v1, "open":Z
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    if-eqz v0, :cond_2

    .line 525
    sget-object v2, Lccsanokhttp3/internal/http2/ErrorCode;->CANCEL:Lccsanokhttp3/internal/http2/ErrorCode;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lccsanokhttp3/internal/http2/Http2Stream;->close(Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    goto :goto_1

    .line 526
    :cond_2
    if-nez v1, :cond_3

    .line 527
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v3, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v2, v3}, Lccsanokhttp3/internal/http2/Http2Connection;->removeStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    .line 529
    :cond_3
    :goto_1
    return-void

    .line 519
    .end local v0    # "cancel":Z
    .end local v1    # "open":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 513
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method checkOutNotClosed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 645
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-nez v0, :cond_3

    .line 647
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_2

    .line 649
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_1

    .line 650
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lccsanokhttp3/internal/http2/StreamResetException;-><init>(Lccsanokhttp3/internal/http2/ErrorCode;)V

    :goto_0
    throw v0

    .line 652
    :cond_1
    return-void

    .line 648
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 646
    :cond_3
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V
    .locals 2
    .param p1, "rstStatusCode"    # Lccsanokhttp3/internal/http2/ErrorCode;
    .param p2, "errorException"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    invoke-direct {p0, p1, p2}, Lccsanokhttp3/internal/http2/Http2Stream;->closeInternal(Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 263
    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->writeSynReset(ILccsanokhttp3/internal/http2/ErrorCode;)V

    .line 266
    return-void
.end method

.method public closeLater(Lccsanokhttp3/internal/http2/ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lccsanokhttp3/internal/http2/ErrorCode;

    .line 273
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsanokhttp3/internal/http2/Http2Stream;->closeInternal(Lccsanokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->writeSynResetLater(ILccsanokhttp3/internal/http2/ErrorCode;)V

    .line 277
    return-void
.end method

.method public enqueueTrailers(Lccsanokhttp3/Headers;)V
    .locals 2
    .param p1, "trailers"    # Lccsanokhttp3/Headers;

    .line 221
    monitor-enter p0

    .line 222
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_1

    .line 223
    invoke-virtual {p1}, Lccsanokhttp3/Headers;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    invoke-static {v0, p1}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->access$302(Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;Lccsanokhttp3/Headers;)Lccsanokhttp3/Headers;

    .line 225
    monitor-exit p0

    .line 226
    return-void

    .line 223
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "trailers.size() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "trailers":Lccsanokhttp3/Headers;
    throw v0

    .line 222
    .restart local p1    # "trailers":Lccsanokhttp3/Headers;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already finished"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p1    # "trailers":Lccsanokhttp3/Headers;
    throw v0

    .line 225
    .restart local p1    # "trailers":Lccsanokhttp3/Headers;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getConnection()Lccsanokhttp3/internal/http2/Http2Connection;
    .locals 1

    .line 139
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    return-object v0
.end method

.method public declared-synchronized getErrorCode()Lccsanokhttp3/internal/http2/ErrorCode;
    .locals 1

    monitor-enter p0

    .line 181
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 181
    .end local p0    # "this":Lccsanokhttp3/internal/http2/Http2Stream;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getId()I
    .locals 1

    .line 106
    iget v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    return v0
.end method

.method public getSink()Lccsanokio/Sink;
    .locals 2

    .line 248
    monitor-enter p0

    .line 249
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsanokhttp3/internal/http2/Http2Stream;->isLocallyInitiated()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 250
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    return-object v0

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getSource()Lccsanokio/Source;
    .locals 1

    .line 238
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    return-object v0
.end method

.method public isLocallyInitiated()Z
    .locals 4

    .line 134
    iget v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 135
    .local v0, "streamIsClient":Z
    :goto_0
    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-boolean v3, v3, Lccsanokhttp3/internal/http2/Http2Connection;->client:Z

    if-ne v3, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 122
    monitor-exit p0

    return v1

    .line 124
    :cond_0
    :try_start_1
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->closed:Z

    if-eqz v0, :cond_3

    .end local p0    # "this":Lccsanokhttp3/internal/http2/Http2Stream;
    :cond_1
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->closed:Z

    if-eqz v0, :cond_3

    :cond_2
    iget-boolean v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    .line 127
    monitor-exit p0

    return v1

    .line 129
    :cond_3
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 120
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public readTimeout()Lccsanokio/Timeout;
    .locals 1

    .line 229
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method

.method receiveData(Lccsanokio/BufferedSource;I)V
    .locals 3
    .param p1, "in"    # Lccsanokio/BufferedSource;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 298
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 299
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->receive(Lccsanokio/BufferedSource;J)V

    .line 300
    return-void

    .line 298
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method receiveHeaders(Lccsanokhttp3/Headers;Z)V
    .locals 3
    .param p1, "headers"    # Lccsanokhttp3/Headers;
    .param p2, "inFinished"    # Z

    .line 307
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    monitor-enter p0

    .line 310
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 314
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0, p1}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->access$202(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;Lccsanokhttp3/Headers;)Lccsanokhttp3/Headers;

    goto :goto_1

    .line 311
    :cond_1
    :goto_0
    iput-boolean v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 312
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 316
    :goto_1
    if-eqz p2, :cond_2

    .line 317
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iput-boolean v1, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    .line 319
    :cond_2
    invoke-virtual {p0}, Lccsanokhttp3/internal/http2/Http2Stream;->isOpen()Z

    move-result v0

    .line 320
    .local v0, "open":Z
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 321
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    if-nez v0, :cond_3

    .line 323
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v2, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v1, v2}, Lccsanokhttp3/internal/http2/Http2Connection;->removeStream(I)Lccsanokhttp3/internal/http2/Http2Stream;

    .line 325
    :cond_3
    return-void

    .line 321
    .end local v0    # "open":Z
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 307
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method declared-synchronized receiveRstStream(Lccsanokhttp3/internal/http2/ErrorCode;)V
    .locals 1
    .param p1, "errorCode"    # Lccsanokhttp3/internal/http2/ErrorCode;

    monitor-enter p0

    .line 328
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 329
    iput-object p1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    .line 330
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    .end local p0    # "this":Lccsanokhttp3/internal/http2/Http2Stream;
    :cond_0
    monitor-exit p0

    return-void

    .line 327
    .end local p1    # "errorCode":Lccsanokhttp3/internal/http2/ErrorCode;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized takeHeaders()Lccsanokhttp3/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;->enter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 150
    :goto_0
    :try_start_1
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_0

    :try_start_2
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lccsanokhttp3/internal/http2/Http2Stream;->waitForIo()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    goto :goto_2

    :cond_0
    :try_start_3
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    .line 155
    nop

    .line 156
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->headersQueue:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanokhttp3/Headers;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    .line 159
    .end local p0    # "this":Lccsanokhttp3/internal/http2/Http2Stream;
    :cond_1
    :try_start_4
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lccsanokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lccsanokhttp3/internal/http2/StreamResetException;-><init>(Lccsanokhttp3/internal/http2/ErrorCode;)V

    :goto_1
    throw v0

    .line 154
    :catchall_1
    move-exception v0

    :goto_2
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    invoke-virtual {v1}, Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;->exitAndThrowIfTimedOut()V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 147
    :catchall_2
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method

.method public declared-synchronized trailers()Lccsanokhttp3/Headers;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    if-eqz v0, :cond_1

    .line 168
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorException:Ljava/io/IOException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanokhttp3/internal/http2/StreamResetException;

    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->errorCode:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-direct {v0, v1}, Lccsanokhttp3/internal/http2/StreamResetException;-><init>(Lccsanokhttp3/internal/http2/ErrorCode;)V

    :goto_0
    throw v0

    .line 170
    .end local p0    # "this":Lccsanokhttp3/internal/http2/Http2Stream;
    :cond_1
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    iget-boolean v0, v0, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->finished:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->access$000(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;)Lccsanokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->access$100(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;)Lccsanokio/Buffer;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->access$200(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;)Lccsanokhttp3/Headers;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->source:Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;

    invoke-static {v0}, Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;->access$200(Lccsanokhttp3/internal/http2/Http2Stream$FramingSource;)Lccsanokhttp3/Headers;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget-object v0, Lccsanokhttp3/internal/Util;->EMPTY_HEADERS:Lccsanokhttp3/Headers;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-object v0

    .line 171
    :cond_3
    :try_start_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "too early; can\'t read the trailers yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method waitForIo()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 660
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 664
    nop

    .line 665
    return-void

    .line 661
    :catch_0
    move-exception v0

    .line 662
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 663
    new-instance v1, Ljava/io/InterruptedIOException;

    invoke-direct {v1}, Ljava/io/InterruptedIOException;-><init>()V

    throw v1
.end method

.method public writeHeaders(Ljava/util/List;ZZ)V
    .locals 7
    .param p2, "outFinished"    # Z
    .param p3, "flushHeaders"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanokhttp3/internal/http2/Header;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    .local p1, "responseHeaders":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/internal/http2/Header;>;"
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 195
    if-eqz p1, :cond_4

    .line 198
    monitor-enter p0

    .line 199
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->hasResponseHeaders:Z

    .line 200
    if-eqz p2, :cond_0

    .line 201
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->sink:Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;

    iput-boolean v0, v1, Lccsanokhttp3/internal/http2/Http2Stream$FramingSink;->finished:Z

    .line 203
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 207
    if-nez p3, :cond_2

    .line 208
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    monitor-enter v1

    .line 209
    :try_start_1
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget-wide v2, v2, Lccsanokhttp3/internal/http2/Http2Connection;->bytesLeftInWriteWindow:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    move p3, v0

    .line 210
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 213
    :cond_2
    :goto_1
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    iget v1, p0, Lccsanokhttp3/internal/http2/Http2Stream;->id:I

    invoke-virtual {v0, v1, p2, p1}, Lccsanokhttp3/internal/http2/Http2Connection;->writeHeaders(IZLjava/util/List;)V

    .line 215
    if-eqz p3, :cond_3

    .line 216
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Connection;->flush()V

    .line 218
    :cond_3
    return-void

    .line 203
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "headers == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 194
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public writeTimeout()Lccsanokio/Timeout;
    .locals 1

    .line 233
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2Stream;->writeTimeout:Lccsanokhttp3/internal/http2/Http2Stream$StreamTimeout;

    return-object v0
.end method
