.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;
.super Ljava/lang/Object;
.source "ConnectionSpecSelector.java"


# instance fields
.field private final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field private isFallback:Z

.field private isFallbackPossible:Z

.field private nextModeIndex:I


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;)V"
        }
    .end annotation

    .line 47
    .local p1, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 49
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    .line 50
    return-void
.end method

.method private isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z
    .locals 2
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;

    .line 140
    iget v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 141
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const/4 v1, 0x1

    return v1

    .line 140
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public configureSecureSocket(Ljavax/net/ssl/SSLSocket;)Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    .locals 5
    .param p1, "sslSocket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    .line 60
    .local v0, "tlsConfiguration":Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    iget v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .local v1, "i":I
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 61
    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;

    .line 62
    .local v3, "connectionSpec":Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    invoke-virtual {v3, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;->isCompatible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    move-object v0, v3

    .line 64
    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->nextModeIndex:I

    .line 65
    goto :goto_1

    .line 60
    .end local v3    # "connectionSpec":Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    .line 79
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->isFallbackPossible(Ljavax/net/ssl/SSLSocket;)Z

    move-result v1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    .line 81
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->instance:Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v1, v0, p1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Internal;->apply(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;Ljavax/net/ssl/SSLSocket;Z)V

    .line 83
    return-object v0

    .line 73
    :cond_2
    new-instance v1, Ljava/net/UnknownServiceException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find acceptable protocols. isFallback="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->isFallback:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", modes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->connectionSpecs:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", supported protocols="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getEnabledProtocols()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method

.method public connectionFailed(Ljava/io/IOException;)Z
    .locals 3
    .param p1, "e"    # Ljava/io/IOException;

    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->isFallback:Z

    .line 97
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/connection/ConnectionSpecSelector;->isFallbackPossible:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 98
    return v2

    .line 102
    :cond_0
    instance-of v1, p1, Ljava/net/ProtocolException;

    if-eqz v1, :cond_1

    .line 103
    return v2

    .line 109
    :cond_1
    instance-of v1, p1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_2

    .line 110
    return v2

    .line 115
    :cond_2
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v1, :cond_3

    .line 118
    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/security/cert/CertificateException;

    if-eqz v1, :cond_3

    .line 119
    return v2

    .line 122
    :cond_3
    instance-of v1, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v1, :cond_4

    .line 124
    return v2

    .line 129
    :cond_4
    instance-of v1, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljavax/net/ssl/SSLProtocolException;

    if-nez v1, :cond_6

    instance-of v1, p1, Ljavax/net/ssl/SSLException;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :cond_6
    :goto_0
    return v0
.end method
