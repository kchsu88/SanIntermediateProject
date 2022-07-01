.class Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Android10Platform;
.super Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/AndroidPlatform;
.source "Android10Platform.java"


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 36
    .local p1, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/AndroidPlatform;-><init>(Ljava/lang/Class;Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/OptionalMethod;Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/OptionalMethod;Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/OptionalMethod;Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/OptionalMethod;)V

    .line 37
    return-void
.end method

.method public static buildIfSupported()Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;
    .locals 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 79
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->isAndroid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 80
    return-object v1

    .line 84
    :cond_0
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Android10Platform;->getSdkInt()I

    move-result v0

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_1

    .line 85
    const-string v0, "com.android.org.conscrypt.SSLParametersImpl"

    .line 86
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 88
    .local v0, "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Android10Platform;

    invoke-direct {v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Android10Platform;-><init>(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 91
    .end local v0    # "sslParametersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    .line 93
    :goto_0
    return-object v1
.end method

.method private enableSessionTickets(Ljavax/net/ssl/SSLSocket;)V
    .locals 1
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;

    .line 60
    invoke-static {p1}, Lccsanandroid/net/ssl/SSLSockets;->isSupportedSocket(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsanandroid/net/ssl/SSLSockets;->setUseSessionTickets(Ljavax/net/ssl/SSLSocket;Z)V

    .line 63
    :cond_0
    return-void
.end method


# virtual methods
.method public configureTlsExtensions(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .param p2, "hostname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    .local p3, "protocols":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;>;"
    :try_start_0
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Android10Platform;->enableSessionTickets(Ljavax/net/ssl/SSLSocket;)V

    .line 46
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 49
    .local v0, "sslParameters":Ljavax/net/ssl/SSLParameters;
    invoke-static {p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/platform/Platform;->alpnProtocolNames(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 50
    .local v1, "protocolsArray":[Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljavax/net/ssl/SSLParameters;->setApplicationProtocols([Ljava/lang/String;)V

    .line 52
    invoke-virtual {p1, v0}, Ljavax/net/ssl/SSLSocket;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "sslParameters":Ljavax/net/ssl/SSLParameters;
    .end local v1    # "protocolsArray":[Ljava/lang/String;
    nop

    .line 57
    return-void

    .line 53
    :catch_0
    move-exception v0

    .line 55
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Android internal error"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getSelectedProtocol(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 68
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getApplicationProtocol()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "alpnResult":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    return-object v0

    .line 71
    :cond_1
    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method
