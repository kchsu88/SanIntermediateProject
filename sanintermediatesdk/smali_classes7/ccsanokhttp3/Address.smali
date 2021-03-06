.class public final Lccsanokhttp3/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lccsanokhttp3/CertificatePinner;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lccsanokhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

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

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final url:Lccsanokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILccsanokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lccsanokhttp3/CertificatePinner;Lccsanokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .locals 2
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lccsanokhttp3/Dns;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "certificatePinner"    # Lccsanokhttp3/CertificatePinner;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8, "proxyAuthenticator"    # Lccsanokhttp3/Authenticator;
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
            "Lccsanokhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lccsanokhttp3/CertificatePinner;",
            "Lccsanokhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List<",
            "Lccsanokhttp3/Protocol;",
            ">;",
            "Ljava/util/List<",
            "Lccsanokhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .line 54
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Lccsanokhttp3/HttpUrl$Builder;

    invoke-direct {v0}, Lccsanokhttp3/HttpUrl$Builder;-><init>()V

    .line 56
    if-eqz p5, :cond_0

    const-string v1, "https"

    goto :goto_0

    :cond_0
    const-string v1, "http"

    :goto_0
    invoke-virtual {v0, v1}, Lccsanokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lccsanokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p1}, Lccsanokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lccsanokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0, p2}, Lccsanokhttp3/HttpUrl$Builder;->port(I)Lccsanokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl$Builder;->build()Lccsanokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/Address;->url:Lccsanokhttp3/HttpUrl;

    .line 61
    if-eqz p3, :cond_6

    .line 62
    iput-object p3, p0, Lccsanokhttp3/Address;->dns:Lccsanokhttp3/Dns;

    .line 64
    if-eqz p4, :cond_5

    .line 65
    iput-object p4, p0, Lccsanokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 67
    if-eqz p8, :cond_4

    .line 70
    iput-object p8, p0, Lccsanokhttp3/Address;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    .line 72
    if-eqz p10, :cond_3

    .line 73
    invoke-static {p10}, Lccsanokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/Address;->protocols:Ljava/util/List;

    .line 75
    if-eqz p11, :cond_2

    .line 76
    invoke-static {p11}, Lccsanokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 78
    if-eqz p12, :cond_1

    .line 79
    iput-object p12, p0, Lccsanokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 81
    iput-object p9, p0, Lccsanokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 82
    iput-object p5, p0, Lccsanokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 83
    iput-object p6, p0, Lccsanokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 84
    iput-object p7, p0, Lccsanokhttp3/Address;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    .line 85
    return-void

    .line 78
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 61
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public certificatePinner()Lccsanokhttp3/CertificatePinner;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 150
    iget-object v0, p0, Lccsanokhttp3/Address;->certificatePinner:Lccsanokhttp3/CertificatePinner;

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

    .line 119
    iget-object v0, p0, Lccsanokhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lccsanokhttp3/Dns;
    .locals 1

    .line 97
    iget-object v0, p0, Lccsanokhttp3/Address;->dns:Lccsanokhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 154
    instance-of v0, p1, Lccsanokhttp3/Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->url:Lccsanokhttp3/HttpUrl;

    move-object v1, p1

    check-cast v1, Lccsanokhttp3/Address;

    iget-object v1, v1, Lccsanokhttp3/Address;->url:Lccsanokhttp3/HttpUrl;

    .line 155
    invoke-virtual {v0, v1}, Lccsanokhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsanokhttp3/Address;

    .line 156
    invoke-virtual {p0, v0}, Lccsanokhttp3/Address;->equalsNonHost(Lccsanokhttp3/Address;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 154
    :goto_0
    return v0
.end method

.method equalsNonHost(Lccsanokhttp3/Address;)Z
    .locals 2
    .param p1, "that"    # Lccsanokhttp3/Address;

    .line 175
    iget-object v0, p0, Lccsanokhttp3/Address;->dns:Lccsanokhttp3/Dns;

    iget-object v1, p1, Lccsanokhttp3/Address;->dns:Lccsanokhttp3/Dns;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    iget-object v1, p1, Lccsanokhttp3/Address;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->protocols:Ljava/util/List;

    iget-object v1, p1, Lccsanokhttp3/Address;->protocols:Ljava/util/List;

    .line 177
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v1, p1, Lccsanokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v1, p1, Lccsanokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 179
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v1, p1, Lccsanokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 180
    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v1, p1, Lccsanokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 181
    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p1, Lccsanokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 182
    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsanokhttp3/Address;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    iget-object v1, p1, Lccsanokhttp3/Address;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    .line 183
    invoke-static {v0, v1}, Lccsanandroidx/core/graphics/ColorUtils$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lccsanokhttp3/Address;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl;->port()I

    move-result v0

    invoke-virtual {p1}, Lccsanokhttp3/Address;->url()Lccsanokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->port()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 175
    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 160
    const/16 v0, 0x11

    .line 161
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->url:Lccsanokhttp3/HttpUrl;

    invoke-virtual {v2}, Lccsanokhttp3/HttpUrl;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 162
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->dns:Lccsanokhttp3/Dns;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 163
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 164
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 165
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 166
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 167
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-static {v2}, Lccsanokhttp3/Address$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 168
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-static {v2}, Lccsanokhttp3/Address$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 169
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-static {v2}, Lccsanokhttp3/Address$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    .line 170
    .end local v0    # "result":I
    .restart local v1    # "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lccsanokhttp3/Address;->certificatePinner:Lccsanokhttp3/CertificatePinner;

    invoke-static {v2}, Lccsanokhttp3/Address$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    .line 171
    .end local v1    # "result":I
    .restart local v0    # "result":I
    return v0
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 145
    iget-object v0, p0, Lccsanokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
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

    .line 115
    iget-object v0, p0, Lccsanokhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 135
    iget-object v0, p0, Lccsanokhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lccsanokhttp3/Authenticator;
    .locals 1

    .line 107
    iget-object v0, p0, Lccsanokhttp3/Address;->proxyAuthenticator:Lccsanokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .locals 1

    .line 127
    iget-object v0, p0, Lccsanokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .locals 1

    .line 102
    iget-object v0, p0, Lccsanokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 140
    iget-object v0, p0, Lccsanokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    const-string v1, "Address{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokhttp3/Address;->url:Lccsanokhttp3/HttpUrl;

    .line 190
    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokhttp3/Address;->url:Lccsanokhttp3/HttpUrl;

    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->port()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 192
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lccsanokhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_0

    .line 193
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 195
    :cond_0
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 198
    :goto_0
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public url()Lccsanokhttp3/HttpUrl;
    .locals 1

    .line 92
    iget-object v0, p0, Lccsanokhttp3/Address;->url:Lccsanokhttp3/HttpUrl;

    return-object v0
.end method
