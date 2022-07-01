.class public Lccsansan/cy/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    const/16 v0, 0x49

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cy/unifiedDownload;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x32s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x65s
        0x68s
        0x6fs
        0x76s
        0x34s
        0x6bs
        0x70s
        0x73s
        0x6as
        0x66s
        0x6cs
        0x65s
        0x64s
        0x6bs
        0x71s
        0x6cs
        0x6bs
        0x74s
        0x6bs
        0x66s
        0x32s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x64s
        0x6bs
        0x71s
        0x6cs
        0x6bs
        0x74s
        0x6bs
        0x66s
        0x38s
        0x67s
        0x61s
        0x69s
        0x73s
        0x72s
        0x6ds
        0x6ds
        0x68s
        0x62s
        0x61s
        0x68s
        0x6bs
        0x6cs
        0x73s
        0x75s
        0x70s
        0x30s
        0x6bs
        0x74s
        0x71s
        0x67s
        0x69s
        0x73s
        0x6as
        0x69s
        0x73s
    .end array-data
.end method

.method public static ActionTypeDetailPage()J
    .locals 8

    .line 6
    const-string v0, "valid_retry_duration"

    .line 0
    const-wide v1, 0x9a7ec800L

    .line 1
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    const-string v6, "mads_cpi_config"

    invoke-static {v5, v6}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    return-wide v1

    .line 4
    :cond_0
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6, v5}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    .line 6
    const/4 v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_0

    sget v5, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x19

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_1

    goto :goto_2

    .line 5
    :pswitch_0
    nop

    .line 6
    :try_start_1
    invoke-virtual {v6, v0, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0

    goto :goto_3

    :goto_2
    invoke-virtual {v6, v0, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v0, 0x0

    :try_start_2
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide v0, v5

    :goto_3
    sget v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    :pswitch_1
    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/4 v3, 0x0

    :cond_3
    packed-switch v3, :pswitch_data_2

    goto :goto_4

    :pswitch_2
    return-wide v1

    :goto_4
    const/16 v0, 0x35

    :try_start_3
    div-int/2addr v0, v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-wide v1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static ActionTypeDownload()I
    .locals 4

    .line 7
    const-string v0, "upload_progress_max"

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_cpi_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    const/16 v2, 0x37

    goto :goto_0

    :cond_0
    const/16 v2, 0x5f

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2
    const/16 v0, 0x1e

    return v0

    .line 5
    :pswitch_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    .line 7
    const/16 v1, 0x61

    goto :goto_1

    :cond_1
    const/16 v1, 0x2b

    :goto_1
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x15

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 6
    :cond_2
    nop

    .line 7
    :try_start_1
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x11

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catch_0
    move-exception v0

    :pswitch_1
    const/16 v0, 0xa

    return v0

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2b
        :pswitch_1
    .end packed-switch
.end method

.method public static ActionTypeReserveApp()J
    .locals 4

    .line 5
    nop

    .line 0
    const-wide v0, 0x1cf7c5800L

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_cpi_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    .line 5
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x39

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    goto :goto_1

    .line 4
    :pswitch_0
    :try_start_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "valid_period"

    .line 5
    invoke-virtual {v3, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x23

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    return-wide v0

    :goto_1
    const/4 v2, 0x6

    goto :goto_2

    :cond_1
    const/16 v2, 0x5b

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 2
    :pswitch_1
    return-wide v0

    .line 5
    :goto_3
    const/4 v2, 0x0

    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 7
    const-string v0, "cpattern"

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 2
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    const-string v5, "mads_cpi_config"

    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v5, :cond_2

    const/16 v5, 0x1e

    goto :goto_3

    :cond_2
    const/16 v5, 0x2a

    :goto_3
    packed-switch v5, :pswitch_data_2

    goto :goto_7

    .line 5
    :goto_4
    :try_start_1
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_3

    .line 2
    const/4 v2, 0x0

    goto :goto_5

    :cond_3
    nop

    :goto_5
    packed-switch v2, :pswitch_data_3

    .line 7
    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    .line 6
    :cond_4
    nop

    .line 7
    :try_start_4
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :goto_6
    return-object v0

    :catch_0
    move-exception v0

    :pswitch_2
    return-object p0

    :goto_7
    :pswitch_3
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    nop

    .line 7
    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2a
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 10
    const-string v0, "\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0000\u0000\u0000"

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_cpi_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 10
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v0, v4

    .line 3
    return-object v1

    .line 6
    :cond_0
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v5, v2, [I

    const/4 v6, 0x0

    aput v6, v5, v6

    const/16 v7, 0xd

    const/4 v8, 0x1

    aput v7, v5, v8

    aput v6, v5, v4

    const/4 v9, 0x3

    aput v6, v5, v9

    invoke-static {v5, v0, v6}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 7
    invoke-virtual {v3, v5}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 10
    const/4 v5, 0x0

    goto :goto_0

    :cond_1
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 7
    new-array v2, v2, [I

    aput v6, v2, v6

    aput v7, v2, v8

    aput v6, v2, v4

    aput v6, v2, v9

    invoke-static {v2, v0, v6}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 10
    const/4 v2, 0x0

    .line 9
    :goto_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v2, v3, :cond_2

    .line 10
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_0
    sget v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x15

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v3, v4

    if-eqz v3, :cond_3

    :cond_3
    :try_start_1
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_3
    :pswitch_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveSDK()I
    .locals 6

    .line 6
    const-string v0, "read_timeout"

    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v4, "mads_cpi_config"

    packed-switch v1, :pswitch_data_0

    .line 0
    const/16 v1, 0x7530

    goto :goto_2

    .line 6
    :pswitch_0
    const/16 v1, 0x6c2b

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 6
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_8

    .line 1
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    const/16 v5, 0x44

    goto :goto_3

    :cond_2
    const/16 v5, 0x60

    :goto_3
    packed-switch v5, :pswitch_data_2

    goto :goto_7

    .line 4
    :goto_4
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_3

    .line 6
    const/4 v2, 0x0

    goto :goto_5

    :cond_3
    nop

    :goto_5
    packed-switch v2, :pswitch_data_3

    goto :goto_8

    .line 2
    :pswitch_2
    sget v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x6d

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 6
    :try_start_1
    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v2, 0x56

    :try_start_2
    div-int/2addr v2, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    .line 2
    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :cond_4
    nop

    .line 6
    :try_start_3
    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_6
    return v0

    :goto_7
    :pswitch_3
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    :try_start_4
    array-length v0, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    throw v0

    .line 2
    :cond_5
    return v1

    .line 6
    :goto_8
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x60
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static IncentiveSDK$1()J
    .locals 6

    .line 5
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const-wide/32 v0, 0xdbba0

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_cpi_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_1

    .line 5
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    sget v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x25

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    goto :goto_3

    .line 4
    :pswitch_0
    :try_start_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "upload_interval"

    .line 5
    invoke-virtual {v3, v2, v0, v1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x11

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    packed-switch v4, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-wide v0

    :goto_2
    const/16 v2, 0x17

    :try_start_2
    div-int/2addr v2, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    const/4 v4, 0x0

    :goto_3
    packed-switch v4, :pswitch_data_2

    goto :goto_4

    .line 2
    :pswitch_2
    return-wide v0

    .line 5
    :goto_4
    const/4 v2, 0x0

    :try_start_3
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return-wide v0

    :catchall_1
    move-exception v0

    throw v0

    :catch_0
    move-exception v2

    return-wide v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static addDownloadListener()J
    .locals 13

    .line 7
    const-string v0, "\u0001\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001"

    .line 0
    const-wide/32 v1, 0x240c8400

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    const-string v4, "mads_cpi_config"

    invoke-static {v3, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    const/4 v4, 0x7

    goto :goto_0

    :cond_0
    const/16 v4, 0x1d

    :goto_0
    const/4 v5, 0x2

    packed-switch v4, :pswitch_data_0

    .line 2
    goto :goto_3

    .line 5
    :pswitch_0
    :try_start_0
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    new-array v6, v3, [I

    const/16 v7, 0xd

    const/4 v8, 0x0

    aput v7, v6, v8

    const/16 v9, 0x10

    const/4 v10, 0x1

    aput v9, v6, v10

    aput v8, v6, v5

    const/4 v11, 0x3

    aput v8, v6, v11

    invoke-static {v6, v0, v8}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 6
    invoke-virtual {v4, v6}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 7
    const/16 v6, 0xc

    goto :goto_1

    :cond_1
    const/16 v6, 0x8

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    sget v6, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v6, v6, 0x63

    rem-int/lit16 v12, v6, 0x80

    sput v12, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v6, v5

    if-eqz v6, :cond_2

    .line 6
    :cond_2
    :try_start_1
    new-array v3, v3, [I

    aput v7, v3, v8

    aput v9, v3, v10

    aput v8, v3, v5

    aput v8, v3, v11

    invoke-static {v3, v0, v8}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    :goto_2
    return-wide v1

    :goto_3
    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x47

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v5

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 7
    const-string v0, "mpattern"

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_cpi_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/16 v2, 0x3c

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2
    goto :goto_3

    .line 5
    :pswitch_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_3

    .line 7
    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v1, 0x60

    goto :goto_1

    :cond_2
    const/16 v1, 0x43

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 6
    :pswitch_1
    nop

    .line 7
    :try_start_1
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :goto_2
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v1, 0x0

    :try_start_2
    array-length p0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :catch_0
    move-exception v0

    :cond_3
    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p0, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p0, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p0, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p0, v7

    .line 1203
    sget-object v8, Lccsansan/cy/unifiedDownload;->unifiedDownload:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p1, :cond_3

    .line 1211
    new-array v2, v4, [C

    .line 1212
    nop

    .line 1214
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge v10, v4, :cond_2

    .line 1216
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-byte v10, p1, v10

    if-ne v10, v3, :cond_1

    .line 1218
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 1222
    :cond_1
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 1225
    :goto_1
    sget v8, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v8, v2, v8

    .line 1214
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr v10, v3

    sput v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_0

    .line 1228
    :cond_2
    move-object v9, v2

    .line 1232
    :cond_3
    if-lez v7, :cond_4

    .line 1234
    new-array p1, v4, [C

    .line 1236
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p2, :cond_6

    .line 1244
    new-array p1, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p2, v4, :cond_5

    .line 1248
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p1, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p1

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_7

    .line 1259
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    .line 1257
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_3

    .line 1263
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1264
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static deleteDownItem()Z
    .locals 5

    .line 7
    const-string v0, "upload_apps"

    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 2
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const-string v4, "mads_cpi_config"

    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :cond_1
    packed-switch v2, :pswitch_data_1

    :goto_1
    goto :goto_4

    :goto_2
    const/16 v4, 0x61

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_2

    const/16 v2, 0x3a

    goto :goto_3

    :cond_2
    const/16 v2, 0x25

    :goto_3
    packed-switch v2, :pswitch_data_2

    goto :goto_1

    .line 5
    :pswitch_1
    :try_start_1
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_5

    .line 2
    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    .line 6
    :cond_3
    nop

    .line 7
    :try_start_2
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const/16 v1, 0xc

    :try_start_3
    div-int/2addr v1, v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    return v0

    :catch_0
    move-exception v0

    :cond_5
    return v3

    :goto_4
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    return v3

    .line 7
    :catchall_1
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x25
        :pswitch_1
    .end packed-switch
.end method

.method public static deleteDownList()I
    .locals 5

    .line 6
    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/16 v0, 0x2710

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_cpi_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 6
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    .line 5
    :pswitch_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retry_delay"

    .line 6
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0

    :goto_1
    const/4 v3, 0x0

    :cond_2
    packed-switch v3, :pswitch_data_1

    .line 2
    return v0

    .line 6
    :pswitch_1
    const/16 v1, 0x16

    :try_start_1
    div-int/2addr v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static execute()I
    .locals 4

    .line 6
    const-string v0, "offline_limit"

    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x4d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 0
    :cond_0
    const/16 v1, 0x14

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_cpi_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    const/16 v3, 0x41

    goto :goto_0

    :cond_1
    const/4 v3, 0x4

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 5
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 6
    :pswitch_0
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    .line 2
    :pswitch_1
    goto :goto_3

    .line 6
    :goto_2
    const/4 v0, 0x0

    :try_start_1
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    return v1

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :goto_4
    :try_start_2
    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    return v1

    :catch_0
    move-exception v0

    return v1

    :pswitch_data_0
    .packed-switch 0x41
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl()I
    .locals 3

    .line 5
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/16 v0, 0x3b

    :goto_0
    const-string v1, "mads_cpi_config"

    packed-switch v0, :pswitch_data_0

    .line 0
    const/16 v0, 0x3a98

    goto :goto_2

    .line 5
    :pswitch_0
    const/16 v0, 0x2f42

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    goto :goto_3

    .line 5
    :catch_0
    move-exception v1

    goto :goto_6

    .line 1
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    goto :goto_1

    .line 5
    :goto_3
    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 2
    const/4 v1, 0x0

    goto :goto_4

    :cond_1
    const/16 v1, 0x4c

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 5
    goto :goto_5

    .line 2
    :pswitch_1
    return v0

    .line 5
    :goto_5
    const/16 v1, 0x1e

    :try_start_1
    div-int/2addr v1, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    .line 4
    :cond_2
    :try_start_2
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "timeout"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2
    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x39

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    .line 5
    :goto_6
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadedCount()I
    .locals 3

    .line 5
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v2, "mads_cpi_config"

    packed-switch v0, :pswitch_data_0

    .line 0
    goto :goto_2

    .line 5
    :pswitch_0
    nop

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :goto_1
    goto :goto_3

    .line 5
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :goto_3
    return v1

    .line 4
    :cond_1
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "retry_count"

    .line 5
    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 2
    const/16 v1, 0x4b

    goto :goto_4

    :cond_2
    const/16 v1, 0x38

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 5
    return v0

    :pswitch_1
    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :goto_5
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4b
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadedList()I
    .locals 6

    .line 7
    const-string v0, "upload_method"

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_cpi_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eqz v2, :cond_1

    .line 7
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v0, v5

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    const/4 v5, 0x5

    goto :goto_1

    .line 2
    :pswitch_0
    nop

    .line 7
    :goto_1
    return v5

    .line 5
    :cond_1
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_2

    .line 7
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v1, v5

    if-nez v1, :cond_3

    .line 6
    :cond_3
    nop

    .line 7
    :try_start_1
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    :goto_3
    return v5

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl()J
    .locals 6

    .line 7
    const-string v0, "valid_duration"

    .line 0
    const-wide/32 v1, 0x240c8400

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    const-string v4, "mads_cpi_config"

    invoke-static {v3, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    const/16 v4, 0x4c

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 5
    :try_start_0
    new-instance v4, Lccsanorg/json/JSONObject;

    goto :goto_1

    .line 2
    :pswitch_0
    nop

    .line 7
    return-wide v1

    .line 5
    :goto_1
    invoke-direct {v4, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 7
    const/16 v3, 0x59

    goto :goto_2

    :cond_1
    const/16 v3, 0x41

    :goto_2
    packed-switch v3, :pswitch_data_1

    sget v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x69

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 6
    :cond_2
    nop

    .line 7
    :try_start_1
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    :pswitch_1
    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x4c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingCount()I
    .locals 4

    .line 5
    nop

    .line 0
    const/16 v0, 0x3a98

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_cpi_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 5
    :pswitch_0
    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v1, 0x4d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 2
    :cond_1
    nop

    .line 5
    add-int/lit8 v1, v1, 0x57

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    .line 4
    :goto_1
    :try_start_1
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "timeout_gp"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v1

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList()I
    .locals 3

    .line 6
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "mads_cpi_config"

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    const/16 v2, 0xa

    goto :goto_0

    :cond_1
    const/4 v2, 0x5

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_2

    goto :goto_1

    .line 5
    :pswitch_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "mode"

    .line 6
    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v1

    .line 2
    :cond_2
    :goto_1
    nop

    .line 6
    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v0, v2, 0x80

    sput v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v2, v1

    return v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;)Z
    .locals 6

    .line 9
    const-string v0, "protect"

    .line 1
    const/4 v1, 0x0

    invoke-static {v1}, Lccsansan/bw/getErrorCode;->addDownloadListener(Z)Z

    move-result v2

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    const-string v4, "mads_cpi_config"

    invoke-static {v3, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_0

    .line 9
    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget p0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    goto :goto_2

    .line 6
    :pswitch_0
    :try_start_0
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 9
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    nop

    :goto_1
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 7
    :cond_2
    nop

    .line 8
    :try_start_1
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 9
    invoke-virtual {v0, p0, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    :pswitch_1
    sget p0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x3

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return v2

    :cond_3
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_2

    .line 3
    return v2

    .line 9
    :pswitch_2
    const/4 p0, 0x0

    :try_start_2
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v2

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method public static getDownloadingRecordByUrl()Z
    .locals 6

    .line 5
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_cpi_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    .line 5
    const/16 v3, 0x33

    goto :goto_0

    :cond_1
    const/16 v3, 0x4f

    :goto_0
    const/4 v4, 0x1

    packed-switch v3, :pswitch_data_0

    sget v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/2addr v2, v4

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v1

    goto :goto_1

    .line 4
    :pswitch_0
    :try_start_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x4

    new-array v2, v2, [I

    const/16 v5, 0x2e

    aput v5, v2, v0

    const/16 v5, 0x11

    aput v5, v2, v4

    aput v0, v2, v1

    const/4 v1, 0x3

    const/16 v4, 0x10

    aput v4, v2, v1

    const-string v1, "\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000"

    invoke-static {v2, v1, v0}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v3, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    .line 2
    :goto_1
    nop

    .line 5
    return v0

    :catch_0
    move-exception v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch
.end method

.method public static getPackageNameByRecord()I
    .locals 4

    .line 5
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0x12

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    :goto_0
    const-string v2, "mads_cpi_config"

    packed-switch v0, :pswitch_data_0

    .line 5
    const/4 v0, 0x0

    goto :goto_1

    .line 1
    :pswitch_0
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    goto :goto_3

    .line 5
    :catch_0
    move-exception v0

    goto :goto_5

    .line 1
    :goto_1
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_1

    const/16 v3, 0x27

    goto :goto_2

    :cond_1
    const/4 v3, 0x4

    :goto_2
    packed-switch v3, :pswitch_data_1

    move-object v0, v2

    const/4 v1, 0x0

    goto :goto_4

    :goto_3
    :pswitch_1
    sget v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/2addr v2, v1

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    .line 5
    return v0

    .line 4
    :cond_2
    :goto_4
    :try_start_2
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "no_active_report"

    .line 5
    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_1
    move-exception v1

    const/4 v1, 0x0

    :goto_5
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPathByRecord()I
    .locals 7

    .line 6
    const-string v0, "connect_timeout"

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    const/16 v1, 0x7530

    .line 1
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    const-string v6, "mads_cpi_config"

    invoke-static {v5, v6}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 6
    const/16 v6, 0x56

    goto :goto_0

    :cond_1
    const/16 v6, 0x11

    :goto_0
    packed-switch v6, :pswitch_data_0

    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    goto :goto_2

    .line 4
    :pswitch_0
    :try_start_1
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6, v5}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    const/4 v5, 0x0

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_1

    .line 5
    nop

    .line 6
    invoke-virtual {v6, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :goto_2
    const/4 v0, 0x4

    goto :goto_3

    :cond_3
    const/16 v0, 0x13

    :goto_3
    packed-switch v0, :pswitch_data_2

    .line 2
    return v1

    .line 6
    :pswitch_1
    :try_start_2
    array-length v0, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    :pswitch_2
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/2addr v0, v4

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    goto :goto_4

    :cond_4
    const/4 v3, 0x1

    :goto_4
    packed-switch v3, :pswitch_data_3

    return v1

    :pswitch_3
    :try_start_3
    array-length v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x11
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static pause()Z
    .locals 4

    .line 6
    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "mads_cpi_config"

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 6
    :pswitch_0
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x11

    goto :goto_1

    :cond_1
    const/16 v1, 0x1a

    :goto_1
    packed-switch v1, :pswitch_data_1

    :goto_2
    goto :goto_4

    :goto_3
    const/4 v1, 0x0

    :cond_2
    packed-switch v1, :pswitch_data_2

    goto :goto_2

    .line 6
    :pswitch_1
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v0, 0x61

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 2
    :cond_3
    nop

    .line 6
    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    :catchall_0
    move-exception v0

    throw v0

    :cond_4
    return v2

    .line 5
    :goto_4
    :try_start_1
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "gzip_enable"

    .line 6
    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x11
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static performAction()I
    .locals 6

    .line 7
    const-string v0, "upload_progress_min"

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x2f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    const-string v3, "mads_cpi_config"

    const/4 v4, -0x1

    if-eqz v1, :cond_1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    :try_start_0
    array-length v5, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 7
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 7
    :pswitch_0
    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    const/4 v1, 0x5

    add-int/2addr v0, v1

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    .line 2
    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 7
    goto :goto_2

    .line 2
    :pswitch_1
    return v4

    .line 7
    :goto_2
    :try_start_1
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v4

    :catchall_1
    move-exception v0

    throw v0

    .line 5
    :cond_3
    :goto_3
    :try_start_2
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_4

    .line 2
    const/16 v1, 0x25

    goto :goto_4

    :cond_4
    const/16 v1, 0x4f

    :goto_4
    packed-switch v1, :pswitch_data_2

    .line 7
    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x27

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 6
    :cond_5
    nop

    .line 7
    :try_start_3
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return v0

    :catch_0
    move-exception v0

    :pswitch_2
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return v4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4f
        :pswitch_2
    .end packed-switch
.end method

.method public static removeDownloadListener()J
    .locals 6

    .line 7
    const-string v0, "supplement_interval"

    .line 0
    const-wide/32 v1, 0x2932e00

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    const-string v4, "mads_cpi_config"

    invoke-static {v3, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 7
    const/16 v4, 0x4a

    goto :goto_0

    :cond_0
    const/16 v4, 0x2e

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 5
    :try_start_0
    new-instance v4, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :pswitch_0
    nop

    .line 7
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x17

    :try_start_1
    div-int/lit8 v0, v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-wide v1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return-wide v1

    .line 5
    :goto_1
    :try_start_2
    invoke-direct {v4, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v3, :cond_2

    .line 7
    const/16 v3, 0x4e

    goto :goto_2

    :cond_2
    const/16 v3, 0x40

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x5d

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 6
    :cond_3
    nop

    .line 7
    :try_start_3
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    :goto_3
    return-wide v1

    nop

    :pswitch_data_0
    .packed-switch 0x4a
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4e
        :pswitch_1
    .end packed-switch
.end method

.method public static resolveUrl()I
    .locals 4

    .line 13
    sget v0, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 8
    :cond_0
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "mads_cpi_config"

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    const/16 v2, 0x15

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 9
    return v1

    .line 12
    :pswitch_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "info_type"

    .line 13
    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v2, v1

    return v0

    :catch_0
    move-exception v0

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static resume()Z
    .locals 6

    .line 6
    const-string v0, "gp_detail"

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const/16 v2, 0x24

    const-string v3, "mads_cpi_config"

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0xd

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x1

    goto :goto_4

    .line 6
    :catch_0
    move-exception v0

    goto :goto_6

    .line 1
    :cond_1
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v3, :cond_2

    const/16 v2, 0x38

    :cond_2
    packed-switch v2, :pswitch_data_1

    const/4 v0, 0x0

    goto :goto_4

    :pswitch_1
    const/4 v4, 0x0

    .line 4
    :goto_1
    :try_start_2
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_3

    .line 2
    const/16 v1, 0x3a

    goto :goto_2

    :cond_3
    const/16 v1, 0x42

    :goto_2
    packed-switch v1, :pswitch_data_2

    goto :goto_6

    .line 6
    :pswitch_2
    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x41

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v2, v0, v4}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v1, 0x28

    :try_start_4
    div-int/2addr v1, v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :cond_4
    nop

    .line 6
    :try_start_5
    invoke-virtual {v2, v0, v4}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :goto_3
    return v0

    :goto_4
    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_5

    .line 2
    const/4 v4, 0x0

    goto :goto_5

    :cond_5
    nop

    :goto_5
    packed-switch v4, :pswitch_data_3

    return v0

    .line 6
    :pswitch_3
    const/4 v1, 0x0

    :try_start_6
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    throw v0

    :catch_1
    move-exception v0

    const/4 v4, 0x0

    :goto_6
    return v4

    :pswitch_data_0
    .packed-switch 0x24
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3a
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch
.end method

.method public static shouldTryHandlingAction()I
    .locals 4

    .line 13
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 9
    const/16 v0, 0xf

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    const-string v2, "mads_cpi_config"

    packed-switch v0, :pswitch_data_0

    .line 0
    const/16 v0, 0x3a98

    goto :goto_2

    .line 13
    :pswitch_0
    const/16 v0, 0x37cb

    .line 8
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_4

    .line 13
    :catch_0
    move-exception v1

    goto :goto_5

    .line 8
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 9
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 12
    :cond_2
    :pswitch_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "delete_delay"

    .line 13
    invoke-virtual {v3, v2, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    sget v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x3

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/2addr v2, v1

    .line 13
    return v0

    .line 9
    :goto_4
    return v0

    .line 13
    :goto_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static trackReportClick()I
    .locals 5

    .line 11
    const-string v0, "type"

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    const-string v3, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 11
    const/16 v2, 0x2d

    goto :goto_0

    :cond_1
    const/16 v2, 0x32

    :goto_0
    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    .line 2
    goto :goto_2

    .line 6
    :pswitch_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 8
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    sget v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x9

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v3, 0x0

    :cond_2
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return v0

    :goto_1
    const/16 v1, 0xe

    :try_start_1
    div-int/2addr v1, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CPIConfig"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x3f
        0xa
        0x0
        0x0
    .end array-data
.end method

.method public static trackReportShow()I
    .locals 7

    .line 20
    const-string v0, "interval"

    .line 0
    const v1, 0x927c0

    .line 10
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const-string v4, "\u0001\u0000\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 20
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 17
    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    nop

    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 20
    goto :goto_1

    .line 11
    :pswitch_0
    return v1

    .line 20
    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    .line 15
    :cond_1
    :try_start_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_2

    .line 17
    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    .line 20
    sget v2, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x4d

    rem-int/lit16 v6, v2, 0x80

    sput v6, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 17
    const/4 v4, 0x0

    goto :goto_3

    :cond_3
    nop

    :goto_3
    packed-switch v4, :pswitch_data_2

    .line 20
    goto :goto_4

    .line 16
    :pswitch_1
    nop

    .line 17
    :try_start_2
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :goto_4
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v2, 0x9

    :try_start_3
    div-int/2addr v2, v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    .line 20
    :catchall_1
    move-exception v0

    throw v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "CPIConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x3f
        0xa
        0x0
        0x0
    .end array-data
.end method

.method public static unifiedDownload()J
    .locals 13

    .line 7
    const-string v0, "\u0000\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001"

    sget v1, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    const/4 v2, 0x2

    rem-int/2addr v1, v2

    if-eqz v1, :cond_0

    const/16 v1, 0x54

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    :goto_0
    const-wide/32 v3, 0x2932e00

    const-string v5, "mads_cpi_config"

    const/4 v6, 0x1

    const/4 v7, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 7
    const/4 v5, 0x0

    goto :goto_1

    :cond_1
    const/4 v5, 0x1

    :goto_1
    packed-switch v5, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    .line 2
    :goto_2
    const/4 v8, 0x0

    :try_start_0
    array-length v8, v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_2

    .line 7
    const/4 v5, 0x0

    goto :goto_3

    :cond_2
    const/4 v5, 0x1

    :goto_3
    packed-switch v5, :pswitch_data_2

    goto :goto_5

    .line 2
    :goto_4
    nop

    .line 7
    return-wide v3

    .line 5
    :goto_5
    :pswitch_2
    :try_start_1
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    new-array v8, v1, [I

    const/16 v9, 0x1d

    aput v9, v8, v7

    const/16 v10, 0x11

    aput v10, v8, v6

    aput v7, v8, v2

    const/4 v11, 0x3

    aput v7, v8, v11

    invoke-static {v8, v0, v7}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 6
    invoke-virtual {v5, v8}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v8, :cond_4

    .line 2
    sget v8, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v8, v8, 0x35

    rem-int/lit16 v12, v8, 0x80

    sput v12, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v8, v2

    if-eqz v8, :cond_3

    :try_start_2
    new-array v1, v1, [I

    aput v9, v1, v7

    aput v10, v1, v6

    aput v7, v1, v2

    aput v7, v1, v11

    invoke-static {v1, v0, v7}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 6
    :cond_3
    new-array v1, v1, [I

    aput v9, v1, v7

    aput v10, v1, v6

    aput v7, v1, v2

    aput v7, v1, v11

    invoke-static {v1, v0, v7}, Lccsansan/cy/unifiedDownload;->addDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-wide v0

    :catch_0
    move-exception v0

    :cond_4
    nop

    .line 2
    sget v0, Lccsansan/cy/unifiedDownload;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/unifiedDownload;->removeDownloadListener:I

    rem-int/2addr v0, v2

    .line 7
    return-wide v3

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
