.class public Lccsansan/bq/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Lccsansan/bq/getDownloadStatusByUrl;

.field private static unifiedDownload:Lccsanandroid/os/HandlerThread;


# instance fields
.field private IncentiveDownloadUtils:J

.field private final removeDownloadListener:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsansan/bq/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener:Ljava/util/Map;

    .line 3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/bq/getDownloadStatusByUrl;->IncentiveDownloadUtils:J

    .line 9
    :try_start_0
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "LayerAdLoader.BgHandlerThread"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lccsansan/bq/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/os/HandlerThread;

    .line 10
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/IllegalThreadStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsancom/san/ads/AdFormat;Lccsanorg/json/JSONObject;)Lccsansan/bq/removeDownloadListener;
    .locals 1

    .line 9
    new-instance v0, Lccsansan/bq/removeDownloadListener;

    invoke-direct {v0, p0, p1}, Lccsansan/bq/removeDownloadListener;-><init>(Lccsancom/san/ads/AdFormat;Lccsanorg/json/JSONObject;)V

    .line 10
    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getActionType()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getDownloadingList()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/bq/getDownloadStatusByUrl;->IncentiveDownloadUtils:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsansan/bq/getDownloadStatusByUrl;->IncentiveDownloadUtils:J

    .line 5
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object v0

    const-string v1, "start_load"

    invoke-virtual {v0, v1}, Lccsancom/san/ads/core/ConfigManager;->tryToSyncAdConfig(Ljava/lang/String;)V

    return-void
.end method

.method public static removeDownloadListener()Lccsansan/bq/getDownloadStatusByUrl;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/bq/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/bq/getDownloadStatusByUrl;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/bq/getDownloadStatusByUrl;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/bq/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/bq/getDownloadStatusByUrl;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/bq/getDownloadStatusByUrl;

    invoke-direct {v1}, Lccsansan/bq/getDownloadStatusByUrl;-><init>()V

    sput-object v1, Lccsansan/bq/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/bq/getDownloadStatusByUrl;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/bq/getDownloadStatusByUrl;->addDownloadListener:Lccsansan/bq/getDownloadStatusByUrl;

    return-object v0
.end method

.method private static unifiedDownload(Ljava/lang/String;Lccsancom/san/ads/AdFormat;Ljava/lang/String;)Lccsansan/bq/removeDownloadListener;
    .locals 4

    .line 1
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, p2}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    const-string v3, "pos_id"

    .line 5
    invoke-virtual {v2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1, v2}, Lccsansan/bq/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsancom/san/ads/AdFormat;Lccsanorg/json/JSONObject;)Lccsansan/bq/removeDownloadListener;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsanandroid/os/HandlerThread;
    .locals 1

    .line 12
    sget-object v0, Lccsansan/bq/getDownloadStatusByUrl;->unifiedDownload:Lccsanandroid/os/HandlerThread;

    return-object v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 1

    .line 11
    iget-object v0, p0, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)Lccsansan/bq/removeDownloadListener;
    .locals 3

    .line 13
    iget-object v0, p0, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p2, p0, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/bq/removeDownloadListener;

    goto :goto_2

    .line 16
    :cond_0
    invoke-static {}, Lccsancom/san/api/SanAdSdk;->isMediationMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "layer_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsansan/bq/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;Lccsancom/san/ads/AdFormat;Ljava/lang/String;)Lccsansan/bq/removeDownloadListener;

    move-result-object v0

    goto :goto_0

    .line 16
    :cond_1
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-nez v0, :cond_2

    .line 20
    new-instance v0, Lccsansan/bq/removeDownloadListener;

    invoke-direct {v0, p1, p2}, Lccsansan/bq/removeDownloadListener;-><init>(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V

    .line 23
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 25
    new-instance v1, Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->resolveUrl()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, p1, v2}, Lccsancom/san/ads/AdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, p2}, Lccsancom/san/ads/AdInfo;->setAdFormat(Lccsancom/san/ads/AdFormat;)V

    const-string p2, "Mads"

    .line 27
    invoke-virtual {v1, p2}, Lccsancom/san/ads/AdInfo;->setNetworkId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v0, v1}, Lccsansan/bq/removeDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 35
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lccsansan/bq/removeDownloadListener;->getDownloadedList()Z

    move-result p2

    if-nez p2, :cond_3

    .line 36
    iget-object p2, p0, Lccsansan/bq/getDownloadStatusByUrl;->removeDownloadListener:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    :cond_3
    move-object p1, v0

    :goto_2
    invoke-direct {p0}, Lccsansan/bq/getDownloadStatusByUrl;->getDownloadingList()V

    return-object p1
.end method
