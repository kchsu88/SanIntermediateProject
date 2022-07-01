.class public final Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;
.super Ljava/lang/Object;
.source "GlobalComponent.java"


# static fields
.field private static volatile INSTANCE:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;


# instance fields
.field private byteBufferSize:I

.field private context:Lccsanandroid/content/Context;

.field private databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

.field private databaseTableName:Ljava/lang/String;

.field private logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

.field private okHttpClient:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "download_record"

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseTableName:Ljava/lang/String;

    .line 30
    const/16 v0, 0x1000

    iput v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->byteBufferSize:I

    .line 35
    return-void
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;
    .locals 2

    .line 38
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-static {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    const-class v0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    monitor-enter v0

    .line 40
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-static {v1}, Lccsancom/mbridge/msdk/foundation/download/utils/Objects;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 41
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    .line 43
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 45
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->INSTANCE:Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    return-object v0
.end method


# virtual methods
.method public final getByteBufferSize()I
    .locals 1

    .line 157
    iget v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->byteBufferSize:I

    return v0
.end method

.method public final getContext()Lccsanandroid/content/Context;
    .locals 1

    .line 162
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->context:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public final getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;
    .locals 1

    .line 153
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    return-object v0
.end method

.method public final getDatabaseTableName()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseTableName:Ljava/lang/String;

    return-object v0
.end method

.method public final getLogger()Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;
    .locals 1

    .line 135
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    if-nez v0, :cond_0

    .line 136
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$2;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 148
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    return-object v0
.end method

.method public final getOkHttpClient()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;
    .locals 1

    .line 166
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->okHttpClient:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    return-object v0
.end method

.method public final initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)V
    .locals 5

    .line 49
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->context:Lccsanandroid/content/Context;

    .line 50
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getLogger()Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->logger:Lccsancom/mbridge/msdk/foundation/download/utils/ILogger;

    .line 51
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHandler()Lccsanandroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHandler()Lccsanandroid/os/Handler;

    move-result-object v1

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;

    move-result-object v2

    invoke-direct {v0, p1, v1, v2}, Lccsancom/mbridge/msdk/foundation/download/database/DatabaseHelper;-><init>(Lccsanandroid/content/Context;Lccsanandroid/os/Handler;Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseOpenHelper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    goto :goto_0

    .line 54
    :cond_0
    new-instance p1, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$1;

    invoke-direct {p1, p0}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent$1;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->databaseHelper:Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    .line 117
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 118
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;->HTTP_1_1:Lccsancom/mbridge/msdk/thrid/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;-><init>()V

    .line 121
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequests()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->setMaxRequests(I)V

    .line 122
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getMaxRequestsPerHost()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;->setMaxRequestsPerHost(I)V

    .line 124
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;-><init>()V

    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultConnectTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultConnectTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    .line 126
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultWriteTimeout()J

    move-result-wide v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {v1, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->dispatcher(Lccsancom/mbridge/msdk/thrid/okhttp/Dispatcher;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {p2}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;->getDefaultPingInterval()J

    move-result-wide v1

    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, p2}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p2, v0}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->retryOnConnectionFailure(Z)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object p2

    .line 130
    invoke-virtual {p2, p1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->protocols(Ljava/util/List;)Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;

    move-result-object p1

    .line 131
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient$Builder;->build()Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->okHttpClient:Lccsancom/mbridge/msdk/thrid/okhttp/OkHttpClient;

    .line 132
    return-void
.end method
