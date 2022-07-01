.class public final Lccsancom/mbridge/msdk/foundation/same/net/e/b;
.super Ljava/lang/Object;
.source "OKHTTPClientManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/same/net/e/b$a;
    }
.end annotation


# instance fields
.field private a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/e/b;->a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 22
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/same/net/e/b$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/same/net/e/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .locals 7

    monitor-enter p0

    .line 30
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/e/b;->a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;-><init>()V

    .line 32
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 33
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;-><init>()V

    .line 34
    const-wide/16 v2, 0x64

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    .line 35
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x3c

    invoke-virtual {v1, v3, v4, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    .line 36
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    .line 37
    new-instance v2, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;

    const/16 v3, 0x20

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v2, v3, v4, v5, v6}, Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectionPool(Lccsancom/mbridge/msdk/thrid/okhttp/ConnectionPool;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    .line 38
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dispatcher(Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    .line 39
    new-instance v0, Lccsancom/mbridge/msdk/foundation/same/net/e/b$1;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/same/net/e/b$1;-><init>(Lccsancom/mbridge/msdk/foundation/same/net/e/b;)V

    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->eventListener(Lccsancom/mbridge/msdk/thrid/okhttp/EventListener;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    .line 58
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/e/b;->a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 61
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/same/net/e/b;->a:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
