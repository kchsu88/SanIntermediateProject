.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;
.super Ljava/lang/Object;
.source "RetryAndFollowUpInterceptor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;


# static fields
.field private static final MAX_FOLLOW_UPS:I = 0x14


# instance fields
.field private callStackTrace:Ljava/lang/Object;

.field private volatile canceled:Z

.field private final client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

.field private final forWebSocket:Z

.field private volatile streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Z)V
    .locals 0
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .param p2, "forWebSocket"    # Z

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 76
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->forWebSocket:Z

    .line 77
    return-void
.end method

.method private createAddress(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .locals 18
    .param p1, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 200
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 201
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 202
    .local v2, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    const/4 v3, 0x0

    .line 203
    .local v3, "certificatePinner":Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;
    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->isHttps()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 204
    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 205
    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v2

    .line 206
    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificatePinner()Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    move-result-object v3

    .line 209
    :cond_0
    new-instance v17, Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v6

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dns()Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    move-result-object v7

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v8

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 210
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxyAuthenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    move-result-object v12

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 211
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v13

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->protocols()Ljava/util/List;

    move-result-object v14

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionSpecs()Ljava/util/List;

    move-result-object v15

    iget-object v4, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxySelector()Ljava/net/ProxySelector;

    move-result-object v16

    move-object/from16 v4, v17

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    invoke-direct/range {v4 .. v16}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;-><init>(Ljava/lang/String;ILccsancom/mbridge/msdk/thrid/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V

    .line 209
    return-object v17
.end method

.method private followUpRequest(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 10
    .param p1, "userResponse"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .param p2, "route"    # Lccsancom/mbridge/msdk/thrid/okhttp/Route;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 283
    if-eqz p1, :cond_10

    .line 284
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v0

    .line 286
    .local v0, "responseCode":I
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    .line 287
    .local v1, "method":Ljava/lang/String;
    const-string v2, "GET"

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 390
    return-object v3

    .line 376
    :sswitch_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->priorResponse()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 377
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->priorResponse()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v2

    const/16 v4, 0x1f7

    if-ne v2, v4, :cond_0

    .line 379
    return-object v3

    .line 382
    :cond_0
    const v2, 0x7fffffff

    invoke-direct {p0, p1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lccsancom/mbridge/msdk/thrid/okhttp/Response;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 384
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    return-object v2

    .line 387
    :cond_1
    return-object v3

    .line 354
    :sswitch_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v2

    if-nez v2, :cond_2

    .line 356
    return-object v3

    .line 359
    :cond_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->body()Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v2

    instance-of v2, v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/UnrepeatableRequestBody;

    if-eqz v2, :cond_3

    .line 360
    return-object v3

    .line 363
    :cond_3
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->priorResponse()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 364
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->priorResponse()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v2

    const/16 v4, 0x198

    if-ne v2, v4, :cond_4

    .line 366
    return-object v3

    .line 369
    :cond_4
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->retryAfter(Lccsancom/mbridge/msdk/thrid/okhttp/Response;I)I

    move-result v2

    if-lez v2, :cond_5

    .line 370
    return-object v3

    .line 373
    :cond_5
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    return-object v2

    .line 289
    :sswitch_2
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v2

    .line 290
    .local v2, "selectedProxy":Ljava/net/Proxy;
    invoke-virtual {v2}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v3

    sget-object v4, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v3, v4, :cond_6

    .line 293
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxyAuthenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    move-result-object v3

    invoke-interface {v3, p2, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;->authenticate(Lccsancom/mbridge/msdk/thrid/okhttp/Route;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v3

    return-object v3

    .line 291
    :cond_6
    new-instance v3, Ljava/net/ProtocolException;

    const-string v4, "Received HTTP_PROXY_AUTH (407) code while not using proxy"

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 296
    .end local v2    # "selectedProxy":Ljava/net/Proxy;
    :sswitch_3
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->authenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    move-result-object v2

    invoke-interface {v2, p2, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;->authenticate(Lccsancom/mbridge/msdk/thrid/okhttp/Route;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    return-object v2

    .line 302
    :sswitch_4
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "HEAD"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 303
    return-object v3

    .line 311
    :cond_7
    :sswitch_5
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followRedirects()Z

    move-result v4

    if-nez v4, :cond_8

    return-object v3

    .line 313
    :cond_8
    const-string v4, "Location"

    invoke-virtual {p1, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "location":Ljava/lang/String;
    if-nez v4, :cond_9

    return-object v3

    .line 315
    :cond_9
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->resolve(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v5

    .line 318
    .local v5, "url":Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    if-nez v5, :cond_a

    return-object v3

    .line 321
    :cond_a
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 322
    .local v6, "sameScheme":Z
    if-nez v6, :cond_b

    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followSslRedirects()Z

    move-result v7

    if-nez v7, :cond_b

    return-object v3

    .line 325
    :cond_b
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v7

    .line 326
    .local v7, "requestBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_e

    .line 327
    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpMethod;->redirectsWithBody(Ljava/lang/String;)Z

    move-result v8

    .line 328
    .local v8, "maintainBody":Z
    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpMethod;->redirectsToGet(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 329
    invoke-virtual {v7, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    goto :goto_0

    .line 331
    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->body()Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v3

    :cond_d
    move-object v2, v3

    .line 332
    .local v2, "requestBody":Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
    invoke-virtual {v7, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 334
    .end local v2    # "requestBody":Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
    :goto_0
    if-nez v8, :cond_e

    .line 335
    const-string v2, "Transfer-Encoding"

    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 336
    const-string v2, "Content-Length"

    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 337
    const-string v2, "Content-Type"

    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 344
    .end local v8    # "maintainBody":Z
    :cond_e
    invoke-direct {p0, p1, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Z

    move-result v2

    if-nez v2, :cond_f

    .line 345
    const-string v2, "Authorization"

    invoke-virtual {v7, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 348
    :cond_f
    invoke-virtual {v7, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    return-object v2

    .line 283
    .end local v0    # "responseCode":I
    .end local v1    # "method":Ljava/lang/String;
    .end local v4    # "location":Ljava/lang/String;
    .end local v5    # "url":Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    .end local v6    # "sameScheme":Z
    .end local v7    # "requestBuilder":Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    :cond_10
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x12c -> :sswitch_5
        0x12d -> :sswitch_5
        0x12e -> :sswitch_5
        0x12f -> :sswitch_5
        0x133 -> :sswitch_4
        0x134 -> :sswitch_4
        0x191 -> :sswitch_3
        0x197 -> :sswitch_2
        0x198 -> :sswitch_1
        0x1f7 -> :sswitch_0
    .end sparse-switch
.end method

.method private isRecoverable(Ljava/io/IOException;Z)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "requestSendStarted"    # Z

    .line 247
    instance-of v0, p1, Ljava/net/ProtocolException;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 248
    return v1

    .line 253
    :cond_0
    instance-of v0, p1, Ljava/io/InterruptedIOException;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 254
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_1

    if-nez p2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 259
    :cond_2
    instance-of v0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_3

    .line 262
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/security/cert/CertificateException;

    if-eqz v0, :cond_3

    .line 263
    return v1

    .line 266
    :cond_3
    instance-of v0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_4

    .line 268
    return v1

    .line 274
    :cond_4
    return v2
.end method

.method private recover(Ljava/io/IOException;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;ZLccsancom/mbridge/msdk/thrid/okhttp/Request;)Z
    .locals 2
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .param p3, "requestSendStarted"    # Z
    .param p4, "userRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 222
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 225
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->retryOnConnectionFailure()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 228
    :cond_0
    if-eqz p3, :cond_1

    invoke-direct {p0, p1, p4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->requestIsUnrepeatable(Ljava/io/IOException;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 231
    :cond_1
    invoke-direct {p0, p1, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->isRecoverable(Ljava/io/IOException;Z)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 234
    :cond_2
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->hasMoreRoutes()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 237
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method private requestIsUnrepeatable(Ljava/io/IOException;Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Z
    .locals 1
    .param p1, "e"    # Ljava/io/IOException;
    .param p2, "userRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 241
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->body()Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/UnrepeatableRequestBody;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/FileNotFoundException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private retryAfter(Lccsancom/mbridge/msdk/thrid/okhttp/Response;I)I
    .locals 2
    .param p1, "userResponse"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .param p2, "defaultDelay"    # I

    .line 395
    const-string v0, "Retry-After"

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 397
    .local v0, "header":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 398
    return p2

    .line 403
    :cond_0
    const-string v1, "\\d+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    .line 407
    :cond_1
    const v1, 0x7fffffff

    return v1
.end method

.method private sameConnection(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Z
    .locals 3
    .param p1, "response"    # Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .param p2, "followUp"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 415
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    .line 416
    .local v0, "url":Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 417
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 418
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->scheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 416
    :goto_0
    return v1
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    .line 90
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 91
    .local v0, "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->cancel()V

    .line 92
    :cond_0
    return-void
.end method

.method public intercept(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .locals 19
    .param p1, "chain"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    move-object/from16 v1, p0

    invoke-interface/range {p1 .. p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->request()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    .line 108
    .local v0, "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    move-object/from16 v2, p1

    check-cast v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;

    .line 109
    .local v2, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->call()Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    move-result-object v9

    .line 110
    .local v9, "call":Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->eventListener()Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    move-result-object v10

    .line 112
    .local v10, "eventListener":Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    new-instance v11, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v3, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionPool()Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    move-result-object v4

    .line 113
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v3

    invoke-direct {v1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v5

    iget-object v8, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object v3, v11

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;Ljava/lang/Object;)V

    .line 114
    .local v3, "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    iput-object v3, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 116
    const/4 v4, 0x0

    .line 117
    .local v4, "followUpCount":I
    const/4 v5, 0x0

    move-object v11, v0

    move-object v12, v3

    move-object v13, v5

    .line 119
    .end local v0    # "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .end local v3    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .local v11, "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .local v12, "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .local v13, "priorResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :goto_0
    iget-boolean v0, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    if-nez v0, :cond_c

    .line 125
    const/4 v3, 0x1

    .line 127
    .local v3, "releaseConnection":Z
    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v2, v11, v12, v6, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;->proceed(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;)Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0
    :try_end_0
    .catch Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    .local v0, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    const/4 v14, 0x0

    .line 144
    .end local v3    # "releaseConnection":Z
    .local v14, "releaseConnection":Z
    if-eqz v14, :cond_0

    .line 145
    invoke-virtual {v12, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 146
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 151
    :cond_0
    if-eqz v13, :cond_1

    .line 152
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    .line 153
    invoke-virtual {v13}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v5

    .line 154
    invoke-virtual {v5, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v5

    .line 155
    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v5

    .line 153
    invoke-virtual {v3, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->priorResponse(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v3

    .line 156
    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v0

    move-object v15, v0

    goto :goto_1

    .line 151
    :cond_1
    move-object v15, v0

    .line 161
    .end local v0    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .local v15, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :goto_1
    :try_start_1
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->route()Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    move-result-object v0

    invoke-direct {v1, v15, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->followUpRequest(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 165
    .local v0, "followUp":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    nop

    .line 167
    if-nez v0, :cond_2

    .line 168
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 169
    return-object v15

    .line 172
    :cond_2
    invoke-virtual {v15}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object v3

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 174
    add-int/lit8 v8, v4, 0x1

    .end local v4    # "followUpCount":I
    .local v8, "followUpCount":I
    const/16 v3, 0x14

    if-gt v8, v3, :cond_6

    .line 179
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->body()Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v3

    instance-of v3, v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/UnrepeatableRequestBody;

    if-nez v3, :cond_5

    .line 184
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v3

    invoke-direct {v1, v15, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->sameConnection(Lccsancom/mbridge/msdk/thrid/okhttp/Response;Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 185
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 186
    new-instance v16, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    iget-object v3, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->client:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionPool()Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    move-result-object v4

    .line 187
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v3

    invoke-direct {v1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->createAddress(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v5

    iget-object v7, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    move-object/from16 v3, v16

    move-object v6, v9

    move-object/from16 v17, v7

    move-object v7, v10

    move-object/from16 v18, v2

    move v2, v8

    .end local v8    # "followUpCount":I
    .local v2, "followUpCount":I
    .local v18, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    move-object/from16 v8, v17

    invoke-direct/range {v3 .. v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;Ljava/lang/Object;)V

    .line 188
    .end local v12    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .local v3, "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    iput-object v3, v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    move-object v12, v3

    goto :goto_2

    .line 189
    .end local v3    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .local v2, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v8    # "followUpCount":I
    .restart local v12    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    :cond_3
    move-object/from16 v18, v2

    move v2, v8

    .end local v8    # "followUpCount":I
    .local v2, "followUpCount":I
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->codec()Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;

    move-result-object v3

    if-nez v3, :cond_4

    .line 194
    :goto_2
    move-object v11, v0

    .line 195
    move-object v13, v15

    .line 196
    .end local v0    # "followUp":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .end local v14    # "releaseConnection":Z
    .end local v15    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    move v4, v2

    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 190
    .restart local v0    # "followUp":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .restart local v14    # "releaseConnection":Z
    .restart local v15    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Closing the body of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " didn\'t close its backing stream. Bad interceptor?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 180
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .local v2, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v8    # "followUpCount":I
    :cond_5
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 181
    new-instance v3, Ljava/net/HttpRetryException;

    invoke-virtual {v15}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v4

    const-string v5, "Cannot retry streamed HTTP body"

    invoke-direct {v3, v5, v4}, Ljava/net/HttpRetryException;-><init>(Ljava/lang/String;I)V

    throw v3

    .line 175
    :cond_6
    move-object/from16 v18, v2

    move v2, v8

    .end local v8    # "followUpCount":I
    .local v2, "followUpCount":I
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 176
    new-instance v3, Ljava/net/ProtocolException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Too many follow-up requests: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 162
    .end local v0    # "followUp":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .local v2, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v4    # "followUpCount":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v2

    .line 163
    .end local v2    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 164
    throw v0

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    .end local v14    # "releaseConnection":Z
    .end local v15    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v2    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .local v3, "releaseConnection":Z
    :catchall_0
    move-exception v0

    move-object/from16 v18, v2

    .end local v2    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    goto :goto_4

    .line 136
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v2    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    :catch_1
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v0

    .end local v2    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    move-object v0, v2

    .line 138
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_2
    nop

    instance-of v2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ConnectionShutdownException;

    if-nez v2, :cond_7

    const/4 v5, 0x1

    :cond_7
    move v2, v5

    .line 139
    .local v2, "requestSendStarted":Z
    invoke-direct {v1, v0, v12, v2, v11}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;ZLccsancom/mbridge/msdk/thrid/okhttp/Request;)Z

    move-result v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v5, :cond_8

    .line 140
    const/4 v3, 0x0

    .line 144
    if-eqz v3, :cond_9

    .line 145
    invoke-virtual {v12, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 146
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    goto :goto_3

    .line 139
    .end local v3    # "releaseConnection":Z
    .end local v4    # "followUpCount":I
    .end local v9    # "call":Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .end local v10    # "eventListener":Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .end local v11    # "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .end local v12    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .end local v13    # "priorResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .end local p1    # "chain":Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    :cond_8
    :try_start_3
    throw v0

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    .local v2, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v3    # "releaseConnection":Z
    .restart local v4    # "followUpCount":I
    .restart local v9    # "call":Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .restart local v10    # "eventListener":Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .restart local v11    # "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .restart local v12    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .restart local v13    # "priorResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .restart local p1    # "chain":Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    :catch_2
    move-exception v0

    move-object/from16 v18, v2

    move-object v2, v0

    .end local v2    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    move-object v0, v2

    .line 131
    .local v0, "e":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;->getLastConnectException()Ljava/io/IOException;

    move-result-object v2

    invoke-direct {v1, v2, v12, v5, v11}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->recover(Ljava/io/IOException;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;ZLccsancom/mbridge/msdk/thrid/okhttp/Request;)Z

    move-result v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_a

    .line 134
    const/4 v2, 0x0

    .line 144
    .end local v3    # "releaseConnection":Z
    .local v2, "releaseConnection":Z
    if-eqz v2, :cond_9

    .line 145
    invoke-virtual {v12, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 146
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 119
    .end local v0    # "e":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .end local v2    # "releaseConnection":Z
    :cond_9
    :goto_3
    move-object/from16 v2, v18

    goto/16 :goto_0

    .line 132
    .restart local v0    # "e":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .restart local v3    # "releaseConnection":Z
    :cond_a
    :try_start_4
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;->getFirstConnectException()Ljava/io/IOException;

    move-result-object v2

    .end local v3    # "releaseConnection":Z
    .end local v4    # "followUpCount":I
    .end local v9    # "call":Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .end local v10    # "eventListener":Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .end local v11    # "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .end local v12    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .end local v13    # "priorResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .end local p1    # "chain":Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 144
    .end local v0    # "e":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .restart local v3    # "releaseConnection":Z
    .restart local v4    # "followUpCount":I
    .restart local v9    # "call":Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .restart local v10    # "eventListener":Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .restart local v11    # "request":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .restart local v12    # "streamAllocation":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .restart local v13    # "priorResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local p1    # "chain":Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    :catchall_1
    move-exception v0

    :goto_4
    if-eqz v3, :cond_b

    .line 145
    invoke-virtual {v12, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->streamFailed(Ljava/io/IOException;)V

    .line 146
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 148
    :cond_b
    throw v0

    .line 120
    .end local v3    # "releaseConnection":Z
    .end local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .local v2, "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    :cond_c
    move-object/from16 v18, v2

    .end local v2    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    .restart local v18    # "realChain":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RealInterceptorChain;
    invoke-virtual {v12}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;->release()V

    .line 121
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Canceled"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method public isCanceled()Z
    .locals 1

    .line 95
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->canceled:Z

    return v0
.end method

.method public setCallStackTrace(Ljava/lang/Object;)V
    .locals 0
    .param p1, "callStackTrace"    # Ljava/lang/Object;

    .line 99
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->callStackTrace:Ljava/lang/Object;

    .line 100
    return-void
.end method

.method public streamAllocation()Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RetryAndFollowUpInterceptor;->streamAllocation:Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    return-object v0
.end method
