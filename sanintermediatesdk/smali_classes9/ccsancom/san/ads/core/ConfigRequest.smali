.class public Lccsancom/san/ads/core/ConfigRequest;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/IConfigRequest;


# static fields
.field public static TEST_JSON:Ljava/lang/String; = ""


# instance fields
.field protected IncentiveDownloadUtils:I

.field protected addDownloadListener:I

.field protected unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x2710

    iput v0, p0, Lccsancom/san/ads/core/ConfigRequest;->unifiedDownload:I

    .line 3
    const/16 v0, 0x2718

    iput v0, p0, Lccsancom/san/ads/core/ConfigRequest;->addDownloadListener:I

    .line 4
    const/16 v0, 0x271a

    iput v0, p0, Lccsancom/san/ads/core/ConfigRequest;->IncentiveDownloadUtils:I

    return-void
.end method

.method protected static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const-string v2, "app_pkg"

    .line 4
    :try_start_0
    invoke-static {}, Lccsansan/bw/deleteDownList;->addDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "app_id"

    .line 5
    :try_start_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {p0}, Lccsansan/bw/deleteDownList;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-virtual {v0, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string p1, "app_ver"

    .line 6
    :try_start_2
    invoke-static {p0}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string p1, "sdk_ver"

    .line 7
    :try_start_3
    invoke-static {}, Lccsansan/bw/deleteDownList;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string p1, "sdk_ver_c"

    .line 8
    :try_start_4
    invoke-static {}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils()I

    move-result v2

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    const-string p1, "mads_sdk_ver"

    const v2, 0x4c4b4a

    .line 9
    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string p1, "channel"

    .line 10
    :try_start_5
    invoke-static {}, Lccsansan/bw/deleteDownList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string p1, "config_version"

    .line 12
    :try_start_6
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getConfigVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string p1, "os_type"

    const-string v2, "android"

    .line 13
    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string p1, "os_ver"

    .line 14
    :try_start_7
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    const-string p1, "screen_width"

    .line 15
    :try_start_8
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    const-string p1, "screen_height"

    .line 16
    :try_start_9
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    const-string p1, "brand"

    .line 17
    :try_start_a
    sget-object v2, Lccsanandroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_a
    .catch Lccsanorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_0

    const-string p1, "manufacturer"

    .line 18
    :try_start_b
    sget-object v2, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_b
    .catch Lccsanorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0

    const-string p1, "device_model"

    .line 19
    :try_start_c
    sget-object v2, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_c
    .catch Lccsanorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0

    const-string p1, "dpi"

    .line 20
    :try_start_d
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_d
    .catch Lccsanorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0

    const-string p1, "country"

    .line 21
    :try_start_e
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_e
    .catch Lccsanorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_0

    const-string p1, "timezone"

    .line 22
    :try_start_f
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_f
    .catch Lccsanorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0

    const-string p1, "lang"

    .line 23
    :try_start_10
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_10
    .catch Lccsanorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0

    const-string p1, "ts"

    .line 24
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_11
    .catch Lccsanorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0

    const-string p1, "is_ex"

    .line 25
    :try_start_12
    invoke-static {p0}, Lccsansan/bw/deleteDownList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 27
    invoke-static {p0}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "new_cache_request"

    const/4 v1, 0x1

    .line 28
    invoke-virtual {v0, p1, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 31
    :cond_1
    invoke-static {p0, v0}, Lccsansan/bw/pause;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V
    :try_end_12
    .catch Lccsanorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_0

    const-string p1, "geo"

    .line 32
    :try_start_13
    invoke-static {p0}, Lccsansan/bw/pause;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_13
    .catch Lccsanorg/json/JSONException; {:try_start_13 .. :try_end_13} :catch_0

    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lccsanorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lccsancom/san/ads/core/ConfigRequest;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/util/Map;)Lccsansan/x/addDownloadListener;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lccsansan/x/addDownloadListener;"
        }
    .end annotation

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 29
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 31
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    .line 35
    :cond_0
    const-string v4, "&"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    :goto_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    :goto_2
    const/4 p2, 0x3

    if-ge v1, p2, :cond_2

    const-string v2, "config"

    const/4 v4, 0x0

    .line 44
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    const/16 v6, 0x7530

    const/16 v7, 0x7530

    move-object v3, p1

    invoke-static/range {v2 .. v7}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BII)Lccsansan/x/addDownloadListener;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    add-int/lit8 v1, v1, 0x1

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doRetryPost(): URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", Retry count:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " and exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "ConfigRequest4SDK"

    invoke-static {v2, p2}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :try_start_1
    new-instance p2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p2, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/16 v2, 0x2710

    invoke-virtual {p2, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p2

    int-to-long v2, p2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p2

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    const-string v0, "ConfigRequest4SDK"

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    invoke-static {p1, p2}, Lccsancom/san/ads/core/ConfigRequest;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    .line 6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "debug"

    .line 8
    :try_start_1
    invoke-virtual {v2, p2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 10
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCloudReqBody postParams = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    .line 13
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 17
    :cond_0
    new-instance p2, Lccsanorg/json/JSONObject;

    invoke-direct {p2}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v3, "s"

    .line 19
    invoke-virtual {p2, v3, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v2, p2

    goto :goto_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    :goto_0
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "params"

    invoke-interface {v1, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "createCloudReqBody encoded postParams = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public request(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 10

    .line 1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lccsansan/dp/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {p1}, Lccsansan/bw/deleteDownList;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 5
    invoke-direct {p0, p1}, Lccsancom/san/ads/core/ConfigRequest;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/util/Map;

    move-result-object v4

    const/4 v5, 0x0

    const-string v6, "ConfigRequest4SDK"

    if-nez v4, :cond_0

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "#request createCloudReqBody failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 9
    const-string v0, "1000"

    invoke-static {p1, v0, p2, v2, v3}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v5

    .line 13
    :cond_0
    invoke-direct {p0, v2, v4}, Lccsancom/san/ads/core/ConfigRequest;->getDownloadingList(Ljava/lang/String;Ljava/util/Map;)Lccsansan/x/addDownloadListener;

    move-result-object v4

    .line 14
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "#getConfigsFromCloud host = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "#getConfigsFromCloud response = "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_1

    .line 17
    const-string v2, "#request getUrlResponse failed"

    invoke-static {v6, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 19
    const-string v0, "1001"

    invoke-static {p1, v0, p2, v2, v3}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v5

    .line 23
    :cond_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 24
    invoke-virtual {v4}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v2

    const/16 v9, 0xc8

    if-eq v2, v9, :cond_2

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#getConfigsFromCloud Get configs failed and status code = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1002_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, p2, v7, v8}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v5

    .line 30
    :cond_2
    sget-object v2, Lccsancom/san/ads/core/ConfigRequest;->TEST_JSON:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    sget-object v2, Lccsancom/san/ads/core/ConfigRequest;->TEST_JSON:Ljava/lang/String;

    .line 31
    :goto_0
    sget-object v4, Lccsancom/san/ads/core/ConfigRequest;->TEST_JSON:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 32
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "#getConfigsFromCloud from local."

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    :cond_4
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#getConfigsFromCloud The json is empty."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    const-string v0, "1003"

    invoke-static {p1, v0, p2, v7, v8}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v5

    .line 42
    :cond_5
    :try_start_0
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "ret_code"

    .line 43
    invoke-virtual {v4, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 44
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    sub-long/2addr v7, v0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#getConfigsFromCloud Get configs success and result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget v0, p0, Lccsancom/san/ads/core/ConfigRequest;->unifiedDownload:I

    if-ne v2, v0, :cond_6

    const-string v0, "duration"

    .line 48
    invoke-virtual {v4, v0, v7, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    return-object v4

    .line 52
    :cond_6
    iget v0, p0, Lccsancom/san/ads/core/ConfigRequest;->addDownloadListener:I

    if-ne v2, v0, :cond_7

    const-string v0, "10008"

    .line 53
    invoke-static {p1, v0, p2, v7, v8}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "cache_data_time"

    .line 54
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

    invoke-static {p1, v0, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 55
    :cond_7
    iget v0, p0, Lccsancom/san/ads/core/ConfigRequest;->IncentiveDownloadUtils:I

    if-ne v2, v0, :cond_8

    const-string v0, "10010"

    .line 56
    invoke-static {p1, v0, p2, v7, v8}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_8
    const-string v0, "10007"

    .line 58
    invoke-static {p1, v0, p2, v7, v8}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "1004"

    invoke-static {p1, v0, p2, v7, v8}, Lccsansan/bn/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v5
.end method
