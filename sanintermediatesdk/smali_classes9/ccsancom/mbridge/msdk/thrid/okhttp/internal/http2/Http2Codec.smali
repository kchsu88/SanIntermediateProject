.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;
.super Ljava/lang/Object;
.source "Http2Codec.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec$StreamFinishingSource;
    }
.end annotation


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
.field private final chain:Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;

.field private final connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

.field private final protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

.field private stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

.field final streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 69
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

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    .line 82
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

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;)V
    .locals 2
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .param p2, "chain"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .param p3, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .param p4, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->chain:Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;

    .line 101
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 102
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    .line 103
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_2:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    :goto_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 106
    return-void
.end method

.method public static http2HeadersList(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Ljava/util/List;
    .locals 8
    .param p0, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Request;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;",
            ">;"
        }
    .end annotation

    .line 140
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v0

    .line 141
    .local v0, "headers":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 142
    .local v1, "result":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;>;"
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;

    sget-object v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_METHOD:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;-><init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;

    sget-object v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_PATH:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v4

    invoke-static {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RequestLine;->requestPath(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;-><init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const-string v2, "Host"

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
    .local v2, "host":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 146
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;

    sget-object v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_AUTHORITY:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-direct {v3, v4, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;-><init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    :cond_0
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;

    sget-object v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;->TARGET_SCHEME:Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;-><init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v4

    .local v4, "size":I
    :goto_0
    if-ge v3, v4, :cond_2

    .line 152
    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->encodeUtf8(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okio/ByteString;

    move-result-object v5

    .line 153
    .local v5, "name":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    sget-object v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->HTTP_2_SKIPPED_REQUEST_HEADERS:Ljava/util/List;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 154
    new-instance v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;

    invoke-virtual {v0, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;-><init>(Lccsancom/mbridge/msdk/thrid/okio/ByteString;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    .end local v5    # "name":Lccsancom/mbridge/msdk/thrid/okio/ByteString;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 157
    .end local v3    # "i":I
    .end local v4    # "size":I
    :cond_2
    return-object v1
.end method

.method public static readHttp2HeadersList(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 8
    .param p0, "headerBlock"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .param p1, "protocol"    # Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 163
    const/4 v0, 0x0

    .line 164
    .local v0, "statusLine":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    .line 165
    .local v1, "headersBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v3

    .local v3, "size":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 166
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    .line 167
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 168
    .local v5, "value":Ljava/lang/String;
    const-string v6, ":status"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 169
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP/1.1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->parse(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;

    move-result-object v0

    goto :goto_1

    .line 170
    :cond_0
    sget-object v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->HTTP_2_SKIPPED_RESPONSE_HEADERS:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 171
    sget-object v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {v6, v1, v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .end local v4    # "name":Ljava/lang/String;
    .end local v5    # "value":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 174
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_2
    if-eqz v0, :cond_3

    .line 176
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;-><init>()V

    .line 177
    invoke-virtual {v2, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol(Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    iget v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->code:I

    .line 178
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code(I)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/StatusLine;->message:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    .line 176
    return-object v2

    .line 174
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

    .line 192
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;->CANCEL:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->closeLater(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V

    .line 193
    :cond_0
    return-void
.end method

.method public createRequestBody(Lccsancom/mbridge/msdk/thrid/okhttp/Request;J)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 1
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p2, "contentLength"    # J

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->getSink()Lccsancom/mbridge/msdk/thrid/okio/Sink;

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

    .line 127
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->getSink()Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/Sink;->close()V

    .line 128
    return-void
.end method

.method public flushRequest()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 123
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->flush()V

    .line 124
    return-void
.end method

.method public openResponseBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;
    .locals 6
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->eventListener:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->call:Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->responseBodyStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V

    .line 185
    const-string v0, "Content-Type"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    .local v0, "contentType":Ljava/lang/String;
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->contentLength(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)J

    move-result-wide v1

    .line 187
    .local v1, "contentLength":J
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec$StreamFinishingSource;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->getSource()Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v4

    invoke-direct {v3, p0, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec$StreamFinishingSource;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;Lccsancom/mbridge/msdk/thrid/okio/Source;)V

    .line 188
    .local v3, "source":Lccsancom/mbridge/msdk/thrid/okio/Source;
    new-instance v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v5

    invoke-direct {v4, v0, v1, v2, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    return-object v4
.end method

.method public readResponseHeaders(Z)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    .locals 4
    .param p1, "expectContinue"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 131
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->takeHeaders()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v0

    .line 132
    .local v0, "headers":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->readHttp2HeadersList(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    .line 133
    .local v1, "responseBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    if-eqz p1, :cond_0

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->code(Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;)I

    move-result v2

    const/16 v3, 0x64

    if-ne v2, v3, :cond_0

    .line 134
    const/4 v2, 0x0

    return-object v2

    .line 136
    :cond_0
    return-object v1
.end method

.method public writeRequestHeaders(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .locals 6
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    if-eqz v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->body()Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 116
    .local v0, "hasRequestBody":Z
    :goto_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->http2HeadersList(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Ljava/util/List;

    move-result-object v1

    .line 117
    .local v1, "requestHeaders":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Header;>;"
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-virtual {v2, v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->newStream(Ljava/util/List;Z)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    .line 118
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->readTimeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->chain:Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->readTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 119
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->stream:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->writeTimeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;->chain:Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v3

    int-to-long v3, v3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 120
    return-void
.end method
