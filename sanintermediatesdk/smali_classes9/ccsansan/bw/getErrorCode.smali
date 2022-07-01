.class public Lccsansan/bw/getErrorCode;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:J

.field private static addDownloadListener:I

.field private static getDownloadingList:Ljava/lang/String;

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    invoke-static {}, Lccsansan/bw/getErrorCode;->performAction()V

    sget v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v0, 0x57

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch
.end method

.method public static ActionTypeDetailPage()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "oaid"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x5b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "storage_cid"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x16

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 v1, 0x14

    :try_start_0
    div-int/2addr v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(J)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "adcs_stats_last_track_noupload_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "imei"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0xf

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x3a

    goto :goto_0

    :cond_0
    const/16 p0, 0x41

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 5
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x1f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x7

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Z)V
    .locals 3

    .line 5
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "cpi_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "cpi_protect_key"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static IncentiveSDK()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "layer_config_version"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static IncentiveSDK(Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "pkg_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "pkg_name_save"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x31

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static IncentiveSDK$1()Z
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_gdpr"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "al_record_enable"

    invoke-virtual {v0, v2, v1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x77

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x53

    goto :goto_0

    :cond_0
    const/16 v1, 0x28

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x53
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "imei"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static addDownloadListener(J)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "event_sn"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x26

    goto :goto_0

    :cond_0
    const/16 p0, 0x5b

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "mac_address"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const v2, 0x9373

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    sub-int/2addr v2, v3

    const-string v3, "\ufd9a\u6eec\udb42\u47cb\ub059\u1cb7\u893d\uf5bf\u660f\ud29c\u3fda\ua879\u14fa\u8158\uedc5\u5e2f\ucaa5\u373f\ua39e"

    invoke-static {v3, v2}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 11
    sget v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {p0, p1}, Lccsansan/bw/getErrorCode;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p0, p2}, Lccsansan/bw/getErrorCode;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {p0, p3}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p4}, Lccsansan/bw/getErrorCode;->getDownloadStatusByUrl(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 5

    .line 23
    nop

    .line 12
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "pkgName"

    .line 13
    :try_start_1
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "name"

    .line 14
    :try_start_2
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "versionCode"

    .line 15
    :try_start_3
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->unifiedDownload()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "splitNames"

    .line 16
    :try_start_4
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->getDownloadingList()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "filePath"

    .line 17
    :try_start_5
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "fileSize"

    .line 18
    :try_start_6
    invoke-virtual {p0}, Lccsansan/p/getDownloadedList;->deleteDownItem()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    const-string p0, "saveTime"

    .line 19
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 20
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\ufd98\ub91c\u7493\u3036\uef98\uab03\u6687\u2202\ud98c\u9501\u5081\u0c13\ucbb1\u873a\u42be"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/lit16 v1, v1, 0x4483

    invoke-static {v0, v1}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "\ufd9a\ub51c\u6ca5\u2461\udfc3\u9767\u4e06\u01b4\ub92f\u70db\u287c\ue3e2\u9ab0\u5239\u05d7\ubd44\u74e4"

    const-string v2, ""

    const/16 v3, 0x30

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit16 v2, v2, 0x4898

    invoke-static {v1, v2}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_0
    :goto_0
    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Z)Z
    .locals 3

    .line 5
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "cpi_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "cpi_protect_key"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p0

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    packed-switch v0, :pswitch_data_0

    return p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteDownItem()J
    .locals 4

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string v3, "last_upload_succeed_time"

    invoke-virtual {v0, v3, v1, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    sget v2, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x2b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method

.method public static deleteDownItem(J)V
    .locals 3

    .line 5
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "cpi_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "last_cpi_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static deleteDownItem(Ljava/lang/String;)V
    .locals 3

    .line 6
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteDownItem(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_final_url"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x3b

    goto :goto_0

    :cond_0
    const/16 p0, 0x5c

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x3b
        :pswitch_0
    .end packed-switch
.end method

.method public static deleteDownList()V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "adcs_stats_noupload_days"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static deleteDownList(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_final_url"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0xd

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static execute()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "pkg_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "pkg_name_save"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/16 v1, 0x26

    goto :goto_0

    :cond_0
    const/16 v1, 0x43

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x43
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl()J
    .locals 4

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string v3, "event_sn"

    invoke-virtual {v0, v3, v1, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    sget v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x1b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method

.method public static getDownloadStatusByUrl(J)J
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "adcs_stats_noupload_days"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide p0

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x23

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-wide p0

    :pswitch_0
    const/16 v0, 0x4b

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "WebSettings_UA"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadStatusByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const v2, 0x9373

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    const-string v2, "\ufd9a\u6eec\udb42\u47cb\ub059\u1cb7\u893d\uf5bf\u660f\ud29c\u3fda\ua879\u14fa\u8158\uedc5\u5e2f\ucaa5\u373f\ua39e"

    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_source"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadedCount(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 8
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const v2, 0x9373

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v3

    shr-int/lit8 v3, v3, 0x18

    sub-int/2addr v2, v3

    const-string v3, "\ufd9a\u6eec\udb42\u47cb\ub059\u1cb7\u893d\uf5bf\u660f\ud29c\u3fda\ua879\u14fa\u8158\uedc5\u5e2f\ucaa5\u373f\ua39e"

    invoke-static {v3, v2}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_source"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    const/16 v1, 0x51

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x52

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedCount()Z
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "adcs_stats_last_track_noupload_time"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->deleteDownItem(Ljava/lang/String;)Z

    move-result v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/16 v1, 0x3f

    goto :goto_0

    :cond_0
    const/16 v1, 0x22

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x3f
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedList()I
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    const-string v2, "upload_times_per_circle"

    invoke-virtual {v0, v2, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method public static getDownloadedList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static getDownloadedList(J)V
    .locals 3

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "adcs_stats_noupload_days"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_backupUrl_setting"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x36

    goto :goto_0

    :cond_0
    const/16 p0, 0x24

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x52

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl(J)J
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "adcs_stats_last_succeed_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide p0

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-wide p0

    :pswitch_0
    const/16 v0, 0x39

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "WebSettings_UA"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static getDownloadedRecordByUrl(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "layer_config_version"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x37

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ol_setting"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ol_cached_vast_ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x1

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    :cond_0
    const/16 p0, 0x4e

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x32

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingCount()J
    .locals 4

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string v3, "start_time_per_circle"

    invoke-virtual {v0, v3, v1, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    sget v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method

.method public static getDownloadingCount(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "mads_priority"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "build_sn"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(I)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "upload_times_per_circle"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;I)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x15

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x50

    goto :goto_0

    :cond_0
    const/16 p0, 0x41

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x16

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(J)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "last_upload_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "build_sn"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 7
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const v2, 0x9374

    const-string v3, ""

    invoke-static {v3}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v3

    add-int/2addr v3, v2

    const-string v2, "\ufd9a\u6eec\udb42\u47cb\ub059\u1cb7\u893d\uf5bf\u660f\ud29c\u3fda\ua879\u14fa\u8158\uedc5\u5e2f\ucaa5\u373f\ua39e"

    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_portal"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x20

    goto :goto_0

    :cond_0
    const/16 p0, 0x56

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Z)V
    .locals 3

    .line 3
    nop

    .line 2
    invoke-static {p0}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Z)V

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_gdpr"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "gdpr_consent"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x2c

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingRecordByUrl()J
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string v3, "last_upload_time"

    invoke-virtual {v0, v3, v1, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    sget v2, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0
.end method

.method public static getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const v2, 0x9373

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/2addr v3, v2

    const-string v2, "\ufd9a\u6eec\udb42\u47cb\ub059\u1cb7\u893d\uf5bf\u660f\ud29c\u3fda\ua879\u14fa\u8158\uedc5\u5e2f\ucaa5\u373f\ua39e"

    invoke-static {v2, v3}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_portal"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x54

    goto :goto_0

    :cond_0
    const/16 v0, 0x41

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingRecordByUrl(J)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "adcs_stats_last_succeed_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingRecordByUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "backupPath_setting"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x33

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getPackageNameByRecord()V
    .locals 3

    .line 7
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v1

    add-int/lit16 v1, v1, 0x2345

    const-string v2, "\ufd9a\udecb\ubb05\u945b\u70b0\u4dd1\u2e11\u0b79\ue7a1\uc0e2"

    invoke-static {v2, v1}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static getPackageNameByRecord(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "oaid"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x1b

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getThumbPathByRecord()Ljava/lang/String;
    .locals 4

    .line 6
    nop

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, ""

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v2

    add-int/lit16 v2, v2, 0x2346

    const-string v3, "\ufd9a\udecb\ubb05\u945b\u70b0\u4dd1\u2e11\u0b79\ue7a1\uc0e2"

    invoke-static {v3, v2}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    goto :goto_1

    :pswitch_0
    return-object v1

    :cond_1
    :goto_1
    invoke-static {}, Lccsansan/bw/getErrorCode;->getPackageNameByRecord()V

    sget v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v1, 0x47

    goto :goto_2

    :cond_2
    const/16 v1, 0x1a

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-object v0

    :goto_3
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1a
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPathByRecord(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_backupUrl_setting"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static pause(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_final_url"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static pause()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x55

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Lccsansan/bw/getErrorCode;->unifiedDownload(Z)Z

    move-result v0

    sget v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0
.end method

.method static performAction()V
    .locals 2

    const-wide v0, -0x5f91e622e900205L    # -6.489734906476104E279

    sput-wide v0, Lccsansan/bw/getErrorCode;->IncentiveDownloadUtils:J

    return-void
.end method

.method public static removeDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "mac_address"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsansan/bw/getErrorCode;->IncentiveDownloadUtils:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static removeDownloadListener(J)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "start_time_per_circle"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x3b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "storage_cid"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x4a

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const v2, 0x9373

    const/4 v3, 0x0

    invoke-static {v3}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    sub-int/2addr v2, v4

    const-string v4, "\ufd9a\u6eec\udb42\u47cb\ub059\u1cb7\u893d\uf5bf\u660f\ud29c\u3fda\ua879\u14fa\u8158\uedc5\u5e2f\ucaa5\u373f\ua39e"

    invoke-static {v4, v2}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    const-string p0, "\ufda4\ufbbd\uf1cb\uef05\ue533\ue371\ud88d\ud6de\ucce6\uca2e"

    cmp-long v6, v2, v4

    rsub-int v2, v6, 0x62f

    invoke-static {p0, v2}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x55

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static removeDownloadListener(Z)V
    .locals 2

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "gdpr_consent"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    sget p0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x37

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static resolveUrl()Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "cpi_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "last_cpi_apps"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static resume()J
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-wide/16 v1, 0x0

    const-string v3, "adcs_stats_last_track_noupload_time"

    invoke-virtual {v0, v3, v1, v2}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    sget v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x71

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x7

    goto :goto_0

    :cond_0
    const/16 v2, 0x26

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-wide v0

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x26
        :pswitch_0
    .end packed-switch
.end method

.method public static resume(Ljava/lang/String;)V
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "cpi_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "last_cpi_apps"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p0, 0x43

    :try_start_0
    div-int/2addr p0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldTryHandlingAction()Ljava/lang/String;
    .locals 3

    .line 3
    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    sget-object v0, Lccsansan/bw/getErrorCode;->getDownloadingList:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "mads_offline_config"

    const-string v2, "{}"

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsansan/bw/getErrorCode;->getDownloadingList:Ljava/lang/String;

    .line 3
    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x43

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    :cond_1
    sget-object v0, Lccsansan/bw/getErrorCode;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public static trackReportClick()J
    .locals 4

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "cpi_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "last_cpi_time"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v0

    sget v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    return-wide v0

    :pswitch_0
    const/4 v2, 0x0

    :try_start_0
    array-length v2, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static trackReportClick(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 11
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ol_setting"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ol_cached_vast_ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static trackReportShow()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "ad_base_stations"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x19

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return-object v0
.end method

.method public static trackReportShow(Ljava/lang/String;)V
    .locals 3

    .line 3
    nop

    .line 2
    sput-object p0, Lccsansan/bw/getErrorCode;->getDownloadingList:Ljava/lang/String;

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "mads_offline_config"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x51

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "android_id"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget v1, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    const/16 v1, 0x36

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object v0

    :goto_1
    const/16 v1, 0x3a

    :try_start_0
    div-int/lit8 v1, v1, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(J)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "san_stats_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "last_upload_succeed_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "device_settings"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v1, "android_id"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 10
    nop

    .line 3
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "pkgName"

    .line 4
    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string p0, "adId"

    .line 5
    invoke-virtual {v0, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "saveTime"

    .line 6
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 7
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\ufd9a\u0359!\u0111\u06f4\u07bc\u0490\u0a68\u0b37\u083d\u09f3\u0ea0\u0f80"

    const v0, 0xfed7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_settings"

    invoke-direct {p1, v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    const-string v0, "\ufd9a\udecb\ubb05\u945b\u70b0\u4dd1\u2e11\u0b79\ue7a1\uc0e2"

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, 0x2345

    invoke-static {v0, v1}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x2c

    goto :goto_0

    :cond_0
    const/16 p0, 0x3c

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    sget p0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static unifiedDownload(Z)Z
    .locals 3

    .line 4
    nop

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_gdpr"

    invoke-direct {v0, v1, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 4
    const-string v1, "gdpr_consent"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result p0

    sget v0, Lccsansan/bw/getErrorCode;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bw/getErrorCode;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p0

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
