.class public final Lccsanokhttp3/OkUrlFactory;
.super Ljava/lang/Object;
.source "OkUrlFactory.java"

# interfaces
.implements Ljava/net/URLStreamHandlerFactory;
.implements Ljava/lang/Cloneable;


# instance fields
.field private client:Lccsanokhttp3/OkHttpClient;

.field private urlFilter:Lccsanokhttp3/internal/URLFilter;


# direct methods
.method public constructor <init>(Lccsanokhttp3/OkHttpClient;)V
    .locals 0
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lccsanokhttp3/OkUrlFactory;->client:Lccsanokhttp3/OkHttpClient;

    .line 39
    return-void
.end method


# virtual methods
.method public client()Lccsanokhttp3/OkHttpClient;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsanokhttp3/OkUrlFactory;->client:Lccsanokhttp3/OkHttpClient;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 33
    invoke-virtual {p0}, Lccsanokhttp3/OkUrlFactory;->clone()Lccsanokhttp3/OkUrlFactory;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lccsanokhttp3/OkUrlFactory;
    .locals 2

    .line 59
    new-instance v0, Lccsanokhttp3/OkUrlFactory;

    iget-object v1, p0, Lccsanokhttp3/OkUrlFactory;->client:Lccsanokhttp3/OkHttpClient;

    invoke-direct {v0, v1}, Lccsanokhttp3/OkUrlFactory;-><init>(Lccsanokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public createURLStreamHandler(Ljava/lang/String;)Ljava/net/URLStreamHandler;
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .line 88
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 90
    :cond_0
    new-instance v0, Lccsanokhttp3/OkUrlFactory$1;

    invoke-direct {v0, p0, p1}, Lccsanokhttp3/OkUrlFactory$1;-><init>(Lccsanokhttp3/OkUrlFactory;Ljava/lang/String;)V

    return-object v0
.end method

.method public open(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    .line 63
    iget-object v0, p0, Lccsanokhttp3/OkUrlFactory;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lccsanokhttp3/OkHttpClient;->proxy()Ljava/net/Proxy;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lccsanokhttp3/OkUrlFactory;->open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;

    move-result-object v0

    return-object v0
.end method

.method open(Ljava/net/URL;Ljava/net/Proxy;)Ljava/net/HttpURLConnection;
    .locals 5
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "proxy"    # Ljava/net/Proxy;

    .line 67
    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 68
    .local v0, "protocol":Ljava/lang/String;
    iget-object v1, p0, Lccsanokhttp3/OkUrlFactory;->client:Lccsanokhttp3/OkHttpClient;

    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient;->newBuilder()Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 69
    invoke-virtual {v1, p2}, Lccsanokhttp3/OkHttpClient$Builder;->proxy(Ljava/net/Proxy;)Lccsanokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1}, Lccsanokhttp3/OkHttpClient$Builder;->build()Lccsanokhttp3/OkHttpClient;

    move-result-object v1

    .line 72
    .local v1, "copy":Lccsanokhttp3/OkHttpClient;
    const-string v2, "http"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lccsanokhttp3/internal/huc/OkHttpURLConnection;

    iget-object v3, p0, Lccsanokhttp3/OkUrlFactory;->urlFilter:Lccsanokhttp3/internal/URLFilter;

    invoke-direct {v2, p1, v1, v3}, Lccsanokhttp3/internal/huc/OkHttpURLConnection;-><init>(Ljava/net/URL;Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/internal/URLFilter;)V

    return-object v2

    .line 73
    :cond_0
    const-string v2, "https"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lccsanokhttp3/internal/huc/OkHttpsURLConnection;

    iget-object v3, p0, Lccsanokhttp3/OkUrlFactory;->urlFilter:Lccsanokhttp3/internal/URLFilter;

    invoke-direct {v2, p1, v1, v3}, Lccsanokhttp3/internal/huc/OkHttpsURLConnection;-><init>(Ljava/net/URL;Lccsanokhttp3/OkHttpClient;Lccsanokhttp3/internal/URLFilter;)V

    return-object v2

    .line 74
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected protocol: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public setClient(Lccsanokhttp3/OkHttpClient;)Lccsanokhttp3/OkUrlFactory;
    .locals 0
    .param p1, "client"    # Lccsanokhttp3/OkHttpClient;

    .line 46
    iput-object p1, p0, Lccsanokhttp3/OkUrlFactory;->client:Lccsanokhttp3/OkHttpClient;

    .line 47
    return-object p0
.end method

.method setUrlFilter(Lccsanokhttp3/internal/URLFilter;)V
    .locals 0
    .param p1, "filter"    # Lccsanokhttp3/internal/URLFilter;

    .line 51
    iput-object p1, p0, Lccsanokhttp3/OkUrlFactory;->urlFilter:Lccsanokhttp3/internal/URLFilter;

    .line 52
    return-void
.end method
