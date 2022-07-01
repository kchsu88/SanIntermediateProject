.class public Lccsansan/az/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static unifiedDownload:Lccsansan/az/getDownloadingList;


# instance fields
.field private final IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsansan/az/unifiedDownload;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingList:J

.field private removeDownloadListener:Lccsanandroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsansan/az/getDownloadingList;->getDownloadingList:J

    .line 5
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    invoke-static {p1}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lccsansan/az/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/SharedPreferences;

    return-void
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/content/SharedPreferences;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    .line 1
    const-string v1, "anythink_sdk"

    invoke-virtual {p0, v1, v0}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method private static IncentiveDownloadUtils(Lccsansan/az/unifiedDownload;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/az/unifiedDownload;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 5
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 9
    :cond_0
    iget-object v1, p0, Lccsansan/az/unifiedDownload;->addDownloadListener:Ljava/lang/String;

    const-string v2, "placeId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->getDownloadedList()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "auto_refresh_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->unifiedDownload()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "fbhb_bid_wtime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->addDownloadListener()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hb_bid_timeout"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->removeDownloadListener()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hb_start_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->trackReportClick()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "load_cap_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->trackReportShow()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "load_cap"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->getPackageNameByRecord()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "load_fail_wtime"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->getDownloadStatusByUrl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "s_t"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->getDownloadingCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi_auto_sw"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->getDownloadingRecordByUrl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ps_ct"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->getDownloadedRecordByUrl()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ps_ct_out"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {p0}, Lccsansan/az/unifiedDownload;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cc"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    .line 24
    iget-object p0, p0, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/List;

    if-eqz p0, :cond_1

    .line 25
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/az/addDownloadListener;

    .line 26
    invoke-virtual {v2}, Lccsansan/az/addDownloadListener;->unifiedDownload()Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_0

    .line 29
    :cond_1
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "lfo"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private IncentiveDownloadUtils()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lccsansan/az/unifiedDownload;",
            ">;"
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lccsansan/az/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 48
    iget-object v0, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 50
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lccsansan/az/getDownloadingList;->getDownloadingList:J

    sub-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 51
    iget-object v1, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 52
    iget-object v1, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-exit v0

    return-object v1

    .line 54
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lccsansan/az/getDownloadingList;->getDownloadingList:J

    .line 55
    iget-object v1, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 56
    iget-object v1, p0, Lccsansan/az/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v1}, Lccsanandroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 57
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 58
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "_PL_SY"

    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xe

    const/16 v5, 0x1c

    .line 60
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 61
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsansan/az/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsansan/az/unifiedDownload;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 63
    invoke-virtual {v2, v3}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 64
    iget-object v4, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_3
    iget-object v1, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 69
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/az/unifiedDownload;
    .locals 2

    .line 70
    invoke-direct {p0}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/concurrent/ConcurrentHashMap;

    .line 71
    iget-object v0, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v0

    .line 72
    :try_start_0
    iget-object v1, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/az/unifiedDownload;

    monitor-exit v0

    return-object p1

    .line 74
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    new-instance v0, Lccsansan/az/unifiedDownload;

    invoke-direct {v0}, Lccsansan/az/unifiedDownload;-><init>()V

    .line 77
    invoke-virtual {v0, p1}, Lccsansan/az/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 78
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    invoke-static {p2}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/az/unifiedDownload;)Ljava/util/HashMap;

    move-result-object p2

    const-string v0, "portal"

    .line 42
    invoke-virtual {p2, v0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result p3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "T_PS"

    if-eqz p3, :cond_1

    .line 44
    :try_start_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#collectPSInfo "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v0, p3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    nop

    .line 46
    invoke-static {p1, v0, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;Ljava/lang/String;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/az/getDownloadingList;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 3
    iget-object p0, p0, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method

.method public static declared-synchronized addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/az/getDownloadingList;
    .locals 3

    const-class v0, Lccsansan/az/getDownloadingList;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lccsansan/az/getDownloadingList;->unifiedDownload:Lccsansan/az/getDownloadingList;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lccsansan/az/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/SharedPreferences;

    if-nez v1, :cond_3

    .line 3
    :cond_0
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    sget-object v1, Lccsansan/az/getDownloadingList;->unifiedDownload:Lccsansan/az/getDownloadingList;

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lccsansan/az/getDownloadingList;

    invoke-direct {v1, p0}, Lccsansan/az/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    sput-object v1, Lccsansan/az/getDownloadingList;->unifiedDownload:Lccsansan/az/getDownloadingList;

    .line 7
    :cond_1
    sget-object v1, Lccsansan/az/getDownloadingList;->unifiedDownload:Lccsansan/az/getDownloadingList;

    iget-object v2, v1, Lccsansan/az/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/SharedPreferences;

    if-nez v2, :cond_2

    .line 8
    invoke-static {p0}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/content/SharedPreferences;

    move-result-object p0

    iput-object p0, v1, Lccsansan/az/getDownloadingList;->removeDownloadListener:Lccsanandroid/content/SharedPreferences;

    .line 10
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 12
    :cond_3
    :try_start_2
    sget-object p0, Lccsansan/az/getDownloadingList;->unifiedDownload:Lccsansan/az/getDownloadingList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 13
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic getDownloadingList(Lccsansan/az/getDownloadingList;)Ljava/util/concurrent/ConcurrentHashMap;
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsansan/az/getDownloadingList;Ljava/lang/String;)Lccsansan/az/unifiedDownload;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/az/unifiedDownload;

    move-result-object p0

    return-object p0
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;)V
    .locals 1

    .line 40
    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lccsansan/az/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;)V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#collectPlaceStrategyMetrics "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "T_PS"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "is_ana_at"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 35
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/az/getDownloadingList$addDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/az/getDownloadingList$addDownloadListener;-><init>(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 3

    .line 36
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lccsancom/san/api/SanAdSdk;->isAutoAna:Z

    const-string v2, "is_auto_ana_at"

    invoke-static {v0, v2, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 39
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/az/getDownloadingList$removeDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/az/getDownloadingList$removeDownloadListener;-><init>(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
