.class public Lccsansan/bq/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsancom/san/ads/AdFormat;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bq/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    const-string v2, "wait_time"

    .line 5
    invoke-virtual {p0, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 8
    const-string v2, "SAN.CloudConfig"

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide v0
.end method

.method public static IncentiveDownloadUtils()Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bq/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "enable"

    .line 4
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 7
    const-string v2, "SAN.CloudConfig"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return v0
.end method

.method public static addDownloadListener(Lccsancom/san/ads/AdFormat;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {}, Lccsansan/bq/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    const-string v2, "delay_time"

    .line 5
    invoke-virtual {p0, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 8
    const-string v2, "SAN.CloudConfig"

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide v0
.end method

.method public static getDownloadingList(Lccsancom/san/ads/AdFormat;)J
    .locals 4

    .line 8
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {}, Lccsansan/bq/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 10
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    const-string v2, "anchor_wait_time"

    .line 12
    invoke-virtual {p0, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 15
    const-string v2, "SAN.CloudConfig"

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide v0
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Z
    .locals 2

    .line 10
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "San_CollectEnable"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    const-string v0, "enable"

    .line 14
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 17
    const-string v0, "SAN.CloudConfig"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static unifiedDownload(Lccsancom/san/ads/AdFormat;)J
    .locals 4

    .line 1
    const-wide/16 v0, 0xbb8

    :try_start_0
    invoke-static {}, Lccsansan/bq/getDownloadingList;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    const-string v2, "anchor_time_out"

    .line 5
    invoke-virtual {p0, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    .line 8
    const-string v2, "SAN.CloudConfig"

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide v0
.end method

.method public static unifiedDownload(Ljava/lang/String;J)J
    .locals 2

    .line 18
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "San_CollectEnable"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 19
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    const-string v0, "interval"

    .line 22
    invoke-virtual {p0, v0, p1, p2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    .line 25
    const-string v0, "SAN.CloudConfig"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-wide p1
.end method

.method private static unifiedDownload()Ljava/lang/String;
    .locals 2

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mab_layer_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
