.class public final Lccsancom/mbridge/msdk/foundation/same/net/e/c;
.super Ljava/lang/Object;
.source "OkHttpStack.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/same/net/e/a;


# instance fields
.field private final a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    nop

    .line 1026
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/same/net/e/b$a;->a()Lccsancom/mbridge/msdk/foundation/same/net/e/b;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/same/net/e/b;->a()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/e/c;->a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 25
    return-void
.end method

.method private static b(Lccsancom/mbridge/msdk/foundation/same/net/i;)Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;
    .locals 1

    .line 71
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/foundation/same/net/i;->e()[B

    move-result-object p0

    .line 72
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 74
    :cond_0
    invoke-static {v0, p0}, Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;->create(Lccsancom/mbridge/msdk/thrid/okhttp/MediaType;[B)Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/foundation/same/net/i;)Lccsancom/mbridge/msdk/foundation/same/net/f/b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/same/net/i<",
            "*>;)",
            "Lccsancom/mbridge/msdk/foundation/same/net/f/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->h()I

    move-result v0

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 83
    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v2, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_2:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v2, p0, Lccsancom/mbridge/msdk/foundation/same/net/e/c;->a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->newBuilder()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v2

    .line 86
    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    int-to-long v2, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 87
    invoke-virtual {v1, v2, v3, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 88
    invoke-virtual {v0, v2, v3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 89
    invoke-virtual {v0, v2, v3, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    move-result-object v0

    .line 92
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;-><init>()V

    .line 93
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->d()Ljava/util/Map;

    move-result-object v2

    .line 94
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 96
    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->d()Ljava/util/Map;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 100
    goto :goto_1

    .line 102
    :cond_1
    nop

    .line 1032
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->a()I

    move-result v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 1066
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Unknown method type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1062
    :pswitch_0
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/e/c;->b(Lccsancom/mbridge/msdk/foundation/same/net/i;)Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->patch(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1063
    goto :goto_2

    .line 1058
    :pswitch_1
    const-string v2, "TRACE"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1059
    goto :goto_2

    .line 1054
    :pswitch_2
    const-string v2, "OPTIONS"

    invoke-virtual {v1, v2, v3}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->method(Ljava/lang/String;Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1055
    goto :goto_2

    .line 1050
    :pswitch_3
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->head()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1051
    goto :goto_2

    .line 1038
    :pswitch_4
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->delete()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1039
    goto :goto_2

    .line 1046
    :pswitch_5
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/e/c;->b(Lccsancom/mbridge/msdk/foundation/same/net/i;)Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->put(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1047
    goto :goto_2

    .line 1042
    :pswitch_6
    invoke-static {p1}, Lccsancom/mbridge/msdk/foundation/same/net/e/c;->b(Lccsancom/mbridge/msdk/foundation/same/net/i;)Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->post(Lccsancom/mbridge/msdk/thrid/okhttp/RequestBody;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1043
    goto :goto_2

    .line 1034
    :pswitch_7
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->get()Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    .line 1035
    nop

    .line 104
    :goto_2
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/same/net/i;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->url(Ljava/lang/String;)Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Request$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/Request;

    move-result-object p1

    .line 105
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;->newCall(Lccsancom/mbridge/msdk/thrid/okhttp/Request;)Lccsancom/mbridge/msdk/thrid/okhttp/Call;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Call;->execute()Lccsancom/mbridge/msdk/thrid/okhttp/Response;

    move-result-object p1

    .line 107
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->headers()Lccsancom/mbridge/msdk/thrid/okhttp/Headers;

    move-result-object v0

    .line 108
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    const/4 v2, 0x0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->size()I

    move-result v3

    :goto_3
    if-ge v2, v3, :cond_3

    .line 110
    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    .line 111
    if-eqz v4, :cond_2

    .line 112
    new-instance v6, Lccsancom/mbridge/msdk/foundation/same/net/c/b;

    invoke-direct {v6, v4, v5}, Lccsancom/mbridge/msdk/foundation/same/net/c/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 117
    :cond_3
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/f/b;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->code()I

    move-result v2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/Response;->body()Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {v0, v2, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/net/f/b;-><init>(ILjava/util/List;Ljava/io/InputStream;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
