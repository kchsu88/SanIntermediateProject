.class public final Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
.super Ljava/lang/Object;
.source "Handshake.java"


# instance fields
.field private final cipherSuite:Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

.field private final localCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final peerCertificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private final tlsVersion:Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;


# direct methods
.method private constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p1, "tlsVersion"    # Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;
    .param p2, "cipherSuite"    # Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 43
    .local p3, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p4, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->tlsVersion:Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    .line 45
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->cipherSuite:Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    .line 46
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    .line 47
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates:Ljava/util/List;

    .line 48
    return-void
.end method

.method public static get(Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;Ljava/util/List;Ljava/util/List;)Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    .locals 3
    .param p0, "tlsVersion"    # Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;
    .param p1, "cipherSuite"    # Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;"
        }
    .end annotation

    .line 83
    .local p2, "peerCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local p3, "localCertificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-eqz p0, :cond_1

    .line 84
    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-static {p2}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 86
    invoke-static {p3}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, p0, p1, v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    .line 85
    return-object v0

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "cipherSuite == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "tlsVersion == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static get(Ljavax/net/ssl/SSLSession;)Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    .locals 9
    .param p0, "session"    # Ljavax/net/ssl/SSLSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, "cipherSuiteString":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 53
    const-string v1, "SSL_NULL_WITH_NULL_NULL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 56
    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;->forJavaName(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    move-result-object v1

    .line 58
    .local v1, "cipherSuite":Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "tlsVersionString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 60
    const-string v3, "NONE"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 61
    invoke-static {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;->forJavaName(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    move-result-object v3

    .line 65
    .local v3, "tlsVersion":Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v4
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    goto :goto_0

    .line 66
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    :catch_0
    move-exception v4

    .line 67
    .local v4, "ignored":Ljavax/net/ssl/SSLPeerUnverifiedException;
    const/4 v5, 0x0

    move-object v4, v5

    .line 69
    .local v4, "peerCertificates":[Ljava/security/cert/Certificate;
    :goto_0
    if-eqz v4, :cond_0

    .line 70
    invoke-static {v4}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    goto :goto_1

    .line 71
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v5

    :goto_1
    nop

    .line 73
    .local v5, "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 74
    .local v6, "localCertificates":[Ljava/security/cert/Certificate;
    if-eqz v6, :cond_1

    .line 75
    invoke-static {v6}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    .line 76
    :cond_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v7

    :goto_2
    nop

    .line 78
    .local v7, "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    new-instance v8, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    invoke-direct {v8, v3, v1, v5, v7}, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;Ljava/util/List;Ljava/util/List;)V

    return-object v8

    .line 60
    .end local v3    # "tlsVersion":Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;
    .end local v4    # "peerCertificates":[Ljava/security/cert/Certificate;
    .end local v5    # "peerCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .end local v6    # "localCertificates":[Ljava/security/cert/Certificate;
    .end local v7    # "localCertificatesList":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "tlsVersion == NONE"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 59
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "tlsVersion == null"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 54
    .end local v1    # "cipherSuite":Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;
    .end local v2    # "tlsVersionString":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/io/IOException;

    const-string v2, "cipherSuite == SSL_NULL_WITH_NULL_NULL"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cipherSuite == null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public cipherSuite()Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;
    .locals 1

    .line 99
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->cipherSuite:Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 127
    instance-of v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 128
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;

    .line 129
    .local v0, "that":Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->tlsVersion:Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->tlsVersion:Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->cipherSuite:Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->cipherSuite:Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    .line 130
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    .line 131
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates:Ljava/util/List;

    iget-object v3, v0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates:Ljava/util/List;

    .line 132
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 129
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 136
    const/16 v0, 0x11

    .line 137
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->tlsVersion:Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 138
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->cipherSuite:Lccsancom/mbridge/msdk/thrid/okhttp/CipherSuite;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 139
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 140
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 141
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public localCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates:Ljava/util/List;

    return-object v0
.end method

.method public localPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 121
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->localCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 122
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0
.end method

.method public peerCertificates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    return-object v0
.end method

.method public peerPrincipal()Ljava/security/Principal;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 109
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->peerCertificates:Ljava/util/List;

    const/4 v1, 0x0

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;

    invoke-virtual {v0}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 109
    :goto_0
    return-object v0
.end method

.method public tlsVersion()Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;
    .locals 1

    .line 94
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Handshake;->tlsVersion:Lccsancom/mbridge/msdk/thrid/okhttp/TlsVersion;

    return-object v0
.end method
