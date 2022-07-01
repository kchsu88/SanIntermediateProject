.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;
.super Ljava/lang/Object;
.source "Http1Codec.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$UnknownLengthSource;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$ChunkedSource;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$FixedLengthSource;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$AbstractSource;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$ChunkedSink;,
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$FixedLengthSink;
    }
.end annotation


# static fields
.field private static final HEADER_LIMIT:I = 0x40000

.field private static final STATE_CLOSED:I = 0x6

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_OPEN_REQUEST_BODY:I = 0x1

.field private static final STATE_OPEN_RESPONSE_BODY:I = 0x4

.field private static final STATE_READING_RESPONSE_BODY:I = 0x5

.field private static final STATE_READ_RESPONSE_HEADERS:I = 0x3

.field private static final STATE_WRITING_REQUEST_BODY:I = 0x2


# instance fields
.field final client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

.field private headerLimit:J

.field final sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

.field final source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

.field state:I

.field final streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V
    .locals 2
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .param p2, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .param p3, "source"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    .param p4, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 87
    const-wide/32 v0, 0x40000

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->headerLimit:J

    .line 91
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 92
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 93
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 94
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 95
    return-void
.end method

.method private readHeaderLine()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->headerLimit:J

    invoke-interface {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->readUtf8LineStrict(J)Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "line":Ljava/lang/String;
    iget-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->headerLimit:J

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->headerLimit:J

    .line 217
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 113
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->connection()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    move-result-object v0

    .line 114
    .local v0, "connection":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->cancel()V

    .line 115
    :cond_0
    return-void
.end method

.method public createRequestBody(Lccsancom/mbridge/msdk/thrid/okhttp/Request;J)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 3
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "contentLength"    # J

    .line 98
    const-string v0, "Transfer-Encoding"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "chunked"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->newChunkedSink()Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    const-wide/16 v0, -0x1

    cmp-long v2, p2, v0

    if-eqz v2, :cond_1

    .line 105
    invoke-virtual {p0, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->newFixedLengthSink(J)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    return-object v0

    .line 108
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot stream a request body without chunked encoding or a known content length!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method detachTimeout(Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;)V
    .locals 2
    .param p1, "timeout"    # Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;

    .line 268
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;->delegate()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    .line 269
    .local v0, "oldDelegate":Lccsancom/mbridge/msdk/thrid/okio/Timeout;
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->NONE:Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;->setDelegate(Lccsancom/mbridge/msdk/thrid/okio/Timeout;)Lccsancom/mbridge/msdk/thrid/okio/ForwardingTimeout;

    .line 270
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->clearDeadline()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 271
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->clearTimeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 272
    return-void
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->flush()V

    .line 167
    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->flush()V

    .line 163
    return-void
.end method

.method public isClosed()Z
    .locals 2

    .line 158
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newChunkedSink()Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 3

    .line 231
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 232
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 233
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$ChunkedSink;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$ChunkedSink;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;)V

    return-object v0

    .line 231
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newChunkedSource(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 3
    .param p1, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 250
    const/4 v0, 0x5

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 251
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$ChunkedSource;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$ChunkedSource;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)V

    return-object v0

    .line 249
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFixedLengthSink(J)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 3
    .param p1, "contentLength"    # J

    .line 237
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 238
    const/4 v0, 0x2

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 239
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$FixedLengthSink;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$FixedLengthSink;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;J)V

    return-object v0

    .line 237
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newFixedLengthSource(J)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 3
    .param p1, "length"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 244
    const/4 v0, 0x5

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 245
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$FixedLengthSource;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$FixedLengthSource;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;J)V

    return-object v0

    .line 243
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public newUnknownLengthSource()Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 255
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    if-eqz v0, :cond_0

    .line 257
    const/4 v1, 0x5

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 258
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->noNewStreams()V

    .line 259
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$UnknownLengthSource;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec$UnknownLengthSource;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;)V

    return-object v0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "streamAllocation == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 255
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openResponseBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
    .locals 7
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->responseBodyStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V

    .line 135
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->hasBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->newFixedLengthSource(J)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v3

    .line 139
    .local v3, "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    new-instance v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v0, v1, v2, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    return-object v4

    .line 142
    .end local v3    # "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    :cond_0
    const-string v1, "Transfer-Encoding"

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "chunked"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_1

    .line 143
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->newChunkedSource(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v1

    .line 144
    .local v1, "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    new-instance v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v0, v2, v3, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    return-object v4

    .line 147
    .end local v1    # "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    :cond_1
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->contentLength(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)J

    move-result-wide v4

    .line 148
    .local v4, "contentLength":J
    cmp-long v1, v4, v2

    if-eqz v1, :cond_2

    .line 149
    invoke-virtual {p0, v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->newFixedLengthSource(J)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v1

    .line 150
    .restart local v1    # "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v3

    invoke-direct {v2, v0, v4, v5, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    return-object v2

    .line 153
    .end local v1    # "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    :cond_2
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->newUnknownLengthSource()Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v6

    invoke-direct {v1, v0, v2, v3, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    return-object v1
.end method

.method public readHeaders()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    .line 224
    .local v0, "headers":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .local v2, "line":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {v1, v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;)V

    goto :goto_0

    .line 227
    .end local v2    # "line":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method public readResponseHeaders(Z)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 5
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 185
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 189
    :cond_1
    :goto_0
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->readHeaderLine()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;

    move-result-object v0

    .line 191
    .local v0, "statusLine":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;-><init>()V

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 192
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol(Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    iget v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->code:I

    .line 193
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code(I)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 194
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    .line 195
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->readHeaders()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    .line 197
    .local v2, "responseBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    const/16 v3, 0x64

    if-eqz p1, :cond_2

    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->code:I

    if-ne v4, v3, :cond_2

    .line 198
    const/4 v1, 0x0

    return-object v1

    .line 199
    :cond_2
    iget v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->code:I

    if-ne v4, v3, :cond_3

    .line 200
    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 201
    return-object v2

    .line 204
    :cond_3
    const/4 v1, 0x4

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    return-object v2

    .line 206
    .end local v0    # "statusLine":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;
    .end local v2    # "responseBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Ljava/io/EOFException;
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unexpected end of stream on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 209
    .local v1, "exception":Ljava/io/IOException;
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 210
    throw v1
.end method

.method public writeRequest(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Ljava/lang/String;)V
    .locals 5
    .param p1, "headers"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .param p2, "requestLine"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 171
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    if-nez v0, :cond_1

    .line 172
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 174
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v3

    .line 175
    const-string v4, ": "

    invoke-interface {v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v3

    .line 176
    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v3

    .line 177
    invoke-interface {v3, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    .end local v0    # "i":I
    .end local v2    # "size":I
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    .line 181
    return-void

    .line 171
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->state:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public writeRequestHeaders(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .locals 2
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 129
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->connection()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route()Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    .line 128
    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RequestLine;->get(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;

    move-result-object v0

    .line 130
    .local v0, "requestLine":Ljava/lang/String;
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->writeRequest(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Ljava/lang/String;)V

    .line 131
    return-void
.end method
