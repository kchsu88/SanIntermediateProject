.class public final Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
.super Ljava/lang/Object;
.source "OkHttpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

.field cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field callTimeout:I

.field certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

.field connectTimeout:I

.field connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

.field connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

.field dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

.field dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

.field eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

.field followRedirects:Z

.field followSslRedirects:Z

.field hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final networkInterceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field pingInterval:I

.field protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

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

    .line 472
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 473
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    .line 474
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 475
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 476
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->NONE:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->factory(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    .line 477
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 478
    if-nez v0, :cond_0

    .line 479
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/proxy/NullProxySelector;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/proxy/NullProxySelector;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 481
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;->NO_COOKIES:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    .line 482
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 483
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 484
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;->DEFAULT:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    .line 485
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;->NONE:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 486
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;->NONE:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 487
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 488
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Dns;->SYSTEM:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    .line 489
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followSslRedirects:Z

    .line 490
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followRedirects:Z

    .line 491
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 492
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->callTimeout:I

    .line 493
    const/16 v1, 0x2710

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout:I

    .line 494
    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout:I

    .line 495
    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout:I

    .line 496
    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->pingInterval:I

    .line 497
    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;)V
    .locals 3
    .param p1, "okHttpClient"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 499
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    .line 448
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    .line 500
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    .line 501
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxy:Ljava/net/Proxy;

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 502
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->protocols:Ljava/util/List;

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 503
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionSpecs:Ljava/util/List;

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 504
    iget-object v2, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 505
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 506
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    .line 507
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 508
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    .line 509
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 510
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    .line 511
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 512
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 513
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    .line 514
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 515
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    .line 516
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 517
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 518
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 519
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    .line 520
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followSslRedirects:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followSslRedirects:Z

    .line 521
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->followRedirects:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followRedirects:Z

    .line 522
    iget-boolean v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 523
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->callTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->callTimeout:I

    .line 524
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->connectTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout:I

    .line 525
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->readTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout:I

    .line 526
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->writeTimeout:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout:I

    .line 527
    iget v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->pingInterval:I

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->pingInterval:I

    .line 528
    return-void
.end method


# virtual methods
.method public addInterceptor(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;

    .line 988
    if-eqz p1, :cond_0

    .line 989
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 990
    return-object p0

    .line 988
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addNetworkInterceptor(Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "interceptor"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;

    .line 1003
    if-eqz p1, :cond_0

    .line 1004
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1005
    return-object p0

    .line 1003
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "interceptor == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public authenticator(Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "authenticator"    # Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 836
    if-eqz p1, :cond_0

    .line 837
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->authenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 838
    return-object p0

    .line 836
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "authenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .locals 1

    .line 1035
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;)V

    return-object v0
.end method

.method public cache(Lccsancom/mbridge/msdk/thrid/okhttp/Cache;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1
    .param p1, "cache"    # Lccsancom/mbridge/msdk/thrid/okhttp/Cache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 721
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    .line 722
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 723
    return-object p0
.end method

.method public callTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 539
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->callTimeout:I

    .line 540
    return-object p0
.end method

.method public callTimeout(Ljava/time/Duration;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 553
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->callTimeout:I

    .line 554
    return-object p0
.end method

.method public certificatePinner(Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "certificatePinner"    # Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    .line 824
    if-eqz p1, :cond_0

    .line 825
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    .line 826
    return-object p0

    .line 824
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "certificatePinner == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 566
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout:I

    .line 567
    return-object p0
.end method

.method public connectTimeout(Ljava/time/Duration;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 579
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout:I

    .line 580
    return-object p0
.end method

.method public connectionPool(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "connectionPool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 859
    if-eqz p1, :cond_0

    .line 860
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 861
    return-object p0

    .line 859
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionPool == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public connectionSpecs(Ljava/util/List;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;)",
            "Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;"
        }
    .end annotation

    .line 974
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;>;"
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    .line 975
    return-object p0
.end method

.method public cookieJar(Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "cookieJar"    # Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    .line 708
    if-eqz p1, :cond_0

    .line 709
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cookieJar:Lccsancom/mbridge/msdk/thrid/okhttp/CookieJar;

    .line 710
    return-object p0

    .line 708
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cookieJar == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dispatcher(Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "dispatcher"    # Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    .line 908
    if-eqz p1, :cond_0

    .line 909
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dispatcher:Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    .line 910
    return-object p0

    .line 908
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "dispatcher == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public dns(Lccsancom/mbridge/msdk/thrid/okhttp/Dns;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "dns"    # Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    .line 732
    if-eqz p1, :cond_0

    .line 733
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    .line 734
    return-object p0

    .line 732
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListener(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListener"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    .line 1015
    if-eqz p1, :cond_0

    .line 1016
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->factory(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    .line 1017
    return-object p0

    .line 1015
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListener == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public eventListenerFactory(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "eventListenerFactory"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    .line 1027
    if-eqz p1, :cond_0

    .line 1030
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->eventListenerFactory:Lccsancom/mbridge/msdk/thrid/okhttp/EventListener$Factory;

    .line 1031
    return-object p0

    .line 1028
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "eventListenerFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public followRedirects(Z)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 0
    .param p1, "followRedirects"    # Z

    .line 877
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followRedirects:Z

    .line 878
    return-object p0
.end method

.method public followSslRedirects(Z)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 0
    .param p1, "followProtocolRedirects"    # Z

    .line 871
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->followSslRedirects:Z

    .line 872
    return-object p0
.end method

.method public hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .line 813
    if-eqz p1, :cond_0

    .line 814
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 815
    return-object p0

    .line 813
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
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 984
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    .line 999
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public pingInterval(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1
    .param p1, "interval"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 655
    const-string v0, "interval"

    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->pingInterval:I

    .line 656
    return-object p0
.end method

.method public pingInterval(Ljava/time/Duration;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 673
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->pingInterval:I

    .line 674
    return-object p0
.end method

.method public protocols(Ljava/util/List;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;)",
            "Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;"
        }
    .end annotation

    .line 946
    .local p1, "protocols":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object p1, v0

    .line 949
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 950
    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 951
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

    .line 954
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    goto :goto_1

    .line 955
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

    .line 958
    :cond_3
    :goto_1
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_0:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 961
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 966
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->SPDY_3:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 969
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->protocols:Ljava/util/List;

    .line 970
    return-object p0

    .line 962
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "protocols must not contain null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 959
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

.method public proxy(Ljava/net/Proxy;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 0
    .param p1, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 683
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    .line 684
    return-object p0
.end method

.method public proxyAuthenticator(Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxyAuthenticator"    # Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 848
    if-eqz p1, :cond_0

    .line 849
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 850
    return-object p0

    .line 848
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public proxySelector(Ljava/net/ProxySelector;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "proxySelector"    # Ljava/net/ProxySelector;

    .line 696
    if-eqz p1, :cond_0

    .line 697
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    .line 698
    return-object p0

    .line 696
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 594
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout:I

    .line 595
    return-object p0
.end method

.method public readTimeout(Ljava/time/Duration;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 609
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout:I

    .line 610
    return-object p0
.end method

.method public retryOnConnectionFailure(Z)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 0
    .param p1, "retryOnConnectionFailure"    # Z

    .line 900
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    .line 901
    return-object p0
.end method

.method setInternalCache(Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;)V
    .locals 1
    .param p1, "internalCache"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 715
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->internalCache:Lccsancom/mbridge/msdk/thrid/okhttp/internal/cache/InternalCache;

    .line 716
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->cache:Lccsancom/mbridge/msdk/thrid/okhttp/Cache;

    .line 717
    return-void
.end method

.method public socketFactory(Ljavax/net/SocketFactory;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "socketFactory"    # Ljavax/net/SocketFactory;

    .line 746
    if-eqz p1, :cond_0

    .line 747
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    .line 748
    return-object p0

    .line 746
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .line 761
    if-eqz p1, :cond_0

    .line 762
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 763
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->buildCertificateChainCleaner(Ljavax/net/ssl/SSLSocketFactory;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    .line 764
    return-object p0

    .line 761
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p2, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 799
    if-eqz p1, :cond_1

    .line 800
    if-eqz p2, :cond_0

    .line 801
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 802
    invoke-static {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->certificateChainCleaner:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/CertificateChainCleaner;

    .line 803
    return-object p0

    .line 800
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "trustManager == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 799
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "sslSocketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 623
    const-string v0, "timeout"

    invoke-static {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout:I

    .line 624
    return-object p0
.end method

.method public writeTimeout(Ljava/time/Duration;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;
    .locals 4
    .param p1, "duration"    # Ljava/time/Duration;

    .line 637
    invoke-virtual {p1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-string v3, "timeout"

    invoke-static {v3, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I

    move-result v0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout:I

    .line 638
    return-object p0
.end method
