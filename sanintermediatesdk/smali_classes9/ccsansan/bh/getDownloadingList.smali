.class public Lccsansan/bh/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    const/16 v0, 0x40

    sput v0, Lccsansan/bh/getDownloadingList;->unifiedDownload:I

    return-void
.end method

.method public static IncentiveDownloadUtils(ILccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 8
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$IncentiveSDK;

    invoke-direct {v1, p0, p1}, Lccsansan/bh/getDownloadingList$IncentiveSDK;-><init>(ILccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x23

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$getDownloadingRecordByUrl;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$getDownloadingRecordByUrl;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x57

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x2f

    goto :goto_0

    :cond_0
    const/16 p0, 0x14

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
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsansan/bh/getDownloadingList$unifiedDownload;-><init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 17
    nop

    .line 16
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 17
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onEvent["

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AD_CONVERT"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x21

    goto :goto_0

    :cond_0
    const/16 p0, 0x1d

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x54

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
    .packed-switch 0x1d
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$resolveUrl;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$resolveUrl;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$addDownloadListener;

    invoke-direct {v1, p0, p1}, Lccsansan/bh/getDownloadingList$addDownloadListener;-><init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x59

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x2f

    goto :goto_0

    :cond_0
    const/16 p0, 0x4d

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 p0, 0x4

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x7d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x4b

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0, p1, p2, p3}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    packed-switch v0, :pswitch_data_0

    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
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

.method private static addDownloadListener(Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ")V"
        }
    .end annotation

    .line 272
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "pi_group_id"

    const-string v3, "bottom"

    const-string v4, "load_source"

    const-string v5, "allocate_code"

    const-string v6, "trace_id"

    const-string v7, "ad_cache"

    const-string v8, "common_log"

    const-string v9, ""

    const-string v10, "ad_mix_feed_enable"

    .line 143
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v11

    .line 144
    new-instance v12, Ljava/util/LinkedHashMap;

    invoke-direct {v12}, Ljava/util/LinkedHashMap;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v13, "portal"

    .line 145
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v13, "url"

    .line 146
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v13, "pkg"

    .line 147
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v13, "ver"

    .line 148
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "status"

    .line 149
    invoke-virtual {v12, v13, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v13, "lock_screen"

    .line 150
    :try_start_5
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-string v13, "need_permission"

    .line 151
    :try_start_6
    invoke-static {}, Lccsansan/bw/trackReportClick;->IncentiveDownloadUtils()Z

    move-result v14

    if-nez v14, :cond_0

    .line 203
    const/16 v14, 0x50

    goto :goto_0

    :cond_0
    const/16 v14, 0x34

    :goto_0
    packed-switch v14, :pswitch_data_0

    .line 151
    const/4 v14, 0x0

    goto :goto_1

    :pswitch_0
    const/4 v14, 0x1

    :goto_1
    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v13, "is_background"

    .line 152
    :try_start_7
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v14

    invoke-virtual {v14}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v13, "silence_result"

    const-string v14, "-1"

    .line 153
    invoke-virtual {v12, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v13

    if-eqz v13, :cond_2

    .line 156
    iget-object v14, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v14}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    .line 157
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v14

    invoke-static {v14}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v14

    iget-object v15, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    move-object/from16 v16, v11

    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14, v15, v11}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v11

    goto :goto_3

    .line 156
    :cond_1
    move-object/from16 v16, v11

    goto :goto_2

    .line 154
    :cond_2
    move-object/from16 v16, v11

    .line 159
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 157
    :goto_3
    nop

    .line 159
    const-string v15, "ad_id"

    const-string v14, "true"

    const-string v0, "abtest"

    move-object/from16 v17, v9

    const-string v9, "sourcetype"

    move-object/from16 v18, v2

    const-string v2, "game_id"

    if-eqz v11, :cond_1c

    .line 162
    :try_start_8
    iget-object v1, v11, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-nez v1, :cond_3

    .line 203
    const/4 v1, 0x1

    goto :goto_4

    :cond_3
    const/4 v1, 0x0

    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 221
    sget v1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x23

    move-object/from16 v19, v14

    rem-int/lit16 v14, v1, 0x80

    sput v14, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    goto :goto_5

    .line 203
    :pswitch_1
    move-object/from16 v19, v14

    goto :goto_6

    .line 162
    :cond_4
    :goto_5
    const-string v1, "placement_id"

    .line 163
    :try_start_9
    iget-object v14, v11, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    :goto_6
    iget-object v1, v11, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 166
    iget-object v1, v11, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v12, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_5
    const-string v1, "did"

    .line 169
    :try_start_a
    iget-object v14, v11, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    const-string v1, "cpiparam"

    .line 170
    :try_start_b
    iget-object v14, v11, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const-string v1, "pid"

    .line 172
    :try_start_c
    iget-object v14, v11, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const-string v1, "sid"

    :try_start_d
    const-string v14, "sid"

    .line 173
    invoke-virtual {v11, v14}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-string v1, "creative_id"

    .line 174
    :try_start_e
    iget-object v14, v11, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const-string v1, "formatid"

    .line 175
    :try_start_f
    iget-object v14, v11, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const-string v1, "adnet"

    .line 176
    :try_start_10
    iget-object v14, v11, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v1, v11, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 178
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    if-eqz v14, :cond_8

    .line 221
    sget v14, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v15, v14, 0x39

    move-object/from16 v20, v1

    rem-int/lit16 v1, v15, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v15, v15, 0x2

    if-nez v15, :cond_6

    .line 178
    :cond_6
    if-eqz v13, :cond_9

    .line 203
    add-int/lit8 v14, v14, 0x5d

    rem-int/lit16 v1, v14, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v14, v14, 0x2

    if-nez v14, :cond_7

    .line 178
    :cond_7
    nop

    .line 179
    :try_start_11
    invoke-virtual {v13, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_7

    .line 178
    :cond_8
    move-object/from16 v20, v1

    .line 179
    :cond_9
    move-object/from16 v1, v20

    .line 181
    :goto_7
    invoke-virtual {v12, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    const-string v1, "downid"

    .line 182
    :try_start_12
    iget-object v9, v11, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v12, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 184
    invoke-virtual {v11, v8}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_a

    .line 185
    invoke-virtual {v11, v8}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_a
    nop

    .line 187
    invoke-virtual {v11, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_b

    .line 188
    invoke-virtual {v11, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_b
    nop

    .line 190
    invoke-virtual {v11, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 203
    const/16 v7, 0x59

    goto :goto_8

    :cond_c
    const/16 v7, 0x47

    :goto_8
    packed-switch v7, :pswitch_data_2

    .line 191
    invoke-virtual {v11, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :pswitch_2
    nop

    .line 193
    invoke-virtual {v11, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 203
    const/16 v6, 0x25

    goto :goto_9

    :cond_d
    const/4 v6, 0x7

    :goto_9
    packed-switch v6, :pswitch_data_3

    .line 194
    invoke-virtual {v11, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v0, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 272
    nop

    .line 194
    :pswitch_3
    nop

    .line 196
    invoke-virtual {v11, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 203
    const/16 v6, 0xa

    goto :goto_a

    :cond_e
    const/16 v6, 0x38

    :goto_a
    packed-switch v6, :pswitch_data_4

    .line 197
    invoke-virtual {v11, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :pswitch_4
    nop

    .line 199
    invoke-virtual {v11, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_f

    .line 200
    invoke-virtual {v11, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_f
    nop

    .line 202
    invoke-virtual {v11, v10}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    if-nez v5, :cond_11

    .line 221
    sget v5, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x53

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_10

    .line 203
    const/4 v5, 0x0

    goto :goto_b

    :cond_10
    const/4 v5, 0x1

    :goto_b
    packed-switch v5, :pswitch_data_5

    .line 221
    goto :goto_c

    .line 202
    :pswitch_5
    nop

    .line 203
    :try_start_13
    invoke-virtual {v11, v10}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_d

    :goto_c
    invoke-virtual {v11, v10}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v10, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const/4 v5, 0x0

    :try_start_14
    invoke-super {v5}, Ljava/lang/Object;->hashCode()I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    goto :goto_d

    .line 221
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 203
    :cond_11
    :goto_d
    nop

    .line 205
    :try_start_15
    invoke-virtual {v11, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_12

    .line 206
    invoke-virtual {v11, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_12
    nop

    .line 208
    invoke-virtual {v11, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 203
    const/4 v4, 0x0

    goto :goto_e

    :cond_13
    const/4 v4, 0x1

    :goto_e
    packed-switch v4, :pswitch_data_6

    .line 209
    invoke-virtual {v11, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :pswitch_6
    const-string v3, "app_id"

    .line 211
    invoke-virtual {v11, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    if-nez v3, :cond_14

    .line 203
    const/16 v3, 0x59

    goto :goto_f

    :cond_14
    const/16 v3, 0x56

    :goto_f
    packed-switch v3, :pswitch_data_7

    .line 211
    const-string v3, "amp_app_id"

    :try_start_16
    const-string v4, "app_id"

    .line 212
    invoke-virtual {v11, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    :pswitch_7
    const-string v3, "cpu_bit"

    .line 214
    :try_start_17
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->unifiedDownload()Z

    move-result v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    if-eqz v4, :cond_15

    const-string v4, "64"

    goto :goto_10

    :cond_15
    const-string v4, "32"

    :goto_10
    :try_start_18
    invoke-virtual {v1, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    if-eqz v13, :cond_16

    const-string v3, "extraInfo"

    .line 216
    invoke-virtual {v13, v3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/bw/getName;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    :cond_16
    const-string v3, "from_convert"

    .line 219
    move-object/from16 v4, v19

    invoke-virtual {v1, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    move-object/from16 v3, p1

    if-eqz v3, :cond_19

    .line 272
    sget v5, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v5, v5, 0x3b

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_17

    .line 220
    :cond_17
    :try_start_19
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->size()I

    move-result v5
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    if-lez v5, :cond_19

    .line 272
    sget v5, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, 0x41

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_18

    .line 221
    :try_start_1a
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    const/4 v6, 0x0

    :try_start_1b
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    goto :goto_11

    .line 272
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 221
    :cond_18
    :try_start_1c
    invoke-virtual/range {p1 .. p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 222
    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_11

    :cond_19
    const-string v3, "s_rid"

    .line 225
    invoke-virtual {v11, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 203
    const/4 v5, 0x0

    goto :goto_12

    :cond_1a
    const/4 v5, 0x1

    :goto_12
    packed-switch v5, :pswitch_data_8

    goto :goto_13

    .line 226
    :pswitch_8
    const-string v5, "s_rid"

    .line 227
    invoke-virtual {v1, v5, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :goto_13
    const-string v3, "exfo"

    .line 229
    :try_start_1d
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-object/from16 v1, v18

    invoke-virtual {v11, v1}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-nez v3, :cond_20

    .line 221
    sget v3, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v3, v3, 0x75

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1b

    .line 230
    :cond_1b
    nop

    .line 231
    :try_start_1e
    invoke-virtual {v11, v1}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 159
    :cond_1c
    move-object v4, v14

    .line 231
    if-eqz v13, :cond_1f

    .line 235
    iget-object v1, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1e

    .line 236
    iget-object v1, v13, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v12, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 221
    sget v1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x6b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1d

    .line 272
    :cond_1d
    nop

    .line 236
    :cond_1e
    nop

    .line 238
    :try_start_1f
    invoke-virtual {v13, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 231
    :cond_1f
    :goto_14
    nop

    .line 238
    :cond_20
    const-string v1, "2"

    const-string v3, "book"

    if-eqz v13, :cond_22

    .line 243
    :try_start_20
    iget-object v5, v13, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_21

    .line 203
    const/4 v5, 0x1

    goto :goto_15

    :cond_21
    const/4 v5, 0x0

    :goto_15
    packed-switch v5, :pswitch_data_9

    .line 244
    goto :goto_16

    .line 243
    :pswitch_9
    nop

    .line 244
    invoke-virtual {v12, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :goto_16
    const-string v1, "is_book"

    .line 246
    invoke-virtual {v13, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_17

    :cond_22
    nop

    .line 248
    invoke-virtual {v12, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    .line 244
    :goto_17
    nop

    .line 248
    if-eqz v13, :cond_28

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    const/16 v3, 0xa

    add-int/2addr v1, v3

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int/lit8 v3, v3, 0x7

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int v5, v5, 0xad

    const-string v6, "\u0002\ufff2\u0006\u0007\ufff4\u0005\u0007\ufff4\u0008\u0007"

    const/4 v7, 0x0

    invoke-static {v6, v7, v1, v3, v5}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 253
    :try_start_21
    iget-boolean v3, v13, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    if-eqz v3, :cond_24

    .line 221
    sget v3, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    const/4 v5, 0x1

    add-int/2addr v3, v5

    rem-int/lit16 v5, v3, 0x80

    sput v5, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_23

    const/16 v3, 0x2b

    const/4 v5, 0x0

    :try_start_22
    div-int/2addr v3, v5
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_2

    move-object v14, v4

    goto :goto_18

    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 253
    :cond_23
    move-object v14, v4

    goto :goto_18

    .line 272
    :cond_24
    const-string v14, "false"

    .line 253
    :goto_18
    :try_start_23
    invoke-virtual {v12, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v1, v13, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    if-nez v1, :cond_25

    const-string v1, "sub_portal"

    .line 255
    :try_start_24
    iget-object v3, v13, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v12, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    nop

    .line 255
    :cond_25
    const-string v1, "abTest"

    .line 257
    invoke-virtual {v13, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    if-nez v1, :cond_27

    .line 272
    sget v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_26

    .line 257
    :cond_26
    :try_start_25
    const-string v1, "abTest"

    .line 258
    invoke-virtual {v13, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    nop

    .line 260
    invoke-virtual {v13, v2}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 261
    invoke-virtual {v13, v2}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_3

    :cond_28
    const-string v0, "is_sapk"

    .line 265
    :try_start_26
    invoke-virtual/range {p2 .. p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_3

    const-string v0, "free_space"

    .line 267
    :try_start_27
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setLoaderClassName;->addDownloadListener()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_3

    const-string v0, "AD_CONVERT"

    .line 269
    :try_start_28
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\ufd2f\ufd5a\ufd62\ufd59\ufd57\ufd5a\ufd4c\ufd4f\ufd34\ufd59\ufd5e\ufd5f\ufd4c\ufd57\ufd57\ufd2c\ufd5b\ufd56\ufd3e\ufd5f\ufd4c\ufd5f\ufd60\ufd5e\u1cff\u1cff\ufd5e\ufd5f\ufd4c\ufd5f\ufd60\ufd5e\ufd25\ufd3a\ufd57\ufd4f\ufd0b\ufd30\ufd61\ufd50\ufd59\ufd5f\u1cff\u1cff\ufd2c\ufd2f\ufd4a"

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v5

    rsub-int/lit8 v4, v5, 0x2f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/lit8 v5, v5, 0x21

    const/16 v6, 0x30

    invoke-static {v2, v6}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    add-int/lit16 v2, v2, 0x356

    const/4 v6, 0x0

    invoke-static {v3, v6, v4, v5, v2}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u0006\u0006\ufffb\u000e\r\u0008\uffe3\ufffe\ufffb\t\u0006\u0008\u0011\t\uffde\ufff9\r\ufffe\ufffb\uffe7\r\u000f\u000e\ufffb\u000e\uffed\u0005\n\uffdb"

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1d

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x14

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    add-int/lit16 v7, v7, 0xa5

    const/4 v3, 0x1

    invoke-static {v0, v3, v1, v2, v7}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 270
    move-object/from16 v1, v16

    invoke-static {v1, v0, v12}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_3

    goto :goto_19

    :catchall_3
    move-exception v0

    .line 272
    new-instance v1, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_19
    return-void

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x7
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x38
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x56
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method public static deleteDownItem(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$getDownloadStatusByUrl;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$getDownloadStatusByUrl;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadStatusByUrl(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$getDownloadedRecordByUrl;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$getDownloadedRecordByUrl;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadedList(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$getDownloadedList;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$getDownloadedList;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadingList(IJLccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 5
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$pause;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/bh/getDownloadingList$pause;-><init>(IJLccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x41

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadingList(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x54

    goto :goto_0

    :cond_0
    const/16 p0, 0x41

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
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$trackReportClick;

    invoke-direct {v1, p0, p1}, Lccsansan/bh/getDownloadingList$trackReportClick;-><init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 3
    sget v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x2d

    goto :goto_0

    :cond_1
    const/16 p0, 0x34

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x25

    :try_start_0
    div-int/lit8 p0, p0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x34
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 15
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$resume;

    invoke-direct {v1, p2, p1, p0}, Lccsansan/bh/getDownloadingList$resume;-><init>(Ljava/util/HashMap;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x6d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

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

.method public static getDownloadingList(Ljava/lang/String;ZZZLccsancom/san/convert/database/ConvertIntent;)V
    .locals 8

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsansan/bh/getDownloadingList$deleteDownList;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsansan/bh/getDownloadingList$deleteDownList;-><init>(Ljava/lang/String;ZZZLccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1120
    sget-object v0, Lccsansan/d/trackReportClick;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1122
    nop

    .line 1123
    :try_start_0
    new-array v1, p2, [C

    .line 1127
    const/4 v2, 0x0

    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_0
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge v3, p2, :cond_1

    .line 1129
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v3, p0, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p4

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsansan/bh/getDownloadingList;->unifiedDownload:I

    sub-int/2addr v4, v5

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1127
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x1

    sput v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_0

    .line 1136
    :cond_1
    if-lez p3, :cond_2

    .line 1138
    sput p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p3, p2, p3

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p3, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p1, :cond_4

    .line 1150
    new-array p0, p2, [C

    .line 1152
    sput v2, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    :goto_1
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    if-ge p1, p2, :cond_3

    .line 1154
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget p3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sub-int p3, p2, p3

    add-int/lit8 p3, p3, -0x1

    aget-char p3, v1, p3

    aput-char p3, p0, p1

    .line 1152
    sget p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    goto :goto_1

    .line 1157
    :cond_3
    move-object v1, p0

    .line 1160
    :cond_4
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1161
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static removeDownloadListener(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 142
    nop

    .line 128
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 129
    const-string v1, "cpi_convert_task"

    invoke-static {v1}, Lccsancom/san/az/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 130
    const-string v1, "cpi_convert_when_network_connected"

    invoke-static {v1}, Lccsancom/san/az/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 131
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cloud_info"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 134
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_background"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 135
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "lock_screen"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 136
    invoke-static {}, Lccsansan/bw/setLoaderClassName;->addDownloadListener()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "free_space"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 137
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_info"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 140
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedList()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "usage_stats"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 141
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->deleteDownItem()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "draw_overlay"

    invoke-virtual {v0, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 142
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "permission_info"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(ILjava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 9
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$getPackageNameByRecord;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/bh/getDownloadingList$getPackageNameByRecord;-><init>(ILjava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x2f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static removeDownloadListener(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 11
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$removeDownloadListener;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$removeDownloadListener;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$getThumbPathByRecord;

    invoke-direct {v1, p0, p1}, Lccsansan/bh/getDownloadingList$getThumbPathByRecord;-><init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 14
    nop

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    invoke-static {p0, p1, v0}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    const/16 p0, 0x2f

    goto :goto_0

    :cond_0
    const/4 p0, 0x6

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
    .packed-switch 0x6
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 1

    .line 4
    nop

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    invoke-static {p0, p1, v0, p2}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x63

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/san/convert/database/ConvertIntent;",
            ")V"
        }
    .end annotation

    .line 127
    move-object/from16 v0, p1

    const-string v1, "pi_group_id"

    const-string v2, "app_id"

    const-string v3, "bottom"

    const-string v4, "load_source"

    const-string v5, "ad_mix_feed_enable"

    const-string v6, "allocate_code"

    const-string v7, "trace_id"

    const-string v8, "ad_cache"

    .line 0
    :try_start_0
    const-string v9, "status"

    .line 5
    move-object/from16 v10, p2

    invoke-virtual {v10, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v9

    .line 8
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v11

    .line 9
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    .line 11
    invoke-static/range {p2 .. p2}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object v10

    .line 12
    new-instance v12, Lccsanorg/json/JSONObject;

    invoke-direct {v12}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v13, "trigger_scene"

    .line 13
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    const-string v13, "task_state"

    .line 14
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const-string v13, "task_info"

    .line 15
    :try_start_3
    invoke-virtual {v12}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v13, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    new-instance v12, Lccsanorg/json/JSONObject;

    invoke-direct {v12}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const-string v13, "apk_path"

    .line 17
    :try_start_4
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->removeDownloadListener()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v13, "pkg"

    .line 18
    invoke-virtual {v12, v13, v9}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const-string v13, "ver"

    .line 19
    :try_start_5
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->addDownloadListener()I

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    const-string v13, "portal"

    .line 20
    :try_start_6
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedList()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v13, "url"

    .line 21
    invoke-virtual {v12, v13, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    const-string v13, "is_sapk"

    .line 22
    :try_start_7
    invoke-virtual/range {p3 .. p3}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadingRecordByUrl()Z

    move-result v14

    invoke-static {v14}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 24
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v13

    invoke-virtual {v13, v9, v11}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v11
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz v11, :cond_0

    .line 80
    const/16 v14, 0x58

    goto :goto_0

    :cond_0
    const/16 v14, 0x32

    :goto_0
    const/4 v15, 0x1

    packed-switch v14, :pswitch_data_0

    .line 127
    sget v14, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/2addr v14, v15

    rem-int/lit16 v13, v14, 0x80

    sput v13, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v14, v14, 0x2

    if-eqz v14, :cond_1

    .line 26
    :cond_1
    :try_start_8
    iget-object v13, v11, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v13}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    .line 27
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v13

    iget-object v14, v11, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v13, v14, v9}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v9

    goto :goto_1

    .line 29
    :cond_2
    :pswitch_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v13

    invoke-virtual {v13, v9}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v9
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 127
    nop

    .line 27
    :goto_1
    nop

    .line 29
    const-string v13, "ad_id"

    const-string v14, "abtest"

    const-string v15, "sourcetype"

    const-string v0, "game_id"

    move-object/from16 v16, v10

    if-eqz v9, :cond_15

    .line 85
    sget v17, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v10, v17, 0x65

    move-object/from16 v17, v1

    rem-int/lit16 v1, v10, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v10, v10, 0x2

    const/4 v1, 0x0

    if-nez v10, :cond_3

    .line 33
    :try_start_9
    iget-object v10, v9, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    move-object/from16 v18, v2

    array-length v2, v1

    if-nez v10, :cond_4

    goto :goto_2

    .line 85
    :cond_3
    move-object/from16 v18, v2

    .line 33
    iget-object v2, v9, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-nez v2, :cond_4

    :goto_2
    const-string v2, "placement_id"

    .line 34
    :try_start_a
    iget-object v10, v9, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v12, v2, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 36
    :cond_4
    iget-object v2, v9, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v10, 0x9

    if-nez v2, :cond_5

    .line 37
    iget-object v2, v9, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v12, v13, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 127
    sget v2, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/2addr v2, v10

    rem-int/lit16 v13, v2, 0x80

    sput v13, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_5

    .line 37
    :cond_5
    const-string v2, "did"

    .line 40
    :try_start_b
    iget-object v13, v9, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    const-string v2, "cpiparam"

    .line 41
    :try_start_c
    iget-object v13, v9, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    const-string v2, "pid"

    .line 43
    :try_start_d
    iget-object v13, v9, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-string v2, "sid"

    :try_start_e
    const-string v13, "sid"

    .line 44
    invoke-virtual {v9, v13}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    const-string v2, "creative_id"

    .line 45
    :try_start_f
    iget-object v13, v9, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    const-string v2, "formatid"

    .line 46
    :try_start_10
    iget-object v13, v9, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    const-string v2, "adnet"

    .line 47
    :try_start_11
    iget-object v13, v9, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v12, v2, v13}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 48
    iget-object v2, v9, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 49
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v13, :cond_7

    .line 127
    sget v13, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v13, v13, 0x6b

    rem-int/lit16 v10, v13, 0x80

    sput v10, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v13, v13, 0x2

    if-eqz v13, :cond_6

    const/16 v10, 0x1b

    const/4 v13, 0x0

    :try_start_12
    div-int/2addr v10, v13
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    if-eqz v11, :cond_7

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 49
    :cond_6
    if-eqz v11, :cond_7

    :goto_3
    nop

    .line 50
    :try_start_13
    invoke-virtual {v11, v15}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    nop

    .line 52
    invoke-virtual {v12, v15, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    const-string v2, "downid"

    .line 53
    :try_start_14
    iget-object v10, v9, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v12, v2, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 54
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 55
    invoke-virtual {v9, v8}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_8

    .line 56
    invoke-virtual {v9, v8}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v8, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_8
    nop

    .line 58
    invoke-virtual {v9, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_9

    .line 59
    invoke-virtual {v9, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_9
    nop

    .line 61
    invoke-virtual {v9, v14}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_a

    .line 62
    invoke-virtual {v9, v14}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v14, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_a
    nop

    .line 64
    invoke-virtual {v9, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_b

    .line 65
    invoke-virtual {v9, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v0, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_b
    nop

    .line 67
    invoke-virtual {v9, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 68
    invoke-virtual {v9, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_c
    nop

    .line 70
    invoke-virtual {v9, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_d

    .line 80
    const/16 v13, 0x9

    goto :goto_4

    :cond_d
    const/16 v13, 0x32

    :goto_4
    packed-switch v13, :pswitch_data_1

    .line 71
    invoke-virtual {v9, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :pswitch_1
    nop

    .line 73
    invoke-virtual {v9, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e

    .line 80
    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    const/4 v5, 0x1

    :goto_5
    packed-switch v5, :pswitch_data_2

    goto :goto_6

    .line 73
    :pswitch_2
    nop

    .line 74
    invoke-virtual {v9, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :goto_6
    nop

    .line 76
    invoke-virtual {v9, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 77
    invoke-virtual {v9, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_f
    nop

    .line 79
    move-object/from16 v3, v18

    invoke-virtual {v9, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    if-nez v4, :cond_10

    .line 80
    const/4 v4, 0x0

    goto :goto_7

    :cond_10
    const/4 v4, 0x1

    :goto_7
    packed-switch v4, :pswitch_data_3

    .line 33
    sget v4, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v4, v4, 0x4b

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_11

    const-string v4, "amp_app_id"

    .line 80
    :try_start_15
    invoke-virtual {v9, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v4, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    :try_start_16
    array-length v1, v1
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_1

    goto :goto_8

    .line 33
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 79
    :cond_11
    const-string v1, "amp_app_id"

    .line 80
    :try_start_17
    invoke-virtual {v9, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    :goto_8
    :pswitch_3
    const-string v1, "cpu_bit"

    .line 82
    :try_start_18
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->unifiedDownload()Z

    move-result v3
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    if-eqz v3, :cond_12

    .line 80
    const/16 v3, 0x28

    goto :goto_9

    :cond_12
    const/16 v3, 0x55

    :goto_9
    packed-switch v3, :pswitch_data_4

    .line 82
    const-string v3, "32"

    goto :goto_a

    :pswitch_4
    const-string v3, "64"

    :goto_a
    :try_start_19
    invoke-virtual {v2, v1, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    if-eqz v11, :cond_14

    .line 127
    sget v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_13

    :try_start_1a
    const-string v1, "extraInfo"

    .line 85
    invoke-virtual {v11, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/bw/getName;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    const/16 v1, 0x34

    const/4 v3, 0x0

    :try_start_1b
    div-int/2addr v1, v3
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_2

    goto :goto_b

    .line 127
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 82
    :cond_13
    :try_start_1c
    const-string v1, "extraInfo"

    .line 85
    invoke-virtual {v11, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/bw/getName;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_3

    :cond_14
    :goto_b
    const-string v1, "exfo"

    .line 87
    :try_start_1d
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 88
    move-object/from16 v1, v17

    invoke-virtual {v9, v1}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 89
    invoke-virtual {v9, v1}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_d

    :cond_15
    if-eqz v11, :cond_18

    .line 93
    iget-object v1, v11, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    if-nez v1, :cond_16

    .line 80
    const/4 v1, 0x1

    goto :goto_c

    :cond_16
    const/4 v1, 0x0

    :goto_c
    packed-switch v1, :pswitch_data_5

    .line 127
    sget v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x23

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_17

    .line 93
    :cond_17
    nop

    .line 94
    :try_start_1e
    iget-object v1, v11, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v12, v13, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :pswitch_5
    nop

    .line 96
    invoke-virtual {v11, v15}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v15, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_3

    .line 89
    :cond_18
    :goto_d
    nop

    .line 96
    :cond_19
    if-eqz v11, :cond_1a

    .line 80
    const/4 v13, 0x1

    goto :goto_e

    :cond_1a
    const/4 v13, 0x0

    :goto_e
    const-string v1, "2"

    const-string v2, "book"

    packed-switch v13, :pswitch_data_6

    .line 104
    goto :goto_11

    .line 101
    :pswitch_6
    :try_start_1f
    iget-object v3, v11, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 80
    const/4 v13, 0x1

    goto :goto_f

    :cond_1b
    const/4 v13, 0x0

    :goto_f
    packed-switch v13, :pswitch_data_7

    .line 102
    goto :goto_10

    .line 101
    :pswitch_7
    nop

    .line 102
    invoke-virtual {v12, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_12

    :goto_10
    const-string v1, "is_book"

    .line 104
    invoke-virtual {v11, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_12

    .line 106
    :goto_11
    invoke-virtual {v12, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_3

    .line 102
    :goto_12
    nop

    .line 80
    sget v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x65

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1c

    .line 127
    :cond_1c
    add-int/lit8 v2, v2, 0x31

    rem-int/lit16 v1, v2, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1d

    .line 106
    :cond_1d
    if-eqz v11, :cond_22

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "\u0002\ufff2\u0006\u0007\ufff4\u0005\u0007\ufff4\u0008\u0007"

    const-string v6, ""

    cmp-long v7, v1, v3

    rsub-int/lit8 v1, v7, 0xb

    const/16 v2, 0x30

    const/4 v13, 0x0

    invoke-static {v6, v2, v13, v13}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-static {v13, v13, v13}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v3

    rsub-int v3, v3, 0xad

    invoke-static {v5, v13, v1, v2, v3}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;ZIII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 111
    :try_start_20
    iget-boolean v2, v11, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_3

    if-eqz v2, :cond_1e

    .line 80
    const/4 v2, 0x1

    goto :goto_13

    :cond_1e
    const/4 v2, 0x0

    :goto_13
    packed-switch v2, :pswitch_data_8

    .line 111
    goto :goto_14

    :pswitch_8
    const-string v2, "false"

    goto :goto_16

    .line 80
    :goto_14
    sget v2, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x2d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1f

    const/4 v15, 0x1

    goto :goto_15

    :cond_1f
    const/4 v15, 0x0

    :goto_15
    packed-switch v15, :pswitch_data_9

    .line 111
    :pswitch_9
    const-string v2, "true"

    :goto_16
    :try_start_21
    invoke-virtual {v12, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 112
    iget-object v1, v11, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_3

    if-nez v1, :cond_20

    const-string v1, "sub_portal"

    .line 113
    :try_start_22
    iget-object v2, v11, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v12, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_20
    const-string v1, "abTest"

    .line 115
    invoke-virtual {v11, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_21

    const-string v1, "abTest"

    .line 116
    invoke-virtual {v11, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v14, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_21
    nop

    .line 118
    invoke-virtual {v11, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_22

    .line 119
    invoke-virtual {v11, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_3

    :cond_22
    const-string v0, "ad_info"

    .line 122
    :try_start_23
    invoke-virtual {v12}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v2, v16

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_3

    const-string v0, "AD_CONVERT"

    .line 124
    :try_start_24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u57cb\u70b9\u2014\u2014\u2014\u2014\u2014\u2014status:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    move-object/from16 v1, p0

    invoke-static {v0, v1, v2}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_3

    goto :goto_17

    :catchall_3
    move-exception v0

    .line 127
    new-instance v1, Lccsansan/bj/IncentiveDownloadUtils;

    invoke-direct {v1, v0}, Lccsansan/bj/IncentiveDownloadUtils;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lccsansan/bj/getDownloadingList;->getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V

    :goto_17
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x28
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 4
    sget v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0}, Lccsansan/bh/getDownloadingList;->removeDownloadListener(Ljava/util/HashMap;)Ljava/util/HashMap;

    move-result-object p0

    sget v0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x1d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    return-object p0
.end method

.method public static unifiedDownload(Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$trackReportShow;

    invoke-direct {v1, p0}, Lccsansan/bh/getDownloadingList$trackReportShow;-><init>(Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

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

.method public static unifiedDownload(Ljava/lang/String;JZZZLccsancom/san/convert/database/ConvertIntent;)V
    .locals 10

    .line 7
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v9, Lccsansan/bh/getDownloadingList$getDownloadedCount;

    move-object v1, v9

    move-object v2, p0

    move-wide v3, p1

    move v5, p3

    move v6, p4

    move v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lccsansan/bh/getDownloadingList$getDownloadedCount;-><init>(Ljava/lang/String;JZZZLccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v9}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v0, 0x2c

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bh/getDownloadingList$deleteDownItem;

    invoke-direct {v1, p0, p1}, Lccsansan/bh/getDownloadingList$deleteDownItem;-><init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static synthetic unifiedDownload(Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 2

    .line 2
    sget v0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/bh/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    sget p0, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x2a

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

.method public static unifiedDownload(ZZZZLccsancom/san/convert/database/ConvertIntent;)V
    .locals 8

    .line 12
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v7, Lccsansan/bh/getDownloadingList$getDownloadingList;

    move-object v1, v7

    move v2, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsansan/bh/getDownloadingList$getDownloadingList;-><init>(ZZZZLccsancom/san/convert/database/ConvertIntent;)V

    invoke-virtual {v0, v7}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bh/getDownloadingList;->IncentiveDownloadUtils:I

    add-int/lit8 p0, p0, 0x17

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bh/getDownloadingList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method
