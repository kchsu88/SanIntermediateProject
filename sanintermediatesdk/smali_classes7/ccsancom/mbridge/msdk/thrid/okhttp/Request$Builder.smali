.class public Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/thrid/okhttp/Request;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field body:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

.field method:Ljava/lang/String;

.field tags:Ljava/util/Map;
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

.field url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tags:Ljava/util/Map;

    .line 129
    const-string v0, "GET"

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 130
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 131
    return-void
.end method

.method constructor <init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)V
    .locals 2
    .param p1, "request"    # Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tags:Ljava/util/Map;

    .line 134
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 135
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->method:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 136
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->body:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->body:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 137
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/LinkedHashMap;

    iget-object v1, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->tags:Ljava/util/Map;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    :goto_0
    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tags:Ljava/util/Map;

    .line 140
    iget-object v0, p1, Lccsancom/mbridge/msdk/thrid/okhttp/Request;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 141
    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 196
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 197
    return-object p0
.end method

.method public build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;
    .locals 2

    .line 292
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    if-eqz v0, :cond_0

    .line 293
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request;-><init>(Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;)V

    return-object v0

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cacheControl(Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 3
    .param p1, "cacheControl"    # Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;

    .line 218
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/CacheControl;->toString()Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const-string v2, "Cache-Control"

    if-eqz v1, :cond_0

    invoke-virtual {p0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v1

    return-object v1

    .line 220
    :cond_0
    invoke-virtual {p0, v2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v1

    return-object v1
.end method

.method public delete()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1

    .line 240
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/internal/Util;->EMPTY_REQUEST:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->delete(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 236
    const-string v0, "DELETE"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public get()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 2

    .line 224
    const-string v0, "GET"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public head()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 2

    .line 228
    const-string v0, "HEAD"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public header(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 184
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 185
    return-object p0
.end method

.method public headers(Lccsancom/mbridge/msdk/thrid/okhttp/Headers;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "headers"    # Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    .line 208
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 209
    return-object p0
.end method

.method public method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 3
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 252
    if-eqz p1, :cond_5

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    .line 254
    const-string v0, "method "

    if-eqz p2, :cond_1

    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpMethod;->permitsRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 255
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must not have a request body."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_1
    :goto_0
    if-nez p2, :cond_3

    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/internal/http/HttpMethod;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 258
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " must have a request body."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_3
    :goto_1
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method:Ljava/lang/String;

    .line 261
    iput-object p2, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->body:Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 262
    return-object p0

    .line 253
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "method.length() == 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "method == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public patch(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 248
    const-string v0, "PATCH"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public post(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 232
    const-string v0, "POST"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public put(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "body"    # Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    .line 244
    const-string v0, "PUT"

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public removeHeader(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 202
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->headers:Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;->removeAll(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Headers$Builder;

    .line 203
    return-object p0
.end method

.method public tag(Ljava/lang/Class;Ljava/lang/Object;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "-TT;>;TT;)",
            "Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;"
        }
    .end annotation

    .line 279
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<-TT;>;"
    .local p2, "tag":Ljava/lang/Object;, "TT;"
    if-eqz p1, :cond_2

    .line 281
    if-nez p2, :cond_0

    .line 282
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 284
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tags:Ljava/util/Map;

    .line 285
    :cond_1
    iget-object v0, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tags:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    :goto_0
    return-object p0

    .line 279
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tag(Ljava/lang/Object;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 1
    .param p1, "tag"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 267
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0
.end method

.method public url(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 2
    .param p1, "url"    # Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 144
    if-eqz p1, :cond_0

    .line 145
    iput-object p1, p0, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url:Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    .line 146
    return-object p0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 156
    if-eqz p1, :cond_2

    .line 159
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x3

    const-string v3, "ws:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 161
    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    const-string v3, "wss:"

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 165
    :cond_1
    :goto_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->get(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0

    .line 156
    :cond_2
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public url(Ljava/net/URL;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;

    .line 175
    if-eqz p1, :cond_0

    .line 176
    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;->get(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url(Lccsancom/mbridge/msdk/thrid/okhttp/HttpUrl;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object v0

    return-object v0

    .line 175
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "url == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
