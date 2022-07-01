.class public final Lccsancom/mbridge/msdk/thrid/okhttp/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILccsancom/mbridge/msdk/thrid/okhttp/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lccsancom/mbridge/msdk/thrid/okhttp/Dns;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "certificatePinner"    # Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "proxyAuthenticator"    # Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;
    .param p9, "proxy"    # Ljava/net/Proxy;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 55
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    .line 57
    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;->host(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;->port(I)Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 62
    if-eqz p3, :cond_6

    .line 63
    iput-object p3, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    .line 65
    if-eqz p4, :cond_5

    .line 66
    iput-object p4, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 68
    if-eqz p8, :cond_4

    .line 71
    iput-object p8, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 73
    if-eqz p10, :cond_3

    .line 74
    invoke-static {p10}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols:Ljava/util/List;

    .line 76
    if-eqz p11, :cond_2

    .line 77
    invoke-static {p11}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 79
    if-eqz p12, :cond_1

    .line 80
    iput-object p12, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 82
    iput-object p9, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 83
    iput-object p5, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 84
    iput-object p6, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 85
    iput-object p7, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    .line 86
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public certificatePinner()Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 151
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lccsancom/mbridge/msdk/thrid/okhttp/Dns;
    .locals 1

    .line 98
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 155
    instance-of v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-object v1, p1

    check-cast v1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 156
    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    .line 157
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->equalsNonHost(Lccsancom/mbridge/msdk/thrid/okhttp/Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 155
    :goto_0
    return v0
.end method

.method equalsNonHost(Lccsancom/mbridge/msdk/thrid/okhttp/Address;)Z
    .locals 2
    .param p1, "that"    # Lccsancom/mbridge/msdk/thrid/okhttp/Address;

    .line 176
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols:Ljava/util/List;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->connectionSpecs:Ljava/util/List;

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 180
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxy:Ljava/net/Proxy;

    .line 181
    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 182
    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 183
    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    .line 184
    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 176
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 161
    const/16 v0, 0x11

    .line 162
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 163
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->dns:Lccsancom/mbridge/msdk/thrid/okhttp/Dns;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 164
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 165
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 166
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 167
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 168
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxy:Ljava/net/Proxy;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/Proxy;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v1, v2

    .line 169
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    .line 170
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v1, v2

    .line 171
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->certificatePinner:Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/CertificatePinner;->hashCode()I

    move-result v3

    :cond_3
    add-int/2addr v0, v3

    .line 172
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 146
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 136
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;
    .locals 1

    .line 108
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxyAuthenticator:Lccsancom/mbridge/msdk/thrid/okhttp/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 128
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 103
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 141
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 190
    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 191
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 193
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 194
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 196
    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 199
    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    .locals 1

    .line 93
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Address;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    return-object v0
.end method
