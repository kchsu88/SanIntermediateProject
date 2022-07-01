.class public final Lccsanokhttp3/JavaNetCookieJar;
.super Ljava/lang/Object;
.source "JavaNetCookieJar.java"

# interfaces
.implements Lccsanokhttp3/CookieJar;


# instance fields
.field private final cookieHandler:Ljava/net/CookieHandler;


# direct methods
.method public constructor <init>(Ljava/net/CookieHandler;)V
    .locals 0
    .param p1, "cookieHandler"    # Ljava/net/CookieHandler;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lccsanokhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    .line 37
    return-void
.end method

.method private decodeHeaderAsJavaNetCookies(Lccsanokhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;
    .locals 9
    .param p1, "url"    # Lccsanokhttp3/HttpUrl;
    .param p2, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/HttpUrl;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lccsanokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 88
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Cookie;>;"
    const/4 v1, 0x0

    .local v1, "pos":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "limit":I
    :goto_0
    if-ge v1, v2, :cond_3

    .line 89
    const-string v3, ";,"

    invoke-static {p2, v1, v2, v3}, Lccsanokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IILjava/lang/String;)I

    move-result v3

    .line 90
    .local v3, "pairEnd":I
    const/16 v4, 0x3d

    invoke-static {p2, v1, v3, v4}, Lccsanokhttp3/internal/Util;->delimiterOffset(Ljava/lang/String;IIC)I

    move-result v4

    .line 91
    .local v4, "equalsSign":I
    invoke-static {p2, v1, v4}, Lccsanokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v5

    .line 92
    .local v5, "name":Ljava/lang/String;
    const-string v6, "$"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    .line 95
    :cond_0
    if-ge v4, v3, :cond_1

    .line 96
    add-int/lit8 v6, v4, 0x1

    invoke-static {p2, v6, v3}, Lccsanokhttp3/internal/Util;->trimSubstring(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 97
    :cond_1
    const-string v6, ""

    :goto_1
    nop

    .line 100
    .local v6, "value":Ljava/lang/String;
    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 101
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 104
    :cond_2
    new-instance v7, Lccsanokhttp3/Cookie$Builder;

    invoke-direct {v7}, Lccsanokhttp3/Cookie$Builder;-><init>()V

    .line 105
    invoke-virtual {v7, v5}, Lccsanokhttp3/Cookie$Builder;->name(Ljava/lang/String;)Lccsanokhttp3/Cookie$Builder;

    move-result-object v7

    .line 106
    invoke-virtual {v7, v6}, Lccsanokhttp3/Cookie$Builder;->value(Ljava/lang/String;)Lccsanokhttp3/Cookie$Builder;

    move-result-object v7

    .line 107
    invoke-virtual {p1}, Lccsanokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lccsanokhttp3/Cookie$Builder;->domain(Ljava/lang/String;)Lccsanokhttp3/Cookie$Builder;

    move-result-object v7

    .line 108
    invoke-virtual {v7}, Lccsanokhttp3/Cookie$Builder;->build()Lccsanokhttp3/Cookie;

    move-result-object v7

    .line 104
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .end local v4    # "equalsSign":I
    .end local v5    # "name":Ljava/lang/String;
    .end local v6    # "value":Ljava/lang/String;
    :goto_2
    add-int/lit8 v1, v3, 0x1

    goto :goto_0

    .line 110
    .end local v1    # "pos":I
    .end local v2    # "limit":I
    .end local v3    # "pairEnd":I
    :cond_3
    return-object v0
.end method


# virtual methods
.method public loadForRequest(Lccsanokhttp3/HttpUrl;)Ljava/util/List;
    .locals 9
    .param p1, "url"    # Lccsanokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/HttpUrl;",
            ")",
            "Ljava/util/List<",
            "Lccsanokhttp3/Cookie;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    .line 59
    .local v0, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v1, p0, Lccsanokhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Lccsanokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/net/CookieHandler;->get(Ljava/net/URI;Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    .local v1, "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    nop

    .line 65
    const/4 v2, 0x0

    .line 66
    .local v2, "cookies":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Cookie;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 67
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 68
    .local v5, "key":Ljava/lang/String;
    const-string v6, "Cookie"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Cookie2"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 69
    :cond_0
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 71
    .local v7, "header":Ljava/lang/String;
    if-nez v2, :cond_1

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v8

    .line 72
    :cond_1
    invoke-direct {p0, p1, v7}, Lccsanokhttp3/JavaNetCookieJar;->decodeHeaderAsJavaNetCookies(Lccsanokhttp3/HttpUrl;Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 73
    .end local v7    # "header":Ljava/lang/String;
    goto :goto_1

    .line 75
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v5    # "key":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 77
    :cond_3
    if-eqz v2, :cond_4

    .line 78
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    goto :goto_2

    .line 79
    :cond_4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 77
    :goto_2
    return-object v3

    .line 60
    .end local v1    # "cookieHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "cookies":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Cookie;>;"
    :catch_0
    move-exception v1

    .line 61
    .local v1, "e":Ljava/io/IOException;
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading cookies failed for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/..."

    invoke-virtual {p1, v5}, Lccsanokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Lccsanokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public saveFromResponse(Lccsanokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 7
    .param p1, "url"    # Lccsanokhttp3/HttpUrl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Lccsanokhttp3/Cookie;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p2, "cookies":Ljava/util/List;, "Ljava/util/List<Lccsanokhttp3/Cookie;>;"
    iget-object v0, p0, Lccsanokhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    if-eqz v0, :cond_1

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v0, "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanokhttp3/Cookie;

    .line 43
    .local v2, "cookie":Lccsanokhttp3/Cookie;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lccsanokhttp3/Cookie;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v2    # "cookie":Lccsanokhttp3/Cookie;
    goto :goto_0

    .line 45
    :cond_0
    const-string v1, "Set-Cookie"

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 47
    .local v1, "multimap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    :try_start_0
    iget-object v2, p0, Lccsanokhttp3/JavaNetCookieJar;->cookieHandler:Ljava/net/CookieHandler;

    invoke-virtual {p1}, Lccsanokhttp3/HttpUrl;->uri()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/net/CookieHandler;->put(Ljava/net/URI;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_1

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/io/IOException;
    invoke-static {}, Lccsanokhttp3/internal/platform/Platform;->get()Lccsanokhttp3/internal/platform/Platform;

    move-result-object v3

    const/4 v4, 0x5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Saving cookies failed for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/..."

    invoke-virtual {p1, v6}, Lccsanokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5, v2}, Lccsanokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    .end local v0    # "cookieStrings":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "multimap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-void
.end method
