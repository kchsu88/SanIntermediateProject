.class public final Lccsanokhttp3/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanokhttp3/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lccsanokhttp3/Authenticator;

.field cache:Lccsanokhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field callTimeout:I

.field certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Lccsanokhttp3/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lccsanokhttp3/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lccsanokhttp3/CookieJar;

.field dispatcher:Lccsanokhttp3/Dispatcher;

.field dns:Lccsanokhttp3/Dns;

.field eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lccsanokhttp3/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Lccsanokhttp3/Authenticator;

.field proxySelector:Ljava/net/ProxySelector;

.field readTimeout:I

.field retryOnConnectionFailure:Z

.field socketFactory:Ljavax/net/SocketFactory;

.field sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field writeTimeout:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 447
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 423
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 448
    new-instance v0, Lccsanokhttp3/Dispatcher;

    invoke-direct {v0}, Lccsanokhttp3/Dispatcher;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->dispatcher:Lccsanokhttp3/Dispatcher;

    .line 449
    sget-object v0, Lccsanokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 450
    sget-object v0, Lccsanokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 451
    sget-object v0, Lccsanokhttp3/EventListener;->NONE:Lccsanokhttp3/EventListener;

    invoke-static {v0}, Lccsanokhttp3/EventListener;->factory(Lccsanokhttp3/EventListener;)Lccsanokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    .line 452
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 453
    if-nez v0, :cond_0

    .line 454
    new-instance v0, Lccsanokhttp3/internal/proxy/NullProxySelector;

    invoke-direct {v0}, Lccsanokhttp3/internal/proxy/NullProxySelector;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 456
    :cond_0
    sget-object v0, Lccsanokhttp3/CookieJar;->NO_COOKIES:Lccsanokhttp3/CookieJar;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->cookieJar:Lccsanokhttp3/CookieJar;

    .line 457
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 458
    sget-object v0, Lccsanokhttp3/internal/tls/OkHostnameVerifier;->INSTANCE:Lccsanokhttp3/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 459
    sget-object v0, Lccsanokhttp3/CertificatePinner;->DEFAULT:Lccsanokhttp3/CertificatePinner;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    .line 460
    sget-object v0, Lccsanokhttp3/Authenticator;->NONE:Lccsanokhttp3/Authenticator;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    .line 461
    sget-object v0, Lccsanokhttp3/Authenticator;->NONE:Lccsanokhttp3/Authenticator;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->authenticator:Lccsanokhttp3/Authenticator;

    .line 462
    new-instance v0, Lccsanokhttp3/ConnectionPool;

    invoke-direct {v0}, Lccsanokhttp3/ConnectionPool;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectionPool:Lccsanokhttp3/ConnectionPool;

    .line 463
    sget-object v0, Lccsanokhttp3/Dns;->SYSTEM:Lccsanokhttp3/Dns;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->dns:Lccsanokhttp3/Dns;

    .line 464
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 465
    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 466
    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 467
    const/4 v0, 0x0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 468
    const/16 v1, 0x2710

    iput v1, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 469
    iput v1, p0, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 470
    iput v1, p0, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 471
    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 472
    return-void
.end method

.method constructor <init>(Lccsanokhttp3/OkHttpClient;)V
    .locals 3
    .param p1, "okHttpClient"    # Lccsanokhttp3/OkHttpClient;

    .line 474
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 475
    iget-object v2, p1, Lccsanokhttp3/OkHttpClient;->dispatcher:Lccsanokhttp3/Dispatcher;

    iput-object v2, p0, Lccsanokhttp3/OkHttpClient$Builder;->dispatcher:Lccsanokhttp3/Dispatcher;

    .line 476
    iget-object v2, p1, Lccsanokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v2, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 477
    iget-object v2, p1, Lccsanokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v2, p0, Lccsanokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 478
    iget-object v2, p1, Lccsanokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v2, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 479
    iget-object v2, p1, Lccsanokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 480
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 481
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    .line 482
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 483
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->cookieJar:Lccsanokhttp3/CookieJar;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->cookieJar:Lccsanokhttp3/CookieJar;

    .line 484
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->internalCache:Lccsanokhttp3/internal/cache/InternalCache;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->internalCache:Lccsanokhttp3/internal/cache/InternalCache;

    .line 485
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->cache:Lccsanokhttp3/Cache;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->cache:Lccsanokhttp3/Cache;

    .line 486
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 487
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 488
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    .line 489
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 490
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    .line 491
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    .line 492
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->authenticator:Lccsanokhttp3/Authenticator;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->authenticator:Lccsanokhttp3/Authenticator;

    .line 493
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->connectionPool:Lccsanokhttp3/ConnectionPool;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectionPool:Lccsanokhttp3/ConnectionPool;

    .line 494
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient;->dns:Lccsanokhttp3/Dns;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->dns:Lccsanokhttp3/Dns;

    .line 495
    iget-boolean v0, p1, Lccsanokhttp3/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 496
    iget-boolean v0, p1, Lccsanokhttp3/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 497
    iget-boolean v0, p1, Lccsanokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 498
    iget v0, p1, Lccsanokhttp3/OkHttpClient;->callTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 499
    iget v0, p1, Lccsanokhttp3/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 500
    iget v0, p1, Lccsanokhttp3/OkHttpClient;->readTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 501
    iget v0, p1, Lccsanokhttp3/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 502
    iget v0, p1, Lccsanokhttp3/OkHttpClient;->pingInterval:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 503
    return-void
.end method


# virtual methods
.method public addInterceptor(Lccsanokhttp3/Interceptor;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lccsanokhttp3/Interceptor;

    .line 968
    if-eqz p1, :cond_0

    .line 969
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    return-object p0

    .line 968
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNetworkInterceptor(Lccsanokhttp3/Interceptor;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lccsanokhttp3/Interceptor;

    .line 983
    if-eqz p1, :cond_0

    .line 984
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 985
    return-object p0

    .line 983
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticator(Lccsanokhttp3/Authenticator;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lccsanokhttp3/Authenticator;

    .line 816
    if-eqz p1, :cond_0

    .line 817
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->authenticator:Lccsanokhttp3/Authenticator;

    .line 818
    return-object p0

    .line 816
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lccsanokhttp3/OkHttpClient;
    .locals 1

    .line 1015
    new-instance v0, Lccsanokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lccsanokhttp3/OkHttpClient;-><init>(Lccsanokhttp3/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lccsanokhttp3/Cache;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "cache"    # Lccsanokhttp3/Cache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 698
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->cache:Lccsanokhttp3/Cache;

    .line 699
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->internalCache:Lccsanokhttp3/internal/cache/InternalCache;

    .line 700
    return-object p0
.end method

.method public callTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 516
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 517
    return-object p0
.end method

.method public callTimeout(Ljava/time/Duration;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 532
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->callTimeout:I

    .line 533
    return-object p0
.end method

.method public certificatePinner(Lccsanokhttp3/CertificatePinner;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "certificatePinner"    # Lccsanokhttp3/CertificatePinner;

    .line 804
    if-eqz p1, :cond_0

    .line 805
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    .line 806
    return-object p0

    .line 804
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 545
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 546
    return-object p0
.end method

.method public connectTimeout(Ljava/time/Duration;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 559
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout:I

    .line 560
    return-object p0
.end method

.method public connectionPool(Lccsanokhttp3/ConnectionPool;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lccsanokhttp3/ConnectionPool;

    .line 839
    if-eqz p1, :cond_0

    .line 840
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectionPool:Lccsanokhttp3/ConnectionPool;

    .line 841
    return-object p0

    .line 839
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectionSpecs(Ljava/util/List;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanokhttp3/ConnectionSpec;",
            ">;)",
            "Lccsanokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 954
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/ConnectionSpec;>;"
    invoke-static {p1}, Lccsanokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 955
    return-object p0
.end method

.method public cookieJar(Lccsanokhttp3/CookieJar;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lccsanokhttp3/CookieJar;

    .line 691
    if-eqz p1, :cond_0

    .line 692
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->cookieJar:Lccsanokhttp3/CookieJar;

    .line 693
    return-object p0

    .line 691
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatcher(Lccsanokhttp3/Dispatcher;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lccsanokhttp3/Dispatcher;

    .line 888
    if-eqz p1, :cond_0

    .line 889
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->dispatcher:Lccsanokhttp3/Dispatcher;

    .line 890
    return-object p0

    .line 888
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dns(Lccsanokhttp3/Dns;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "dns"    # Lccsanokhttp3/Dns;

    .line 709
    if-eqz p1, :cond_0

    .line 710
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->dns:Lccsanokhttp3/Dns;

    .line 711
    return-object p0

    .line 709
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListener(Lccsanokhttp3/EventListener;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListener"    # Lccsanokhttp3/EventListener;

    .line 995
    if-eqz p1, :cond_0

    .line 996
    invoke-static {p1}, Lccsanokhttp3/EventListener;->factory(Lccsanokhttp3/EventListener;)Lccsanokhttp3/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    .line 997
    return-object p0

    .line 995
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListener == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListenerFactory(Lccsanokhttp3/EventListener$Factory;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListenerFactory"    # Lccsanokhttp3/EventListener$Factory;

    .line 1007
    if-eqz p1, :cond_0

    .line 1010
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    .line 1011
    return-object p0

    .line 1008
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListenerFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public followRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 857
    iput-boolean p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->followRedirects:Z

    .line 858
    return-object p0
.end method

.method public followSslRedirects(Z)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .line 851
    iput-boolean p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    .line 852
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 793
    if-eqz p1, :cond_0

    .line 794
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 795
    return-object p0

    .line 793
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "hostnameVerifier == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public interceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 964
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation

    .line 979
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 637
    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 638
    return-object p0
.end method

.method public pingInterval(Ljava/time/Duration;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 656
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->pingInterval:I

    .line 657
    return-object p0
.end method

.method public protocols(Ljava/util/List;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanokhttp3/Protocol;",
            ">;)",
            "Lccsanokhttp3/OkHttpClient$Builder;"
        }
    .end annotation

    .line 926
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 929
    sget-object v0, Lccsanokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsanokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    .line 930
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 931
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must contain h2_prior_knowledge or http/1.1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 934
    :cond_1
    :goto_0
    sget-object v0, Lccsanokhttp3/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsanokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 935
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols containing h2_prior_knowledge cannot use other protocols: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 938
    :cond_3
    :goto_1
    sget-object v0, Lccsanokhttp3/Protocol;->HTTP_1_0:Lccsanokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 941
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 946
    sget-object v0, Lccsanokhttp3/Protocol;->SPDY_3:Lccsanokhttp3/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 949
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 950
    return-object p0

    .line 942
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 939
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "protocols must not contain http/1.0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxy(Ljava/net/Proxy;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 666
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 667
    return-object p0
.end method

.method public proxyAuthenticator(Lccsanokhttp3/Authenticator;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lccsanokhttp3/Authenticator;

    .line 828
    if-eqz p1, :cond_0

    .line 829
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    .line 830
    return-object p0

    .line 828
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .line 679
    if-eqz p1, :cond_0

    .line 680
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 681
    return-object p0

    .line 679
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 574
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 575
    return-object p0
.end method

.method public readTimeout(Ljava/time/Duration;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 590
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout:I

    .line 591
    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .line 880
    iput-boolean p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 881
    return-object p0
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .line 723
    if-eqz p1, :cond_1

    .line 724
    instance-of v0, p1, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    .line 727
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 728
    return-object p0

    .line 725
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "socketFactory instanceof SSLSocketFactory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 723
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 741
    if-eqz p1, :cond_0

    .line 742
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 743
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanokhttp3/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    .line 744
    return-object p0

    .line 741
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 779
    if-eqz p1, :cond_1

    .line 780
    if-eqz p2, :cond_0

    .line 781
    iput-object p1, p0, Lccsanokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 782
    invoke-static {p2}, Lccsanokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    .line 783
    return-object p0

    .line 780
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 779
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 604
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 605
    return-object p0
.end method

.method public writeTimeout(Ljava/time/Duration;)Lccsanokhttp3/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 619
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsanokhttp3/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout:I

    .line 620
    return-object p0
.end method
