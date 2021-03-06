.class public final Lccsanokhttp3/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lccsanokhttp3/WebSocket;
.implements Lccsanokhttp3/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/internal/ws/RealWebSocket$CancelRunnable;,
        Lccsanokhttp3/internal/ws/RealWebSocket$Streams;,
        Lccsanokhttp3/internal/ws/RealWebSocket$Close;,
        Lccsanokhttp3/internal/ws/RealWebSocket$Message;,
        Lccsanokhttp3/internal/ws/RealWebSocket$PingRunnable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CANCEL_AFTER_CLOSE_MILLIS:J = 0xea60L

.field private static final MAX_QUEUE_SIZE:J = 0x1000000L

.field private static final ONLY_HTTP1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private awaitingPong:Z

.field private call:Lccsanokhttp3/Call;

.field private cancelFuture:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private enqueuedClose:Z

.field private executor:Ljava/util/concurrent/ScheduledExecutorService;

.field private failed:Z

.field private final key:Ljava/lang/String;

.field final listener:Lccsanokhttp3/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lccsanokhttp3/Request;

.field private final pingIntervalMillis:J

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsanokio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lccsanokhttp3/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private receivedPingCount:I

.field private receivedPongCount:I

.field private sentPingCount:I

.field private streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

.field private writer:Lccsanokhttp3/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    nop

    .line 57
    sget-object v0, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsanokhttp3/Request;Lccsanokhttp3/WebSocketListener;Ljava/util/Random;J)V
    .locals 3
    .param p1, "request"    # Lccsanokhttp3/Request;
    .param p2, "listener"    # Lccsanokhttp3/WebSocketListener;
    .param p3, "random"    # Ljava/util/Random;
    .param p4, "pingIntervalMillis"    # J

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 107
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 144
    invoke-virtual {p1}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iput-object p1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->originalRequest:Lccsanokhttp3/Request;

    .line 148
    iput-object p2, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    .line 149
    iput-object p3, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    .line 150
    iput-wide p4, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    .line 152
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 153
    .local v0, "nonce":[B
    invoke-virtual {p3, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 154
    invoke-static {v0}, Lccsanokio/ByteString;->of([B)Lccsanokio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 156
    new-instance v1, Lccsanokhttp3/internal/ws/RealWebSocket$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsanokhttp3/internal/ws/RealWebSocket$$ExternalSyntheticLambda0;-><init>(Lccsanokhttp3/internal/ws/RealWebSocket;)V

    iput-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    .line 164
    return-void

    .line 145
    .end local v0    # "nonce":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must be GET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runWriter()V
    .locals 2

    .line 436
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 439
    iget-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 441
    :cond_0
    return-void

    .line 436
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private declared-synchronized send(Lccsanokio/ByteString;I)Z
    .locals 6
    .param p1, "data"    # Lccsanokio/ByteString;
    .param p2, "formatOpcode"    # I

    monitor-enter p0

    .line 385
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 388
    :cond_0
    iget-wide v2, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lccsanokio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 389
    const/16 v0, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lccsanokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 390
    monitor-exit p0

    return v1

    .line 394
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lccsanokio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 395
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lccsanokhttp3/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lccsanokhttp3/internal/ws/RealWebSocket$Message;-><init>(ILccsanokio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 396
    invoke-direct {p0}, Lccsanokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 397
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 385
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 384
    .end local p1    # "data":Lccsanokio/ByteString;
    .end local p2    # "formatOpcode":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method awaitTermination(ILjava/util/concurrent/TimeUnit;)V
    .locals 3
    .param p1, "timeout"    # I
    .param p2, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 296
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 175
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->call:Lccsanokhttp3/Call;

    invoke-interface {v0}, Lccsanokhttp3/Call;->cancel()V

    .line 176
    return-void
.end method

.method checkUpgradeSuccess(Lccsanokhttp3/Response;Lccsanokhttp3/internal/connection/Exchange;)V
    .locals 8
    .param p1, "response"    # Lccsanokhttp3/Response;
    .param p2, "exchange"    # Lccsanokhttp3/internal/connection/Exchange;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    invoke-virtual {p1}, Lccsanokhttp3/Response;->code()I

    move-result v0

    const-string v1, "\'"

    const/16 v2, 0x65

    if-ne v0, v2, :cond_4

    .line 227
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "headerConnection":Ljava/lang/String;
    const-string v2, "Upgrade"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 233
    invoke-virtual {p1, v2}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 234
    .local v2, "headerUpgrade":Ljava/lang/String;
    const-string v3, "websocket"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    const-string v3, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v3}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "headerAccept":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsanokio/ByteString;

    move-result-object v4

    .line 241
    invoke-virtual {v4}, Lccsanokio/ByteString;->sha1()Lccsanokio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lccsanokio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 242
    .local v4, "acceptExpected":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 247
    if-eqz p2, :cond_0

    .line 250
    return-void

    .line 248
    :cond_0
    new-instance v1, Ljava/net/ProtocolException;

    const-string v5, "Web Socket exchange missing: bad interceptor?"

    invoke-direct {v1, v5}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 243
    :cond_1
    new-instance v5, Ljava/net/ProtocolException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Expected \'Sec-WebSocket-Accept\' header value \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\' but was \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 235
    .end local v3    # "headerAccept":Ljava/lang/String;
    .end local v4    # "acceptExpected":Ljava/lang/String;
    :cond_2
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expected \'Upgrade\' header value \'websocket\' but was \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 229
    .end local v2    # "headerUpgrade":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/net/ProtocolException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expected \'Connection\' header value \'Upgrade\' but was \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 223
    .end local v0    # "headerConnection":Ljava/lang/String;
    :cond_4
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    invoke-virtual {p1}, Lccsanokhttp3/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close(ILjava/lang/String;)Z
    .locals 2
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 410
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lccsanokhttp3/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cancelAfterCloseMillis"    # J

    monitor-enter p0

    .line 414
    :try_start_0
    invoke-static {p1}, Lccsanokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 416
    const/4 v0, 0x0

    .line 417
    .local v0, "reasonBytes":Lccsanokio/ByteString;
    if-eqz p2, :cond_1

    .line 418
    invoke-static {p2}, Lccsanokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsanokio/ByteString;

    move-result-object v1

    move-object v0, v1

    .line 419
    invoke-virtual {v0}, Lccsanokio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 420
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason.size() > 123: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 424
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 427
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 430
    iget-object v2, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v3, Lccsanokhttp3/internal/ws/RealWebSocket$Close;

    invoke-direct {v3, p1, v0, p3, p4}, Lccsanokhttp3/internal/ws/RealWebSocket$Close;-><init>(ILccsanokio/ByteString;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 431
    invoke-direct {p0}, Lccsanokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    monitor-exit p0

    return v1

    .line 424
    :cond_3
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 413
    .end local v0    # "reasonBytes":Lccsanokio/ByteString;
    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "cancelAfterCloseMillis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connect(Lccsanokhttp3/OkHttpClient;)V
    .locals 3
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;

    .line 179
    invoke-virtual {p1}, Lccsanokhttp3/OkHttpClient;->newBuilder()Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lccsanokhttp3/EventListener;->NONE:Lccsanokhttp3/EventListener;

    .line 180
    invoke-virtual {v0, v1}, Lccsanokhttp3/OkHttpClient$Builder;->eventListener(Lccsanokhttp3/EventListener;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lccsanokhttp3/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    .line 181
    invoke-virtual {v0, v1}, Lccsanokhttp3/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object p1

    .line 183
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->originalRequest:Lccsanokhttp3/Request;

    invoke-virtual {v0}, Lccsanokhttp3/Request;->newBuilder()Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 184
    const-string v1, "Upgrade"

    const-string v2, "websocket"

    invoke-virtual {v0, v1, v2}, Lccsanokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 185
    const-string v2, "Connection"

    invoke-virtual {v0, v2, v1}, Lccsanokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 186
    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v0, v2, v1}, Lccsanokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 187
    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Lccsanokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v0

    .line 189
    .local v0, "request":Lccsanokhttp3/Request;
    sget-object v1, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {v1, p1, v0}, Lccsanokhttp3/internal/Internal;->newWebSocketCall(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v1

    iput-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->call:Lccsanokhttp3/Call;

    .line 190
    new-instance v2, Lccsanokhttp3/internal/ws/RealWebSocket$1;

    invoke-direct {v2, p0, v0}, Lccsanokhttp3/internal/ws/RealWebSocket$1;-><init>(Lccsanokhttp3/internal/ws/RealWebSocket;Lccsanokhttp3/Request;)V

    invoke-interface {v1, v2}, Lccsanokhttp3/Call;->enqueue(Lccsanokhttp3/Callback;)V

    .line 219
    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "response"    # Lccsanokhttp3/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 560
    monitor-enter p0

    .line 561
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 562
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    .line 563
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    .line 564
    .local v0, "streamsToClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    .line 565
    iget-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 566
    :cond_1
    iget-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 567
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 570
    :try_start_1
    iget-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    invoke-virtual {v1, p0, p1, p2}, Lccsanokhttp3/WebSocketListener;->onFailure(Lccsanokhttp3/WebSocket;Ljava/lang/Throwable;Lccsanokhttp3/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 572
    invoke-static {v0}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 573
    nop

    .line 574
    return-void

    .line 572
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 567
    .end local v0    # "streamsToClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public initReaderAndWriter(Ljava/lang/String;Lccsanokhttp3/internal/ws/RealWebSocket$Streams;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "streams"    # Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    monitor-enter p0

    .line 254
    :try_start_0
    iput-object p2, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    .line 255
    new-instance v0, Lccsanokhttp3/internal/ws/WebSocketWriter;

    iget-boolean v1, p2, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p2, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;->sink:Lccsanokio/BufferedSink;

    iget-object v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lccsanokhttp3/internal/ws/WebSocketWriter;-><init>(ZLccsanokio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->writer:Lccsanokhttp3/internal/ws/WebSocketWriter;

    .line 256
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lccsanokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 257
    iget-wide v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 258
    new-instance v5, Lccsanokhttp3/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v5, p0}, Lccsanokhttp3/internal/ws/RealWebSocket$PingRunnable;-><init>(Lccsanokhttp3/internal/ws/RealWebSocket;)V

    iget-wide v8, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 261
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 262
    invoke-direct {p0}, Lccsanokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 264
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    new-instance v0, Lccsanokhttp3/internal/ws/WebSocketReader;

    iget-boolean v1, p2, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p2, Lccsanokhttp3/internal/ws/RealWebSocket$Streams;->source:Lccsanokio/BufferedSource;

    invoke-direct {v0, v1, v2, p0}, Lccsanokhttp3/internal/ws/WebSocketReader;-><init>(ZLccsanokio/BufferedSource;Lccsanokhttp3/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->reader:Lccsanokhttp3/internal/ws/WebSocketReader;

    .line 267
    return-void

    .line 264
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public synthetic lambda$new$0$okhttp3-internal-ws-RealWebSocket()V
    .locals 2

    .line 158
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lccsanokhttp3/internal/ws/RealWebSocket;->writeOneFrame()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsanokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V

    .line 163
    .end local v0    # "e":Ljava/io/IOException;
    :goto_1
    return-void
.end method

.method public loopReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    :goto_0
    iget v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 273
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->reader:Lccsanokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lccsanokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    .line 275
    :cond_0
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 345
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 347
    const/4 v1, 0x0

    .line 348
    .local v1, "toClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    .line 349
    :try_start_0
    iget v2, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-ne v2, v0, :cond_3

    .line 350
    iput p1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 351
    iput-object p2, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 352
    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 353
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    move-object v1, v0

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    .line 355
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 356
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 358
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 361
    :try_start_1
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lccsanokhttp3/WebSocketListener;->onClosing(Lccsanokhttp3/WebSocket;ILjava/lang/String;)V

    .line 363
    if-eqz v1, :cond_2

    .line 364
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lccsanokhttp3/WebSocketListener;->onClosed(Lccsanokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    :cond_2
    invoke-static {v1}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 368
    nop

    .line 369
    return-void

    .line 367
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 349
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "toClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    throw v0

    .line 358
    .restart local v1    # "toClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .restart local p1    # "code":I
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 345
    .end local v1    # "toClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 322
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lccsanokhttp3/WebSocketListener;->onMessage(Lccsanokhttp3/WebSocket;Ljava/lang/String;)V

    .line 323
    return-void
.end method

.method public onReadMessage(Lccsanokio/ByteString;)V
    .locals 1
    .param p1, "bytes"    # Lccsanokio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 326
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lccsanokhttp3/WebSocketListener;->onMessage(Lccsanokhttp3/WebSocket;Lccsanokio/ByteString;)V

    .line 327
    return-void
.end method

.method public declared-synchronized onReadPing(Lccsanokio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lccsanokio/ByteString;

    monitor-enter p0

    .line 331
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 333
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 334
    invoke-direct {p0}, Lccsanokhttp3/internal/ws/RealWebSocket;->runWriter()V

    .line 335
    iget v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    monitor-exit p0

    return-void

    .line 331
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 330
    .end local p1    # "payload":Lccsanokio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lccsanokio/ByteString;)V
    .locals 1
    .param p1, "buffer"    # Lccsanokio/ByteString;

    monitor-enter p0

    .line 340
    :try_start_0
    iget v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 342
    monitor-exit p0

    return-void

    .line 339
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    .end local p1    # "buffer":Lccsanokio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pong(Lccsanokio/ByteString;)Z
    .locals 1
    .param p1, "payload"    # Lccsanokio/ByteString;

    monitor-enter p0

    .line 402
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 404
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 405
    invoke-direct {p0}, Lccsanokhttp3/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 402
    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 401
    .end local p1    # "payload":Lccsanokio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method processNextFrame()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->reader:Lccsanokhttp3/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lccsanokhttp3/internal/ws/WebSocketReader;->processNextFrame()V

    .line 284
    iget v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lccsanokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V

    .line 287
    return v0
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 171
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receivedPingCount()I
    .locals 1

    monitor-enter p0

    .line 314
    :try_start_0
    iget v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 314
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receivedPongCount()I
    .locals 1

    monitor-enter p0

    .line 318
    :try_start_0
    iget v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedPongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 318
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lccsanokhttp3/Request;
    .locals 1

    .line 167
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->originalRequest:Lccsanokhttp3/Request;

    return-object v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 374
    if-eqz p1, :cond_0

    .line 375
    invoke-static {p1}, Lccsanokio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsanokio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lccsanokhttp3/internal/ws/RealWebSocket;->send(Lccsanokio/ByteString;I)Z

    move-result v0

    return v0

    .line 374
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Lccsanokio/ByteString;)Z
    .locals 2
    .param p1, "bytes"    # Lccsanokio/ByteString;

    .line 379
    if-eqz p1, :cond_0

    .line 380
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lccsanokhttp3/internal/ws/RealWebSocket;->send(Lccsanokio/ByteString;I)Z

    move-result v0

    return v0

    .line 379
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized sentPingCount()I
    .locals 1

    monitor-enter p0

    .line 310
    :try_start_0
    iget v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->sentPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 310
    .end local p0    # "this":Lccsanokhttp3/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method tearDown()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 303
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 305
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 306
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 307
    return-void
.end method

.method writeOneFrame()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 459
    const/4 v0, 0x0

    .line 460
    .local v0, "messageOrClose":Ljava/lang/Object;
    const/4 v1, -0x1

    .line 461
    .local v1, "receivedCloseCode":I
    const/4 v2, 0x0

    .line 462
    .local v2, "receivedCloseReason":Ljava/lang/String;
    const/4 v3, 0x0

    .line 464
    .local v3, "streamsToClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    .line 465
    :try_start_0
    iget-boolean v4, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 466
    monitor-exit p0

    return v5

    .line 469
    :cond_0
    iget-object v4, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->writer:Lccsanokhttp3/internal/ws/WebSocketWriter;

    .line 470
    .local v4, "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    iget-object v6, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanokio/ByteString;

    .line 471
    .local v6, "pong":Lccsanokio/ByteString;
    if-nez v6, :cond_3

    .line 472
    iget-object v7, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 473
    nop

    instance-of v7, v0, Lccsanokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v7, :cond_2

    .line 474
    iget v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseCode:I

    move v1, v5

    .line 475
    iget-object v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    move-object v2, v5

    .line 476
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 477
    iget-object v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    move-object v3, v5

    .line 478
    const/4 v5, 0x0

    iput-object v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->streams:Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    .line 479
    iget-object v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    .line 482
    :cond_1
    iget-object v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lccsanokhttp3/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v7, p0}, Lccsanokhttp3/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lccsanokhttp3/internal/ws/RealWebSocket;)V

    move-object v8, v0

    check-cast v8, Lccsanokhttp3/internal/ws/RealWebSocket$Close;

    iget-wide v8, v8, Lccsanokhttp3/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 485
    :cond_2
    if-nez v0, :cond_3

    .line 486
    monitor-exit p0

    return v5

    .line 489
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 492
    if-eqz v6, :cond_4

    .line 493
    :try_start_1
    invoke-virtual {v4, v6}, Lccsanokhttp3/internal/ws/WebSocketWriter;->writePong(Lccsanokio/ByteString;)V

    goto :goto_1

    .line 495
    :cond_4
    instance-of v5, v0, Lccsanokhttp3/internal/ws/RealWebSocket$Message;

    if-eqz v5, :cond_5

    .line 496
    move-object v5, v0

    check-cast v5, Lccsanokhttp3/internal/ws/RealWebSocket$Message;

    iget-object v5, v5, Lccsanokhttp3/internal/ws/RealWebSocket$Message;->data:Lccsanokio/ByteString;

    .line 497
    .local v5, "data":Lccsanokio/ByteString;
    move-object v7, v0

    check-cast v7, Lccsanokhttp3/internal/ws/RealWebSocket$Message;

    iget v7, v7, Lccsanokhttp3/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 498
    invoke-virtual {v5}, Lccsanokio/ByteString;->size()I

    move-result v8

    int-to-long v8, v8

    .line 497
    invoke-virtual {v4, v7, v8, v9}, Lccsanokhttp3/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lccsanokio/Sink;

    move-result-object v7

    invoke-static {v7}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v7

    .line 499
    .local v7, "sink":Lccsanokio/BufferedSink;
    invoke-interface {v7, v5}, Lccsanokio/BufferedSink;->write(Lccsanokio/ByteString;)Lccsanokio/BufferedSink;

    .line 500
    invoke-interface {v7}, Lccsanokio/BufferedSink;->close()V

    .line 501
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 502
    :try_start_2
    iget-wide v8, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v5}, Lccsanokio/ByteString;->size()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->queueSize:J

    .line 503
    monitor-exit p0

    .line 505
    .end local v5    # "data":Lccsanokio/ByteString;
    .end local v7    # "sink":Lccsanokio/BufferedSink;
    goto :goto_1

    .line 503
    .restart local v5    # "data":Lccsanokio/ByteString;
    .restart local v7    # "sink":Lccsanokio/BufferedSink;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "messageOrClose":Ljava/lang/Object;
    .end local v1    # "receivedCloseCode":I
    .end local v2    # "receivedCloseReason":Ljava/lang/String;
    .end local v3    # "streamsToClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .end local v4    # "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    .end local v6    # "pong":Lccsanokio/ByteString;
    :try_start_3
    throw v8

    .line 505
    .end local v5    # "data":Lccsanokio/ByteString;
    .end local v7    # "sink":Lccsanokio/BufferedSink;
    .restart local v0    # "messageOrClose":Ljava/lang/Object;
    .restart local v1    # "receivedCloseCode":I
    .restart local v2    # "receivedCloseReason":Ljava/lang/String;
    .restart local v3    # "streamsToClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .restart local v4    # "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    .restart local v6    # "pong":Lccsanokio/ByteString;
    :cond_5
    instance-of v5, v0, Lccsanokhttp3/internal/ws/RealWebSocket$Close;

    if-eqz v5, :cond_7

    .line 506
    move-object v5, v0

    check-cast v5, Lccsanokhttp3/internal/ws/RealWebSocket$Close;

    .line 507
    .local v5, "close":Lccsanokhttp3/internal/ws/RealWebSocket$Close;
    iget v7, v5, Lccsanokhttp3/internal/ws/RealWebSocket$Close;->code:I

    iget-object v8, v5, Lccsanokhttp3/internal/ws/RealWebSocket$Close;->reason:Lccsanokio/ByteString;

    invoke-virtual {v4, v7, v8}, Lccsanokhttp3/internal/ws/WebSocketWriter;->writeClose(ILccsanokio/ByteString;)V

    .line 510
    if-eqz v3, :cond_6

    .line 511
    iget-object v7, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->listener:Lccsanokhttp3/WebSocketListener;

    invoke-virtual {v7, p0, v1, v2}, Lccsanokhttp3/WebSocketListener;->onClosed(Lccsanokhttp3/WebSocket;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 514
    .end local v5    # "close":Lccsanokhttp3/internal/ws/RealWebSocket$Close;
    :cond_6
    nop

    .line 518
    :goto_1
    const/4 v5, 0x1

    .line 520
    invoke-static {v3}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 518
    return v5

    .line 515
    :cond_7
    :try_start_4
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "messageOrClose":Ljava/lang/Object;
    .end local v1    # "receivedCloseCode":I
    .end local v2    # "receivedCloseReason":Ljava/lang/String;
    .end local v3    # "streamsToClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .end local v4    # "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    .end local v6    # "pong":Lccsanokio/ByteString;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 520
    .restart local v0    # "messageOrClose":Ljava/lang/Object;
    .restart local v1    # "receivedCloseCode":I
    .restart local v2    # "receivedCloseReason":Ljava/lang/String;
    .restart local v3    # "streamsToClose":Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .restart local v4    # "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    .restart local v6    # "pong":Lccsanokio/ByteString;
    :catchall_1
    move-exception v5

    invoke-static {v3}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v5

    .line 489
    .end local v4    # "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    .end local v6    # "pong":Lccsanokio/ByteString;
    :catchall_2
    move-exception v4

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v4
.end method

.method writePingFrame()V
    .locals 7

    .line 536
    monitor-enter p0

    .line 537
    :try_start_0
    iget-boolean v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 538
    :cond_0
    iget-object v0, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->writer:Lccsanokhttp3/internal/ws/WebSocketWriter;

    .line 539
    .local v0, "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    iget-boolean v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 540
    .local v1, "failedPing":I
    :goto_0
    iget v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->sentPingCount:I

    .line 541
    iput-boolean v4, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->awaitingPong:Z

    .line 542
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 544
    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 545
    new-instance v2, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lccsanokhttp3/internal/ws/RealWebSocket;->pingIntervalMillis:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, "ms (after "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v1, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " successful ping/pongs)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/net/SocketTimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lccsanokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V

    .line 548
    return-void

    .line 552
    :cond_2
    :try_start_1
    sget-object v2, Lccsanokio/ByteString;->EMPTY:Lccsanokio/ByteString;

    invoke-virtual {v0, v2}, Lccsanokhttp3/internal/ws/WebSocketWriter;->writePing(Lccsanokio/ByteString;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 555
    goto :goto_1

    .line 553
    :catch_0
    move-exception v2

    .line 554
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0, v2, v3}, Lccsanokhttp3/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsanokhttp3/Response;)V

    .line 556
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 542
    .end local v0    # "writer":Lccsanokhttp3/internal/ws/WebSocketWriter;
    .end local v1    # "failedPing":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
