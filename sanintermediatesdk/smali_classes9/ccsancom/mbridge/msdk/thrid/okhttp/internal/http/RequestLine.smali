.class public final Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RequestLine;
.super Ljava/lang/Object;
.source "RequestLine.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static get(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Ljava/net/Proxy$Type;)Ljava/lang/String;
    .locals 2
    .param p0, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .local v0, "result":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    invoke-static {p0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RequestLine;->includeAuthorityInRequestLine(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Ljava/net/Proxy$Type;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url()Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v1

    invoke-static {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/RequestLine;->requestPath(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    :goto_0
    const-string v1, " HTTP/1.1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static includeAuthorityInRequestLine(Lccsancom/mbridge/msdk/thrid/okhttp/Request;Ljava/net/Proxy$Type;)Z
    .locals 1
    .param p0, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .param p1, "proxyType"    # Ljava/net/Proxy$Type;

    .line 52
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->isHttps()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Ljava/net/Proxy$Type;->HTTP:Ljava/net/Proxy$Type;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static requestPath(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Ljava/lang/String;
    .locals 4
    .param p0, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 60
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->encodedPath()Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "path":Ljava/lang/String;
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->encodedQuery()Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "query":Ljava/lang/String;
    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v0

    :goto_0
    return-object v2
.end method
