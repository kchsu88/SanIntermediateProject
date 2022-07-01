.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;
.source "RealConnection.java"

# interfaces
.implements Lccsancom/mbridge/msdk/thrid/okhttp/Connection;


# static fields
.field private static final MAX_TUNNEL_ATTEMPTS:I = 0x15

.field private static final NPE_THROW_WITH_NULL:Ljava/lang/String; = "throw with null exception"


# instance fields
.field public allocationLimit:I

.field public final allocations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/Reference<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;",
            ">;>;"
        }
    .end annotation
.end field

.field private final connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

.field private handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

.field private http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

.field public idleAtNanos:J

.field public noNewStreams:Z

.field private protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

.field private rawSocket:Ljava/net/Socket;

.field private final route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

.field private sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

.field private socket:Ljava/net/Socket;

.field private source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

.field public successCount:I


# direct methods
.method public constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)V
    .locals 2
    .param p1, "connectionPool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
    .param p2, "route"    # Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 129
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;-><init>()V

    .line 117
    const/4 v0, 0x1

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->allocationLimit:I

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->allocations:Ljava/util/List;

    .line 127
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->idleAtNanos:J

    .line 130
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    .line 131
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 132
    return-void
.end method

.method private connectSocket(IILccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p4, "eventListener"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    .line 250
    .local v0, "proxy":Ljava/net/Proxy;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    .line 252
    .local v1, "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v2, v3, :cond_1

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v2

    sget-object v3, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    new-instance v2, Ljava/net/Socket;

    invoke-direct {v2, v0}, Ljava/net/Socket;-><init>(Ljava/net/Proxy;)V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->socketFactory()Ljavax/net/SocketFactory;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v2

    :goto_1
    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 256
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v2

    invoke-virtual {p4, p3, v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->connectStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    .line 257
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-virtual {v2, p2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 259
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    invoke-virtual {v2, v3, v4, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->connectSocket(Ljava/net/Socket;Ljava/net/InetSocketAddress;I)V
    :try_end_0
    .catch Ljava/net/ConnectException; {:try_start_0 .. :try_end_0} :catch_1

    .line 264
    nop

    .line 271
    :try_start_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 272
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v2

    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    goto :goto_2

    .line 273
    :catch_0
    move-exception v2

    .line 274
    .local v2, "npe":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "throw with null exception"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 278
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :goto_2
    return-void

    .line 275
    .restart local v2    # "npe":Ljava/lang/NullPointerException;
    :cond_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 260
    .end local v2    # "npe":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 261
    .local v2, "e":Ljava/net/ConnectException;
    new-instance v3, Ljava/net/ConnectException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to connect to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/ConnectException;-><init>(Ljava/lang/String;)V

    .line 262
    .local v3, "ce":Ljava/net/ConnectException;
    invoke-virtual {v3, v2}, Ljava/net/ConnectException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 263
    throw v3
.end method

.method private connectTls(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;)V
    .locals 12
    .param p1, "connectionSpecSelector"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v0

    .line 316
    .local v0, "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    .line 317
    .local v1, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    const/4 v2, 0x0

    .line 318
    .local v2, "success":Z
    const/4 v3, 0x0

    .line 321
    .local v3, "sslSocket":Ljavax/net/ssl/SSLSocket;
    :try_start_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 322
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v6

    const/4 v7, 0x1

    .line 321
    invoke-virtual {v1, v4, v5, v6, v7}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/SSLSocket;

    move-object v3, v4

    .line 325
    invoke-virtual {p1, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    move-result-object v4

    .line 326
    .local v4, "connectionSpec":Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 327
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v5

    .line 328
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v6

    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols()Ljava/util/List;

    move-result-object v7

    .line 327
    invoke-virtual {v5, v3, v6, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    .line 332
    :cond_0
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->startHandshake()V

    .line 334
    invoke-virtual {v3}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v5

    .line 335
    .local v5, "sslSocketSession":Ljavax/net/ssl/SSLSession;
    invoke-static {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->get(Ljavax/net/ssl/SSLSession;)Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    move-result-object v6

    .line 338
    .local v6, "unverifiedHandshake":Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v7

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v5}, Ljavax/net/ssl/HostnameVerifier;->verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 339
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v7

    .line 340
    .local v7, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v9, "Hostname "

    if-nez v8, :cond_1

    .line 341
    const/4 v8, 0x0

    :try_start_1
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/security/cert/X509Certificate;

    .line 342
    .local v8, "cert":Ljava/security/cert/X509Certificate;
    new-instance v10, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not verified:\n    certificate: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;->pin(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    DN: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v8}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v9

    invoke-interface {v9}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\n    subjectAltNames: "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    invoke-static {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;->allSubjectAltNames(Ljava/security/cert/X509Certificate;)Ljava/util/List;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    throw v10

    .line 348
    .end local v8    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    :cond_1
    new-instance v8, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v9

    invoke-virtual {v9}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " not verified (no certificates)"

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    throw v8

    .line 354
    .end local v7    # "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    :cond_2
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->certificatePinner()Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    move-result-object v7

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    .line 355
    invoke-virtual {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v9

    .line 354
    invoke-virtual {v7, v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V

    .line 358
    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->supportsTlsExtensions()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 359
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v7

    invoke-virtual {v7, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    .line 361
    .local v7, "maybeProtocol":Ljava/lang/String;
    :goto_0
    iput-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 362
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->source(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v8

    invoke-static {v8}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    move-result-object v8

    iput-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 363
    iget-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v8}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->sink(Ljava/net/Socket;)Lccsancom/mbridge/msdk/thrid/okio/Sink;

    move-result-object v8

    invoke-static {v8}, Lccsancom/mbridge/msdk/thrid/okio/Okio;->buffer(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    move-result-object v8

    iput-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 364
    iput-object v6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 365
    if-eqz v7, :cond_4

    .line 366
    invoke-static {v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->get(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    move-result-object v8

    goto :goto_1

    :cond_4
    sget-object v8, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    :goto_1
    iput-object v8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;
    :try_end_1
    .catch Ljava/lang/AssertionError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 368
    const/4 v2, 0x1

    .line 373
    .end local v4    # "connectionSpec":Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    .end local v5    # "sslSocketSession":Ljavax/net/ssl/SSLSession;
    .end local v6    # "unverifiedHandshake":Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    .end local v7    # "maybeProtocol":Ljava/lang/String;
    if-eqz v3, :cond_5

    .line 374
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 376
    :cond_5
    if-nez v2, :cond_6

    .line 377
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 380
    :cond_6
    return-void

    .line 373
    :catchall_0
    move-exception v4

    goto :goto_2

    .line 369
    :catch_0
    move-exception v4

    .line 370
    .local v4, "e":Ljava/lang/AssertionError;
    :try_start_2
    invoke-static {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->isAndroidGetsocknameError(Ljava/lang/AssertionError;)Z

    move-result v5

    if-eqz v5, :cond_7

    new-instance v5, Ljava/io/IOException;

    invoke-direct {v5, v4}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    throw v5

    .line 371
    .restart local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    :cond_7
    nop

    .end local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .end local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v2    # "success":Z
    .end local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .end local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 373
    .end local v4    # "e":Ljava/lang/AssertionError;
    .restart local v0    # "address":Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .restart local v1    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .restart local v2    # "success":Z
    .restart local v3    # "sslSocket":Ljavax/net/ssl/SSLSocket;
    .restart local p1    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    :goto_2
    if-eqz v3, :cond_8

    .line 374
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v5

    invoke-virtual {v5, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->afterHandshake(Ljavax/net/ssl/SSLSocket;)V

    .line 376
    :cond_8
    if-nez v2, :cond_9

    .line 377
    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 379
    :cond_9
    throw v4
.end method

.method private connectTunnel(IIILccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V
    .locals 6
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p5, "eventListener"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->createTunnelRequest()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    .line 227
    .local v0, "tunnelRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    .line 228
    .local v1, "url":Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 229
    invoke-direct {p0, p1, p2, p4, p5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->connectSocket(IILccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V

    .line 230
    invoke-direct {p0, p2, p3, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->createTunnel(IILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    .line 232
    if-nez v0, :cond_0

    goto :goto_1

    .line 236
    :cond_0
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 237
    const/4 v3, 0x0

    iput-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 238
    iput-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 239
    iput-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 240
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v4

    iget-object v5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v5

    invoke-virtual {p5, p4, v4, v5, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->connectEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)V

    .line 228
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 242
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void
.end method

.method private createTunnel(IILccsancom/mbridge/msdk/thrid/okhttp/Request;Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 9
    .param p1, "readTimeout"    # I
    .param p2, "writeTimeout"    # I
    .param p3, "tunnelRequest"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p4, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CONNECT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    invoke-static {p4, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->hostHeader(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, "requestLine":Ljava/lang/String;
    :goto_0
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V

    .line 392
    .local v1, "tunnelConnection":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v2

    int-to-long v5, p1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 393
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v2}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v2

    int-to-long v5, p2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v3}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 394
    invoke-virtual {p3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->writeRequest(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->finishRequest()V

    .line 396
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->readResponseHeaders(Z)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    .line 397
    invoke-virtual {v2, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v2

    .line 398
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v2

    .line 401
    .local v2, "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpHeaders;->contentLength(Lccsancom/mbridge/msdk/thrid/okhttp/Response;)J

    move-result-wide v5

    .line 402
    .local v5, "contentLength":J
    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_0

    .line 403
    const-wide/16 v5, 0x0

    .line 405
    :cond_0
    invoke-virtual {v1, v5, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;->newFixedLengthSource(J)Lccsancom/mbridge/msdk/thrid/okio/Source;

    move-result-object v3

    .line 406
    .local v3, "body":Lccsancom/mbridge/msdk/thrid/okio/Source;
    const v7, 0x7fffffff

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v3, v7, v8}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->skipAll(Lccsancom/mbridge/msdk/thrid/okio/Source;ILjava/util/concurrent/TimeUnit;)Z

    .line 407
    invoke-interface {v3}, Lccsancom/mbridge/msdk/thrid/okio/Source;->close()V

    .line 409
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 430
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected response code for CONNECT: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 421
    :sswitch_0
    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxyAuthenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    move-result-object v4

    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-interface {v4, v7, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;->authenticate(Lccsancom/mbridge/msdk/thrid/okhttp/Route;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object p3

    .line 422
    if-eqz p3, :cond_2

    .line 424
    const-string v4, "Connection"

    invoke-virtual {v2, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "close"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 425
    return-object p3

    .line 433
    .end local v1    # "tunnelConnection":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;
    .end local v2    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .end local v3    # "body":Lccsancom/mbridge/msdk/thrid/okio/Source;
    .end local v5    # "contentLength":J
    :cond_1
    goto/16 :goto_0

    .line 422
    .restart local v1    # "tunnelConnection":Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;
    .restart local v2    # "response":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    .restart local v3    # "body":Lccsancom/mbridge/msdk/thrid/okio/Source;
    .restart local v5    # "contentLength":J
    :cond_2
    new-instance v4, Ljava/io/IOException;

    const-string v7, "Failed to authenticate with proxy"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 415
    :sswitch_1
    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v7}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v7}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->buffer()Lccsancom/mbridge/msdk/thrid/okio/Buffer;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/mbridge/msdk/thrid/okio/Buffer;->exhausted()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 418
    return-object v4

    .line 416
    :cond_3
    new-instance v4, Ljava/io/IOException;

    const-string v7, "TLS tunnel buffered too many bytes!"

    invoke-direct {v4, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v4

    :goto_2
    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x197 -> :sswitch_0
    .end sparse-switch
.end method

.method private createTunnelRequest()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 446
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;-><init>()V

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 447
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 448
    const-string v1, "CONNECT"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 449
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->hostHeader(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Host"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 450
    const-string v1, "Proxy-Connection"

    const-string v2, "Keep-Alive"

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 451
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Version;->userAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    .line 452
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v0

    .line 454
    .local v0, "proxyConnectRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;-><init>()V

    .line 455
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->request(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 456
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->protocol(Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    .line 457
    const/16 v2, 0x197

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->code(I)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    .line 458
    const-string v2, "Preemptive Authenticate"

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->message(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->EMPTY_RESPONSE:Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    .line 459
    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->body(Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    .line 460
    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->sentRequestAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    .line 461
    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->receivedResponseAtMillis(J)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    .line 462
    const-string v2, "Proxy-Authenticate"

    const-string v3, "OkHttp-Preemptive"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;

    move-result-object v1

    .line 463
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object v1

    .line 465
    .local v1, "fakeAuthChallengeResponse":Lccsancom/mbridge/msdk/thrid/okhttp/Response;
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxyAuthenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 466
    invoke-interface {v2, v3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;->authenticate(Lccsancom/mbridge/msdk/thrid/okhttp/Route;Lccsancom/mbridge/msdk/thrid/okhttp/Response;)Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object v2

    .line 468
    .local v2, "authenticatedRequest":Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    if-eqz v2, :cond_0

    move-object v3, v2

    goto :goto_0

    :cond_0
    move-object v3, v0

    :goto_0
    return-object v3
.end method

.method private establishProtocol(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;ILccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V
    .locals 2
    .param p1, "connectionSpecSelector"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    .param p2, "pingIntervalMillis"    # I
    .param p3, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p4, "eventListener"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    if-nez v0, :cond_1

    .line 283
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 285
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 286
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->startHttp2(I)V

    .line 287
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 291
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 292
    return-void

    .line 295
    :cond_1
    invoke-virtual {p4, p3}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->secureConnectStart(Lccsancom/mbridge/msdk/thrid/okhttp/Call;)V

    .line 296
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->connectTls(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;)V

    .line 297
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-virtual {p4, p3, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->secureConnectEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;)V

    .line 299
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_2:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    if-ne v0, v1, :cond_2

    .line 300
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->startHttp2(I)V

    .line 302
    :cond_2
    return-void
.end method

.method private startHttp2(I)V
    .locals 5
    .param p1, "pingIntervalMillis"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 305
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 306
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;-><init>(Z)V

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 307
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->socket(Ljava/net/Socket;Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->listener(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Listener;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->pingIntervalMillis(I)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;

    move-result-object v0

    .line 310
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    .line 311
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->start()V

    .line 312
    return-void
.end method

.method public static testConnection(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Route;Ljava/net/Socket;J)Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    .locals 1
    .param p0, "connectionPool"    # Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;
    .param p1, "route"    # Lccsancom/mbridge/msdk/thrid/okhttp/Route;
    .param p2, "socket"    # Ljava/net/Socket;
    .param p3, "idleAtNanos"    # J

    .line 136
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)V

    .line 137
    .local v0, "result":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;
    iput-object p2, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 138
    iput-wide p3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->idleAtNanos:J

    .line 139
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 561
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 562
    return-void
.end method

.method public connect(IIIIZLccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V
    .locals 16
    .param p1, "connectTimeout"    # I
    .param p2, "readTimeout"    # I
    .param p3, "writeTimeout"    # I
    .param p4, "pingIntervalMillis"    # I
    .param p5, "connectionRetryEnabled"    # Z
    .param p6, "call"    # Lccsancom/mbridge/msdk/thrid/okhttp/Call;
    .param p7, "eventListener"    # Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;

    .line 145
    move-object/from16 v7, p0

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    if-nez v0, :cond_b

    .line 147
    const/4 v0, 0x0

    .line 148
    .local v0, "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->connectionSpecs()Ljava/util/List;

    move-result-object v10

    .line 149
    .local v10, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;>;"
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;

    invoke-direct {v1, v10}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;-><init>(Ljava/util/List;)V

    move-object v11, v1

    .line 151
    .local v11, "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    if-nez v1, :cond_2

    .line 152
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->CLEARTEXT:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    invoke-interface {v10, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    .line 157
    .local v1, "host":Ljava/lang/String;
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->get()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    .end local v1    # "host":Ljava/lang/String;
    goto :goto_0

    .line 158
    .restart local v1    # "host":Ljava/lang/String;
    :cond_0
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;

    new-instance v3, Ljava/net/UnknownServiceException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEARTEXT communication to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not permitted by network security policy"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v2

    .line 153
    .end local v1    # "host":Ljava/lang/String;
    :cond_1
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "CLEARTEXT communication not enabled for client"

    invoke-direct {v2, v3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 162
    :cond_2
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->H2_PRIOR_KNOWLEDGE:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 170
    :goto_0
    move-object v12, v0

    .end local v0    # "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .local v12, "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    :goto_1
    :try_start_0
    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->connectTunnel(IIILccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V

    .line 172
    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    if-nez v0, :cond_3

    .line 174
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p4

    goto :goto_3

    .line 172
    :cond_3
    move/from16 v13, p1

    move/from16 v14, p2

    goto :goto_2

    .line 177
    :cond_4
    move/from16 v13, p1

    move/from16 v14, p2

    :try_start_1
    invoke-direct {v7, v13, v14, v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->connectSocket(IILccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 179
    :goto_2
    move/from16 v15, p4

    :try_start_2
    invoke-direct {v7, v11, v15, v8, v9}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->establishProtocol(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;ILccsancom/mbridge/msdk/thrid/okhttp/Call;Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)V

    .line 180
    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    iget-object v2, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-virtual {v9, v8, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->connectEnd(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 181
    nop

    .line 207
    :goto_3
    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->requiresTunnel()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    if-eqz v0, :cond_5

    goto :goto_4

    .line 208
    :cond_5
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "Too many tunnel connections attempted: 21"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    .line 210
    .local v0, "exception":Ljava/net/ProtocolException;
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 213
    .end local v0    # "exception":Ljava/net/ProtocolException;
    :cond_6
    :goto_4
    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    if-eqz v0, :cond_7

    .line 214
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    monitor-enter v1

    .line 215
    :try_start_3
    iget-object v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v0

    iput v0, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->allocationLimit:I

    .line 216
    monitor-exit v1

    goto :goto_5

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 218
    :cond_7
    :goto_5
    return-void

    .line 182
    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move/from16 v13, p1

    move/from16 v14, p2

    :goto_6
    move/from16 v15, p4

    .line 183
    .local v0, "e":Ljava/io/IOException;
    :goto_7
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 184
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->closeQuietly(Ljava/net/Socket;)V

    .line 185
    const/4 v1, 0x0

    iput-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    .line 186
    iput-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->rawSocket:Ljava/net/Socket;

    .line 187
    iput-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    .line 188
    iput-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    .line 189
    iput-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 190
    iput-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    .line 191
    iput-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    .line 193
    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    iget-object v1, v7, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v1, p7

    move-object/from16 v2, p6

    move-object v6, v0

    invoke-virtual/range {v1 .. v6}, Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;->connectFailed(Lccsancom/mbridge/msdk/thrid/okhttp/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;Ljava/io/IOException;)V

    .line 195
    if-nez v12, :cond_8

    .line 196
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;

    invoke-direct {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    move-object v12, v1

    .end local v12    # "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .local v1, "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    goto :goto_8

    .line 198
    .end local v1    # "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .restart local v12    # "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    :cond_8
    invoke-virtual {v12, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;->addConnectException(Ljava/io/IOException;)V

    .line 201
    :goto_8
    if-eqz p5, :cond_9

    invoke-virtual {v11, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->connectionFailed(Ljava/io/IOException;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 204
    .end local v0    # "e":Ljava/io/IOException;
    goto/16 :goto_1

    .line 202
    .restart local v0    # "e":Ljava/io/IOException;
    :cond_9
    throw v12

    .line 163
    .end local v12    # "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .local v0, "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    :cond_a
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p4

    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;

    new-instance v2, Ljava/net/UnknownServiceException;

    const-string v3, "H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"

    invoke-direct {v2, v3}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;-><init>(Ljava/io/IOException;)V

    throw v1

    .line 145
    .end local v0    # "routeException":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RouteException;
    .end local v10    # "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;>;"
    .end local v11    # "connectionSpecSelector":Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
    :cond_b
    move/from16 v13, p1

    move/from16 v14, p2

    move/from16 v15, p4

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "already connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9
.end method

.method public handshake()Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    .locals 1

    .line 623
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    return-object v0
.end method

.method public isEligible(Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/Route;)Z
    .locals 5
    .param p1, "address"    # Lccsancom/mbridge/msdk/thrid/okhttp/Address;
    .param p2, "route"    # Lccsancom/mbridge/msdk/thrid/okhttp/Route;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 479
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->allocations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->allocationLimit:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_a

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->noNewStreams:Z

    if-eqz v0, :cond_0

    goto/16 :goto_0

    .line 482
    :cond_0
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->equalsNonHost(Lccsancom/mbridge/msdk/thrid/okhttp/Address;Lccsancom/mbridge/msdk/thrid/okhttp/Address;)Z

    move-result v0

    if-nez v0, :cond_1

    return v2

    .line 485
    :cond_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route()Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 486
    return v1

    .line 495
    :cond_2
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    if-nez v0, :cond_3

    return v2

    .line 500
    :cond_3
    if-nez p2, :cond_4

    return v2

    .line 501
    :cond_4
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_5

    return v2

    .line 502
    :cond_5
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Proxy;->type()Ljava/net/Proxy$Type;

    move-result-object v0

    sget-object v3, Ljava/net/Proxy$Type;->DIRECT:Ljava/net/Proxy$Type;

    if-eq v0, v3, :cond_6

    return v2

    .line 503
    :cond_6
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    return v2

    .line 506
    :cond_7
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    sget-object v3, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;

    if-eq v0, v3, :cond_8

    return v2

    .line 507
    :cond_8
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->supportsUrl(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    .line 511
    :cond_9
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->certificatePinner()Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake()Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    move-result-object v4

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;->check(Ljava/lang/String;Ljava/util/List;)V
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 514
    nop

    .line 516
    return v1

    .line 512
    :catch_0
    move-exception v0

    .line 513
    .local v0, "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    return v2

    .line 479
    .end local v0    # "e":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :cond_a
    :goto_0
    return v2
.end method

.method public isHealthy(Z)Z
    .locals 5
    .param p1, "doExtensiveChecks"    # Z

    .line 573
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isInputShutdown()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v0}, Ljava/net/Socket;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 577
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    if-eqz v0, :cond_1

    .line 578
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->isHealthy(J)Z

    move-result v0

    return v0

    .line 581
    :cond_1
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 583
    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->getSoTimeout()I

    move-result v2
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 585
    .local v2, "readTimeout":I
    :try_start_1
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v0}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 586
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v3}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->exhausted()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_2

    .line 587
    nop

    .line 591
    :try_start_2
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 587
    return v1

    .line 589
    :cond_2
    nop

    .line 591
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v3, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 589
    return v0

    .line 591
    :catchall_0
    move-exception v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-virtual {v4, v2}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 592
    nop

    .end local p1    # "doExtensiveChecks":Z
    throw v3
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 595
    .end local v2    # "readTimeout":I
    .restart local p1    # "doExtensiveChecks":Z
    :catch_0
    move-exception v0

    .line 596
    .local v0, "e":Ljava/io/IOException;
    return v1

    .line 593
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 600
    :cond_3
    return v0

    .line 574
    :cond_4
    :goto_0
    return v1
.end method

.method public isMultiplexed()Z
    .locals 1

    .line 631
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newCodec(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpCodec;
    .locals 4
    .param p1, "client"    # Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .param p2, "chain"    # Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;
    .param p3, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/SocketException;
        }
    .end annotation

    .line 535
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    if-eqz v0, :cond_0

    .line 536
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->http2Connection:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    invoke-direct {v0, p1, p2, p3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Codec;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;)V

    return-object v0

    .line 538
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    invoke-interface {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/net/Socket;->setSoTimeout(I)V

    .line 539
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->readTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 540
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-interface {v0}, Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;->timeout()Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    move-result-object v0

    invoke-interface {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Interceptor$Chain;->writeTimeoutMillis()I

    move-result v1

    int-to-long v1, v1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okio/Timeout;

    .line 541
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    invoke-direct {v0, p1, p3, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http1/Http1Codec;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;)V

    return-object v0
.end method

.method public newWebSocketStreams(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)Lccsancom/mbridge/msdk/thrid/okhttp/internal/ws/RealWebSocket$Streams;
    .locals 7
    .param p1, "streamAllocation"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;

    .line 546
    new-instance v6, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection$1;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->source:Lccsancom/mbridge/msdk/thrid/okio/BufferedSource;

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->sink:Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;

    const/4 v2, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection$1;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;ZLccsancom/mbridge/msdk/thrid/okio/BufferedSource;Lccsancom/mbridge/msdk/thrid/okio/BufferedSink;Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/StreamAllocation;)V

    return-object v6
.end method

.method public onSettings(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;)V
    .locals 2
    .param p1, "connection"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;

    .line 616
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->connectionPool:Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    monitor-enter v0

    .line 617
    :try_start_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Connection;->maxConcurrentStreams()I

    move-result v1

    iput v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->allocationLimit:I

    .line 618
    monitor-exit v0

    .line 619
    return-void

    .line 618
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStream(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;)V
    .locals 1
    .param p1, "stream"    # Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;->REFUSED_STREAM:Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/Http2Stream;->close(Lccsancom/mbridge/msdk/thrid/okhttp/internal/http2/ErrorCode;)V

    .line 609
    return-void
.end method

.method public protocol()Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;
    .locals 1

    .line 636
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    return-object v0
.end method

.method public route()Lccsancom/mbridge/msdk/thrid/okhttp/Route;
    .locals 1

    .line 556
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    return-object v0
.end method

.method public socket()Ljava/net/Socket;
    .locals 1

    .line 566
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->socket:Ljava/net/Socket;

    return-object v0
.end method

.method public supportsUrl(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Z
    .locals 5
    .param p1, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 520
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 521
    return v2

    .line 524
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 526
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    if-eqz v0, :cond_1

    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;

    .line 527
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-virtual {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 526
    invoke-virtual {v0, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/tls/OkHostnameVerifier;->verify(Ljava/lang/String;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    .line 530
    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 641
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Connection{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 642
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->address()Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 644
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->proxy()Ljava/net/Proxy;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " hostAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->route:Lccsancom/mbridge/msdk/thrid/okhttp/Route;

    .line 646
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Route;->socketAddress()Ljava/net/InetSocketAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cipherSuite="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->handshake:Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    if-eqz v1, :cond_0

    .line 648
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->cipherSuite()Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, "none"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " protocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/RealConnection;->protocol:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 641
    return-object v0
.end method
