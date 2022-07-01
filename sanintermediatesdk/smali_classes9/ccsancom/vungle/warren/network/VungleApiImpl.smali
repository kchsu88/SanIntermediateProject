.class public Lccsancom/vungle/warren/network/VungleApiImpl;
.super Ljava/lang/Object;
.source "VungleApiImpl.java"

# interfaces
.implements Lccsancom/vungle/warren/network/VungleApi;


# static fields
.field private static final CONFIG:Ljava/lang/String; = "config"

.field private static final emptyResponseConverter:Lccsancom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/vungle/warren/network/converters/Converter<",
            "Lccsanokhttp3/ResponseBody;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final jsonConverter:Lccsancom/vungle/warren/network/converters/Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/vungle/warren/network/converters/Converter<",
            "Lccsanokhttp3/ResponseBody;",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field baseUrl:Lccsanokhttp3/HttpUrl;

.field okHttpClient:Lccsanokhttp3/Call$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lccsancom/vungle/warren/network/converters/JsonConverter;

    invoke-direct {v0}, Lccsancom/vungle/warren/network/converters/JsonConverter;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/network/VungleApiImpl;->jsonConverter:Lccsancom/vungle/warren/network/converters/Converter;

    .line 23
    new-instance v0, Lccsancom/vungle/warren/network/converters/EmptyResponseConverter;

    invoke-direct {v0}, Lccsancom/vungle/warren/network/converters/EmptyResponseConverter;-><init>()V

    sput-object v0, Lccsancom/vungle/warren/network/VungleApiImpl;->emptyResponseConverter:Lccsancom/vungle/warren/network/converters/Converter;

    return-void
.end method

.method public constructor <init>(Lccsanokhttp3/HttpUrl;Lccsanokhttp3/Call$Factory;)V
    .locals 0
    .param p1, "baseUrl"    # Lccsanokhttp3/HttpUrl;
    .param p2, "okHttpClient"    # Lccsanokhttp3/Call$Factory;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lccsancom/vungle/warren/network/VungleApiImpl;->baseUrl:Lccsanokhttp3/HttpUrl;

    .line 34
    iput-object p2, p0, Lccsancom/vungle/warren/network/VungleApiImpl;->okHttpClient:Lccsanokhttp3/Call$Factory;

    .line 35
    return-void
.end method

.method private createNewGetCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Call;
    .locals 5
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/vungle/warren/network/converters/Converter<",
            "Lccsanokhttp3/ResponseBody;",
            "TT;>;)",
            "Lccsancom/vungle/warren/network/Call<",
            "TT;>;"
        }
    .end annotation

    .line 102
    .local p3, "query":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p4, "converter":Lccsancom/vungle/warren/network/converters/Converter;, "Lccsancom/vungle/warren/network/converters/Converter<Lccsanokhttp3/ResponseBody;TT;>;"
    invoke-static {p2}, Lccsanokhttp3/HttpUrl;->get(Ljava/lang/String;)Lccsanokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl;->newBuilder()Lccsanokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 103
    .local v0, "urlBuilder":Lccsanokhttp3/HttpUrl$Builder;
    if-eqz p3, :cond_0

    .line 104
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 105
    .local v2, "q":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lccsanokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/HttpUrl$Builder;

    .line 106
    .end local v2    # "q":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_0

    .line 108
    :cond_0
    invoke-virtual {v0}, Lccsanokhttp3/HttpUrl$Builder;->build()Lccsanokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lccsancom/vungle/warren/network/VungleApiImpl;->defaultBuilder(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->get()Lccsanokhttp3/Request$Builder;

    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v1

    .line 111
    .local v1, "request":Lccsanokhttp3/Request;
    new-instance v2, Lccsancom/vungle/warren/network/OkHttpCall;

    iget-object v3, p0, Lccsancom/vungle/warren/network/VungleApiImpl;->okHttpClient:Lccsanokhttp3/Call$Factory;

    invoke-interface {v3, v1}, Lccsanokhttp3/Call$Factory;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v3

    invoke-direct {v2, v3, p4}, Lccsancom/vungle/warren/network/OkHttpCall;-><init>(Lccsanokhttp3/Call;Lccsancom/vungle/warren/network/converters/Converter;)V

    return-object v2
.end method

.method private createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 5
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "requestObj"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 89
    const-string v0, ""

    .line 90
    .local v0, "requestBody":Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 91
    invoke-virtual {p3}, Lccsancom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 94
    :cond_0
    invoke-direct {p0, p1, p2}, Lccsancom/vungle/warren/network/VungleApiImpl;->defaultBuilder(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    const/4 v2, 0x0

    .line 95
    invoke-static {v2, v0}, Lccsanokhttp3/RequestBody;->create(Lccsanokhttp3/MediaType;Ljava/lang/String;)Lccsanokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanokhttp3/Request$Builder;->post(Lccsanokhttp3/RequestBody;)Lccsanokhttp3/Request$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lccsanokhttp3/Request$Builder;->build()Lccsanokhttp3/Request;

    move-result-object v1

    .line 98
    .local v1, "request":Lccsanokhttp3/Request;
    new-instance v2, Lccsancom/vungle/warren/network/OkHttpCall;

    iget-object v3, p0, Lccsancom/vungle/warren/network/VungleApiImpl;->okHttpClient:Lccsanokhttp3/Call$Factory;

    invoke-interface {v3, v1}, Lccsanokhttp3/Call$Factory;->newCall(Lccsanokhttp3/Request;)Lccsanokhttp3/Call;

    move-result-object v3

    sget-object v4, Lccsancom/vungle/warren/network/VungleApiImpl;->jsonConverter:Lccsancom/vungle/warren/network/converters/Converter;

    invoke-direct {v2, v3, v4}, Lccsancom/vungle/warren/network/OkHttpCall;-><init>(Lccsanokhttp3/Call;Lccsancom/vungle/warren/network/converters/Converter;)V

    return-object v2
.end method

.method private defaultBuilder(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;
    .locals 3
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .line 116
    new-instance v0, Lccsanokhttp3/Request$Builder;

    invoke-direct {v0}, Lccsanokhttp3/Request$Builder;-><init>()V

    .line 117
    invoke-virtual {v0, p2}, Lccsanokhttp3/Request$Builder;->url(Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 118
    const-string v1, "User-Agent"

    invoke-virtual {v0, v1, p1}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 119
    const-string v1, "Vungle-Version"

    const-string v2, "5.9.0"

    invoke-virtual {v0, v1, v2}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 120
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Lccsanokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsanokhttp3/Request$Builder;

    move-result-object v0

    .line 116
    return-object v0
.end method


# virtual methods
.method public ads(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 49
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public bustAnalytics(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public cacheBust(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public config(Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 2
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/vungle/warren/network/VungleApiImpl;->baseUrl:Lccsanokhttp3/HttpUrl;

    invoke-virtual {v1}, Lccsanokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "config"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public pingTPAT(Ljava/lang/String;Ljava/lang/String;)Lccsancom/vungle/warren/network/Call;
    .locals 2
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 74
    sget-object v0, Lccsancom/vungle/warren/network/VungleApiImpl;->emptyResponseConverter:Lccsancom/vungle/warren/network/converters/Converter;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1, v0}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewGetCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public reportAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public reportNew(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 44
    .local p3, "query":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lccsancom/vungle/warren/network/VungleApiImpl;->jsonConverter:Lccsancom/vungle/warren/network/converters/Converter;

    invoke-direct {p0, p1, p2, p3, v0}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewGetCall(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lccsancom/vungle/warren/network/converters/Converter;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public ri(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 59
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public sendLog(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 69
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method

.method public willPlayAd(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;
    .locals 1
    .param p1, "ua"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "body"    # Lccsancom/google/gson/JsonObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lccsancom/google/gson/JsonObject;",
            ")",
            "Lccsancom/vungle/warren/network/Call<",
            "Lccsancom/google/gson/JsonObject;",
            ">;"
        }
    .end annotation

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lccsancom/vungle/warren/network/VungleApiImpl;->createNewPostCall(Ljava/lang/String;Ljava/lang/String;Lccsancom/google/gson/JsonObject;)Lccsancom/vungle/warren/network/Call;

    move-result-object v0

    return-object v0
.end method
