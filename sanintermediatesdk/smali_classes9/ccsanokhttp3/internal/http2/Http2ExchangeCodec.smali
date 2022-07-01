.class public final Lccsanokhttp3/internal/http2/Http2ExchangeCodec;
.super Ljava/lang/Object;
.source "Http2ExchangeCodec.java"

# interfaces
.implements Lccsanokhttp3/internal/http/ExchangeCodec;


# static fields
.field private static final CONNECTION:Ljava/lang/String; = "connection"

.field private static final ENCODING:Ljava/lang/String; = "encoding"

.field private static final HOST:Ljava/lang/String; = "host"

.field private static final HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static final PROXY_CONNECTION:Ljava/lang/String; = "proxy-connection"

.field private static final TE:Ljava/lang/String; = "te"

.field private static final TRANSFER_ENCODING:Ljava/lang/String; = "transfer-encoding"

.field private static final UPGRADE:Ljava/lang/String; = "upgrade"


# instance fields
.field private volatile canceled:Z

.field private final chain:Lccsanokhttp3/Interceptor$Chain;

.field private final connection:Lccsanokhttp3/internal/http2/Http2Connection;

.field private final protocol:Lccsanokhttp3/Protocol;

.field private final realConnection:Lccsanokhttp3/internal/connection/RealConnection;

.field private volatile stream:Lccsanokhttp3/internal/http2/Http2Stream;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 63
    const/16 v0, 0xc

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connection"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    const-string v4, "host"

    aput-object v4, v0, v3

    const/4 v5, 0x2

    const-string v6, "keep-alive"

    aput-object v6, v0, v5

    const/4 v7, 0x3

    const-string v8, "proxy-connection"

    aput-object v8, v0, v7

    const/4 v9, 0x4

    const-string v10, "te"

    aput-object v10, v0, v9

    const/4 v11, 0x5

    const-string v12, "transfer-encoding"

    aput-object v12, v0, v11

    const/4 v13, 0x6

    const-string v14, "encoding"

    aput-object v14, v0, v13

    const/4 v15, 0x7

    const-string v16, "upgrade"

    aput-object v16, v0, v15

    const-string v17, ":method"

    const/16 v15, 0x8

    aput-object v17, v0, v15

    const/16 v17, 0x9

    const-string v18, ":path"

    aput-object v18, v0, v17

    const/16 v17, 0xa

    const-string v18, ":scheme"

    aput-object v18, v0, v17

    const/16 v17, 0xb

    const-string v18, ":authority"

    aput-object v18, v0, v17

    invoke-static {v0}, Lccsanokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 76
    new-array v0, v15, [Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    aput-object v6, v0, v5

    aput-object v8, v0, v7

    aput-object v10, v0, v9

    aput-object v12, v0, v11

    aput-object v14, v0, v13

    const/4 v1, 0x7

    aput-object v16, v0, v1

    invoke-static {v0}, Lccsanokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/internal/connection/RealConnection;Lccsanokhttp3/Interceptor$Chain;Lccsanokhttp3/internal/http2/Http2Connection;)V
    .locals 2
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;
    .param p2, "realConnection"    # Lccsanokhttp3/internal/connection/RealConnection;
    .param p3, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .param p4, "connection"    # Lccsanokhttp3/internal/http2/Http2Connection;

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p2, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->realConnection:Lccsanokhttp3/internal/connection/RealConnection;

    .line 96
    iput-object p3, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->chain:Lccsanokhttp3/Interceptor$Chain;

    .line 97
    iput-object p4, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    .line 98
    invoke-virtual {p1}, Lccsanokhttp3/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsanokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsanokhttp3/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget-object v0, Lccsanokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsanokhttp3/Protocol;

    goto :goto_0

    .line 100
    :cond_0
    sget-object v0, Lccsanokhttp3/Protocol;->HTTP_2:Lccsanokhttp3/Protocol;

    :goto_0
    iput-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->protocol:Lccsanokhttp3/Protocol;

    .line 101
    return-void
.end method

.method public static http2HeadersList(Lccsanokhttp3/Request;)Ljava/util/List;
    .locals 8
    .param p0, "request"    # Lccsanokhttp3/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/Request;",
            ")",
            "Ljava/util/List<",
            "Lccsanokhttp3/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 145
    invoke-virtual {p0}, Lccsanokhttp3/Request;->headers()Lccsanokhttp3/Headers;

    move-result-object v0

    .line 146
    .local v0, "headers":Lccsanokhttp3/Headers;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccsanokhttp3/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 147
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/internal/http2/Header;>;"
    new-instance v2, Lccsanokhttp3/internal/http2/Header;

    sget-object v3, Lccsanokhttp3/internal/http2/Header;->TARGET_METHOD:Lccsanokio/ByteString;

    invoke-virtual {p0}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsanokhttp3/internal/http2/Header;-><init>(Lccsanokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    new-instance v2, Lccsanokhttp3/internal/http2/Header;

    sget-object v3, Lccsanokhttp3/internal/http2/Header;->TARGET_PATH:Lccsanokio/ByteString;

    invoke-virtual {p0}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lccsanokhttp3/internal/http/RequestLine;->requestPath(Lccsanokhttp3/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsanokhttp3/internal/http2/Header;-><init>(Lccsanokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lccsanokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 151
    new-instance v3, Lccsanokhttp3/internal/http2/Header;

    sget-object v4, Lccsanokhttp3/internal/http2/Header;->TARGET_AUTHORITY:Lccsanokio/ByteString;

    invoke-direct {v3, v4, v2}, Lccsanokhttp3/internal/http2/Header;-><init>(Lccsanokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    :cond_0
    new-instance v3, Lccsanokhttp3/internal/http2/Header;

    sget-object v4, Lccsanokhttp3/internal/http2/Header;->TARGET_SCHEME:Lccsanokio/ByteString;

    invoke-virtual {p0}, Lccsanokhttp3/Request;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lccsanokhttp3/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lccsanokhttp3/internal/http2/Header;-><init>(Lccsanokio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lccsanokhttp3/Headers;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 157
    invoke-virtual {v0, v3}, Lccsanokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 158
    .local v5, "name":Ljava/lang/String;
    sget-object v6, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 159
    const-string v6, "te"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v3}, Lccsanokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "trailers"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 160
    :cond_1
    new-instance v6, Lccsanokhttp3/internal/http2/Header;

    invoke-virtual {v0, v3}, Lccsanokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lccsanokhttp3/internal/http2/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    .end local v5    # "name":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 163
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_3
    return-object v1
.end method

.method public static readHttp2HeadersList(Lccsanokhttp3/Headers;Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;
    .locals 8
    .param p0, "headerBlock"    # Lccsanokhttp3/Headers;
    .param p1, "protocol"    # Lccsanokhttp3/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 169
    const/4 v0, 0x0

    .line 170
    .local v0, "statusLine":Lccsanokhttp3/internal/http/StatusLine;
    new-instance v1, Lccsanokhttp3/Headers$Builder;

    invoke-direct {v1}, Lccsanokhttp3/Headers$Builder;-><init>()V

    .line 171
    .local v1, "headersBuilder":Lccsanokhttp3/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lccsanokhttp3/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 172
    invoke-virtual {p0, v2}, Lccsanokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lccsanokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 174
    .local v5, "value":Ljava/lang/String;
    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanokhttp3/internal/http/StatusLine;->parse(Ljava/lang/String;)Lccsanokhttp3/internal/http/StatusLine;

    move-result-object v0

    goto :goto_1

    .line 176
    :cond_0
    sget-object v6, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 177
    sget-object v6, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {v6, v1, v4, v5}, Lccsanokhttp3/internal/Internal;->addLenient(Lccsanokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    if-eqz v0, :cond_3

    .line 182
    new-instance v2, Lccsanokhttp3/Response$Builder;

    invoke-direct {v2}, Lccsanokhttp3/Response$Builder;-><init>()V

    .line 183
    invoke-virtual {v2, p1}, Lccsanokhttp3/Response$Builder;->protocol(Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;

    move-result-object v2

    iget v3, v0, Lccsanokhttp3/internal/http/StatusLine;->code:I

    .line 184
    invoke-virtual {v2, v3}, Lccsanokhttp3/Response$Builder;->code(I)Lccsanokhttp3/Response$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsanokhttp3/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 185
    invoke-virtual {v2, v3}, Lccsanokhttp3/Response$Builder;->message(Ljava/lang/String;)Lccsanokhttp3/Response$Builder;

    move-result-object v2

    .line 186
    invoke-virtual {v1}, Lccsanokhttp3/Headers$Builder;->build()Lccsanokhttp3/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsanokhttp3/Response$Builder;->headers(Lccsanokhttp3/Headers;)Lccsanokhttp3/Response$Builder;

    move-result-object v2

    .line 182
    return-object v2

    .line 180
    :cond_3
    new-instance v2, Ljava/net/ProtocolException;

    const-string v3, "Expected \':status\' header not present"

    invoke-direct {v2, v3}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v2

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 202
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->canceled:Z

    .line 203
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    sget-object v1, Lccsanokhttp3/internal/http2/ErrorCode;->CANCEL:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lccsanokhttp3/internal/http2/Http2Stream;->closeLater(Lccsanokhttp3/internal/http2/ErrorCode;)V

    .line 204
    :cond_0
    return-void
.end method

.method public connection()Lccsanokhttp3/internal/connection/RealConnection;
    .locals 1

    .line 104
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->realConnection:Lccsanokhttp3/internal/connection/RealConnection;

    return-object v0
.end method

.method public createRequestBody(Lccsanokhttp3/Request;J)Lccsanokio/Sink;
    .locals 1
    .param p1, "request"    # Lccsanokhttp3/Request;
    .param p2, "contentLength"    # J

    .line 108
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream;->getSink()Lccsanokio/Sink;

    move-result-object v0

    return-object v0
.end method

.method public finishRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream;->getSink()Lccsanokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lccsanokio/Sink;->close()V

    .line 133
    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Connection;->flush()V

    .line 129
    return-void
.end method

.method public openResponseBodySource(Lccsanokhttp3/Response;)Lccsanokio/Source;
    .locals 1
    .param p1, "response"    # Lccsanokhttp3/Response;

    .line 194
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream;->getSource()Lccsanokio/Source;

    move-result-object v0

    return-object v0
.end method

.method public readResponseHeaders(Z)Lccsanokhttp3/Response$Builder;
    .locals 4
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream;->takeHeaders()Lccsanokhttp3/Headers;

    move-result-object v0

    .line 137
    .local v0, "headers":Lccsanokhttp3/Headers;
    iget-object v1, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->protocol:Lccsanokhttp3/Protocol;

    invoke-static {v0, v1}, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->readHttp2HeadersList(Lccsanokhttp3/Headers;Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;

    move-result-object v1

    .line 138
    .local v1, "responseBuilder":Lccsanokhttp3/Response$Builder;
    if-eqz p1, :cond_0

    sget-object v2, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {v2, v1}, Lccsanokhttp3/internal/Internal;->code(Lccsanokhttp3/Response$Builder;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 139
    const/4 v2, 0x0

    return-object v2

    .line 141
    :cond_0
    return-object v1
.end method

.method public reportedContentLength(Lccsanokhttp3/Response;)J
    .locals 2
    .param p1, "response"    # Lccsanokhttp3/Response;

    .line 190
    invoke-static {p1}, Lccsanokhttp3/internal/http/HttpHeaders;->contentLength(Lccsanokhttp3/Response;)J

    move-result-wide v0

    return-wide v0
.end method

.method public trailers()Lccsanokhttp3/Headers;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsanokhttp3/internal/http2/Http2Stream;->trailers()Lccsanokhttp3/Headers;

    move-result-object v0

    return-object v0
.end method

.method public writeRequestHeaders(Lccsanokhttp3/Request;)V
    .locals 6
    .param p1, "request"    # Lccsanokhttp3/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 114
    :cond_0
    invoke-virtual {p1}, Lccsanokhttp3/Request;->body()Lccsanokhttp3/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 115
    .local v0, "hasRequestBody":Z
    :goto_0
    invoke-static {p1}, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->http2HeadersList(Lccsanokhttp3/Request;)Ljava/util/List;

    move-result-object v1

    .line 116
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/internal/http2/Header;>;"
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->connection:Lccsanokhttp3/internal/http2/Http2Connection;

    invoke-virtual {v2, v1, v0}, Lccsanokhttp3/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lccsanokhttp3/internal/http2/Http2Stream;

    move-result-object v2

    iput-object v2, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    .line 119
    iget-boolean v2, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->canceled:Z

    if-nez v2, :cond_2

    .line 123
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lccsanokhttp3/internal/http2/Http2Stream;->readTimeout()Lccsanokio/Timeout;

    move-result-object v2

    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->chain:Lccsanokhttp3/Interceptor$Chain;

    invoke-interface {v3}, Lccsanokhttp3/Interceptor$Chain;->readTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lccsanokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsanokio/Timeout;

    .line 124
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lccsanokhttp3/internal/http2/Http2Stream;->writeTimeout()Lccsanokio/Timeout;

    move-result-object v2

    iget-object v3, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->chain:Lccsanokhttp3/Interceptor$Chain;

    invoke-interface {v3}, Lccsanokhttp3/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lccsanokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsanokio/Timeout;

    .line 125
    return-void

    .line 120
    :cond_2
    iget-object v2, p0, Lccsanokhttp3/internal/http2/Http2ExchangeCodec;->stream:Lccsanokhttp3/internal/http2/Http2Stream;

    sget-object v3, Lccsanokhttp3/internal/http2/ErrorCode;->CANCEL:Lccsanokhttp3/internal/http2/ErrorCode;

    invoke-virtual {v2, v3}, Lccsanokhttp3/internal/http2/Http2Stream;->closeLater(Lccsanokhttp3/internal/http2/ErrorCode;)V

    .line 121
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Canceled"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
