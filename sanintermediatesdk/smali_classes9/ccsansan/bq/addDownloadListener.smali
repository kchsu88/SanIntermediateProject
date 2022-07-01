.class public Lccsansan/bq/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static addDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static IncentiveDownloadUtils()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "source_load_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 4
    :cond_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "track_type"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private static IncentiveDownloadUtils(Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "offline_cdn_net_dialog"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 15
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disable_"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const-string p0, "out"

    goto :goto_0

    :cond_0
    const-string p0, "inner"

    :goto_0
    :try_start_1
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_ids"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    const/4 v1, 0x0

    :goto_1
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception p0

    :cond_1
    return-object v0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsansan/bq/addDownloadListener;->removeDownloadListener(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;ILjava/lang/Boolean;)Z
    .locals 5

    .line 21
    const-string v0, "update"

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_func_d"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p2, :cond_1

    .line 24
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    .line 26
    :cond_1
    :goto_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/bl/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)J

    move-result-wide v3

    .line 27
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 29
    :try_start_0
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 32
    invoke-virtual {p2, p0}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string p2, "interval"

    .line 34
    invoke-virtual {p0, p2, p1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 35
    invoke-virtual {p0, v0, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    .line 37
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#isFunctionEnable"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "CloudConfig"

    invoke-static {p2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    const/4 p0, 0x1

    if-gtz p1, :cond_3

    return p0

    .line 47
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    sget-object p2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    int-to-long v3, p1

    invoke-virtual {p2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    cmp-long v3, v0, p1

    if-lez v3, :cond_4

    const/4 v2, 0x1

    :cond_4
    return v2
.end method

.method public static addDownloadListener()Z
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "forbidden_stats_result"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static addDownloadListener(Ljava/lang/String;Z)Z
    .locals 1

    .line 20
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v0, -0x1

    invoke-static {p0, v0, p1}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;ILjava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static deleteDownItem()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "stats_common_exfo"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

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

    :cond_0
    return v0
.end method

.method public static getDownloadStatusByUrl()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "offline_cdn_net_dialog"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "is_show"

    .line 4
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    :cond_0
    return v0
.end method

.method public static getDownloadedList()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "offline_cdn_net_dialog"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "auto_perform_gp"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    :cond_0
    return v0
.end method

.method public static getDownloadedRecordByUrl()Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "offline_cdn_net_dialog"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "is_show_gp"

    .line 4
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    :cond_0
    return v0
.end method

.method public static getDownloadingCount()Ljava/lang/String;
    .locals 2

    .line 14
    sget-object v0, Lccsansan/bq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 15
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "config_tag"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/bq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 16
    :cond_0
    sget-object v0, Lccsansan/bq/addDownloadListener;->addDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public static getDownloadingList()I
    .locals 3

    .line 1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "report_method"

    invoke-static {v1, v2, v0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static getDownloadingList(Ljava/lang/String;)Z
    .locals 3

    .line 8
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {v1}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Z)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    .line 10
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v1, "offline_cdn_net_dialog"

    invoke-static {p0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 12
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "is_show_inner_browser"

    .line 13
    invoke-virtual {v1, p0, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    :cond_1
    return v0
.end method

.method public static getDownloadingRecordByUrl()J
    .locals 4

    .line 1
    const-wide/32 v0, 0x2bf20

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "offline_cdn_net_dialog"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "auto_duration"

    .line 4
    invoke-virtual {v3, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception v2

    :cond_0
    return-wide v0
.end method

.method public static removeDownloadListener()I
    .locals 3

    .line 1
    const/16 v0, 0x14

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "reward_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 4
    :cond_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "vast_click_area"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static removeDownloadListener(Ljava/lang/String;I)Z
    .locals 1

    .line 19
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;ILjava/lang/Boolean;)Z

    move-result p0

    return p0
.end method

.method public static removeDownloadListener(Z)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "offline_cdn_net_dialog"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const-string v1, "auto_perform_browser"

    const/4 v3, 0x0

    .line 5
    invoke-virtual {v2, v1, v3}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0

    :cond_0
    const-string v1, "auto_perform_inner_browser"

    .line 7
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    :cond_1
    xor-int/2addr p0, v0

    return p0
.end method

.method public static unifiedDownload()I
    .locals 3

    .line 1
    const/16 v0, 0x1388

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "reward_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v0

    .line 4
    :cond_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "card_show_time"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static unifiedDownload(Ljava/lang/String;)Z
    .locals 2

    .line 5
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Z)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 7
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v1, "offline_cdn_net_dialog"

    invoke-static {p0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 9
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p0, "is_show_browser"

    .line 10
    invoke-virtual {v1, p0, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    :cond_1
    return v0
.end method
