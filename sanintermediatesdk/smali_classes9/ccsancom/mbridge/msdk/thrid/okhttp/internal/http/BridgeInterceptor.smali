.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;
.super Ljava/lang/Object;
.source "BridgeInterceptor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;


# instance fields
.field private final cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;)V
    .locals 0
    .param p1, "cookieJar"    # Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    .line 46
    return-void
.end method

.method private cookieHeader(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 122
    .local p1, "cookies":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "cookieHeader":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 124
    if-lez v1, :cond_0

    .line 125
    const-string v3, "; "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;

    .line 128
    .local v3, "cookie":Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;->value()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .end local v3    # "cookie":Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public intercept(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 14
    .param p1, "chain"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    .line 51
    .local v0, "userRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v1

    .line 53
    .local v1, "requestBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->body()Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v2

    .line 54
    .local v2, "body":Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
    const-string v3, "Content-Type"

    const-wide/16 v4, -0x1

    const-string v6, "Content-Length"

    if-eqz v2, :cond_2

    .line 55
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;->contentType()Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;

    move-result-object v7

    .line 56
    .local v7, "contentType":Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    if-eqz v7, :cond_0

    .line 57
    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v3, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 60
    :cond_0
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;->contentLength()J

    move-result-wide v8

    .line 61
    .local v8, "contentLength":J
    const-string v10, "Transfer-Encoding"

    cmp-long v11, v8, v4

    if-eqz v11, :cond_1

    .line 62
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v6, v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 63
    invoke-virtual {v1, v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    goto :goto_0

    .line 65
    :cond_1
    const-string v11, "chunked"

    invoke-virtual {v1, v10, v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 66
    invoke-virtual {v1, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 70
    .end local v7    # "contentType":Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;
    .end local v8    # "contentLength":J
    :cond_2
    :goto_0
    const-string v7, "Host"

    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_3

    .line 71
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->hostHeader(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 74
    :cond_3
    const-string v7, "Connection"

    invoke-virtual {v0, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_4

    .line 75
    const-string v8, "Keep-Alive"

    invoke-virtual {v1, v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 80
    :cond_4
    const/4 v7, 0x0

    .line 81
    .local v7, "transparentGzip":Z
    const-string v8, "Accept-Encoding"

    invoke-virtual {v0, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "gzip"

    if-nez v9, :cond_5

    const-string v9, "Range"

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5

    .line 82
    const/4 v7, 0x1

    .line 83
    invoke-virtual {v1, v8, v10}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 86
    :cond_5
    iget-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v9

    invoke-interface {v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;->loadForRequest(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/util/List;

    move-result-object v8

    .line 87
    .local v8, "cookies":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Cookie;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_6

    .line 88
    invoke-direct {p0, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;->cookieHeader(Ljava/util/List;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "Cookie"

    invoke-virtual {v1, v11, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 91
    :cond_6
    const-string v9, "User-Agent"

    invoke-virtual {v0, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_7

    .line 92
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v9, v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 95
    :cond_7
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v9

    invoke-interface {p1, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v9

    .line 97
    .local v9, "networkResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    iget-object v11, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/BridgeInterceptor;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v12

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v13

    invoke-static {v11, v12, v13}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->receiveHeaders(Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)V

    .line 99
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v11

    .line 100
    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v11

    .line 102
    .local v11, "responseBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;
    if-eqz v7, :cond_8

    .line 103
    const-string v12, "Content-Encoding"

    invoke-virtual {v9, v12}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 104
    invoke-static {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->hasBody(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 105
    new-instance v10, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->source()Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v13

    invoke-direct {v10, v13}, Lccsancom/mbridge/msdk/thrid/okio/GzipSource;-><init>(Lccsancom/mbridge/msdk/thrid/okio/Source;)V

    .line 106
    .local v10, "responseBody":Lccsancom/mbridge/msdk/thrid/okio/GzipSource;
    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v13

    invoke-virtual {v13}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v13

    .line 107
    invoke-virtual {v13, v12}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v12

    .line 108
    invoke-virtual {v12, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v6

    .line 109
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v6

    .line 110
    .local v6, "strippedHeaders":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    invoke-virtual {v11, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    .line 111
    invoke-virtual {v9, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, "contentType":Ljava/lang/String;
    new-instance v12, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;

    invoke-static {v10}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v13

    invoke-direct {v12, v3, v4, v5, v13}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealResponseBody;-><init>(Ljava/lang/String;JLccsancom/mbridge/msdk/thrid/okio/BufferedSource;)V

    invoke-virtual {v11, v12}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    .line 115
    .end local v3    # "contentType":Ljava/lang/String;
    .end local v6    # "strippedHeaders":Lccsancom/mbridge/msdk/thrid/okhttp/Headers;
    .end local v10    # "responseBody":Lccsancom/mbridge/msdk/thrid/okio/GzipSource;
    :cond_8
    invoke-virtual {v11}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v3

    return-object v3
.end method
