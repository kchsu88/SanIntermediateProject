.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
.super Ljava/lang/Object;
.source "RealWebSocket.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;
.implements Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$CancelRunnable;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$PingRunnable;
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
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private awaitingPong:Z

.field private call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

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

.field final listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

.field private final messageAndCloseQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

.field private final pingIntervalMillis:J

.field private final pongQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lccsancom/mbridge/msdk/thrid/okio/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private queueSize:J

.field private final random:Ljava/util/Random;

.field private reader:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;

.field private receivedCloseCode:I

.field private receivedCloseReason:Ljava/lang/String;

.field private receivedPingCount:I

.field private receivedPongCount:I

.field private sentPingCount:I

.field private streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

.field private writer:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

.field private final writerRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 56
    nop

    .line 57
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;Ljava/util/Random;J)V
    .locals 3
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "listener"    # Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;
    .param p3, "random"    # Ljava/util/Random;
    .param p4, "pingIntervalMillis"    # J

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    .line 107
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    .line 122
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 144
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 148
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    .line 149
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    .line 150
    iput-wide p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pingIntervalMillis:J

    .line 152
    const/16 v0, 0x10

    new-array v0, v0, [B

    .line 153
    .local v0, "nonce":[B
    invoke-virtual {p3, v0}, Ljava/util/Random;->nextBytes([B)V

    .line 154
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->of([B)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 156
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$1;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    .line 166
    return-void

    .line 145
    .end local v0    # "nonce":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request must be GET: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private runWriter()V
    .locals 2

    .line 437
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 440
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->writerRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 442
    :cond_0
    return-void

    .line 437
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private declared-synchronized send(Lccsancom/mbridge/msdk/thrid/okio/ByteString;I)Z
    .locals 6
    .param p1, "data"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .param p2, "formatOpcode"    # I

    monitor-enter p0

    .line 386
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 389
    :cond_0
    iget-wide v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    .line 390
    const/16 v0, 0x3e9

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->close(ILjava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 391
    monitor-exit p0

    return v1

    .line 395
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->queueSize:J

    .line 396
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;

    invoke-direct {v1, p2, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;-><init>(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 397
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->runWriter()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 398
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 386
    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    .line 385
    .end local p1    # "data":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
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

    .line 296
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2, p2}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 297
    return-void
.end method

.method public cancel()V
    .locals 1

    .line 177
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->cancel()V

    .line 178
    return-void
.end method

.method checkResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 8
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .line 227
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v0

    const-string v1, "\'"

    const/16 v2, 0x65

    if-ne v0, v2, :cond_3

    .line 232
    const-string v0, "Connection"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 233
    .local v0, "headerConnection":Ljava/lang/String;
    const-string v2, "Upgrade"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    invoke-virtual {p1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "headerUpgrade":Ljava/lang/String;
    const-string v3, "websocket"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    const-string v3, "Sec-WebSocket-Accept"

    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "headerAccept":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v4

    .line 246
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->sha1()Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->base64()Ljava/lang/String;

    move-result-object v4

    .line 247
    .local v4, "acceptExpected":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 251
    return-void

    .line 248
    :cond_0
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

    .line 240
    .end local v3    # "headerAccept":Ljava/lang/String;
    .end local v4    # "acceptExpected":Ljava/lang/String;
    :cond_1
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

    .line 234
    .end local v2    # "headerUpgrade":Ljava/lang/String;
    :cond_2
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

    .line 228
    .end local v0    # "headerConnection":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expected HTTP 101 response but was \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->message()Ljava/lang/String;

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

    .line 411
    const-wide/32 v0, 0xea60

    invoke-virtual {p0, p1, p2, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->close(ILjava/lang/String;J)Z

    move-result v0

    return v0
.end method

.method declared-synchronized close(ILjava/lang/String;J)Z
    .locals 6
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cancelAfterCloseMillis"    # J

    monitor-enter p0

    .line 415
    :try_start_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    .line 417
    const/4 v0, 0x0

    .line 418
    .local v0, "reasonBytes":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    if-eqz p2, :cond_1

    .line 419
    invoke-static {p2}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v1

    move-object v0, v1

    .line 420
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x7b

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    goto :goto_0

    .line 421
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

    .line 425
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 428
    :cond_2
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->enqueuedClose:Z

    .line 431
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;

    invoke-direct {v3, p1, v0, p3, p4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;-><init>(ILccsancom/mbridge/msdk/thrid/okio/ByteString;J)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 432
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 433
    monitor-exit p0

    return v1

    .line 425
    :cond_3
    :goto_1
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 414
    .end local v0    # "reasonBytes":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    .end local p3    # "cancelAfterCloseMillis":J
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connect(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V
    .locals 3
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 181
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->NONE:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    .line 182
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->eventListener(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->ONLY_HTTP1:Ljava/util/List;

    .line 183
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v0

    .line 184
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    move-result-object p1

    .line 185
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 186
    const-string v1, "Upgrade"

    const-string v2, "websocket"

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 187
    const-string v2, "Connection"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->key:Ljava/lang/String;

    .line 188
    const-string v2, "Sec-WebSocket-Key"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 189
    const-string v1, "Sec-WebSocket-Version"

    const-string v2, "13"

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    .line 191
    .local v0, "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {v1, p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->newWebSocketCall(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    move-result-object v1

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    .line 192
    invoke-interface {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->clearTimeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 193
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;

    invoke-direct {v2, p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$2;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V

    invoke-interface {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->enqueue(Lccsancom/mbridge/msdk/thrid/okhttp/Callback;)V

    .line 224
    return-void
.end method

.method public failWebSocket(Ljava/lang/Exception;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    .locals 3
    .param p1, "e"    # Ljava/lang/Exception;
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 561
    monitor-enter p0

    .line 562
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 563
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    .line 564
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    .line 565
    .local v0, "streamsToClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    .line 566
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 567
    :cond_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 568
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 571
    :try_start_1
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    invoke-virtual {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;->onFailure(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Ljava/lang/Throwable;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 573
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 574
    nop

    .line 575
    return-void

    .line 573
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 574
    throw v1

    .line 568
    .end local v0    # "streamsToClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public initReaderAndWriter(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;)V
    .locals 11
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "streams"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    monitor-enter p0

    .line 255
    :try_start_0
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    .line 256
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    iget-boolean v1, p2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->random:Ljava/util/Random;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;-><init>(ZLccsancom/mbridge/msdk/thrid/okio/BufferedSink;Ljava/util/Random;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->writer:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    .line 257
    new-instance v4, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iput-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 258
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pingIntervalMillis:J

    const-wide/16 v2, 0x0

    cmp-long v5, v0, v2

    if-eqz v5, :cond_0

    .line 259
    new-instance v5, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$PingRunnable;

    invoke-direct {v5, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$PingRunnable;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;)V

    iget-wide v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pingIntervalMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v6, v8

    invoke-interface/range {v4 .. v10}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 262
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 263
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->runWriter()V

    .line 265
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 267
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;

    iget-boolean v1, p2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;->client:Z

    iget-object v2, p2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-direct {v0, v1, v2, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;-><init>(ZLccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader$FrameCallback;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->reader:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;

    .line 268
    return-void

    .line 265
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public loopReader()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    :goto_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseCode:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 274
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->reader:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;->processNextFrame()V

    goto :goto_0

    .line 276
    :cond_0
    return-void
.end method

.method public onReadClose(ILjava/lang/String;)V
    .locals 3
    .param p1, "code"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 346
    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    .line 348
    const/4 v1, 0x0

    .line 349
    .local v1, "toClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    .line 350
    :try_start_0
    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseCode:I

    if-ne v2, v0, :cond_3

    .line 351
    iput p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseCode:I

    .line 352
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    .line 353
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    move-object v1, v0

    .line 355
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    .line 356
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 357
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 359
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 362
    :try_start_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;->onClosing(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;ILjava/lang/String;)V

    .line 364
    if-eqz v1, :cond_2

    .line 365
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    invoke-virtual {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;->onClosed(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    :cond_2
    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 369
    nop

    .line 370
    return-void

    .line 368
    :catchall_0
    move-exception v0

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 369
    throw v0

    .line 350
    :cond_3
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "already closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "toClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .end local p1    # "code":I
    .end local p2    # "reason":Ljava/lang/String;
    throw v0

    .line 359
    .restart local v1    # "toClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .restart local p1    # "code":I
    .restart local p2    # "reason":Ljava/lang/String;
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    .line 346
    .end local v1    # "toClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public onReadMessage(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 1
    .param p1, "bytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 327
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;->onMessage(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    .line 328
    return-void
.end method

.method public onReadMessage(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    invoke-virtual {v0, p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;->onMessage(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;Ljava/lang/String;)V

    .line 324
    return-void
.end method

.method public declared-synchronized onReadPing(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 1
    .param p1, "payload"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    monitor-enter p0

    .line 332
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 334
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 335
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->runWriter()V

    .line 336
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedPingCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    monitor-exit p0

    return-void

    .line 332
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 331
    .end local p1    # "payload":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onReadPong(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    .locals 1
    .param p1, "buffer"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    monitor-enter p0

    .line 341
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedPongCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedPongCount:I

    .line 342
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->awaitingPong:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    monitor-exit p0

    return-void

    .line 340
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    .end local p1    # "buffer":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized pong(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Z
    .locals 1
    .param p1, "payload"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    monitor-enter p0

    .line 403
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->enqueuedClose:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 405
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->runWriter()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 407
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 403
    :cond_1
    :goto_0
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 402
    .end local p1    # "payload":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
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

    .line 284
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->reader:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketReader;->processNextFrame()V

    .line 285
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 286
    :catch_0
    move-exception v1

    .line 287
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 288
    return v0
.end method

.method public declared-synchronized queueSize()J
    .locals 2

    monitor-enter p0

    .line 173
    :try_start_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->queueSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 173
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receivedPingCount()I
    .locals 1

    monitor-enter p0

    .line 315
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 315
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized receivedPongCount()I
    .locals 1

    monitor-enter p0

    .line 319
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedPongCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 319
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 1

    .line 169
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->originalRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    return-object v0
.end method

.method public send(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Z
    .locals 2
    .param p1, "bytes"    # Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 380
    if-eqz p1, :cond_0

    .line 381
    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->send(Lccsancom/mbridge/msdk/thrid/okio/ByteString;I)Z

    move-result v0

    return v0

    .line 380
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "bytes == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public send(Ljava/lang/String;)Z
    .locals 2
    .param p1, "text"    # Ljava/lang/String;

    .line 375
    if-eqz p1, :cond_0

    .line 376
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->send(Lccsancom/mbridge/msdk/thrid/okio/ByteString;I)Z

    move-result v0

    return v0

    .line 375
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "text == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method declared-synchronized sentPingCount()I
    .locals 1

    monitor-enter p0

    .line 311
    :try_start_0
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->sentPingCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 311
    .end local p0    # "this":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;
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

    .line 303
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    .line 304
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 306
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 307
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v1, 0xa

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 308
    return-void
.end method

.method writeOneFrame()Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 460
    const/4 v0, 0x0

    .line 461
    .local v0, "messageOrClose":Ljava/lang/Object;
    const/4 v1, -0x1

    .line 462
    .local v1, "receivedCloseCode":I
    const/4 v2, 0x0

    .line 463
    .local v2, "receivedCloseReason":Ljava/lang/String;
    const/4 v3, 0x0

    .line 465
    .local v3, "streamsToClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    monitor-enter p0

    .line 466
    :try_start_0
    iget-boolean v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    .line 467
    monitor-exit p0

    return v5

    .line 470
    :cond_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->writer:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    .line 471
    .local v4, "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pongQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v6}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 472
    .local v6, "pong":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    if-nez v6, :cond_3

    .line 473
    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->messageAndCloseQueue:Ljava/util/ArrayDeque;

    invoke-virtual {v7}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    .line 474
    nop

    instance-of v7, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;

    if-eqz v7, :cond_2

    .line 475
    iget v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseCode:I

    move v1, v5

    .line 476
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->receivedCloseReason:Ljava/lang/String;

    move-object v2, v5

    .line 477
    const/4 v5, -0x1

    if-eq v1, v5, :cond_1

    .line 478
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    move-object v3, v5

    .line 479
    const/4 v5, 0x0

    iput-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->streams:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;

    .line 480
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v5}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    goto :goto_0

    .line 483
    :cond_1
    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$CancelRunnable;

    invoke-direct {v7, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$CancelRunnable;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;)V

    move-object v8, v0

    check-cast v8, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;

    iget-wide v8, v8, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;->cancelAfterCloseMillis:J

    sget-object v10, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v7, v8, v9, v10}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v5

    iput-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->cancelFuture:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    .line 486
    :cond_2
    if-nez v0, :cond_3

    .line 487
    monitor-exit p0

    return v5

    .line 490
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 493
    if-eqz v6, :cond_4

    .line 494
    :try_start_1
    invoke-virtual {v4, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writePong(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    goto :goto_1

    .line 496
    :cond_4
    instance-of v5, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;

    if-eqz v5, :cond_5

    .line 497
    move-object v5, v0

    check-cast v5, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;

    iget-object v5, v5, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;->data:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    .line 498
    .local v5, "data":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    move-object v7, v0

    check-cast v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;

    iget v7, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Message;->formatOpcode:I

    .line 499
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v8

    int-to-long v8, v8

    .line 498
    invoke-virtual {v4, v7, v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->newMessageSink(IJ)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v7

    .line 500
    .local v7, "sink":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    invoke-interface {v7, v5}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->write(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 501
    invoke-interface {v7}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->close()V

    .line 502
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 503
    :try_start_2
    iget-wide v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->queueSize:J

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->size()I

    move-result v10

    int-to-long v10, v10

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->queueSize:J

    .line 504
    monitor-exit p0

    .line 506
    .end local v5    # "data":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .end local v7    # "sink":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    goto :goto_1

    .line 504
    .restart local v5    # "data":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .restart local v7    # "sink":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    :catchall_0
    move-exception v8

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "messageOrClose":Ljava/lang/Object;
    .end local v1    # "receivedCloseCode":I
    .end local v2    # "receivedCloseReason":Ljava/lang/String;
    .end local v3    # "streamsToClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .end local v4    # "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    .end local v6    # "pong":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    :try_start_3
    throw v8

    .line 506
    .end local v5    # "data":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    .end local v7    # "sink":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    .restart local v0    # "messageOrClose":Ljava/lang/Object;
    .restart local v1    # "receivedCloseCode":I
    .restart local v2    # "receivedCloseReason":Ljava/lang/String;
    .restart local v3    # "streamsToClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .restart local v4    # "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    .restart local v6    # "pong":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    :cond_5
    instance-of v5, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;

    if-eqz v5, :cond_7

    .line 507
    move-object v5, v0

    check-cast v5, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;

    .line 508
    .local v5, "close":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;
    iget v7, v5, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;->code:I

    iget-object v8, v5, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;->reason:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v4, v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writeClose(ILccsancom/mbridge/msdk/thrid/okio/ByteString;)V

    .line 511
    if-eqz v3, :cond_6

    .line 512
    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->listener:Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;

    invoke-virtual {v7, p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/WebSocketListener;->onClosed(Lccsancom/mbridge/msdk/thrid/okhttp/WebSocket;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 515
    .end local v5    # "close":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Close;
    :cond_6
    nop

    .line 519
    :goto_1
    const/4 v5, 0x1

    .line 521
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 519
    return v5

    .line 516
    :cond_7
    :try_start_4
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "messageOrClose":Ljava/lang/Object;
    .end local v1    # "receivedCloseCode":I
    .end local v2    # "receivedCloseReason":Ljava/lang/String;
    .end local v3    # "streamsToClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .end local v4    # "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    .end local v6    # "pong":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 521
    .restart local v0    # "messageOrClose":Ljava/lang/Object;
    .restart local v1    # "receivedCloseCode":I
    .restart local v2    # "receivedCloseReason":Ljava/lang/String;
    .restart local v3    # "streamsToClose":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .restart local v4    # "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    .restart local v6    # "pong":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    :catchall_1
    move-exception v5

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 522
    throw v5

    .line 490
    .end local v4    # "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    .end local v6    # "pong":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
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

    .line 537
    monitor-enter p0

    .line 538
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failed:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 539
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->writer:Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;

    .line 540
    .local v0, "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->awaitingPong:Z

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->sentPingCount:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 541
    .local v1, "failedPing":I
    :goto_0
    iget v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->sentPingCount:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->sentPingCount:I

    .line 542
    iput-boolean v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->awaitingPong:Z

    .line 543
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 545
    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    .line 546
    new-instance v2, Ljava/net/SocketTimeoutException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sent ping but didn\'t receive pong within "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->pingIntervalMillis:J

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

    invoke-virtual {p0, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 549
    return-void

    .line 553
    :cond_2
    :try_start_1
    sget-object v2, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->EMPTY:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;->writePing(Lccsancom/mbridge/msdk/thrid/okio/ByteString;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 556
    goto :goto_1

    .line 554
    :catch_0
    move-exception v2

    .line 555
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {p0, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket;->failWebSocket(Ljava/lang/Exception;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 557
    .end local v2    # "e":Ljava/io/IOException;
    :goto_1
    return-void

    .line 543
    .end local v0    # "writer":Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/WebSocketWriter;
    .end local v1    # "failedPing":I
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
