.class public final Lccsanokhttp3/internal/cache/CacheInterceptor;
.super Ljava/lang/Object;
.source "CacheInterceptor.java"

# interfaces
.implements Lccsanokhttp3/Interceptor;


# instance fields
.field final cache:Lccsanokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanokhttp3/internal/cache/InternalCache;)V
    .locals 0
    .param p1, "cache"    # Lccsanokhttp3/internal/cache/InternalCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    .line 51
    return-void
.end method

.method private cacheWritingResponse(Lccsanokhttp3/internal/cache/CacheRequest;Lccsanokhttp3/Response;)Lccsanokhttp3/Response;
    .locals 10
    .param p1, "cacheRequest"    # Lccsanokhttp3/internal/cache/CacheRequest;
    .param p2, "response"    # Lccsanokhttp3/Response;
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
    invoke-interface {p1}, Lccsanokhttp3/internal/cache/CacheRequest;->body()Lccsanokio/Sink;

    move-result-object v0

    .line 164
    .local v0, "cacheBodyUnbuffered":Lccsanokio/Sink;
    if-nez v0, :cond_1

    return-object p2

    .line 166
    :cond_1
    invoke-virtual {p2}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/ResponseBody;->source()Lccsanokio/BufferedSource;

    move-result-object v1

    .line 167
    .local v1, "source":Lccsanokio/BufferedSource;
    invoke-static {v0}, Lccsanokio/Okio;->buffer(Lccsanokio/Sink;)Lccsanokio/BufferedSink;

    move-result-object v2

    .line 169
    .local v2, "cacheBody":Lccsanokio/BufferedSink;
    new-instance v3, Lccsanokhttp3/internal/cache/CacheInterceptor$1;

    invoke-direct {v3, p0, v1, p1, v2}, Lccsanokhttp3/internal/cache/CacheInterceptor$1;-><init>(Lccsanokhttp3/internal/cache/CacheInterceptor;Lccsanokio/BufferedSource;Lccsanokhttp3/internal/cache/CacheRequest;Lccsanokio/BufferedSink;)V

    .line 211
    .local v3, "cacheWritingSource":Lccsanokio/Source;
    const-string v4, "Content-Type"

    invoke-virtual {p2, v4}, Lccsanokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, "contentType":Ljava/lang/String;
    invoke-virtual {p2}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v5

    invoke-virtual {v5}, Lccsanokhttp3/ResponseBody;->contentLength()J

    move-result-wide v5

    .line 213
    .local v5, "contentLength":J
    invoke-virtual {p2}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v7

    new-instance v8, Lccsanokhttp3/internal/http/RealResponseBody;

    .line 214
    invoke-static {v3}, Lccsanokio/Okio;->buffer(Lccsanokio/Source;)Lccsanokio/BufferedSource;

    move-result-object v9

    invoke-direct {v8, v4, v5, v6, v9}, Lccsanokhttp3/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsanokio/BufferedSource;)V

    invoke-virtual {v7, v8}, Lccsanokhttp3/Response$Builder;->body(Lccsanokhttp3/ResponseBody;)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 215
    invoke-virtual {v7}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v7

    .line 213
    return-object v7
.end method

.method private static combine(Lccsanokhttp3/Headers;Lccsanokhttp3/Headers;)Lccsanokhttp3/Headers;
    .locals 6
    .param p0, "cachedHeaders"    # Lccsanokhttp3/Headers;
    .param p1, "networkHeaders"    # Lccsanokhttp3/Headers;

    .line 220
    new-instance v0, Lccsanokhttp3/Headers$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Headers$Builder;-><init>()V

    .line 222
    .local v0, "result":Lccsanokhttp3/Headers$Builder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Lccsanokhttp3/Headers;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 223
    invoke-virtual {p0, v1}, Lccsanokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "fieldName":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lccsanokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    .line 225
    .local v4, "value":Ljava/lang/String;
    const-string v5, "Warning"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 226
    goto :goto_1

    .line 228
    :cond_0
    invoke-static {v3}, Lccsanokhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 229
    invoke-static {v3}, Lccsanokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 230
    invoke-virtual {p1, v3}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 231
    :cond_1
    sget-object v5, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {v5, v0, v3, v4}, Lccsanokhttp3/internal/Internal;->addLenient(Lccsanokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    .end local v3    # "fieldName":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-virtual {p1}, Lccsanokhttp3/Headers;->size()I

    move-result v2

    .restart local v2    # "size":I
    :goto_2
    if-ge v1, v2, :cond_5

    .line 236
    invoke-virtual {p1, v1}, Lccsanokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    .line 237
    .restart local v3    # "fieldName":Ljava/lang/String;
    invoke-static {v3}, Lccsanokhttp3/internal/cache/CacheInterceptor;->isContentSpecificHeader(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v3}, Lccsanokhttp3/internal/cache/CacheInterceptor;->isEndToEnd(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 238
    sget-object v4, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    invoke-virtual {p1, v1}, Lccsanokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v3, v5}, Lccsanokhttp3/internal/Internal;->addLenient(Lccsanokhttp3/Headers$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    .end local v3    # "fieldName":Ljava/lang/String;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 242
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_5
    invoke-virtual {v0}, Lccsanokhttp3/Headers$Builder;->build()Lccsanokhttp3/Headers;

    move-result-object v1

    return-object v1
.end method

.method static isContentSpecificHeader(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 265
    const-string v0, "Content-Length"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 266
    const-string v0, "Content-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
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

    .line 265
    :goto_1
    return v0
.end method

.method static isEndToEnd(Ljava/lang/String;)Z
    .locals 1
    .param p0, "fieldName"    # Ljava/lang/String;

    .line 250
    const-string v0, "Connection"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    const-string v0, "Keep-Alive"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 252
    const-string v0, "Proxy-Authenticate"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 253
    const-string v0, "Proxy-Authorization"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    const-string v0, "TE"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    const-string v0, "Trailers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const-string v0, "Transfer-Encoding"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 257
    const-string v0, "Upgrade"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 250
    :goto_0
    return v0
.end method

.method private static stripBody(Lccsanokhttp3/Response;)Lccsanokhttp3/Response;
    .locals 2
    .param p0, "response"    # Lccsanokhttp3/Response;

    .line 149
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanokhttp3/Response$Builder;->body(Lccsanokhttp3/ResponseBody;)Lccsanokhttp3/Response$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v0

    goto :goto_0

    .line 151
    :cond_0
    move-object v0, p0

    .line 149
    :goto_0
    return-object v0
.end method


# virtual methods
.method public intercept(Lccsanokhttp3/Interceptor$Chain;)Lccsanokhttp3/Response;
    .locals 10
    .param p1, "chain"    # Lccsanokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsanokhttp3/internal/cache/InternalCache;->get(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v0

    goto :goto_0

    .line 56
    :cond_0
    const/4 v0, 0x0

    :goto_0
    nop

    .line 58
    .local v0, "cacheCandidate":Lccsanokhttp3/Response;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 60
    .local v1, "now":J
    new-instance v3, Lccsanokhttp3/internal/cache/CacheStrategy$Factory;

    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v4

    invoke-direct {v3, v1, v2, v4, v0}, Lccsanokhttp3/internal/cache/CacheStrategy$Factory;-><init>(JLccsanokhttp3/Request;Lccsanokhttp3/Response;)V

    invoke-virtual {v3}, Lccsanokhttp3/internal/cache/CacheStrategy$Factory;->get()Lccsanokhttp3/internal/cache/CacheStrategy;

    move-result-object v3

    .line 61
    .local v3, "strategy":Lccsanokhttp3/internal/cache/CacheStrategy;
    iget-object v4, v3, Lccsanokhttp3/internal/cache/CacheStrategy;->networkRequest:Lccsanokhttp3/Request;

    .line 62
    .local v4, "networkRequest":Lccsanokhttp3/Request;
    iget-object v5, v3, Lccsanokhttp3/internal/cache/CacheStrategy;->cacheResponse:Lccsanokhttp3/Response;

    .line 64
    .local v5, "cacheResponse":Lccsanokhttp3/Response;
    iget-object v6, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    if-eqz v6, :cond_1

    .line 65
    invoke-interface {v6, v3}, Lccsanokhttp3/internal/cache/InternalCache;->trackResponse(Lccsanokhttp3/internal/cache/CacheStrategy;)V

    .line 68
    :cond_1
    if-eqz v0, :cond_2

    if-nez v5, :cond_2

    .line 69
    invoke-virtual {v0}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v6

    invoke-static {v6}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 73
    :cond_2
    if-nez v4, :cond_3

    if-nez v5, :cond_3

    .line 74
    new-instance v6, Lccsanokhttp3/Response$Builder;

    invoke-direct {v6}, Lccsanokhttp3/Response$Builder;-><init>()V

    .line 75
    invoke-interface {p1}, Lccsanokhttp3/Interceptor$Chain;->request()Lccsanokhttp3/Request;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsanokhttp3/Response$Builder;->request(Lccsanokhttp3/Request;)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    sget-object v7, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    .line 76
    invoke-virtual {v6, v7}, Lccsanokhttp3/Response$Builder;->protocol(Lccsanokhttp3/Protocol;)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    const/16 v7, 0x1f8

    .line 77
    invoke-virtual {v6, v7}, Lccsanokhttp3/Response$Builder;->code(I)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    .line 78
    const-string v7, "Unsatisfiable Request (only-if-cached)"

    invoke-virtual {v6, v7}, Lccsanokhttp3/Response$Builder;->message(Ljava/lang/String;)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    sget-object v7, Lccsanokhttp3/internal/Util;->EMPTY_RESPONSE:Lccsanokhttp3/ResponseBody;

    .line 79
    invoke-virtual {v6, v7}, Lccsanokhttp3/Response$Builder;->body(Lccsanokhttp3/ResponseBody;)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    const-wide/16 v7, -0x1

    .line 80
    invoke-virtual {v6, v7, v8}, Lccsanokhttp3/Response$Builder;->sentRequestAtMillis(J)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    .line 81
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lccsanokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    .line 82
    invoke-virtual {v6}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v6

    .line 74
    return-object v6

    .line 86
    :cond_3
    if-nez v4, :cond_4

    .line 87
    invoke-virtual {v5}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v6

    .line 88
    invoke-static {v5}, Lccsanokhttp3/internal/cache/CacheInterceptor;->stripBody(Lccsanokhttp3/Response;)Lccsanokhttp3/Response;

    move-result-object v7

    invoke-virtual {v6, v7}, Lccsanokhttp3/Response$Builder;->cacheResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;

    move-result-object v6

    .line 89
    invoke-virtual {v6}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v6

    .line 87
    return-object v6

    .line 92
    :cond_4
    const/4 v6, 0x0

    .line 94
    .local v6, "networkResponse":Lccsanokhttp3/Response;
    :try_start_0
    invoke-interface {p1, v4}, Lccsanokhttp3/Interceptor$Chain;->proceed(Lccsanokhttp3/Request;)Lccsanokhttp3/Response;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v7

    .line 97
    if-nez v6, :cond_5

    if-eqz v0, :cond_5

    .line 98
    invoke-virtual {v0}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 103
    :cond_5
    if-eqz v5, :cond_7

    .line 104
    invoke-virtual {v6}, Lccsanokhttp3/Response;->code()I

    move-result v7

    const/16 v8, 0x130

    if-ne v7, v8, :cond_6

    .line 105
    invoke-virtual {v5}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 106
    invoke-virtual {v5}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v6}, Lccsanokhttp3/Response;->headers()Lccsanokhttp3/Headers;

    move-result-object v9

    invoke-static {v8, v9}, Lccsanokhttp3/internal/cache/CacheInterceptor;->combine(Lccsanokhttp3/Headers;Lccsanokhttp3/Headers;)Lccsanokhttp3/Headers;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanokhttp3/Response$Builder;->headers(Lccsanokhttp3/Headers;)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 107
    invoke-virtual {v6}, Lccsanokhttp3/Response;->sentRequestAtMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lccsanokhttp3/Response$Builder;->sentRequestAtMillis(J)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 108
    invoke-virtual {v6}, Lccsanokhttp3/Response;->receivedResponseAtMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lccsanokhttp3/Response$Builder;->receivedResponseAtMillis(J)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 109
    invoke-static {v5}, Lccsanokhttp3/internal/cache/CacheInterceptor;->stripBody(Lccsanokhttp3/Response;)Lccsanokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanokhttp3/Response$Builder;->cacheResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 110
    invoke-static {v6}, Lccsanokhttp3/internal/cache/CacheInterceptor;->stripBody(Lccsanokhttp3/Response;)Lccsanokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanokhttp3/Response$Builder;->networkResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 111
    invoke-virtual {v7}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v7

    .line 112
    .local v7, "response":Lccsanokhttp3/Response;
    invoke-virtual {v6}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lccsanokhttp3/ResponseBody;->close()V

    .line 116
    iget-object v8, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    invoke-interface {v8}, Lccsanokhttp3/internal/cache/InternalCache;->trackConditionalCacheHit()V

    .line 117
    iget-object v8, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    invoke-interface {v8, v5, v7}, Lccsanokhttp3/internal/cache/InternalCache;->update(Lccsanokhttp3/Response;Lccsanokhttp3/Response;)V

    .line 118
    return-object v7

    .line 120
    .end local v7    # "response":Lccsanokhttp3/Response;
    :cond_6
    invoke-virtual {v5}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v7

    invoke-static {v7}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 124
    :cond_7
    invoke-virtual {v6}, Lccsanokhttp3/Response;->newBuilder()Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 125
    invoke-static {v5}, Lccsanokhttp3/internal/cache/CacheInterceptor;->stripBody(Lccsanokhttp3/Response;)Lccsanokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanokhttp3/Response$Builder;->cacheResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 126
    invoke-static {v6}, Lccsanokhttp3/internal/cache/CacheInterceptor;->stripBody(Lccsanokhttp3/Response;)Lccsanokhttp3/Response;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanokhttp3/Response$Builder;->networkResponse(Lccsanokhttp3/Response;)Lccsanokhttp3/Response$Builder;

    move-result-object v7

    .line 127
    invoke-virtual {v7}, Lccsanokhttp3/Response$Builder;->build()Lccsanokhttp3/Response;

    move-result-object v7

    .line 129
    .restart local v7    # "response":Lccsanokhttp3/Response;
    iget-object v8, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    if-eqz v8, :cond_9

    .line 130
    invoke-static {v7}, Lccsanokhttp3/internal/http/HttpHeaders;->hasBody(Lccsanokhttp3/Response;)Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-static {v7, v4}, Lccsanokhttp3/internal/cache/CacheStrategy;->isCacheable(Lccsanokhttp3/Response;Lccsanokhttp3/Request;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 132
    iget-object v8, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    invoke-interface {v8, v7}, Lccsanokhttp3/internal/cache/InternalCache;->put(Lccsanokhttp3/Response;)Lccsanokhttp3/internal/cache/CacheRequest;

    move-result-object v8

    .line 133
    .local v8, "cacheRequest":Lccsanokhttp3/internal/cache/CacheRequest;
    invoke-direct {p0, v8, v7}, Lccsanokhttp3/internal/cache/CacheInterceptor;->cacheWritingResponse(Lccsanokhttp3/internal/cache/CacheRequest;Lccsanokhttp3/Response;)Lccsanokhttp3/Response;

    move-result-object v9

    return-object v9

    .line 136
    .end local v8    # "cacheRequest":Lccsanokhttp3/internal/cache/CacheRequest;
    :cond_8
    invoke-virtual {v4}, Lccsanokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanokhttp3/internal/http/HttpMethod;->invalidatesCache(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 138
    :try_start_1
    iget-object v8, p0, Lccsanokhttp3/internal/cache/CacheInterceptor;->cache:Lccsanokhttp3/internal/cache/InternalCache;

    invoke-interface {v8, v4}, Lccsanokhttp3/internal/cache/InternalCache;->remove(Lccsanokhttp3/Request;)V
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
    .end local v7    # "response":Lccsanokhttp3/Response;
    :catchall_0
    move-exception v7

    if-nez v6, :cond_a

    if-eqz v0, :cond_a

    .line 98
    invoke-virtual {v0}, Lccsanokhttp3/Response;->body()Lccsanokhttp3/ResponseBody;

    move-result-object v8

    invoke-static {v8}, Lccsanokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :cond_a
    throw v7
.end method
