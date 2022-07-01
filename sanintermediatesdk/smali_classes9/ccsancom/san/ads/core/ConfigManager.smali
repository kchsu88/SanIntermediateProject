.class public Lccsancom/san/ads/core/ConfigManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CACHE_DATA_TIME:Ljava/lang/String; = "cache_data_time"

.field public static final COMMON_CONFIG:Ljava/lang/String; = "common_config"

.field public static final CONFIG_TAG:Ljava/lang/String; = "config_tag"

.field public static final CONFIG_TYPE_DEFAULT:I = 0x0

.field public static final CONFIG_VERSION:Ljava/lang/String; = "config_version"

.field public static final LAYER_CONFIG:Ljava/lang/String; = "layer_config"

.field public static final PORTAL_APP_INIT:Ljava/lang/String; = "app_init"

.field public static final PORTAL_START_LOAD:Ljava/lang/String; = "start_load"

.field public static final UPDATE_INTERVAL:Ljava/lang/String; = "update_interval"

.field private static volatile getDownloadingList:Lccsancom/san/ads/core/ConfigManager;

.field private static final removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static sConfigTag:Ljava/lang/String;

.field private static unifiedDownload:J


# instance fields
.field private IncentiveDownloadUtils:Lccsancom/san/ads/base/IConfigRequest;

.field private volatile addDownloadListener:Z

.field private getDownloadingRecordByUrl:Lccsancom/san/ads/base/ICloudConfigListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsancom/san/ads/core/ConfigManager;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    const/4 v0, 0x0

    sput-object v0, Lccsancom/san/ads/core/ConfigManager;->sConfigTag:Ljava/lang/String;

    .line 4
    const-wide/16 v0, 0x0

    sput-wide v0, Lccsancom/san/ads/core/ConfigManager;->unifiedDownload:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 50
    iget-boolean v0, p0, Lccsancom/san/ads/core/ConfigManager;->addDownloadListener:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/core/ConfigManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/ICloudConfigListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2, p1, v1}, Lccsancom/san/ads/base/ICloudConfigListener;->getStringConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-boolean v0, p0, Lccsancom/san/ads/core/ConfigManager;->addDownloadListener:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lccsancom/san/ads/core/ConfigManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/ICloudConfigListener;

    invoke-interface {v0, p1, p2, p3}, Lccsancom/san/ads/base/ICloudConfigListener;->setConfig(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const-string v0, "Cloud.Manager"

    .line 1
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#syncData portal = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IConfigRequest;

    invoke-interface {v2, p1, p2}, Lccsancom/san/ads/base/IConfigRequest;->request(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#syncData success and request json = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, v2}, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "10000"

    :try_start_1
    const-string v4, "duration"

    .line 8
    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {p1, v3, p2, v4, v5}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1

    :catch_0
    move-exception p1

    .line 11
    const-string p2, "#syncData:"

    invoke-static {v0, p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 13
    invoke-direct {p0}, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList()V

    return v1
.end method

.method public static getConfigTAG()Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/core/ConfigManager;->sConfigTag:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object v0

    const-string v1, "config_tag"

    invoke-direct {v0, v1}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/san/ads/core/ConfigManager;->sConfigTag:Ljava/lang/String;

    .line 3
    :cond_0
    sget-object v0, Lccsancom/san/ads/core/ConfigManager;->sConfigTag:Ljava/lang/String;

    return-object v0
.end method

.method public static getConfigVersion()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object v0

    const-string v1, "config_version"

    invoke-direct {v0, v1}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getDownloadingList(Ljava/lang/String;J)J
    .locals 2

    .line 51
    iget-boolean v0, p0, Lccsancom/san/ads/core/ConfigManager;->addDownloadListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/core/ConfigManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/ICloudConfigListener;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lccsancom/san/ads/base/ICloudConfigListener;->getLongConfig(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method private getDownloadingList()V
    .locals 1

    .line 47
    invoke-static {}, Lccsansan/g/addDownloadListener;->removeDownloadListener()Lccsansan/g/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/g/addDownloadListener;->getDownloadingList()V

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V
    .locals 5

    const-string v0, "common_config"

    const-string v1, "layer_config"

    const-string v2, "update_interval"

    const-string v3, "config_version"

    .line 14
    :try_start_0
    invoke-virtual {p2, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, p1, v3, v4}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p1, v2, v3}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {p1, p2}, Lccsancom/san/ads/ZoneIdsHelper;->saveAllAdColonyIds(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V

    .line 20
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-direct {p0, p1, v0, v1}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, v1}, Lccsancom/san/ads/core/ConfigManager;->removeDownloadListener(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 24
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 26
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, p1, v2, v1}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const-string v0, "cache_data_time"

    .line 30
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    invoke-direct {p0, p1}, Lccsancom/san/ads/core/ConfigManager;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 34
    invoke-direct {p0, p2}, Lccsancom/san/ads/core/ConfigManager;->removeDownloadListener(Lccsanorg/json/JSONObject;)V

    .line 35
    invoke-direct {p0}, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 37
    const-string p2, "Cloud.Manager"

    const-string v0, "#saveRequestData:"

    invoke-static {p2, v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)Z
    .locals 11

    .line 1
    const-string v0, "cache_data_time"

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-string p1, "update_interval"

    const-wide/16 v4, 0x708

    invoke-direct {p0, p1, v4, v5}, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long v6, v6, v8

    cmp-long v10, v2, v6

    if-lez v10, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShouldRefresh()  -> cacheTimeInterval = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", UpdateInterval = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1, v4, v5}, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    mul-long v0, v0, v8

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", isShouldRefresh =  "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Cloud.Manager"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getInstance()Lccsancom/san/ads/core/ConfigManager;
    .locals 2

    .line 1
    sget-object v0, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList:Lccsancom/san/ads/core/ConfigManager;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsancom/san/ads/core/ConfigManager;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList:Lccsancom/san/ads/core/ConfigManager;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsancom/san/ads/core/ConfigManager;

    invoke-direct {v1}, Lccsancom/san/ads/core/ConfigManager;-><init>()V

    sput-object v1, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList:Lccsancom/san/ads/core/ConfigManager;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList:Lccsancom/san/ads/core/ConfigManager;

    return-object v0
.end method

.method private removeDownloadListener(Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 10
    :cond_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 13
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_1
    return-object v0
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 1

    .line 38
    invoke-static {p1}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/cm/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private removeDownloadListener(Lccsanorg/json/JSONObject;)V
    .locals 2

    .line 39
    const-string v0, "cpt_config"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 40
    const-string v1, "offline_config"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 41
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 42
    invoke-static {v0}, Lccsansan/bw/getErrorCode;->getDownloadingCount(Ljava/lang/String;)V

    .line 45
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 46
    invoke-static {p1}, Lccsansan/bw/getErrorCode;->trackReportShow(Ljava/lang/String;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public init(Lccsancom/san/ads/base/ICloudConfigListener;I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iput-object p1, p0, Lccsancom/san/ads/core/ConfigManager;->getDownloadingRecordByUrl:Lccsancom/san/ads/base/ICloudConfigListener;

    .line 2
    new-instance p1, Lccsancom/san/ads/core/ConfigRequest;

    invoke-direct {p1}, Lccsancom/san/ads/core/ConfigRequest;-><init>()V

    iput-object p1, p0, Lccsancom/san/ads/core/ConfigManager;->IncentiveDownloadUtils:Lccsancom/san/ads/base/IConfigRequest;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lccsancom/san/ads/core/ConfigManager;->addDownloadListener:Z

    return-void
.end method

.method public sync(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/san/ads/core/ConfigManager;->sync(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public sync(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z
    .locals 9

    .line 2
    const-string v0, "cache_data_time"

    invoke-static {p1, v0}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sync portal = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; isInit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/san/ads/core/ConfigManager;->addDownloadListener:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; isSyncing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lccsancom/san/ads/core/ConfigManager;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; sAppInitSyncTime = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lccsancom/san/ads/core/ConfigManager;->unifiedDownload:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "; isForceRefresh = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; MediationCloudConfig.hasAdConfig() = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "; process = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {p1}, Lccsansan/bw/IncentiveSDK;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 10
    const-string v3, "Cloud.Manager"

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-boolean v1, p0, Lccsancom/san/ads/core/ConfigManager;->addDownloadListener:Z

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return v3

    .line 22
    :cond_0
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    :cond_1
    const/4 v1, 0x1

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 27
    const-string v1, "app_init"

    invoke-static {v1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sput-wide v4, Lccsancom/san/ads/core/ConfigManager;->unifiedDownload:J

    goto :goto_0

    .line 29
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-wide v6, Lccsancom/san/ads/core/ConfigManager;->unifiedDownload:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v8, v4, v6

    if-gez v8, :cond_3

    .line 30
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    :cond_3
    :goto_0
    if-nez p3, :cond_5

    if-eqz v0, :cond_5

    .line 34
    invoke-direct {p0, p1}, Lccsancom/san/ads/core/ConfigManager;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_5

    .line 35
    invoke-static {v1, p2}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_4

    const-wide/16 v0, 0x0

    .line 36
    const-string p3, "999"

    invoke-static {p1, p3, p2, v0, v1}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    :cond_4
    nop

    .line 38
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return v3

    .line 42
    :cond_5
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/core/ConfigManager;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 45
    const-string p3, "cloud_init"

    const-string v0, "true"

    invoke-static {p1, p3, v0}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    nop

    .line 48
    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return p2
.end method

.method public tryToSyncAdConfig(Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/san/ads/core/ConfigManager;->tryToSyncAdConfig(Ljava/lang/String;Z)V

    return-void
.end method

.method public tryToSyncAdConfig(Ljava/lang/String;Z)V
    .locals 3

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/ads/core/ConfigManager$1;

    const-string v2, "Cloud.sync"

    invoke-direct {v1, p0, v2, p1, p2}, Lccsancom/san/ads/core/ConfigManager$1;-><init>(Lccsancom/san/ads/core/ConfigManager;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
