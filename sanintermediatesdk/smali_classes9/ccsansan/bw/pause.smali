.class public Lccsansan/bw/pause;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static addDownloadListener:I

.field private static deleteDownItem:[B

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:[S

.field public static final removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bw/pause;->getDownloadedList:I

    invoke-static {}, Lccsansan/bw/pause;->addDownloadListener()V

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/pause;->IncentiveDownloadUtils:[B

    const/16 v0, 0x5e

    sput v0, Lccsansan/bw/pause;->removeDownloadListener:I

    sget v0, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void

    nop

    :array_0
    .array-data 1
        0x11t
        -0x3t
        0x7et
        -0x80t
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x1at
        0x27t
        -0x6t
        0xbt
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x17t
        0x2et
        0x1t
        0x8t
        -0xdt
        0x15t
        -0x2t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x44t
        -0x1t
        -0x3dt
        0x24t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 44
    nop

    .line 10
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 11
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    .line 12
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/bw/getMinIntervalToReturn$addDownloadListener;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "device_type"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 13
    const-string v2, "os_type"

    const-string v3, "android"

    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 14
    sget v2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const-string v3, "os_ver"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 15
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->widthPixels:I

    const-string v3, "screen_width"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 16
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->heightPixels:I

    const-string v3, "screen_height"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 17
    sget-object v2, Lccsanandroid/os/Build;->BRAND:Ljava/lang/String;

    const-string v3, "brand"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 18
    sget-object v2, Lccsanandroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v3, "manufacturer"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 19
    sget-object v2, Lccsanandroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "device_model"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 20
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Lccsanandroid/util/DisplayMetrics;->densityDpi:I

    const-string v3, "dpi"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 21
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    const-string v3, "network"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 22
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/ab/removeDownloadListener;->unifiedDownload()I

    move-result v2

    const/16 v3, -0x3e9

    if-eq v2, v3, :cond_0

    .line 24
    const-string v3, "mobile_network"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 26
    :cond_0
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "imei"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 27
    invoke-static {p0}, Lccsansan/ab/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/ab/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imsi"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 28
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->unifiedDownload()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 44
    const/16 v2, 0x2e

    goto :goto_0

    :cond_1
    const/16 v2, 0x5a

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x57

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 28
    :pswitch_0
    const-string v2, "32"

    goto :goto_2

    :cond_2
    :goto_1
    const-string v2, "64"

    :goto_2
    const-string v3, "cpu_bit"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 29
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    const-string v3, "timezone"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 30
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "lang"

    invoke-virtual {v0, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 31
    invoke-virtual {v1}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Lccsanandroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "country"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 32
    invoke-static {p0}, Lccsansan/bw/resolveUrl;->unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/bw/resolveUrl$unifiedDownload;

    move-result-object v1

    const-string v2, "battery_info"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 34
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_3

    .line 35
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 44
    goto :goto_3

    .line 35
    :cond_3
    move-object v3, v2

    :goto_3
    const-string v4, "gaid"

    invoke-virtual {v0, v4, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    if-eqz v1, :cond_4

    .line 44
    const/16 v3, 0x24

    goto :goto_4

    :cond_4
    const/16 v3, 0x1c

    :goto_4
    packed-switch v3, :pswitch_data_1

    .line 36
    invoke-static {p0}, Lccsansan/ca/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :pswitch_1
    nop

    .line 44
    sget v3, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 v3, v3, 0x31

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    .line 36
    move-object v3, v2

    :goto_5
    const-string v4, "oaid"

    invoke-virtual {v0, v4, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    if-eqz v1, :cond_5

    .line 37
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 44
    goto :goto_6

    .line 37
    :cond_5
    move-object v3, v2

    :goto_6
    const-string v4, "mac"

    invoke-virtual {v0, v4, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    if-eqz v1, :cond_6

    .line 44
    const/16 v1, 0x16

    goto :goto_7

    :cond_6
    const/16 v1, 0x43

    :goto_7
    packed-switch v1, :pswitch_data_2

    .line 38
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_8

    :pswitch_2
    nop

    :goto_8
    const-string v1, "android_id"

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 39
    invoke-static {p0}, Lccsansan/bw/pause;->addDownloadListener(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object p0

    const-string v1, "geo"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 41
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingRecordByUrl()Lccsanorg/json/JSONArray;

    move-result-object p0

    const-string v1, "cpu_abi"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 42
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->unifiedDownload()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 44
    sget p0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_7

    .line 43
    :cond_7
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p0

    const-string v1, "miui_code"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 44
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    const-string v1, "miui_name"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_8
    return-object v0

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x43
        :pswitch_2
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 9
    sget v0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x2d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 0
    if-eqz p0, :cond_5

    goto :goto_2

    .line 9
    :pswitch_0
    const/16 v0, 0xd

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    goto :goto_2

    :cond_1
    :goto_1
    goto :goto_5

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v0, 0x47

    goto :goto_3

    :cond_2
    const/16 v0, 0x3a

    :goto_3
    packed-switch v0, :pswitch_data_1

    goto :goto_4

    .line 0
    :pswitch_1
    if-nez p1, :cond_3

    goto :goto_1

    .line 9
    :goto_4
    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_3

    goto :goto_1

    .line 1
    :cond_3
    invoke-static {}, Lccsansan/bw/execute;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    const-string v1, "beyla_id"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2
    invoke-static {p0}, Lccsansan/bw/pause;->unifiedDownload(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v0

    if-nez v0, :cond_4

    return-void

    .line 6
    :cond_4
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_id"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 7
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "android_id"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 8
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "gaid"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 9
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->deleteDownItem(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "sim_country"

    invoke-virtual {p1, v0, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    sget p0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :catchall_1
    move-exception p0

    throw p0

    :cond_5
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3a
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 10
    nop

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 10
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x55

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget p0, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/2addr p0, v2

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_4

    .line 5
    :pswitch_0
    invoke-static {p0}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 10
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    nop

    :goto_1
    packed-switch v2, :pswitch_data_1

    :goto_2
    goto :goto_3

    .line 7
    :pswitch_1
    iget-object v1, p0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    const-string v2, "lat"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 8
    iget-object p0, p0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p0

    const-string v1, "lon"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 10
    sget p0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_2

    :goto_3
    invoke-static {}, Lccsansan/cd/removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p0

    const-string v1, "station"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    return-object v0

    .line 2
    :goto_4
    nop

    .line 10
    return-object v0

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 1

    const/16 v0, 0x44

    sput v0, Lccsansan/bw/pause;->unifiedDownload:I

    const v0, -0x16ecb60c

    sput v0, Lccsansan/bw/pause;->getDownloadingList:I

    const v0, -0x30bc9581

    sput v0, Lccsansan/bw/pause;->addDownloadListener:I

    const/16 v0, 0x9

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/pause;->deleteDownItem:[B

    return-void

    :array_0
    .array-data 1
        -0x4dt
        0x67t
        -0x50t
        -0x4bt
        0x53t
        -0x51t
        -0x55t
        -0x55t
        0x0t
    .end array-data
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/Boolean;
    .locals 3

    .line 5
    nop

    .line 1
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    const/16 v0, 0x4c

    goto :goto_0

    :cond_0
    const/16 v0, 0x54

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 2
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_4

    .line 4
    :pswitch_0
    invoke-static {p0}, Lccsansan/bw/deleteDownItem;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/bw/deleteDownItem$unifiedDownload;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 5
    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    :cond_2
    goto :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lccsansan/bw/deleteDownItem$unifiedDownload;->addDownloadListener()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_3

    :goto_2
    sget p0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    :cond_3
    const/4 v0, 0x0

    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :goto_4
    sget v0, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/bw/pause;->unifiedDownload:I

    add-int/2addr p4, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p4, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p4, Lccsansan/bw/pause;->deleteDownItem:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/bw/pause;->addDownloadListener:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/bw/pause;->getDownloadingRecordByUrl:[S

    sget v6, Lccsansan/bw/pause;->addDownloadListener:I

    add-int/2addr v6, p0

    aget-short p4, p4, v6

    add-int/2addr p4, v2

    int-to-short p4, p4

    .line 1223
    :cond_2
    :goto_1
    if-lez p4, :cond_5

    .line 1226
    add-int/2addr p0, p4

    add-int/lit8 p0, p0, -0x2

    sget v2, Lccsansan/bw/pause;->addDownloadListener:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/bw/pause;->getDownloadingList:I

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1231
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1234
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sput v5, Lccsansan/d/trackReportShow;->addDownloadListener:I

    :goto_2
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    if-ge p0, p4, :cond_5

    .line 1238
    sget-object p0, Lccsansan/bw/pause;->deleteDownItem:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p1

    .line 1241
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-byte p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsansan/bw/pause;->getDownloadingRecordByUrl:[S

    sget p1, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p3, p1, -0x1

    sput p3, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p1

    .line 1246
    sget-char p1, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p2

    int-to-short p0, p0

    sget-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p3

    add-int/2addr p1, p0

    int-to-char p0, p1

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    .line 1248
    :goto_3
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    sget-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    sput-char p0, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    .line 1235
    sget p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    add-int/2addr p0, v5

    sput p0, Lccsansan/d/trackReportShow;->addDownloadListener:I

    goto :goto_2

    .line 1253
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1254
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 38
    nop

    .line 8
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 27
    sget v1, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/pause;->getDownloadedList:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    .line 8
    :cond_0
    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    :try_start_0
    sget-object v6, Lccsansan/bw/pause;->IncentiveDownloadUtils:[B

    const/16 v7, 0x1c

    aget-byte v7, v6, v7

    neg-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x4

    aget-byte v9, v6, v8

    int-to-byte v9, v9

    or-int/lit8 v10, v9, 0x9

    int-to-byte v10, v10

    invoke-static {v7, v9, v10}, Lccsansan/bw/pause;->unifiedDownload(IIS)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    const/16 v9, 0x36

    aget-byte v9, v6, v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    int-to-byte v9, v9

    const/16 v11, 0x1a

    aget-byte v12, v6, v11

    int-to-byte v12, v12

    aget-byte v13, v6, v10

    neg-int v13, v13

    int-to-byte v13, v13

    invoke-static {v9, v12, v13}, Lccsansan/bw/pause;->unifiedDownload(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v7, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    const/16 v12, 0x4000

    .line 38
    sget v13, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 v13, v13, 0xb

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/2addr v13, v2

    if-nez v13, :cond_1

    .line 8
    :cond_1
    :try_start_2
    new-array v13, v2, [Ljava/lang/Object;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v13, v10

    aput-object v9, v13, v5

    const/16 v9, 0x39

    aget-byte v9, v6, v9

    sub-int/2addr v9, v10

    int-to-byte v9, v9

    aget-byte v12, v6, v8

    int-to-byte v12, v12

    const/4 v14, 0x7

    aget-byte v14, v6, v14

    int-to-byte v14, v14

    invoke-static {v9, v12, v14}, Lccsansan/bw/pause;->unifiedDownload(IIS)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    aget-byte v12, v6, v8

    int-to-byte v12, v12

    aget-byte v11, v6, v11

    int-to-byte v11, v11

    aget-byte v6, v6, v8

    int-to-byte v6, v6

    invoke-static {v12, v11, v6}, Lccsansan/bw/pause;->unifiedDownload(IIS)Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v8, v5

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v8, v10

    invoke-virtual {v9, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v7, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lccsanandroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 16
    :try_start_3
    iget v7, v6, Lccsanandroid/content/pm/PackageInfo;->versionCode:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    .line 17
    :try_start_4
    iget-object v8, v6, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 18
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, v6, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    sub-long/2addr v9, v11

    .line 19
    :try_start_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, v6, Lccsanandroid/content/pm/PackageInfo;->lastUpdateTime:J
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    sub-long/2addr v11, v13

    .line 20
    :try_start_7
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-static {p0, v6}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_3

    :catch_0
    move-exception v6

    goto :goto_2

    :catch_1
    move-exception v6

    move-wide v11, v3

    goto :goto_2

    :catch_2
    move-exception v6

    goto :goto_0

    :catch_3
    move-exception v6

    move-object v8, v1

    :goto_0
    move-wide v9, v3

    move-wide v11, v9

    goto :goto_2

    .line 8
    :catchall_0
    move-exception v6

    :try_start_8
    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_2

    :goto_1
    throw v7

    :cond_2
    throw v6

    :catchall_1
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v7
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    if-eqz v7, :cond_2

    goto :goto_1

    .line 20
    :catch_4
    move-exception v6

    move-object v8, v1

    move-wide v9, v3

    move-wide v11, v9

    const/4 v7, 0x0

    .line 22
    :goto_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "#createAppInfo error :"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v13, "ParamsUtil"

    invoke-static {v13, v6}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    move-object v6, v1

    .line 24
    :goto_3
    invoke-static {}, Lccsansan/bw/deleteDownList;->addDownloadListener()Ljava/lang/String;

    move-result-object v13

    const-string v14, "app_pkg"

    invoke-virtual {v0, v14, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 25
    const-string v13, "app_ver"

    invoke-virtual {v0, v13, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 26
    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 27
    const/16 v7, 0x2b

    goto :goto_4

    :cond_3
    const/16 v7, 0x51

    :goto_4
    const/16 v13, 0x16

    packed-switch v7, :pswitch_data_0

    :goto_5
    goto :goto_7

    .line 38
    :pswitch_0
    sget v7, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 v7, v7, 0x57

    rem-int/lit16 v14, v7, 0x80

    sput v14, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/2addr v7, v2

    if-nez v7, :cond_4

    .line 27
    const/16 v7, 0x16

    goto :goto_6

    :cond_4
    const/16 v7, 0x46

    :goto_6
    const-string v14, "app_vername"

    packed-switch v7, :pswitch_data_1

    .line 26
    nop

    .line 27
    invoke-virtual {v0, v14, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_7

    .line 38
    :pswitch_1
    nop

    .line 27
    invoke-virtual {v0, v14, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :try_start_9
    array-length v1, v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_5

    .line 38
    :catchall_2
    move-exception p0

    throw p0

    .line 28
    :goto_7
    invoke-static {}, Lccsansan/bw/deleteDownList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v7, "channel"

    invoke-virtual {v0, v7, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 29
    invoke-static {p0}, Lccsansan/bw/deleteDownList;->removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v7, "app_key"

    invoke-virtual {v0, v7, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 30
    invoke-static {p0}, Lccsansan/bl/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)J

    move-result-wide v7

    const-string p0, "init_time"

    invoke-virtual {v0, p0, v7, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 31
    invoke-static {v3, v4, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    const-string p0, "i_ms"

    invoke-virtual {v0, p0, v7, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    const p0, 0x30bc9581

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, p0

    const p0, 0x16ecb675

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v7

    shr-int/2addr v7, v13

    sub-int/2addr p0, v7

    invoke-static {v5, v5}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    add-int/lit8 v7, v7, -0x9

    int-to-short v7, v7

    const/16 v8, 0x30

    const-string v9, ""

    invoke-static {v9, v8, v5}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CI)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x5a

    int-to-byte v5, v5

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/lit8 v8, v8, -0x3b

    invoke-static {v1, p0, v7, v5, v8}, Lccsansan/bw/pause;->getDownloadingList(IISBI)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 32
    invoke-virtual {v0, p0, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 33
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    const-string p0, "u_ms"

    invoke-virtual {v0, p0, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 35
    const-string p0, "sdk_channel"

    const-string v1, "SAN"

    invoke-virtual {v0, p0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 36
    const-string p0, "mads_sdk_ver"

    const v1, 0x4c4b4a

    invoke-virtual {v0, p0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 37
    invoke-static {}, Lccsansan/bl/addDownloadListener;->unifiedDownload()I

    move-result p0

    const-string v3, "san_sdk_ver"

    invoke-virtual {v0, v3, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 38
    const-string p0, "sdk_ver"

    invoke-virtual {v0, p0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    sget p0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x5

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/2addr p0, v2

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 7
    sget v0, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 v1, v0, 0x61

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_3

    .line 0
    :pswitch_0
    if-eqz p0, :cond_1

    .line 7
    const/16 v1, 0x41

    goto :goto_1

    :cond_1
    const/16 v1, 0xa

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_4

    :goto_3
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_3

    goto :goto_2

    .line 0
    :goto_4
    if-nez p1, :cond_2

    .line 7
    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 p0, v0, 0x80

    sput p0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 1
    :cond_2
    invoke-static {p0}, Lccsansan/bw/pause;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "app_info"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 2
    invoke-static {p0}, Lccsansan/bw/pause;->unifiedDownload(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 3
    invoke-static {p0}, Lccsansan/bw/pause;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "device_info"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 4
    invoke-static {}, Lccsansan/bw/pause;->unifiedDownload()Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "ext"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v3, "ts"

    invoke-virtual {p1, v3, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 6
    const-string v0, "enable_action_tracker"

    invoke-virtual {p1, v0, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 7
    invoke-static {p0}, Lccsansan/bw/deleteDownList;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Z

    move-result p0

    const-string v0, "is_ex"

    invoke-virtual {p1, v0, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    :cond_3
    :goto_5
    :pswitch_1
    return-void

    :catchall_0
    move-exception p0

    goto :goto_7

    :goto_6
    throw p0

    :goto_7
    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(IIS)Ljava/lang/String;
    .locals 8

    add-int/lit8 p0, p0, 0x4

    sget-object v0, Lccsansan/bw/pause;->IncentiveDownloadUtils:[B

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x61

    add-int/lit8 p2, p2, 0xe

    new-array v1, p2, [B

    add-int/lit8 p2, p2, -0x1

    if-nez v0, :cond_0

    const/16 v2, 0x1b

    goto :goto_0

    :cond_0
    const/16 v2, 0x33

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_1

    :pswitch_0
    sget v2, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x55

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    move-object v2, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    move p2, p1

    move p1, p0

    goto :goto_2

    :goto_1
    int-to-byte v4, p1

    aput-byte v4, v1, v2

    if-ne v2, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    aget-byte v4, v0, p0

    sget v5, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 v5, v5, 0x9

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    move v7, p1

    move p1, p0

    move p0, v4

    move v4, v2

    move-object v2, v1

    move-object v1, v0

    move v0, p2

    move p2, v7

    :goto_2
    add-int/2addr p2, p0

    add-int/lit8 p0, p1, 0x1

    add-int/lit8 p1, p2, -0x2

    sget p2, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 p2, p2, 0xb

    rem-int/lit16 v5, p2, 0x80

    sput v5, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_2

    const/16 p2, 0x5e

    goto :goto_3

    :cond_2
    const/16 p2, 0x36

    :goto_3
    packed-switch p2, :pswitch_data_1

    :pswitch_1
    move p2, v0

    move-object v0, v1

    move-object v1, v2

    move v2, v4

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1b
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload()Lccsanorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 41
    nop

    .line 39
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 40
    invoke-static {}, Lccsansan/bw/getErrorCode;->pause()Z

    move-result v1

    const-string v2, "gdpr_consent"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    const/4 v1, 0x1

    .line 41
    const-string v2, "support_mraidjs"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    sget v1, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 7
    nop

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/bq/getDownloadedList;->getDownloadingList()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    const/16 v1, 0xf

    goto :goto_0

    :cond_0
    const/16 v1, 0x57

    :goto_0
    const/4 v2, 0x2

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v1, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 3
    :cond_1
    invoke-static {p0}, Lccsansan/bw/getMinIntervalToReturn;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "device_id"

    invoke-virtual {v0, v3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 5
    :goto_1
    invoke-static {}, Lccsansan/bw/execute;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v3, "beyla_id"

    invoke-virtual {v0, v3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 6
    invoke-static {p0}, Lccsansan/bw/pause;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object p0

    const-string v1, "limit_ad_tracking"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 7
    invoke-static {}, Lccsansan/bl/addDownloadListener;->removeDownloadListener()Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v1, 0x2

    goto :goto_4

    :goto_3
    sget p0, Lccsansan/bw/pause;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 v3, p0, 0x80

    sput v3, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    rem-int/2addr p0, v2

    :goto_4
    const-string p0, "buy_type"

    invoke-virtual {v0, p0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    sget p0, Lccsansan/bw/pause;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x33

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/bw/pause;->getDownloadedList:I

    rem-int/2addr p0, v2

    return-object v0

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
