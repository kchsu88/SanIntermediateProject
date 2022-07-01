.class public Lccsansan/dr/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/dr/removeDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 36
    invoke-static {}, Lccsansan/bw/execute;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 38
    const-string v2, "belay_id"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 39
    :cond_0
    invoke-static {p1}, Lccsansan/bw/deleteDownList;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_id"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 40
    invoke-static {p1}, Lccsansan/bw/deleteDownList;->getDownloadedList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_ver"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 42
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 43
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "gaid"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 44
    invoke-static {p1}, Lccsansan/bw/getMinIntervalToReturn;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_id"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 47
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string v3, "report_time"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 48
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "langue"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 50
    invoke-static {p1}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 52
    iget-object v2, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    const-string v3, "lat"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 53
    iget-object v1, v1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    const-string v2, "lng"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 55
    :cond_2
    invoke-static {}, Lccsansan/dr/getDownloadingList;->deleteDownItem()J

    move-result-wide v1

    .line 56
    const-string v3, "index"

    invoke-virtual {v0, v3, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 57
    const-string v1, "upload_type"

    const-string v2, "full"

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 58
    const-string v1, "app_infos"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 59
    invoke-direct {p0}, Lccsansan/dr/removeDownloadListener;->addDownloadListener()Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "part"

    :goto_0
    const-string p2, "collect_type"

    invoke-virtual {v0, p2, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 60
    invoke-static {p1}, Lccsansan/dr/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 61
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 62
    const-string v1, "file_infos"

    invoke-virtual {v0, v1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 64
    :cond_4
    invoke-static {p1}, Lccsansan/bw/deleteDownList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Z

    move-result p1

    const-string p2, "is_ex"

    invoke-virtual {v0, p2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 65
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 66
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsansan/cb/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "s"

    invoke-virtual {p1, v0, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 67
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private addDownloadListener()Z
    .locals 2

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.QUERY_ALL_PACKAGES"

    invoke-static {v0, v1}, Lccsansan/bw/trackReportClick;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static removeDownloadListener()Lccsansan/dr/removeDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/dr/removeDownloadListener;->getDownloadingList:Lccsansan/dr/removeDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/dr/removeDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/dr/removeDownloadListener;->getDownloadingList:Lccsansan/dr/removeDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/dr/removeDownloadListener;

    invoke-direct {v1}, Lccsansan/dr/removeDownloadListener;-><init>()V

    sput-object v1, Lccsansan/dr/removeDownloadListener;->getDownloadingList:Lccsansan/dr/removeDownloadListener;

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
    sget-object v0, Lccsansan/dr/removeDownloadListener;->getDownloadingList:Lccsansan/dr/removeDownloadListener;

    return-object v0
.end method

.method private removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/x/addDownloadListener;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 28
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 29
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v0, "Accept-Charset"

    const-string v1, "UTF-8"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    const-string v0, "Host"

    invoke-interface {v2, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-static {}, Lccsansan/dr/getDownloadedList;->addDownloadListener()I

    move-result v4

    invoke-static {}, Lccsansan/dr/getDownloadedList;->unifiedDownload()I

    move-result v5

    const-string v0, "al"

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BII)Lccsansan/x/addDownloadListener;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z
    .locals 11

    .line 8
    const-string v0, "ALUploadHelper"

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 13
    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lccsansan/dr/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 15
    :try_start_1
    invoke-static {p1}, Lccsansan/dp/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    .line 16
    invoke-static {v6}, Lccsansan/bw/ActionTypeReserveApp;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsanandroid/util/Pair;

    move-result-object v7

    .line 17
    iget-object v8, v7, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v7, v7, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-direct {p0, v8, v7, p2}, Lccsansan/dr/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/x/addDownloadListener;

    move-result-object p2

    .line 18
    invoke-virtual {p2}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v7

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_0

    const/4 v7, 0x1

    goto :goto_0

    :cond_0
    const/4 v7, 0x0

    .line 19
    :goto_0
    invoke-virtual {p2}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v8

    .line 20
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "#uploadAppsInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", status code : "

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result p2

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move p2, v7

    goto :goto_2

    :catch_0
    move-exception p2

    goto :goto_1

    :catch_1
    move-exception p2

    const/4 v5, 0x0

    .line 22
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#uploadAppsInfo http error : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    move-object v8, p2

    const/4 p2, 0x0

    .line 26
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v6, v0, v3

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1}, Lccsansan/dr/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)I

    move-result p1

    invoke-direct {p0}, Lccsansan/dr/removeDownloadListener;->addDownloadListener()Z

    move-result v9

    move v3, v5

    move-object v4, v8

    move v5, p1

    move v8, p3

    invoke-static/range {v1 .. v9}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/Boolean;IILjava/lang/String;IJZZ)V

    return p2
.end method
