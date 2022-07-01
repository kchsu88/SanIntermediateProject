.class public Lccsansan/cz/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I = 0x0

.field private static getDownloadingList:I = 0x0

.field private static removeDownloadListener:J = 0x0L

.field private static unifiedDownload:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    invoke-static {}, Lccsansan/cz/unifiedDownload;->ActionTypeReserveApp()V

    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public static ActionTypeDetailPage()I
    .locals 5

    .line 5
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, -0x1

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "full_ad_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    .line 5
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_1

    .line 4
    :pswitch_0
    :try_start_1
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "skip_point"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :cond_2
    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 2
    return v0

    .line 5
    :pswitch_1
    const/16 v1, 0x16

    :try_start_2
    div-int/2addr v1, v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static ActionTypeDownload()Ljava/util/List;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    const-string v0, "launch"

    const-string v1, "MadsConfig"

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    const-string v3, "offline_ads"

    invoke-static {v3}, Lccsansan/cz/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 5
    :try_start_0
    invoke-static {}, Lccsansan/bw/getErrorCode;->shouldTryHandlingAction()Ljava/lang/String;

    move-result-object v7

    .line 6
    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_0

    return-object v2

    .line 9
    :cond_0
    new-instance v8, Lccsanorg/json/JSONObject;

    invoke-direct {v8, v7}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v8, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 11
    invoke-virtual {v8, v3}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 12
    new-instance v7, Lccsanorg/json/JSONArray;

    invoke-direct {v7, v3}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    sget v3, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit16 v8, v3, 0x80

    sput v8, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 46
    :cond_1
    const/4 v3, 0x0

    .line 13
    :goto_0
    :try_start_1
    invoke-virtual {v7}, Lccsanorg/json/JSONArray;->length()I

    move-result v8

    if-ge v3, v8, :cond_b

    .line 14
    invoke-virtual {v7, v3}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v8

    const-string v9, "pos_id"

    .line 15
    invoke-virtual {v8, v9}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v9

    const-string v11, "ranges"

    .line 16
    invoke-virtual {v8, v11}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v8

    const/4 v11, 0x0

    .line 17
    :goto_1
    invoke-virtual {v8}, Lccsanorg/json/JSONArray;->length()I

    move-result v12

    if-ge v11, v12, :cond_a

    .line 18
    invoke-virtual {v8, v11}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v12

    .line 20
    invoke-virtual {v12, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 29
    const/16 v13, 0x9

    goto :goto_2

    :cond_2
    const/16 v13, 0x10

    :goto_2
    packed-switch v13, :pswitch_data_0

    .line 21
    const-string v13, "start"

    goto :goto_3

    .line 20
    :pswitch_0
    nop

    .line 21
    invoke-virtual {v12, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    goto :goto_4

    .line 23
    :goto_3
    invoke-virtual {v12, v13}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 21
    :goto_4
    nop

    .line 46
    sget v15, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v15, v15, 0x19

    rem-int/lit16 v6, v15, 0x80

    sput v6, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v15, v15, 0x2

    const-wide/16 v16, -0x1

    const-wide/16 v18, 0x3e8

    const-string v6, "end"

    if-eqz v15, :cond_4

    .line 25
    :try_start_2
    invoke-virtual {v12, v6}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 26
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v6

    invoke-virtual {v6}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v22

    add-long v22, v22, v18

    cmp-long v6, v13, v16

    if-eqz v6, :cond_3

    .line 29
    const/4 v6, 0x1

    goto :goto_5

    :cond_3
    const/4 v6, 0x0

    :goto_5
    packed-switch v6, :pswitch_data_1

    :goto_6
    goto :goto_a

    .line 23
    :cond_4
    nop

    .line 25
    invoke-virtual {v12, v6}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v20

    .line 26
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v6

    invoke-virtual {v6}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v22

    div-long v22, v22, v18

    cmp-long v6, v13, v16

    if-eqz v6, :cond_9

    :pswitch_1
    cmp-long v6, v22, v13

    if-lez v6, :cond_9

    cmp-long v6, v22, v20

    if-gez v6, :cond_5

    .line 29
    const/16 v6, 0x41

    goto :goto_7

    :cond_5
    const/16 v6, 0x47

    :goto_7
    packed-switch v6, :pswitch_data_2

    goto :goto_6

    .line 28
    :pswitch_2
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v6, :cond_7

    .line 26
    sget v6, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v6, v6, 0x4b

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_6

    .line 29
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const/16 v6, 0x1f

    const/4 v8, 0x0

    :try_start_4
    div-int/2addr v6, v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_8

    .line 26
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 29
    :cond_6
    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :goto_8
    goto :goto_9

    .line 31
    :cond_7
    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 29
    :goto_9
    sget v6, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v6, v6, 0x5b

    rem-int/lit16 v8, v6, 0x80

    sput v8, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_8

    .line 46
    :cond_8
    goto :goto_b

    .line 31
    :cond_9
    :goto_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_a
    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "#getOfflinePosIdsConfig "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_b
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "need load highPriorityPosIds : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {v4, v5}, Ljava/util/List;->retainAll(Ljava/util/Collection;)Z

    .line 44
    const/4 v3, 0x0

    invoke-interface {v2, v3, v4}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 46
    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "offline postIds sort  : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 46
    return-object v2

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x41
        :pswitch_2
    .end packed-switch
.end method

.method static ActionTypeReserveApp()V
    .locals 2

    const-wide v0, -0x22e12cb06ec3aac9L    # -3.670854580522516E140

    sput-wide v0, Lccsansan/cz/unifiedDownload;->removeDownloadListener:J

    return-void
.end method

.method public static IncentiveDownloadUtils()I
    .locals 5

    .line 8
    const-string v0, "impression_min_time"

    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    const-string v2, "mads_config"

    const/16 v3, 0x64

    if-eqz v1, :cond_1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x0

    :try_start_0
    invoke-super {v4}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 8
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 8
    :pswitch_0
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x7b

    return v0

    .line 2
    :cond_2
    return v3

    .line 5
    :cond_3
    :goto_1
    :try_start_1
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2
    const/16 v1, 0x53

    goto :goto_2

    :cond_4
    const/16 v1, 0x17

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 6
    :goto_3
    goto :goto_4

    :pswitch_1
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 8
    :goto_4
    return v3

    .line 6
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getImpressionMinTimeViewed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MadsConfig"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(I)I
    .locals 5

    .line 20
    const-string v0, "ad_count_"

    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 9
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_advance_info"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    .line 20
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget p0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_3

    goto :goto_1

    .line 14
    :pswitch_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    .line 16
    :cond_2
    :try_start_1
    const-string p0, "ad_count"

    .line 18
    invoke-virtual {v2, p0, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getAdLoadCnt "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MadsConfig"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :goto_1
    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    packed-switch p0, :pswitch_data_1

    .line 10
    return v4

    .line 20
    :pswitch_1
    const/16 p0, 0x1c

    :try_start_2
    div-int/2addr p0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v4

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z
    .locals 5

    .line 53
    const-string v0, "cache_ad_enable"

    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0xd

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 46
    :cond_0
    const-string v1, "ad_advance_info"

    invoke-static {p0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 48
    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    .line 53
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 51
    new-instance v2, Lccsanorg/json/JSONObject;

    goto :goto_1

    .line 48
    :pswitch_0
    return v1

    .line 51
    :goto_1
    invoke-direct {v2, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_3

    .line 53
    sget p0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 v4, p0, 0x80

    sput v4, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_2

    :cond_2
    const/4 p0, 0x1

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_3

    .line 52
    :pswitch_1
    nop

    .line 53
    :try_start_1
    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    goto :goto_4

    :goto_3
    invoke-virtual {v2, v0, v3}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_4
    return p0

    :catch_0
    move-exception p0

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static IncentiveSDK()Z
    .locals 3

    .line 5
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 4
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "mraid_browser"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/16 v1, 0x28

    goto :goto_0

    :cond_1
    const/16 v1, 0x5a

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x15

    :try_start_1
    div-int/lit8 v1, v1, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

    :cond_2
    return v0

    :pswitch_data_0
    .packed-switch 0x28
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveSDK$1()I
    .locals 6

    .line 5
    nop

    .line 0
    const/16 v0, 0xf

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 5
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 2
    goto :goto_1

    .line 4
    :pswitch_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "btn_characters_count"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    :try_start_1
    array-length v1, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return v0

    :goto_1
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x25

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    return v0

    :pswitch_1
    :try_start_2
    array-length v1, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    throw v0

    :catch_0
    move-exception v1

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

.method public static addDownloadListener()I
    .locals 4

    .line 7
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 7
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 4
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 7
    :pswitch_0
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x35

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    packed-switch v3, :pswitch_data_1

    .line 2
    goto :goto_1

    .line 7
    :pswitch_1
    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x73

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    .line 4
    :goto_2
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "interstitial_click_area"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getInterstitialClickArea "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MadsConfig"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static deleteDownItem()Ljava/lang/Integer;
    .locals 5

    .line 9
    const-string v0, "banner_impression_min_px"

    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x1d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v4, "mads_config"

    packed-switch v1, :pswitch_data_0

    .line 9
    nop

    .line 1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_3

    .line 1
    :pswitch_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2, v4}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    goto :goto_2

    :cond_1
    const/16 v3, 0x12

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 9
    :goto_3
    return-object v1

    .line 6
    :cond_2
    :pswitch_1
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_4

    .line 3
    sget v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x17

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 7
    :cond_3
    :try_start_1
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_4

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    nop

    .line 7
    :goto_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 9
    return-object v0

    .line 7
    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getBannerImpressionMinVisiblePx "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MadsConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x12
        :pswitch_1
    .end packed-switch
.end method

.method public static deleteDownList()I
    .locals 8

    .line 8
    const-string v0, "advance_connect_timeout"

    .line 6
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 2
    const/16 v1, 0x1c

    goto :goto_0

    :cond_0
    const/16 v1, 0x42

    :goto_0
    const/4 v2, 0x0

    const-string v3, "mads_config"

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    .line 0
    const/16 v1, 0x7530

    goto :goto_2

    .line 6
    :pswitch_0
    const/16 v1, 0x3fd6

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    const/4 v6, 0x1

    :goto_1
    packed-switch v6, :pswitch_data_1

    goto :goto_3

    .line 6
    :catch_0
    move-exception v0

    goto :goto_8

    .line 1
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6

    invoke-static {v6, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    :pswitch_1
    return v1

    .line 4
    :cond_2
    :goto_3
    new-instance v6, Lccsanorg/json/JSONObject;

    invoke-direct {v6, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v6, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_3

    .line 2
    const/4 v3, 0x1

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    :goto_4
    packed-switch v3, :pswitch_data_2

    goto :goto_9

    .line 8
    :pswitch_2
    sget v3, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v3, v3, 0x55

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 2
    goto :goto_5

    :cond_4
    const/4 v4, 0x1

    :goto_5
    packed-switch v4, :pswitch_data_3

    .line 5
    goto :goto_6

    .line 8
    :pswitch_3
    nop

    .line 6
    :try_start_1
    invoke-virtual {v6, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_7

    .line 8
    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :goto_6
    :try_start_3
    invoke-virtual {v6, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 8
    :goto_7
    return v0

    :goto_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#getAdvanceConnectTimeout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "MadsConfig"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    nop

    .line 6
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    :try_start_4
    array-length v0, v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return v1

    :catchall_1
    move-exception v0

    throw v0

    .line 8
    :cond_5
    return v1

    :pswitch_data_0
    .packed-switch 0x1c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
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
.end method

.method public static execute()I
    .locals 4

    .line 8
    const-string v0, "ad_cache_count"

    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 2
    const/16 v1, 0x30

    goto :goto_0

    :cond_0
    const/16 v1, 0x1f

    :goto_0
    const-string v2, "ad_advance_info"

    packed-switch v1, :pswitch_data_0

    .line 8
    const/16 v1, 0x2d

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    .line 0
    :pswitch_0
    const/4 v1, 0x6

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    :goto_1
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    .line 6
    :cond_1
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2
    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const/4 v2, 0x1

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    .line 7
    :pswitch_1
    nop

    .line 8
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1f
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadStatusByUrl()Z
    .locals 4

    .line 1
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {}, Lccsansan/bl/addDownloadListener;->addDownloadListener()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "c_d"

    invoke-static {v2, v0}, Lccsansan/bq/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v0

    xor-int/2addr v0, v1

    sget v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :cond_1
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x61

    :try_start_0
    div-int/2addr v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadedCount()I
    .locals 5

    .line 8
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "mads_config"

    packed-switch v0, :pswitch_data_0

    .line 0
    const/16 v0, 0x5a

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 8
    :pswitch_0
    const/16 v0, 0x7d

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_3

    :goto_1
    const/16 v1, 0x34

    goto :goto_2

    :cond_2
    const/16 v1, 0x1d

    :goto_2
    packed-switch v1, :pswitch_data_2

    goto :goto_4

    .line 8
    :goto_3
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x63

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    .line 2
    nop

    .line 8
    return v0

    .line 5
    :goto_4
    :pswitch_2
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "native_video_pause_play_percentage"

    .line 6
    invoke-virtual {v1, v3, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/2addr v1, v2

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    .line 6
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getMadsNativeVideoPausePercentage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MadsConfig"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadedList()I
    .locals 6

    .line 8
    const-string v0, "connect_timeout"

    .line 0
    const/16 v1, 0x3a98

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    .line 8
    const/4 v3, 0x2

    goto :goto_0

    :cond_0
    const/16 v3, 0x11

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 4
    new-instance v3, Lccsanorg/json/JSONObject;

    goto :goto_1

    .line 2
    :pswitch_0
    return v1

    .line 4
    :goto_1
    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 8
    const/16 v2, 0x32

    goto :goto_2

    :cond_1
    const/4 v2, 0x2

    :goto_2
    packed-switch v2, :pswitch_data_1

    sget v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v2, v2, 0xb

    rem-int/lit16 v5, v2, 0x80

    sput v5, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/2addr v2, v4

    if-nez v2, :cond_2

    .line 5
    :cond_2
    nop

    .line 6
    :try_start_1
    invoke-virtual {v3, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 8
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x6d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/2addr v1, v4

    if-nez v1, :cond_3

    const/16 v1, 0x24

    :try_start_2
    div-int/lit8 v1, v1, 0x0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :cond_3
    return v0

    .line 6
    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getConnectTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MadsConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadedRecordByUrl()I
    .locals 4

    .line 8
    const-string v0, "read_timeout"

    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 0
    :cond_0
    const/16 v1, 0x3a98

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 4
    new-instance v3, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :pswitch_0
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    return v1

    .line 4
    :goto_1
    :try_start_1
    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6
    invoke-virtual {v3, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getReadTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MadsConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    const/16 v0, 0x47

    goto :goto_2

    :cond_3
    const/16 v0, 0x25

    :goto_2
    packed-switch v0, :pswitch_data_1

    return v1

    :pswitch_1
    const/4 v0, 0x0

    :try_start_2
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x47
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingCount()I
    .locals 5

    .line 8
    nop

    .line 0
    const v0, 0x1d4c0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 8
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :pswitch_0
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x5d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 2
    :pswitch_1
    return v0

    .line 8
    :goto_1
    const/4 v1, 0x0

    :try_start_1
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :goto_2
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "\ue941\ud420\u1f08\ue937\u1be9\u8176\ub515\ue438\ubdc2\u7e57\ue02d\u4f1f\u4097\u2aa3\u4b41\ub2d5\u17b1\u87b4\ub67e\ue5b9\uba5c\u7ce2\ue2b9\u4889\u4179"

    const-string v3, ""

    invoke-static {v3}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v3

    neg-int v3, v3

    invoke-static {v1, v3}, Lccsansan/cz/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x4f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    .line 6
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getMadsVastXzTimeOut "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MadsConfig"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList()I
    .locals 4

    .line 8
    const-string v0, "impression_min_percentage"

    .line 0
    const/16 v1, 0x32

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "mads_config"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 5
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 2
    :pswitch_0
    nop

    .line 8
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :try_start_1
    array-length v0, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    :cond_1
    return v1

    .line 5
    :goto_1
    :try_start_2
    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    const/16 v2, 0x52

    goto :goto_2

    :cond_2
    const/16 v2, 0x4a

    :goto_2
    packed-switch v2, :pswitch_data_1

    :goto_3
    goto :goto_4

    .line 6
    :pswitch_1
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_4
    nop

    .line 8
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    return v1

    .line 6
    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getImpressionMinPercentageViewed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MadsConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x52
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(I)I
    .locals 6

    .line 19
    const-string v0, "ad_offline_count_"

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_advance_info"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    .line 19
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    const/4 v5, 0x0

    packed-switch v2, :pswitch_data_0

    .line 14
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 19
    :pswitch_0
    sget p0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    :try_start_1
    array-length p0, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v4

    :catchall_0
    move-exception p0

    throw p0

    .line 10
    :cond_1
    return v4

    .line 14
    :goto_1
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 19
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x1

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return p0

    :goto_3
    :try_start_3
    array-length v0, v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return p0

    :catchall_1
    move-exception p0

    throw p0

    .line 16
    :catch_0
    move-exception p0

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getOfflineAdCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MadsConfig"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget p0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    const/16 p0, 0x2d

    :try_start_4
    div-int/2addr p0, v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return v4

    :catchall_2
    move-exception p0

    throw p0

    :cond_4
    return v4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1073
    sget-object v0, Lccsansan/d/pause;->IncentiveDownloadUtils:Ljava/lang/Object;

    monitor-enter v0

    .line 1076
    :try_start_0
    sget-wide v1, Lccsansan/cz/unifiedDownload;->removeDownloadListener:J

    invoke-static {v1, v2, p0, p1}, Lccsansan/d/pause;->removeDownloadListener(J[CI)[C

    move-result-object p0

    .line 1081
    const/4 p1, 0x4

    sput p1, Lccsansan/d/pause;->unifiedDownload:I

    :goto_0
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1083
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sub-int/2addr v1, p1

    sput v1, Lccsansan/d/pause;->removeDownloadListener:I

    .line 1084
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    sget v2, Lccsansan/d/pause;->unifiedDownload:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/pause;->unifiedDownload:I

    rem-int/2addr v3, p1

    aget-char v3, p0, v3

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget v4, Lccsansan/d/pause;->removeDownloadListener:I

    int-to-long v4, v4

    sget-wide v6, Lccsansan/cz/unifiedDownload;->removeDownloadListener:J

    mul-long v4, v4, v6

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p0, v1

    .line 1081
    sget v1, Lccsansan/d/pause;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/pause;->unifiedDownload:I

    goto :goto_0

    .line 1088
    :cond_1
    new-instance v1, Ljava/lang/String;

    array-length v2, p0

    sub-int/2addr v2, p1

    invoke-direct {v1, p0, p1, v2}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 1089
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static getDownloadingRecordByUrl()I
    .locals 5

    .line 8
    nop

    .line 0
    const/16 v0, 0x2710

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    .line 8
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :pswitch_0
    nop

    .line 8
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x3f

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const/4 v3, 0x0

    :cond_1
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    :pswitch_1
    return v0

    :goto_1
    const/4 v1, 0x0

    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    .line 5
    :goto_2
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "retry_delay"

    .line 6
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x17

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    .line 6
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getMadsRetryDelay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MadsConfig"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getPackageNameByRecord()Z
    .locals 4

    .line 8
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mads_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 8
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 5
    :pswitch_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "ad_support_dash"

    .line 6
    invoke-virtual {v1, v0, v3}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    .line 6
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getDashSupport "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MadsConfig"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    return v2

    .line 2
    :pswitch_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getThumbPathByRecord()Z
    .locals 4

    .line 7
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 3
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "allow_stats_mads_preload"

    .line 4
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#isAllowMadsPreloadStats "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MadsConfig"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x45

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/16 v1, 0x44

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return v0

    :pswitch_0
    const/16 v1, 0x2e

    :try_start_1
    div-int/2addr v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x44
        :pswitch_0
    .end packed-switch
.end method

.method public static pause()I
    .locals 6

    .line 8
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    const/16 v0, 0x57

    goto :goto_0

    :cond_0
    const/16 v0, 0x37

    :goto_0
    const/4 v1, 0x1

    const v2, 0x1d4c0

    const-string v3, "mads_config"

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    .line 8
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    goto :goto_4

    :goto_2
    const/4 v5, 0x0

    :try_start_0
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_3

    :cond_1
    const/4 v3, 0x1

    :goto_3
    packed-switch v3, :pswitch_data_1

    goto :goto_1

    .line 5
    :cond_2
    :pswitch_1
    :try_start_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "\u5801\u95f4\u3277\u5877\ucc34\uc0aa\u987d\u33f4\u0cb2\u3fb8\ucd59\u98da\uf1ce\u6b75\u663d\u6506\ua6f4\uc65b\u9b2a\u3279\u0b18\u3d3e\ucfcc\u9f4e\uf038\u6803"

    invoke-static {v4, v4}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v0, v4}, Lccsansan/cz/unifiedDownload;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {v3, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 2
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    .line 8
    return v0

    .line 6
    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getMadsVideoXzTimeOut "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MadsConfig"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 2
    :goto_4
    return v2

    .line 8
    :catchall_0
    move-exception v0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static performAction()Z
    .locals 4

    .line 11
    const-string v0, "is_filter_posids"

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "ad_advance_info"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 11
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x62

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 6
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :pswitch_0
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v0, 0xb

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 2
    :cond_1
    nop

    .line 11
    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x51

    :try_start_1
    div-int/lit8 v0, v0, 0x0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v3

    :catchall_0
    move-exception v0

    throw v0

    :cond_2
    return v3

    .line 6
    :goto_1
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 11
    const/16 v1, 0x47

    goto :goto_2

    :cond_3
    const/16 v1, 0x20

    :goto_2
    packed-switch v1, :pswitch_data_1

    .line 8
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#isFilterPosIds "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MadsConfig"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    return v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch
.end method

.method public static performActionWhenOffline()Z
    .locals 5

    .line 24
    nop

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget v1, Lccsansan/cz/unifiedDownload;->unifiedDownload:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 24
    const/4 v1, 0x7

    goto :goto_0

    :cond_0
    const/16 v1, 0x60

    :goto_0
    const/4 v2, 0x1

    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x1f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    .line 3
    :cond_1
    :try_start_1
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->unifiedDownload()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 6
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v3, "miui_bundle_config"

    const-string v4, ""

    invoke-static {v1, v3, v4}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v3, :cond_3

    .line 24
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    goto :goto_1

    .line 10
    :cond_3
    :try_start_2
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "miui_max_ver"

    const v4, 0x7fffffff

    .line 11
    invoke-virtual {v3, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 12
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-le v4, v1, :cond_5

    .line 3
    :cond_4
    :goto_1
    nop

    .line 24
    const/4 v1, 0x0

    goto :goto_2

    .line 12
    :cond_5
    const-string v1, "miui_bundle_enable"

    .line 15
    invoke-virtual {v3, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    const/16 v3, 0x13

    if-eqz v1, :cond_6

    .line 24
    const/16 v1, 0x13

    goto :goto_3

    :cond_6
    const/16 v1, 0x42

    :goto_3
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/2addr v1, v3

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_7

    goto :goto_4

    .line 20
    :pswitch_0
    nop

    .line 22
    :try_start_3
    sput v0, Lccsansan/cz/unifiedDownload;->unifiedDownload:I

    goto :goto_5

    .line 15
    :cond_7
    :goto_4
    nop

    .line 20
    sput v2, Lccsansan/cz/unifiedDownload;->unifiedDownload:I

    .line 24
    :goto_5
    :pswitch_1
    sget v1, Lccsansan/cz/unifiedDownload;->unifiedDownload:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-ne v1, v2, :cond_9

    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    :cond_8
    const/4 v0, 0x1

    :cond_9
    return v0

    :catch_0
    move-exception v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x60
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x42
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener()I
    .locals 4

    .line 8
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "mads_config"

    invoke-static {v0, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    const/16 v2, 0xf

    goto :goto_0

    :cond_1
    const/16 v2, 0x38

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/2addr v0, v1

    goto :goto_1

    .line 5
    :pswitch_0
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "retry_count"

    .line 6
    invoke-virtual {v2, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getRetryCount "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MadsConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 2
    :goto_1
    nop

    .line 8
    return v1

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch
.end method

.method public static resolveUrl()I
    .locals 4

    .line 5
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v3, "full_ad_config"

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

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    .line 5
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :pswitch_1
    return v2

    .line 4
    :cond_2
    :goto_3
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "close_point"

    .line 5
    invoke-virtual {v1, v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    .line 5
    return v0

    :goto_4
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static resume()I
    .locals 4

    .line 8
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    const/16 v0, 0x64

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    const/16 v2, 0x56

    goto :goto_0

    :cond_1
    const/16 v2, 0x58

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 5
    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2
    :pswitch_0
    nop

    .line 8
    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x2b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x4a

    goto :goto_1

    :cond_2
    const/16 v1, 0x22

    :goto_1
    packed-switch v1, :pswitch_data_1

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

    .line 5
    :goto_2
    :try_start_2
    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "native_video_resume_play_percentage"

    .line 6
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 8
    return v0

    .line 6
    :catch_0
    move-exception v1

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getMadsNativeVideoResumePercentage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MadsConfig"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x56
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch
.end method

.method public static shouldTryHandlingAction()I
    .locals 5

    .line 11
    const-string v0, "ad_offline_count"

    .line 0
    const/4 v1, 0x5

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "ad_advance_info"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 6
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :pswitch_0
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    .line 2
    return v1

    .line 6
    :goto_1
    :try_start_1
    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_1

    .line 11
    const/16 v2, 0x20

    goto :goto_2

    :cond_1
    const/16 v2, 0x3f

    :goto_2
    packed-switch v2, :pswitch_data_1

    sget v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x65

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 7
    :cond_2
    nop

    .line 8
    :try_start_2
    invoke-virtual {v3, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getOfflineAdLoadCnt "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MadsConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3f
        :pswitch_1
    .end packed-switch
.end method

.method public static trackReportClick()I
    .locals 5

    .line 8
    const-string v0, "advance_read_timeout"

    sget v1, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    const/16 v2, 0x41

    add-int/2addr v1, v2

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 2
    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v3, "mads_config"

    packed-switch v1, :pswitch_data_0

    .line 0
    const/16 v1, 0x7530

    goto :goto_1

    .line 8
    :pswitch_0
    const/16 v1, 0x4db6

    .line 1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    .line 1
    :goto_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    :goto_2
    return v1

    .line 4
    :cond_1
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v3}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_2

    .line 2
    goto :goto_3

    :cond_2
    const/16 v2, 0x2b

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    .line 8
    :pswitch_1
    sget v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x43

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_3

    .line 5
    :cond_3
    nop

    .line 6
    :try_start_1
    invoke-virtual {v4, v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#getAdvanceReadTimeout "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MadsConfig"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_1
    .end packed-switch
.end method

.method public static trackReportShow()Z
    .locals 3

    .line 5
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    const/16 v2, 0x46

    goto :goto_0

    :cond_1
    const/16 v2, 0x23

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 2
    goto :goto_1

    .line 4
    :pswitch_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "gzip_request"

    .line 5
    invoke-virtual {v2, v1, v0}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :goto_1
    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x67

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    return v0

    :catch_0
    move-exception v1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload()Ljava/lang/Integer;
    .locals 5

    .line 8
    const-string v0, "impression_min_px"

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mads_config"

    invoke-static {v1, v2}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    const/16 v2, 0x1e

    goto :goto_0

    :cond_0
    const/16 v2, 0x31

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v1, v0, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_6

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

    .line 8
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    sget v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x7

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    goto :goto_3

    .line 6
    :pswitch_1
    nop

    .line 8
    :goto_2
    goto :goto_5

    :goto_3
    :try_start_1
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    array-length v1, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    .line 6
    :cond_2
    :try_start_3
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object v3, v0

    .line 8
    :goto_4
    sget v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_2

    .line 6
    :goto_5
    return-object v3

    :catch_0
    move-exception v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getImpressionMinVisiblePx "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MadsConfig"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 2
    :cond_3
    :goto_6
    nop

    .line 8
    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    const/16 v0, 0x51

    goto :goto_7

    :cond_4
    const/16 v0, 0x5a

    :goto_7
    packed-switch v0, :pswitch_data_2

    goto :goto_8

    :pswitch_2
    return-object v3

    :goto_8
    :try_start_4
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v3

    :catchall_1
    move-exception v0

    goto :goto_a

    :goto_9
    throw v0

    :goto_a
    goto :goto_9

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5a
        :pswitch_2
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    const-string v0, "priority_adids_"

    .line 21
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "ad_advance_info"

    invoke-static {v2, v3}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v1

    .line 27
    :cond_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/16 v4, 0x39

    const/4 v5, 0x0

    if-eqz v2, :cond_6

    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x16

    if-eqz p0, :cond_1

    .line 32
    const/16 v2, 0x16

    goto :goto_0

    :cond_1
    const/16 v2, 0x37

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_5

    .line 45
    :pswitch_0
    sget v2, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 32
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_1

    .line 45
    const/4 v2, 0x0

    goto :goto_2

    .line 29
    :pswitch_1
    const/4 v2, 0x0

    .line 31
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v2, v3, :cond_3

    .line 32
    const/16 v3, 0x39

    goto :goto_3

    :cond_3
    const/16 v3, 0x16

    :goto_3
    packed-switch v3, :pswitch_data_2

    .line 45
    sget v3, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v3, v3, 0x17

    rem-int/lit16 v6, v3, 0x80

    sput v6, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_5

    goto :goto_4

    :pswitch_2
    sget p0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_4

    const/16 p0, 0x63

    :try_start_2
    div-int/2addr p0, v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    return-object v1

    .line 32
    :goto_4
    :try_start_3
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x4f

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    :goto_5
    const-string p0, "priority_adids"

    .line 37
    invoke-virtual {v3, p0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 39
    :goto_6
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-ge v5, v0, :cond_7

    .line 40
    invoke-virtual {p0, v5}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-int/lit8 v5, v5, 0x1

    .line 45
    sget v0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/2addr v0, v4

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    goto :goto_6

    .line 40
    :cond_7
    nop

    .line 45
    sget p0, Lccsansan/cz/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/cz/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_8

    const/4 p0, 0x0

    :try_start_4
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v1

    :catchall_1
    move-exception p0

    throw p0

    :cond_8
    return-object v1

    .line 40
    :catch_0
    move-exception p0

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getHighPriorityPosIds "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MadsConfig"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v1

    :pswitch_data_0
    .packed-switch 0x16
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x16
        :pswitch_2
    .end packed-switch
.end method
