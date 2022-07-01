.class public Lccsanokhttp3/OkHttpClient;
.super Ljava/lang/Object;
.source "OkHttpClient.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lccsanokhttp3/Call$Factory;
.implements Lccsanokhttp3/WebSocket$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/OkHttpClient$Builder;
    }
.end annotation


# static fields
.field static final DEFAULT_CONNECTION_SPECS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field static final DEFAULT_PROTOCOLS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final authenticator:Lccsanokhttp3/Authenticator;

.field final cache:Lccsanokhttp3/Cache;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final callTimeout:I

.field final certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

.field final certificatePinner:Lccsanokhttp3/CertificatePinner;

.field final connectTimeout:I

.field final connectionPool:Lccsanokhttp3/ConnectionPool;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final cookieJar:Lccsanokhttp3/CookieJar;

.field final dispatcher:Lccsanokhttp3/Dispatcher;

.field final dns:Lccsanokhttp3/Dns;

.field final eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

.field final followRedirects:Z

.field final followSslRedirects:Z

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final interceptors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field final internalCache:Lccsanokhttp3/internal/cache/InternalCache;
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

.field final pingInterval:I

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lccsanokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final readTimeout:I

.field final retryOnConnectionFailure:Z

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final writeTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 124
    const/4 v0, 0x2

    new-array v1, v0, [Lccsanokhttp3/Protocol;

    sget-object v2, Lccsanokhttp3/Protocol;->HTTP_2:Lccsanokhttp3/Protocol;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lccsanokhttp3/Protocol;->HTTP_1_1:Lccsanokhttp3/Protocol;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lccsanokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Lccsanokhttp3/OkHttpClient;->DEFAULT_PROTOCOLS:Ljava/util/List;

    .line 127
    new-array v0, v0, [Lccsanokhttp3/ConnectionSpec;

    sget-object v1, Lccsanokhttp3/ConnectionSpec;->MODERN_TLS:Lccsanokhttp3/ConnectionSpec;

    aput-object v1, v0, v3

    sget-object v1, Lccsanokhttp3/ConnectionSpec;->CLEARTEXT:Lccsanokhttp3/ConnectionSpec;

    aput-object v1, v0, v4

    invoke-static {v0}, Lccsanokhttp3/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lccsanokhttp3/OkHttpClient;->DEFAULT_CONNECTION_SPECS:Ljava/util/List;

    .line 131
    new-instance v0, Lccsanokhttp3/OkHttpClient$1;

    invoke-direct {v0}, Lccsanokhttp3/OkHttpClient$1;-><init>()V

    sput-object v0, Lccsanokhttp3/internal/Internal;->instance:Lccsanokhttp3/internal/Internal;

    .line 170
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 202
    new-instance v0, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lccsanokhttp3/OkHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0}, Lccsanokhttp3/OkHttpClient;-><init>(Lccsanokhttp3/OkHttpClient$Builder;)V

    .line 203
    return-void
.end method

.method constructor <init>(Lccsanokhttp3/OkHttpClient$Builder;)V
    .locals 4
    .param p1, "builder"    # Lccsanokhttp3/OkHttpClient$Builder;

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->dispatcher:Lccsanokhttp3/Dispatcher;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->dispatcher:Lccsanokhttp3/Dispatcher;

    .line 207
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->proxy:Ljava/net/Proxy;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    .line 208
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->protocols:Ljava/util/List;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    .line 209
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->connectionSpecs:Ljava/util/List;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    .line 210
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->interceptors:Ljava/util/List;

    invoke-static {v1}, Lccsanokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    .line 211
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->networkInterceptors:Ljava/util/List;

    invoke-static {v1}, Lccsanokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    .line 212
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    .line 213
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->proxySelector:Ljava/net/ProxySelector;

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    .line 214
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->cookieJar:Lccsanokhttp3/CookieJar;

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->cookieJar:Lccsanokhttp3/CookieJar;

    .line 215
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->cache:Lccsanokhttp3/Cache;

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->cache:Lccsanokhttp3/Cache;

    .line 216
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->internalCache:Lccsanokhttp3/internal/cache/InternalCache;

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->internalCache:Lccsanokhttp3/internal/cache/InternalCache;

    .line 217
    iget-object v1, p1, Lccsanokhttp3/OkHttpClient$Builder;->socketFactory:Ljavax/net/SocketFactory;

    iput-object v1, p0, Lccsanokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    .line 219
    const/4 v1, 0x0

    .line 220
    .local v1, "isTLS":Z
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanokhttp3/ConnectionSpec;

    .line 221
    .local v2, "spec":Lccsanokhttp3/ConnectionSpec;
    if-nez v1, :cond_1

    invoke-virtual {v2}, Lccsanokhttp3/ConnectionSpec;->isTls()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v1, v3

    .line 222
    .end local v2    # "spec":Lccsanokhttp3/ConnectionSpec;
    goto :goto_0

    .line 224
    :cond_2
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_4

    if-nez v1, :cond_3

    goto :goto_3

    .line 228
    :cond_3
    invoke-static {}, Lccsanokhttp3/internal/Util;->platformTrustManager()Ljavax/net/ssl/X509TrustManager;

    move-result-object v0

    .line 229
    .local v0, "trustManager":Ljavax/net/ssl/X509TrustManager;
    invoke-static {v0}, Lccsanokhttp3/OkHttpClient;->newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v2

    iput-object v2, p0, Lccsanokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 230
    invoke-static {v0}, Lccsanokhttp3/internal/tls/CertificateChainCleaner;->get(Ljavax/net/ssl/X509TrustManager;)Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    move-result-object v2

    iput-object v2, p0, Lccsanokhttp3/OkHttpClient;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    goto :goto_4

    .line 225
    .end local v0    # "trustManager":Ljavax/net/ssl/X509TrustManager;
    :cond_4
    :goto_3
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 226
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    .line 233
    :goto_4
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v0, :cond_5

    .line 234
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v0

    iget-object v2, p0, Lccsanokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, v2}, Lccsanokhttp3/internal/platform/Platform;->configureSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V

    .line 237
    :cond_5
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 238
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    iget-object v2, p0, Lccsanokhttp3/OkHttpClient;->certificateChainCleaner:Lccsanokhttp3/internal/tls/CertificateChainCleaner;

    invoke-virtual {v0, v2}, Lccsanokhttp3/CertificatePinner;->withCertificateChainCleaner(Lccsanokhttp3/internal/tls/CertificateChainCleaner;)Lccsanokhttp3/CertificatePinner;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    .line 240
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    .line 241
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->authenticator:Lccsanokhttp3/Authenticator;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->authenticator:Lccsanokhttp3/Authenticator;

    .line 242
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->connectionPool:Lccsanokhttp3/ConnectionPool;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->connectionPool:Lccsanokhttp3/ConnectionPool;

    .line 243
    iget-object v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->dns:Lccsanokhttp3/Dns;

    iput-object v0, p0, Lccsanokhttp3/OkHttpClient;->dns:Lccsanokhttp3/Dns;

    .line 244
    iget-boolean v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->followSslRedirects:Z

    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient;->followSslRedirects:Z

    .line 245
    iget-boolean v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->followRedirects:Z

    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient;->followRedirects:Z

    .line 246
    iget-boolean v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->retryOnConnectionFailure:Z

    iput-boolean v0, p0, Lccsanokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    .line 247
    iget v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->callTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient;->callTimeout:I

    .line 248
    iget v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->connectTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient;->connectTimeout:I

    .line 249
    iget v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->readTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient;->readTimeout:I

    .line 250
    iget v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->writeTimeout:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient;->writeTimeout:I

    .line 251
    iget v0, p1, Lccsanokhttp3/OkHttpClient$Builder;->pingInterval:I

    iput v0, p0, Lccsanokhttp3/OkHttpClient;->pingInterval:I

    .line 253
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 256
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 259
    return-void

    .line 257
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null network interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null interceptor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsanokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method

.method private static newSslSocketFactory(Ljavax/net/ssl/X509TrustManager;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 3
    .param p0, "trustManager"    # Ljavax/net/ssl/X509TrustManager;

    .line 263
    :try_start_0
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/internal/platform/Platform;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 264
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v1, 0x1

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 265
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 266
    .end local v0    # "sslContext":Ljavax/net/ssl/SSLContext;
    :catch_0
    move-exception v0

    .line 267
    .local v0, "e":Ljava/security/GeneralSecurityException;
    new-instance v1, Ljava/lang/AssertionError;

    const-string v2, "No System TLS"

    invoke-direct {v1, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method


# virtual methods
.method public authenticator()Lccsanokhttp3/Authenticator;
    .locals 1

    .line 340
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->authenticator:Lccsanokhttp3/Authenticator;

    return-object v0
.end method

.method public cache()Lccsanokhttp3/Cache;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 312
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->cache:Lccsanokhttp3/Cache;

    return-object v0
.end method

.method public callTimeoutMillis()I
    .locals 1

    .line 276
    iget v0, p0, Lccsanokhttp3/OkHttpClient;->callTimeout:I

    return v0
.end method

.method public certificatePinner()Lccsanokhttp3/CertificatePinner;
    .locals 1

    .line 336
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectTimeoutMillis()I
    .locals 1

    .line 281
    iget v0, p0, Lccsanokhttp3/OkHttpClient;->connectTimeout:I

    return v0
.end method

.method public connectionPool()Lccsanokhttp3/ConnectionPool;
    .locals 1

    .line 348
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->connectionPool:Lccsanokhttp3/ConnectionPool;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 372
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public cookieJar()Lccsanokhttp3/CookieJar;
    .locals 1

    .line 308
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->cookieJar:Lccsanokhttp3/CookieJar;

    return-object v0
.end method

.method public dispatcher()Lccsanokhttp3/Dispatcher;
    .locals 1

    .line 364
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->dispatcher:Lccsanokhttp3/Dispatcher;

    return-object v0
.end method

.method public dns()Lccsanokhttp3/Dns;
    .locals 1

    .line 320
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->dns:Lccsanokhttp3/Dns;

    return-object v0
.end method

.method public eventListenerFactory()Lccsanokhttp3/EventListener$Factory;
    .locals 1

    .line 394
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->eventListenerFactory:Lccsanokhttp3/EventListener$Factory;

    return-object v0
.end method

.method public followRedirects()Z
    .locals 1

    .line 356
    iget-boolean v0, p0, Lccsanokhttp3/OkHttpClient;->followRedirects:Z

    return v0
.end method

.method public followSslRedirects()Z
    .locals 1

    .line 352
    iget-boolean v0, p0, Lccsanokhttp3/OkHttpClient;->followSslRedirects:Z

    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1

    .line 332
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
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

    .line 381
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->interceptors:Ljava/util/List;

    return-object v0
.end method

.method internalCache()Lccsanokhttp3/internal/cache/InternalCache;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 316
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->cache:Lccsanokhttp3/Cache;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lccsanokhttp3/Cache;->internalCache:Lccsanokhttp3/internal/cache/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->internalCache:Lccsanokhttp3/internal/cache/InternalCache;

    :goto_0
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

    .line 390
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->networkInterceptors:Ljava/util/List;

    return-object v0
.end method

.method public newBuilder()Lccsanokhttp3/OkHttpClient$Builder;
    .locals 1

    .line 414
    new-instance v0, Lccsanokhttp3/OkHttpClient$Builder;

    invoke-direct {v0, p0}, Lccsanokhttp3/OkHttpClient$Builder;-><init>(Lccsanokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;
    .locals 1
    .param p1, "request"    # Lccsanokhttp3/Request;

    .line 401
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsanokhttp3/RealCall;->newRealCall(Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/Request;Z)Lccsanokhttp3/RealCall;

    move-result-object v0

    return-object v0
.end method

.method public newWebSocket(Lccsanokhttp3/Request;Lccsanokhttp3/WebSocketListener;)Lccsanokhttp3/WebSocket;
    .locals 7
    .param p1, "request"    # Lccsanokhttp3/Request;
    .param p2, "listener"    # Lccsanokhttp3/WebSocketListener;

    .line 408
    new-instance v6, Lccsanokhttp3/internal/ws/RealWebSocket;

    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    iget v0, p0, Lccsanokhttp3/OkHttpClient;->pingInterval:I

    int-to-long v4, v0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lccsanokhttp3/internal/ws/RealWebSocket;-><init>(Lccsanokhttp3/Request;Lccsanokhttp3/WebSocketListener;Ljava/util/Random;J)V

    .line 409
    .local v0, "webSocket":Lccsanokhttp3/internal/ws/RealWebSocket;
    invoke-virtual {v0, p0}, Lccsanokhttp3/internal/ws/RealWebSocket;->connect(Lccsanokhttp3/OkHttpClient;)V

    .line 410
    return-object v0
.end method

.method public pingIntervalMillis()I
    .locals 1

    .line 296
    iget v0, p0, Lccsanokhttp3/OkHttpClient;->pingInterval:I

    return v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .line 368
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 300
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lccsanokhttp3/Authenticator;
    .locals 1

    .line 344
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 304
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public readTimeoutMillis()I
    .locals 1

    .line 286
    iget v0, p0, Lccsanokhttp3/OkHttpClient;->readTimeout:I

    return v0
.end method

.method public retryOnConnectionFailure()Z
    .locals 1

    .line 360
    iget-boolean v0, p0, Lccsanokhttp3/OkHttpClient;->retryOnConnectionFailure:Z

    return v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 324
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    .line 328
    iget-object v0, p0, Lccsanokhttp3/OkHttpClient;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public writeTimeoutMillis()I
    .locals 1

    .line 291
    iget v0, p0, Lccsanokhttp3/OkHttpClient;->writeTimeout:I

    return v0
.end method
