.class public final Lccsanokhttp3/internal/connection/Exchange;
.super Ljava/lang/Object;
.source "Exchange.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;,
        Lccsanokhttp3/internal/connection/Exchange$RequestBodySink;
    }
.end annotation


# instance fields
.field final call:Lccsanokhttp3/Call;

.field final codec:Lccsanokhttp3/internal/http/ExchangeCodec;

.field private duplex:Z

.field final eventListener:Lccsanokhttp3/EventListener;

.field final finder:Lccsanokhttp3/internal/connection/ExchangeFinder;

.field final transmitter:Lccsanokhttp3/internal/connection/Transmitter;


# direct methods
.method public constructor <init>(Lccsanokhttp3/internal/connection/Transmitter;Lccsanokhttp3/Call;Lccsanokhttp3/EventListener;Lccsanokhttp3/internal/connection/ExchangeFinder;Lccsanokhttp3/internal/http/ExchangeCodec;)V
    .locals 0
    .param p1, "transmitter"    # Lccsanokhttp3/internal/connection/Transmitter;
    .param p2, "call"    # Lccsanokhttp3/Call;
    .param p3, "eventListener"    # Lccsanokhttp3/EventListener;
    .param p4, "finder"    # Lccsanokhttp3/internal/connection/ExchangeFinder;
    .param p5, "codec"    # Lccsanokhttp3/internal/http/ExchangeCodec;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lccsanokhttp3/internal/connection/Exchange;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    .line 54
    iput-object p2, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    .line 55
    iput-object p3, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    .line 56
    iput-object p4, p0, Lccsanokhttp3/internal/connection/Exchange;->finder:Lccsanokhttp3/internal/connection/ExchangeFinder;

    .line 57
    iput-object p5, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    .line 58
    return-void
.end method


# virtual methods
.method bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "bytesRead"    # J
    .param p3, "responseDone"    # Z
    .param p4, "requestDone"    # Z
    .param p5, "e"    # Ljava/io/IOException;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 187
    if-eqz p5, :cond_0

    .line 188
    invoke-virtual {p0, p5}, Lccsanokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 190
    :cond_0
    if-eqz p4, :cond_2

    .line 191
    if-eqz p5, :cond_1

    .line 192
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1, p5}, Lccsanokhttp3/EventListener;->requestFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_0

    .line 194
    :cond_1
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1, p1, p2}, Lccsanokhttp3/EventListener;->requestBodyEnd(Lccsanokhttp3/Call;J)V

    .line 197
    :cond_2
    :goto_0
    if-eqz p3, :cond_4

    .line 198
    if-eqz p5, :cond_3

    .line 199
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1, p5}, Lccsanokhttp3/EventListener;->responseFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    goto :goto_1

    .line 201
    :cond_3
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1, p1, p2}, Lccsanokhttp3/EventListener;->responseBodyEnd(Lccsanokhttp3/Call;J)V

    .line 204
    :cond_4
    :goto_1
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0, p0, p4, p3, p5}, Lccsanokhttp3/internal/connection/Transmitter;->exchangeMessageDone(Lccsanokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method public cancel()V
    .locals 1

    .line 168
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 169
    return-void
.end method

.method public connection()Lccsanokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 61
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->connection()Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v0

    return-object v0
.end method

.method public createRequestBody(Lccsanokhttp3/Request;Z)Lccsanokio/Sink;
    .locals 4
    .param p1, "request"    # Lccsanokhttp3/Request;
    .param p2, "duplex"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    iput-boolean p2, p0, Lccsanokhttp3/internal/connection/Exchange;->duplex:Z

    .line 83
    invoke-virtual {p1}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/RequestBody;->contentLength()J

    move-result-wide v0

    .line 84
    .local v0, "contentLength":J
    iget-object v2, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v3, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v2, v3}, Lccsanokhttp3/EventListener;->requestBodyStart(Lccsanokhttp3/Call;)V

    .line 85
    iget-object v2, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v2, p1, v0, v1}, Lccsanokhttp3/internal/http/ExchangeCodec;->createRequestBody(Lccsanokhttp3/Request;J)Lccsanokio/Sink;

    move-result-object v2

    .line 86
    .local v2, "rawRequestBody":Lccsanokio/Sink;
    new-instance v3, Lccsanokhttp3/internal/connection/Exchange$RequestBodySink;

    invoke-direct {v3, p0, v2, v0, v1}, Lccsanokhttp3/internal/connection/Exchange$RequestBodySink;-><init>(Lccsanokhttp3/internal/connection/Exchange;Lccsanokio/Sink;J)V

    return-object v3
.end method

.method public detachWithViolence()V
    .locals 3

    .line 176
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->cancel()V

    .line 177
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v1, v2}, Lccsanokhttp3/internal/connection/Transmitter;->exchangeMessageDone(Lccsanokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 178
    return-void
.end method

.method public finishRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 101
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->finishRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    nop

    .line 107
    return-void

    .line 102
    :catch_0
    move-exception v0

    .line 103
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v2, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lccsanokhttp3/EventListener;->requestFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    .line 104
    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 105
    throw v0
.end method

.method public flushRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->flushRequest()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    nop

    .line 97
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v2, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lccsanokhttp3/EventListener;->requestFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    .line 94
    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 95
    throw v0
.end method

.method public isDuplex()Z
    .locals 1

    .line 66
    iget-boolean v0, p0, Lccsanokhttp3/internal/connection/Exchange;->duplex:Z

    return v0
.end method

.method public newWebSocketStreams()Lccsanokhttp3/internal/ws/RealWebSocket$Streams;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    .line 156
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->connection()Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanokhttp3/internal/connection/RealConnection;->newWebSocketStreams(Lccsanokhttp3/internal/connection/Exchange;)Lccsanokhttp3/internal/ws/RealWebSocket$Streams;

    move-result-object v0

    return-object v0
.end method

.method public noNewExchangesOnConnection()V
    .locals 1

    .line 164
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->connection()Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/RealConnection;->noNewExchanges()V

    .line 165
    return-void
.end method

.method public noRequestBody()V
    .locals 4

    .line 208
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, p0, v1, v2, v3}, Lccsanokhttp3/internal/connection/Transmitter;->exchangeMessageDone(Lccsanokhttp3/internal/connection/Exchange;ZZLjava/io/IOException;)Ljava/io/IOException;

    .line 209
    return-void
.end method

.method public openResponseBody(Lccsanokhttp3/Response;)Lccsanokhttp3/ResponseBody;
    .locals 7
    .param p1, "response"    # Lccsanokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 133
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1}, Lccsanokhttp3/EventListener;->responseBodyStart(Lccsanokhttp3/Call;)V

    .line 134
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 135
    .local v0, "contentType":Ljava/lang/String;
    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v1, p1}, Lccsanokhttp3/internal/http/ExchangeCodec;->reportedContentLength(Lccsanokhttp3/Response;)J

    move-result-wide v1

    .line 136
    .local v1, "contentLength":J
    iget-object v3, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v3, p1}, Lccsanokhttp3/internal/http/ExchangeCodec;->openResponseBodySource(Lccsanokhttp3/Response;)Lccsanokio/Source;

    move-result-object v3

    .line 137
    .local v3, "rawSource":Lccsanokio/Source;
    new-instance v4, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;

    invoke-direct {v4, p0, v3, v1, v2}, Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;-><init>(Lccsanokhttp3/internal/connection/Exchange;Lccsanokio/Source;J)V

    .line 138
    .local v4, "source":Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;
    new-instance v5, Lccsanokhttp3/internal/http/RealResponseBody;

    invoke-static {v4}, Lccsanokio/Okio;->buffer(Lccsanokio/Source;)Lccsanokio/BufferedSource;

    move-result-object v6

    invoke-direct {v5, v0, v1, v2, v6}, Lccsanokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsanokio/BufferedSource;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 139
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "contentLength":J
    .end local v3    # "rawSource":Lccsanokio/Source;
    .end local v4    # "source":Lccsanokhttp3/internal/connection/Exchange$ResponseBodySource;
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v2, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lccsanokhttp3/EventListener;->responseFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    .line 141
    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 142
    throw v0
.end method

.method public readResponseHeaders(Z)Lccsanokhttp3/Response$Builder;
    .locals 3
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 115
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0, p1}, Lccsanokhttp3/internal/http/ExchangeCodec;->readResponseHeaders(Z)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    .line 116
    .local v0, "result":Lccsanokhttp3/Response$Builder;
    if-eqz v0, :cond_0

    .line 117
    sget-object v1, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {v1, v0, p0}, Lccsanokhttp3/internal/Internal;->initExchange(Lccsanokhttp3/Response$Builder;Lccsanokhttp3/internal/connection/Exchange;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    :cond_0
    return-object v0

    .line 120
    .end local v0    # "result":Lccsanokhttp3/Response$Builder;
    :catch_0
    move-exception v0

    .line 121
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v2, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lccsanokhttp3/EventListener;->responseFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    .line 122
    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 123
    throw v0
.end method

.method public responseHeadersEnd(Lccsanokhttp3/Response;)V
    .locals 2
    .param p1, "response"    # Lccsanokhttp3/Response;

    .line 128
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1, p1}, Lccsanokhttp3/EventListener;->responseHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Response;)V

    .line 129
    return-void
.end method

.method public responseHeadersStart()V
    .locals 2

    .line 110
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1}, Lccsanokhttp3/EventListener;->responseHeadersStart(Lccsanokhttp3/Call;)V

    .line 111
    return-void
.end method

.method public timeoutEarlyExit()V
    .locals 1

    .line 151
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->transmitter:Lccsanokhttp3/internal/connection/Transmitter;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/Transmitter;->timeoutEarlyExit()V

    .line 152
    return-void
.end method

.method trackFailure(Ljava/io/IOException;)V
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;

    .line 181
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->finder:Lccsanokhttp3/internal/connection/ExchangeFinder;

    invoke-virtual {v0}, Lccsanokhttp3/internal/connection/ExchangeFinder;->trackFailure()V

    .line 182
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->connection()Lccsanokhttp3/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanokhttp3/internal/connection/RealConnection;->trackFailure(Ljava/io/IOException;)V

    .line 183
    return-void
.end method

.method public trailers()Lccsanokhttp3/Headers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 147
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0}, Lccsanokhttp3/internal/http/ExchangeCodec;->trailers()Lccsanokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public webSocketUpgradeFailed()V
    .locals 6

    .line 160
    const-wide/16 v1, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lccsanokhttp3/internal/connection/Exchange;->bodyComplete(JZZLjava/io/IOException;)Ljava/io/IOException;

    .line 161
    return-void
.end method

.method public writeRequestHeaders(Lccsanokhttp3/Request;)V
    .locals 3
    .param p1, "request"    # Lccsanokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    :try_start_0
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1}, Lccsanokhttp3/EventListener;->requestHeadersStart(Lccsanokhttp3/Call;)V

    .line 72
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->codec:Lccsanokhttp3/internal/http/ExchangeCodec;

    invoke-interface {v0, p1}, Lccsanokhttp3/internal/http/ExchangeCodec;->writeRequestHeaders(Lccsanokhttp3/Request;)V

    .line 73
    iget-object v0, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v0, v1, p1}, Lccsanokhttp3/EventListener;->requestHeadersEnd(Lccsanokhttp3/Call;Lccsanokhttp3/Request;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    nop

    .line 79
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lccsanokhttp3/internal/connection/Exchange;->eventListener:Lccsanokhttp3/EventListener;

    iget-object v2, p0, Lccsanokhttp3/internal/connection/Exchange;->call:Lccsanokhttp3/Call;

    invoke-virtual {v1, v2, v0}, Lccsanokhttp3/EventListener;->requestFailed(Lccsanokhttp3/Call;Ljava/io/IOException;)V

    .line 76
    invoke-virtual {p0, v0}, Lccsanokhttp3/internal/connection/Exchange;->trackFailure(Ljava/io/IOException;)V

    .line 77
    throw v0
.end method
