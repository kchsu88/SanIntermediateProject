.class public final Lccsanokhttp3/Request;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanokhttp3/Request$Builder;
    }
.end annotation


# instance fields
.field final body:Lccsanokhttp3/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile cacheControl:Lccsanokhttp3/CacheControl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field final headers:Lccsanokhttp3/Headers;

.field final method:Ljava/lang/String;

.field final tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final url:Lccsanokhttp3/HttpUrl;


# direct methods
.method constructor <init>(Lccsanokhttp3/Request$Builder;)V
    .locals 1
    .param p1, "builder"    # Lccsanokhttp3/Request$Builder;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Lccsanokhttp3/Request$Builder;->url:Lccsanokhttp3/HttpUrl;

    iput-object v0, p0, Lccsanokhttp3/Request;->url:Lccsanokhttp3/HttpUrl;

    .line 42
    iget-object v0, p1, Lccsanokhttp3/Request$Builder;->method:Ljava/lang/String;

    iput-object v0, p0, Lccsanokhttp3/Request;->method:Ljava/lang/String;

    .line 43
    iget-object v0, p1, Lccsanokhttp3/Request$Builder;->headers:Lccsanokhttp3/Headers$Builder;

    invoke-virtual {v0}, Lccsanokhttp3/Headers$Builder;->build()Lccsanokhttp3/Headers;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/Request;->headers:Lccsanokhttp3/Headers;

    .line 44
    iget-object v0, p1, Lccsanokhttp3/Request$Builder;->body:Lccsanokhttp3/RequestBody;

    iput-object v0, p0, Lccsanokhttp3/Request;->body:Lccsanokhttp3/RequestBody;

    .line 45
    iget-object v0, p1, Lccsanokhttp3/Request$Builder;->tags:Ljava/util/Map;

    invoke-static {v0}, Lccsanokhttp3/internal/Util;->immutableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsanokhttp3/Request;->tags:Ljava/util/Map;

    .line 46
    return-void
.end method


# virtual methods
.method public body()Lccsanokhttp3/RequestBody;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 69
    iget-object v0, p0, Lccsanokhttp3/Request;->body:Lccsanokhttp3/RequestBody;

    return-object v0
.end method

.method public cacheControl()Lccsanokhttp3/CacheControl;
    .locals 2

    .line 101
    iget-object v0, p0, Lccsanokhttp3/Request;->cacheControl:Lccsanokhttp3/CacheControl;

    .line 102
    .local v0, "result":Lccsanokhttp3/CacheControl;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsanokhttp3/Request;->headers:Lccsanokhttp3/Headers;

    invoke-static {v1}, Lccsanokhttp3/CacheControl;->parse(Lccsanokhttp3/Headers;)Lccsanokhttp3/CacheControl;

    move-result-object v1

    iput-object v1, p0, Lccsanokhttp3/Request;->cacheControl:Lccsanokhttp3/CacheControl;

    :goto_0
    return-object v1
.end method

.method public header(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lccsanokhttp3/Request;->headers:Lccsanokhttp3/Headers;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public headers(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lccsanokhttp3/Request;->headers:Lccsanokhttp3/Headers;

    invoke-virtual {v0, p1}, Lccsanokhttp3/Headers;->values(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public headers()Lccsanokhttp3/Headers;
    .locals 1

    .line 57
    iget-object v0, p0, Lccsanokhttp3/Request;->headers:Lccsanokhttp3/Headers;

    return-object v0
.end method

.method public isHttps()Z
    .locals 1

    .line 106
    iget-object v0, p0, Lccsanokhttp3/Request;->url:Lccsanokhttp3/HttpUrl;

    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl;->isHttps()Z

    move-result v0

    return v0
.end method

.method public method()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lccsanokhttp3/Request;->method:Ljava/lang/String;

    return-object v0
.end method

.method public newBuilder()Lccsanokhttp3/Request$Builder;
    .locals 1

    .line 93
    new-instance v0, Lccsanokhttp3/Request$Builder;

    invoke-direct {v0, p0}, Lccsanokhttp3/Request$Builder;-><init>(Lccsanokhttp3/Request;)V

    return-object v0
.end method

.method public tag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 81
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lccsanokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public tag(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "+TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 89
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TT;>;"
    iget-object v0, p0, Lccsanokhttp3/Request;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Request{method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokhttp3/Request;->method:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokhttp3/Request;->url:Lccsanokhttp3/HttpUrl;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsanokhttp3/Request;->tags:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public url()Lccsanokhttp3/HttpUrl;
    .locals 1

    .line 49
    iget-object v0, p0, Lccsanokhttp3/Request;->url:Lccsanokhttp3/HttpUrl;

    return-object v0
.end method
