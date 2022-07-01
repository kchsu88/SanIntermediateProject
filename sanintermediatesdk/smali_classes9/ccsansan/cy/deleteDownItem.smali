.class public Lccsansan/cy/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    const/16 v0, 0x1a

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/cy/deleteDownItem;->unifiedDownload:[C

    return-void

    :array_0
    .array-data 2
        0x9ds
        0x13as
        0x131s
        0x12ds
        0x133s
        0x12cs
        0x12bs
        0x132s
        0x131s
        0x131s
        0x136s
        0x138s
        0x132s
        0x12es
        0x132s
        0x74s
        0xe9s
        0xe3s
        0xe7s
        0xf0s
        0xeds
        0xe8s
        0xe1s
        0xdfs
        0xe8s
        0xees
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;)",
            "Ljava/util/List<",
            "Lccsansan/m/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x21

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 17
    invoke-static {}, Lccsansan/cy/deleteDownItem;->removeDownloadListener()Z

    move-result v0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    goto :goto_0

    .line 24
    :catchall_0
    move-exception p0

    throw p0

    .line 17
    :cond_0
    invoke-static {}, Lccsansan/cy/deleteDownItem;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_3

    .line 19
    :goto_0
    new-instance v0, Lccsansan/cy/getDownloadStatusByUrl;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)I

    move-result v3

    const-string v4, "212"

    invoke-direct {v0, v2, v4, v3, p0}, Lccsansan/cy/getDownloadStatusByUrl;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/util/List;)V

    .line 20
    invoke-virtual {v0}, Lccsansan/cy/getDownloadStatusByUrl;->unifiedDownload()Lccsanorg/json/JSONArray;

    move-result-object v2

    .line 22
    invoke-virtual {v0}, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingList()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 17
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 23
    invoke-static {v0, v2, p0}, Lccsansan/cy/deleteDownItem;->unifiedDownload(Lccsansan/cy/getDownloadStatusByUrl;Lccsanorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    goto :goto_2

    :pswitch_0
    nop

    .line 24
    return-object v1

    .line 17
    :goto_2
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x1f

    goto :goto_3

    :cond_2
    const/16 v0, 0x13

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 24
    return-object p0

    .line 17
    :pswitch_1
    const/16 v0, 0x32

    :try_start_1
    div-int/2addr v0, v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    .line 24
    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "loadAdInfo can not run in ui thread."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/cy/getDownloadStatusByUrl;Lccsanorg/json/JSONObject;Lccsansan/cy/getDownloadingRecordByUrl;)Lccsansan/m/removeDownloadListener;
    .locals 20

    .line 58
    move-object/from16 v0, p1

    const-string v1, "attr_code"

    .line 26
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lccsansan/cy/getDownloadStatusByUrl;->removeDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 58
    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    packed-switch v6, :pswitch_data_0

    .line 30
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 58
    :pswitch_0
    sget v0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x26

    :try_start_1
    div-int/2addr v0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 26
    :cond_1
    nop

    .line 58
    :goto_1
    return-object v2

    .line 31
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->execute()Ljava/util/List;

    move-result-object v13

    .line 32
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v7

    .line 34
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v8, :cond_3

    .line 58
    sget v8, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v8, v8, 0x79

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_2

    .line 35
    :cond_2
    :try_start_3
    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    :cond_3
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart()Ljava/util/List;

    move-result-object v7

    invoke-interface {v14, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 38
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdSize()Ljava/util/List;

    move-result-object v15

    .line 41
    new-instance v7, Lccsanorg/json/JSONObject;

    invoke-direct {v7}, Lccsanorg/json/JSONObject;-><init>()V

    .line 42
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v10, ""

    if-eqz v9, :cond_4

    .line 44
    :try_start_4
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v7

    invoke-virtual {v7}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v7

    .line 45
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v8

    invoke-virtual {v8}, Lccsansan/dt/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v8

    .line 46
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v9

    invoke-virtual {v9}, Lccsansan/dt/addDownloadListener;->removeDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v9

    .line 47
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/addDownloadListener;->unifiedDownload()Ljava/util/List;

    move-result-object v3

    move-object v12, v3

    move-object/from16 v16, v8

    goto :goto_3

    .line 43
    :cond_4
    move-object v9, v7

    move-object v12, v8

    move-object v7, v10

    move-object/from16 v16, v7

    .line 47
    :goto_3
    if-eqz v0, :cond_7

    .line 50
    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v8, "cut_type"

    .line 51
    move-object/from16 v10, p2

    :try_start_5
    iget v10, v10, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    invoke-virtual {v9, v8, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-eq v0, v3, :cond_5

    .line 58
    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    nop

    :goto_4
    packed-switch v4, :pswitch_data_1

    :goto_5
    goto :goto_6

    :pswitch_1
    sget v3, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 51
    :cond_6
    nop

    .line 53
    :try_start_6
    invoke-virtual {v9, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 58
    sget v0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_5

    .line 56
    :cond_7
    :goto_6
    :try_start_7
    invoke-virtual {v9}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    .line 58
    new-instance v0, Lccsansan/m/removeDownloadListener;

    const/4 v1, 0x0

    const/4 v8, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const-wide/16 v3, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object v3, v0

    move-object v4, v6

    move-object v5, v7

    move v6, v1

    move v7, v8

    move-object v8, v9

    move-object v9, v10

    move-object v10, v11

    move-object/from16 v11, v18

    move-object/from16 v18, v19

    invoke-direct/range {v3 .. v18}, Lccsansan/m/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 2

    .line 2
    sget v0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/cy/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p0

    sget p1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x6b

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_1

    const/16 p1, 0x33

    goto :goto_0

    :cond_1
    const/16 p1, 0x43

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 p1, 0x0

    :try_start_0
    array-length p1, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x33
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl;)Lccsansan/m/removeDownloadListener;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 16
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 9
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/cy/deleteDownItem;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_3

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/cy/deleteDownItem;->removeDownloadListener()Z

    move-result v0

    const/16 v3, 0x62

    :try_start_0
    div-int/2addr v3, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_3

    goto :goto_1

    .line 16
    :catchall_0
    move-exception p0

    throw p0

    .line 11
    :goto_2
    new-instance v0, Lccsansan/cy/getDownloadStatusByUrl;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)I

    move-result v4

    const-string v5, "212"

    invoke-direct {v0, v3, v5, v4, p0}, Lccsansan/cy/getDownloadStatusByUrl;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;ILccsansan/cy/getDownloadingRecordByUrl;)V

    .line 12
    invoke-virtual {v0}, Lccsansan/cy/getDownloadStatusByUrl;->addDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 14
    invoke-virtual {v0}, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveDownloadUtils()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 9
    const/4 v1, 0x0

    goto :goto_3

    :cond_1
    nop

    :goto_3
    packed-switch v1, :pswitch_data_1

    .line 15
    const/4 p0, 0x0

    goto :goto_4

    .line 9
    :pswitch_1
    sget v1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 15
    :cond_2
    invoke-static {v0, v3, p0}, Lccsansan/cy/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/cy/getDownloadStatusByUrl;Lccsanorg/json/JSONObject;Lccsansan/cy/getDownloadingRecordByUrl;)Lccsansan/m/removeDownloadListener;

    move-result-object p0

    return-object p0

    .line 16
    :goto_4
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/Exception;

    const-string v0, "loadAdInfo can not run in ui thread."

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "ad"

    invoke-static {p0, p1, v1}, Lccsansan/cy/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    array-length p0, p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/cy/deleteDownItem;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x39

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 33

    .line 74
    nop

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 51
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 6
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 74
    :pswitch_0
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object v3

    .line 7
    :goto_1
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->execute()Ljava/util/List;

    move-result-object v18

    .line 8
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v2

    .line 9
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart()Ljava/util/List;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getAdSize()Ljava/util/List;

    move-result-object v20

    .line 17
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v14, ""

    if-eqz v2, :cond_5

    .line 51
    sget v2, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x4b

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 18
    :cond_1
    :try_start_2
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 51
    const/16 v2, 0x55

    goto :goto_2

    :cond_2
    const/16 v2, 0x18

    :goto_2
    packed-switch v2, :pswitch_data_1

    move-object/from16 v2, p1

    goto :goto_3

    .line 18
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 74
    sget v4, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x61

    rem-int/lit16 v6, v4, 0x80

    sput v6, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_3

    .line 19
    :cond_3
    :goto_3
    :try_start_3
    invoke-static/range {p2 .. p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/dt/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_4
    move-object/from16 v4, p2

    .line 20
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v6

    invoke-virtual {v6}, Lccsansan/dt/addDownloadListener;->removeDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    .line 21
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v7

    invoke-virtual {v7}, Lccsansan/dt/addDownloadListener;->unifiedDownload()Ljava/util/List;

    move-result-object v7

    move-object/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v17, v7

    move-object v6, v2

    goto :goto_5

    .line 17
    :cond_5
    move-object/from16 v6, p1

    move-object/from16 v21, p2

    move-object/from16 v17, v3

    move-object/from16 v22, v14

    .line 24
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v25

    .line 25
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v24

    .line 26
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v26

    .line 27
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v2

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getHBResultData()Lccsansan/dt/deleteDownList;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/dt/deleteDownList;->removeDownloadListener()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_6

    :cond_6
    const-string v2, "0"

    :goto_6
    move-object/from16 v28, v2

    .line 28
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDetailPage()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    .line 29
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v30
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v29, ""

    .line 32
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v2

    .line 36
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 51
    const/4 v4, 0x0

    goto :goto_7

    :cond_7
    const/4 v4, 0x1

    :goto_7
    packed-switch v4, :pswitch_data_2

    .line 36
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v4
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_9

    :pswitch_2
    nop

    .line 74
    sget v4, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x77

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_8

    .line 51
    const/4 v4, 0x1

    goto :goto_8

    :cond_8
    const/4 v4, 0x0

    :goto_8
    packed-switch v4, :pswitch_data_3

    .line 74
    :pswitch_3
    nop

    .line 37
    move-object v4, v14

    goto :goto_a

    .line 36
    :goto_9
    :try_start_6
    invoke-virtual {v4}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v4

    .line 37
    :goto_a
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 51
    const/4 v7, 0x7

    goto :goto_b

    :cond_9
    const/16 v7, 0x4a

    :goto_b
    packed-switch v7, :pswitch_data_4

    .line 37
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 51
    const/16 v7, 0x8

    goto :goto_c

    :cond_a
    const/16 v7, 0x34

    :goto_c
    packed-switch v7, :pswitch_data_5

    .line 38
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v4

    goto :goto_d

    .line 41
    :pswitch_4
    move-object v7, v4

    goto :goto_e

    .line 38
    :goto_d
    invoke-virtual {v4}, Lccsansan/dt/resume;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v4

    .line 74
    move-object v7, v4

    .line 41
    :goto_e
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v4

    if-eqz v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_f

    :cond_b
    move-object v4, v14

    .line 42
    :goto_f
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-eqz v8, :cond_c

    .line 51
    const/16 v8, 0x4e

    goto :goto_10

    :cond_c
    const/16 v8, 0x52

    :goto_10
    packed-switch v8, :pswitch_data_6

    .line 74
    sget v8, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v8, v8, 0x47

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_d

    .line 42
    :cond_d
    :try_start_7
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v8

    if-eqz v8, :cond_e

    .line 43
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/dt/resume;->addDownloadListener()Ljava/lang/String;

    move-result-object v4

    .line 45
    :cond_e
    :pswitch_5
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_f

    move-object v8, v7

    goto :goto_11

    :cond_f
    move-object v8, v4

    .line 49
    :goto_11
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v4

    goto :goto_12

    :cond_10
    move-object v4, v14

    .line 50
    :goto_12
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v9, :cond_14

    .line 74
    sget v9, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v9, v9, 0x47

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v9, v9, 0x2

    if-nez v9, :cond_11

    .line 50
    :cond_11
    :try_start_8
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v9, :cond_12

    .line 51
    goto :goto_13

    :cond_12
    const/4 v0, 0x1

    :goto_13
    packed-switch v0, :pswitch_data_7

    .line 74
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_13

    .line 51
    :try_start_9
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    :try_start_a
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    goto :goto_14

    .line 74
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 51
    :cond_13
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/resume;->getDownloadingList()Ljava/lang/String;

    move-result-object v0

    :goto_14
    move-object v9, v0

    goto :goto_15

    .line 54
    :cond_14
    :pswitch_6
    move-object v9, v4

    :goto_15
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    if-eqz v0, :cond_16

    .line 74
    sget v0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    .line 54
    :cond_15
    :try_start_c
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    goto :goto_16

    :cond_16
    move-object v10, v14

    .line 57
    :goto_16
    new-instance v0, Lccsansan/m/removeDownloadListener;

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    const-wide/16 v31, 0x0

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    invoke-static/range {v31 .. v32}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    move-object v4, v0

    move-object v3, v14

    move-object v14, v1

    move-object v1, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v19

    move-object/from16 v19, v1

    invoke-direct/range {v4 .. v23}, Lccsansan/m/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 58
    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v30}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    .line 59
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->setErrorMessage()Ljava/lang/String;

    move-result-object v1

    const-string v4, "amp_app_id"

    .line 60
    invoke-virtual {v0, v4, v1}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "action_type"

    .line 61
    :try_start_d
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getLoadStatus()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lccsansan/m/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    const-string v1, "rid"

    .line 64
    invoke-virtual {v0, v1, v2}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v1, "sid"

    .line 65
    :try_start_e
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->trackReportClick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v1, "isOfflineAd"

    .line 66
    :try_start_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v1, "si_az_enable"

    .line 67
    :try_start_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const-string v1, "ad_cache"

    .line 68
    :try_start_11
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getSid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "portal_key"

    .line 69
    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    const-string v1, "s_rid"

    .line 70
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->hasDelayTimeRestrictions()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_17

    const-string v2, "si_az_key"

    .line 74
    invoke-virtual {v0, v2, v1}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :cond_17
    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x4a
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x34
        :pswitch_4
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x52
        :pswitch_5
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
    .locals 3

    .line 8
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x77

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 5
    const/16 v0, 0x47

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lccsansan/cy/deleteDownItem;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsansan/cy/deleteDownItem;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_1
    goto :goto_3

    :goto_2
    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :goto_3
    sget p0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    .line 5
    const/4 p0, 0x0

    goto :goto_4

    :cond_1
    const/4 p0, 0x1

    :goto_4
    packed-switch p0, :pswitch_data_1

    .line 8
    return-void

    :pswitch_1
    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :cond_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cy/deleteDownItem$addDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/cy/deleteDownItem$addDownloadListener;-><init>(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_6

    :goto_5
    throw p0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 5
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, Lccsansan/cy/deleteDownItem;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {p0}, Lccsansan/cy/deleteDownItem;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    sget p0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cy/deleteDownItem$unifiedDownload;

    const-string v2, "CPIProxy.updateClickInfo"

    invoke-direct {v1, v2, p0, p1, p2}, Lccsansan/cy/deleteDownItem$unifiedDownload;-><init>(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;
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
    sget-object v8, Lccsansan/cy/deleteDownItem;->unifiedDownload:[C

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

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 3

    .line 105
    nop

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v2, Lccsansan/cy/deleteDownItem$removeDownloadListener;

    invoke-direct {v2, p0, p1, v0, p2}, Lccsansan/cy/deleteDownItem$removeDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener()Z
    .locals 3

    .line 25
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_2

    :goto_1
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    sget v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x5f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 4

    .line 4
    nop

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p0, :cond_0

    .line 4
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p0

    if-eqz p0, :cond_1

    goto :goto_1

    .line 4
    :pswitch_0
    sget p0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x47

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return v1

    :goto_1
    const/4 v2, 0x1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    sget v2, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x49

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    :cond_2
    invoke-virtual {p0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_3

    :pswitch_1
    sget p0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x25

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x1

    :cond_3
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsansan/cy/getDownloadStatusByUrl;Lccsanorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/cy/getDownloadStatusByUrl;",
            "Lccsanorg/json/JSONArray;",
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;)",
            "Ljava/util/List<",
            "Lccsansan/m/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 103
    move-object/from16 v0, p1

    const-string v1, "is_pi"

    const-string v2, "attr_code"

    .line 59
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lccsansan/cy/getDownloadStatusByUrl;->deleteDownItem()Ljava/util/List;

    move-result-object v4

    .line 60
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x2

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v10

    if-ne v9, v10, :cond_1

    invoke-virtual/range {p1 .. p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v9

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v9, v10, :cond_1

    .line 103
    sget v9, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v9, v9, 0x1f

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr v9, v6

    if-eqz v9, :cond_0

    .line 62
    :cond_0
    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    nop

    .line 103
    const/4 v9, 0x0

    .line 64
    :goto_0
    :try_start_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lccsansan/dt/removeDownloadListener;

    if-nez v11, :cond_2

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v13

    .line 69
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->execute()Ljava/util/List;

    move-result-object v22

    .line 70
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 71
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v12

    .line 72
    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v14, :cond_3

    .line 91
    const/4 v14, 0x0

    goto :goto_2

    :cond_3
    const/4 v14, 0x1

    :goto_2
    packed-switch v14, :pswitch_data_0

    goto :goto_3

    .line 103
    :pswitch_0
    sget v14, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 v14, v14, 0x15

    rem-int/lit16 v7, v14, 0x80

    sput v7, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/2addr v14, v6

    if-eqz v14, :cond_4

    .line 73
    :cond_4
    :try_start_2
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    nop

    .line 75
    :goto_3
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart()Ljava/util/List;

    move-result-object v7

    invoke-interface {v15, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->getAdSize()Ljava/util/List;

    move-result-object v24

    .line 79
    new-instance v7, Lccsanorg/json/JSONObject;

    invoke-direct {v7}, Lccsanorg/json/JSONObject;-><init>()V

    .line 80
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 81
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v14, :cond_5

    .line 91
    const/16 v14, 0xd

    goto :goto_4

    :cond_5
    const/16 v14, 0xa

    :goto_4
    const-string v8, ""

    packed-switch v14, :pswitch_data_1

    .line 82
    :try_start_3
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v7

    goto :goto_5

    .line 91
    :pswitch_1
    move-object v14, v8

    move-object/from16 v25, v14

    move-object/from16 v21, v12

    goto :goto_6

    .line 82
    :goto_5
    invoke-virtual {v7}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v7

    .line 83
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v12

    invoke-virtual {v12}, Lccsansan/dt/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v12

    .line 84
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v14

    invoke-virtual {v14}, Lccsansan/dt/addDownloadListener;->removeDownloadListener()Lccsanorg/json/JSONObject;

    move-result-object v14

    .line 85
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lccsansan/dt/addDownloadListener;->unifiedDownload()Ljava/util/List;

    move-result-object v16

    move-object/from16 v25, v12

    move-object/from16 v21, v16

    move-object/from16 v30, v14

    move-object v14, v7

    move-object/from16 v7, v30

    :goto_6
    if-eqz v9, :cond_8

    .line 88
    invoke-interface {v4, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v12

    invoke-virtual {v0, v12}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v12

    const/4 v3, -0x1

    invoke-virtual {v12, v2, v3}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v6, "cut_type"

    .line 89
    :try_start_4
    invoke-interface {v4, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    move-object/from16 v17, v15

    move-object/from16 v15, p2

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/cy/getDownloadingRecordByUrl;

    iget v3, v3, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    invoke-virtual {v7, v6, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const/4 v3, -0x1

    if-eq v12, v3, :cond_6

    .line 91
    const/16 v3, 0x4a

    goto :goto_7

    :cond_6
    const/16 v3, 0x56

    :goto_7
    packed-switch v3, :pswitch_data_2

    :goto_8
    goto :goto_9

    .line 103
    :pswitch_2
    sget v3, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x6d

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    const/4 v6, 0x2

    rem-int/2addr v3, v6

    if-nez v3, :cond_7

    .line 91
    :try_start_5
    invoke-virtual {v7, v2, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v3, 0x0

    :try_start_6
    array-length v6, v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_8

    .line 103
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 89
    :cond_7
    nop

    .line 91
    :try_start_7
    invoke-virtual {v7, v2, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    goto :goto_8

    .line 85
    :cond_8
    move-object/from16 v17, v15

    move-object/from16 v15, p2

    .line 94
    :goto_9
    invoke-virtual {v7}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v26

    .line 95
    new-instance v3, Lccsansan/m/removeDownloadListener;

    const/4 v6, 0x0

    const/16 v16, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v27

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    move-object v12, v3

    move-object/from16 v29, v17

    move v15, v6

    move-object/from16 v17, v7

    move-object/from16 v18, v20

    move-object/from16 v19, v23

    move-object/from16 v20, v27

    move-object/from16 v23, v29

    move-object/from16 v27, v28

    invoke-direct/range {v12 .. v27}, Lccsansan/m/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    if-eqz v0, :cond_a

    .line 97
    invoke-interface {v4, v11}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    invoke-virtual {v0, v6}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v6
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v6, :cond_9

    const/4 v7, 0x4

    new-array v11, v7, [I

    fill-array-data v11, :array_0

    const-string v12, "\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0000\u0001"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lccsansan/cy/deleteDownItem;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    :try_start_8
    new-array v7, v7, [I

    const/16 v12, 0xf

    aput v12, v7, v13

    const/16 v12, 0xb

    const/4 v13, 0x1

    aput v12, v7, v13

    const/16 v12, 0x7d

    const/4 v13, 0x2

    aput v12, v7, v13

    const/4 v12, 0x3

    const/4 v14, 0x0

    aput v14, v7, v12

    const-string v12, "\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0000"

    const/4 v15, 0x1

    invoke-static {v7, v12, v15}, Lccsansan/cy/deleteDownItem;->removeDownloadListener([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 99
    invoke-virtual {v6, v7, v8}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v11, v7}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x1

    invoke-virtual {v6, v1, v11}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v1, v6}, Lccsansan/m/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    goto :goto_a

    .line 97
    :cond_9
    const/4 v11, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    goto :goto_a

    .line 95
    :cond_a
    const/4 v11, 0x1

    const/4 v13, 0x2

    const/4 v14, 0x0

    .line 103
    :goto_a
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const/4 v6, 0x2

    goto/16 :goto_1

    :cond_b
    return-object v5

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xa
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4a
        :pswitch_2
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0xf
        0xc7
        0xa
    .end array-data
.end method

.method private static unifiedDownload(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 12
    nop

    .line 0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    .line 12
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    goto/16 :goto_7

    .line 1
    :pswitch_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 12
    sget p0, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_1

    .line 2
    :cond_1
    invoke-static {p1}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-static {p1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p1

    .line 6
    const-string v2, "id"

    invoke-virtual {p1, v2}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 7
    const-string v3, "referrer"

    invoke-virtual {p1, v3}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v3

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v3

    if-nez v3, :cond_4

    .line 12
    sget v0, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 10
    :cond_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-static {p0, v2, p1, p2}, Lccsansan/cy/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/removeDownloadListener;)Z

    goto :goto_7

    .line 11
    :cond_4
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_5

    .line 12
    const/4 p2, 0x1

    goto :goto_2

    :cond_5
    const/4 p2, 0x0

    :goto_2
    packed-switch p2, :pswitch_data_1

    :goto_3
    goto :goto_7

    :pswitch_1
    sget p2, Lccsansan/cy/deleteDownItem;->addDownloadListener:I

    add-int/lit8 p2, p2, 0x13

    rem-int/lit16 v2, p2, 0x80

    sput v2, Lccsansan/cy/deleteDownItem;->removeDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_6

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p2

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_8

    goto :goto_4

    :catchall_0
    move-exception p0

    throw p0

    :cond_6
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p2

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object v3

    if-nez v3, :cond_7

    const/4 v0, 0x1

    :cond_7
    packed-switch v0, :pswitch_data_2

    move-object v0, v2

    goto :goto_5

    :pswitch_2
    move-object v0, v2

    :goto_4
    const-string p0, ""

    goto :goto_6

    :cond_8
    :goto_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->resolveUrl()Lccsansan/dt/addDownloadListener;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dt/addDownloadListener;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p0

    :goto_6
    invoke-virtual {p2, v0, p0, p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_3

    :goto_7
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method
