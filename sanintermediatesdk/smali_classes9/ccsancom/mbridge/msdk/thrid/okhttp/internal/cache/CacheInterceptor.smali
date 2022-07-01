.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;


# instance fields
.field final cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;)V
    .locals 0
    .param p1, "cache"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 54
    return-void
.end method

.method private cacheWritingResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 10
    .param p1, "cacheRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;
    .param p2, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    if-nez p1, :cond_0

    return-object p2

    .line 163
    :cond_0
    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;->body()Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v0

    .line 164
    .local v0, "cacheBodyUnbuffered":Lccsancom/mbridge/msdk/thrid/okio/Sink;
    if-nez v0, :cond_1

    return-object p2

    .line 166
    :cond_1
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v1

    .line 167
    .local v1, "source":Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v2

    .line 169
    .local v2, "cacheBody":Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;

    invoke-direct {v3, p0, v1, p1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V

    .line 213
    .local v3, "cacheWritingSource":Lccsancom/mbridge/msdk/thrid/okio/Source;
    const-string v4, "Content-Type"

    invoke-virtual {p2, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 214
    .local v4, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->contentLength()J

    move-result-wide v5

    .line 215
    .local v5, "contentLength":J
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    new-instance v8, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;

    .line 216
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v9

    invoke-direct {v8, v4, v5, v6, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 217
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v7

    .line 215
    return-object v7
.end method

.method private static combine(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .locals 6
    .param p0, "cachedHeaders"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .param p1, "networkHeaders"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 224
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    .line 226
    .local v0, "result":Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 227
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 228
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 229
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 230
    goto :goto_1

    .line 232
    :cond_0
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 233
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 234
    :cond_1
    sget-object v5, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {v5, v0, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 238
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 239
    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 240
    .restart local v3    # "fieldName":Ljava/lang/String;
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 241
    sget-object v4, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->addLenient(Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 245
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v1

    return-object v1
.end method

.method static isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 268
    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 269
    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 270
    const-string v0, "Content-Type"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 268
    :goto_1
    return v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 253
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 258
    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 253
    :goto_0
    return v0
.end method

.method private static stripBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 2
    .param p0, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 149
    :goto_0
    return-object v0
.end method


# virtual methods
.method public intercept(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 10
    .param p1, "chain"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;->get(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 60
    .local v0, "cacheCandidate":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 62
    .local v1, "now":J
    new-instance v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;-><init>(JLccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy$Factory;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;

    move-result-object v3

    .line 63
    .local v3, "strategy":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;
    iget-object v4, v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->networkRequest:Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 64
    .local v4, "networkRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    iget-object v5, v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->cacheResponse:Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    .line 66
    .local v5, "cacheResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    iget-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    if-eqz v6, :cond_1

    .line 67
    invoke-interface {v6, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;->trackResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;)V

    .line 70
    :cond_1
    if-eqz v0, :cond_2

    if-nez v5, :cond_2

    .line 71
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 75
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 76
    new-instance v6, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    invoke-direct {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;-><init>()V

    .line 77
    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    sget-object v7, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 78
    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol(Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    const/16 v7, 0x1f8

    .line 79
    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code(I)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    .line 80
    const-string v7, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    sget-object v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->EMPTY_RESPONSE:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    .line 81
    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    const-wide/16 v7, -0x1

    .line 82
    invoke-virtual {v6, v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->sentRequestAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->receivedResponseAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    .line 84
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v6

    .line 76
    return-object v6

    .line 88
    :cond_3
    if-nez v4, :cond_4

    .line 89
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->stripBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->cacheResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v6

    return-object v6

    .line 92
    :cond_4
    const/4 v6, 0x0

    .line 94
    .local v6, "networkResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :try_start_0
    invoke-interface {p1, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    .line 97
    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    :cond_5
    if-eqz v5, :cond_7

    .line 104
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v7

    const/16 v8, 0x130

    if-ne v7, v8, :cond_6

    .line 105
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 106
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v8

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v9

    invoke-static {v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->combine(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 107
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->sentRequestAtMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->sentRequestAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 108
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->receivedResponseAtMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->receivedResponseAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 109
    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->stripBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->cacheResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 110
    invoke-static {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->stripBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->networkResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 111
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v7

    .line 112
    .local v7, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->close()V

    .line 116
    iget-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    invoke-interface {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 117
    iget-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    invoke-interface {v8, v5, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;->update(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)V

    .line 118
    return-object v7

    .line 120
    .end local v7    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :cond_6
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    :cond_7
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 125
    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->stripBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->cacheResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 126
    invoke-static {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->stripBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->networkResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v7

    .line 129
    .restart local v7    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    iget-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    if-eqz v8, :cond_9

    .line 130
    invoke-static {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->hasBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v7, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheStrategy;->isCacheable(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 132
    iget-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    invoke-interface {v8, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;->put(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;

    move-result-object v8

    .line 133
    .local v8, "cacheRequest":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;
    invoke-direct {p0, v8, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cacheWritingResponse(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v9

    return-object v9

    .line 136
    .end local v8    # "cacheRequest":Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheRequest;
    :cond_8
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 138
    :try_start_1
    iget-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/CacheInterceptor;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    invoke-interface {v8, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;->remove(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    goto :goto_1

    .line 139
    :catch_0
    move-exception v8

    .line 145
    :cond_9
    :goto_1
    return-object v7

    .line 97
    .end local v7    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :catchall_0
    move-exception v7

    if-nez v6, :cond_a

    if-eqz v0, :cond_a

    .line 98
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 100
    :cond_a
    throw v7
.end method
