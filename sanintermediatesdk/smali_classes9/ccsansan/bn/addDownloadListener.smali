.class public Lccsansan/bn/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static addDownloadListener:C

.field private static getDownloadingList:J

.field private static removeDownloadListener:I

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    const-wide v0, 0xcef6df8174c12f5L

    sput-wide v0, Lccsansan/bn/addDownloadListener;->getDownloadingList:J

    const/4 v0, 0x6

    sput-char v0, Lccsansan/bn/addDownloadListener;->addDownloadListener:C

    const/16 v0, 0x24

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils:[C

    return-void

    :array_0
    .array-data 2
        0x41s
        0x44s
        0x2es
        0x43s
        0x50s
        0x49s
        0x52s
        0x65s
        0x63s
        0x69s
        0x76s
        0x72s
        0x64s
        0x6es
        0x73s
        0x74s
        0x61s
        0x6cs
        0x75s
        0x6fs
        0x5fs
        0x79s
        0x70s
        0x4ds
        0x77s
        0x45s
        0x78s
        0x53s
        0x20s
        0x3as
        0x62s
        0x42s
        0x46s
        0x47s
        0x48s
        0x4as
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;
    .locals 8

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/bn/addDownloadListener;->addDownloadListener:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p1, [C

    .line 1221
    rem-int/lit8 v4, p1, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p1, p1, -0x1

    .line 1224
    aget-char v4, p0, p1

    sub-int/2addr v4, p2

    int-to-char v4, v4

    aput-char v4, v3, p1

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p1, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p1, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p0, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p2

    int-to-char v6, v6

    aput-char v6, v3, v5

    goto/16 :goto_1

    .line 1245
    :cond_2
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1246
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1247
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    div-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1248
    sget-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1251
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    if-ne v5, v6, :cond_3

    .line 1253
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    .line 1254
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    .line 1256
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1257
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1259
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1260
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1261
    goto :goto_1

    .line 1264
    :cond_3
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    if-ne v5, v6, :cond_4

    .line 1266
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    .line 1267
    sget v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v2

    sub-int/2addr v5, v4

    rem-int/2addr v5, v2

    sput v5, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    .line 1269
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v5, v6

    .line 1270
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v6, v7

    .line 1272
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1273
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1274
    goto :goto_1

    .line 1281
    :cond_4
    sget v5, Lccsansan/d/getDownloadedCount;->IncentiveDownloadUtils:I

    mul-int v5, v5, v2

    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadStatusByUrl:I

    add-int/2addr v5, v6

    .line 1282
    sget v6, Lccsansan/d/getDownloadedCount;->getDownloadingList:I

    mul-int v6, v6, v2

    sget v7, Lccsansan/d/getDownloadedCount;->getDownloadingRecordByUrl:I

    add-int/2addr v6, v7

    .line 1284
    sget v7, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, v1, v5

    aput-char v5, v3, v7

    .line 1285
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v6, v1, v6

    aput-char v6, v3, v5

    .line 1229
    :goto_1
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x2

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    goto/16 :goto_0

    .line 1291
    :cond_5
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v3}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1292
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V
    .locals 23

    .line 195
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p2

    const-string v3, "sid"

    const-string v4, "ad_cache"

    .line 0
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    const-string v9, "\u25b5\u25dc\ue8a9\ufa32\uc5c4\ubf6e\ue05d\u87c5\u6e00\ub60c\ub416\u3b82\ub269\u425d\u783b\u6f8c"

    cmp-long v10, v5, v7

    invoke-static {v9, v10}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 68
    :try_start_0
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    .line 71
    invoke-static {v1, v0}, Lccsansan/bw/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const-string v12, "-1"

    const-string v13, ""

    if-eqz v11, :cond_0

    .line 73
    :try_start_1
    iget-object v14, v11, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 74
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    iget v11, v11, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    .line 71
    :cond_0
    move-object v11, v12

    move-object v14, v11

    .line 74
    :goto_0
    const-string v15, "pkg_name"

    .line 76
    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "pkg"

    .line 77
    invoke-virtual {v10, v15, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v15, "ver_name"

    .line 78
    invoke-virtual {v10, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v14, "ver_code"

    .line 79
    invoke-virtual {v10, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v11, "portal"

    .line 80
    :try_start_2
    iget-object v14, v2, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    invoke-virtual {v10, v11, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    invoke-static {}, Lccsancom/san/az/unifiedDownload;->unifiedDownload()I

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    invoke-static {v13}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0xd

    rsub-int/lit8 v14, v14, 0xd

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v16

    const/4 v7, 0x0

    const-string v8, "\u000c\u0016\r\u0015\u000f\u0010\u0011\n\u000e\u0015\u0015\u001b\u0013\n"

    cmpl-float v16, v16, v7

    rsub-int/lit8 v6, v16, 0x7c

    int-to-byte v6, v6

    invoke-static {v8, v14, v6}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    .line 82
    :try_start_3
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    iget-object v6, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 87
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v6

    iget-object v8, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v6, v8, v0}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v6

    goto :goto_1

    .line 89
    :cond_1
    invoke-static/range {p0 .. p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v6

    invoke-virtual {v6, v0}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v6

    .line 87
    :goto_1
    nop

    .line 91
    iget-object v8, v2, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const-string v11, "ad"

    invoke-static {v8, v11}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    const-string v11, "downid"

    const-string v14, "s_rid"

    const-string v7, "cpiparam"

    const/16 v19, 0x2

    const-string v9, "sourcetype"

    if-eqz v8, :cond_8

    const-string v8, "ad_id"

    if-eqz v6, :cond_5

    .line 93
    :try_start_4
    invoke-virtual {v6, v14}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 94
    iget-object v15, v6, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v15}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    if-nez v15, :cond_2

    .line 131
    const/4 v15, 0x1

    goto :goto_2

    :cond_2
    const/4 v15, 0x0

    :goto_2
    packed-switch v15, :pswitch_data_0

    .line 94
    const-string v15, "placement_id"

    goto :goto_3

    .line 131
    :pswitch_0
    move-object/from16 v22, v12

    goto :goto_4

    .line 95
    :goto_3
    move-object/from16 v22, v12

    :try_start_5
    iget-object v12, v6, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v10, v15, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    :goto_4
    iget-object v12, v6, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v12}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    .line 131
    const/4 v12, 0x0

    goto :goto_5

    :cond_3
    const/4 v12, 0x1

    :goto_5
    packed-switch v12, :pswitch_data_1

    goto :goto_6

    .line 97
    :pswitch_1
    nop

    .line 98
    iget-object v12, v6, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v10, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    :goto_6
    const-string v8, "did"

    .line 101
    :try_start_6
    iget-object v12, v6, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v10, v8, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    iget-object v8, v6, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    const-string v7, "pid"

    .line 104
    :try_start_7
    iget-object v8, v6, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    invoke-virtual {v6, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    const-string v3, "creative_id"

    .line 106
    :try_start_8
    iget-object v7, v6, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    const-string v3, "formatid"

    .line 107
    :try_start_9
    iget-object v7, v6, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    const-string v3, "adnet"

    .line 108
    :try_start_a
    iget-object v7, v6, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v10, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v3, v6, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 110
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 131
    const/16 v7, 0x47

    goto :goto_7

    :cond_4
    const/16 v7, 0x41

    :goto_7
    packed-switch v7, :pswitch_data_2

    goto :goto_8

    .line 110
    :pswitch_2
    nop

    .line 111
    invoke-virtual {v2, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_8
    nop

    .line 113
    invoke-virtual {v10, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    iget-object v3, v6, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v3, v20

    goto :goto_a

    .line 91
    :cond_5
    move-object/from16 v22, v12

    .line 116
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    if-nez v3, :cond_7

    .line 131
    sget v3, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    const/16 v7, 0xd

    add-int/2addr v3, v7

    rem-int/lit16 v7, v3, 0x80

    sput v7, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_6

    .line 116
    :cond_6
    nop

    .line 117
    :try_start_b
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v10, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    nop

    .line 119
    invoke-virtual {v2, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 91
    :cond_8
    move-object/from16 v22, v12

    .line 122
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 123
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v10, v11, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    nop

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lccsansan/bw/getErrorCode;->deleteDownItem(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v2, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v9, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    :goto_9
    move-object v3, v13

    .line 130
    :goto_a
    iget-object v7, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3

    if-nez v7, :cond_a

    .line 131
    const/16 v7, 0xf

    goto :goto_b

    :cond_a
    const/16 v7, 0xd

    :goto_b
    packed-switch v7, :pswitch_data_3

    .line 195
    sget v7, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v7, v7, 0x35

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v7, v7, 0x2

    const-string v8, "sub_portal"

    if-eqz v7, :cond_b

    .line 131
    :try_start_c
    iget-object v7, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v10, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    const/4 v7, 0x0

    :try_start_d
    invoke-super {v7}, Ljava/lang/Object;->hashCode()I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_c

    .line 195
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 130
    :cond_b
    nop

    .line 131
    :try_start_e
    iget-object v7, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v10, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_3

    :goto_c
    :pswitch_3
    const-string v7, "interval_time"

    .line 134
    :try_start_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iget-wide v11, v2, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    sub-long/2addr v8, v11

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7, v0}, Lccsansan/bw/getDownloadedCount;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)J

    move-result-wide v7

    .line 136
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3

    const-string v9, "upgrade"

    .line 138
    :try_start_10
    iget-boolean v11, v2, Lccsansan/m/getDownloadedList;->shouldTryHandlingAction:Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_3

    const-string v12, "true"

    const-string v15, "false"

    if-eqz v11, :cond_c

    .line 195
    move-object/from16 v20, v12

    goto :goto_d

    :cond_c
    sget v11, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v11, v11, 0x11

    move-object/from16 v20, v12

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v11, v11, 0x2

    .line 138
    move-object v12, v15

    :goto_d
    :try_start_11
    invoke-virtual {v10, v9, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_3

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-static {v11, v9, v9}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v12

    const-string v11, "\u0007\u000f\u000f\u0010\u0011\u000c\r\u000b\u00a3"

    cmpl-float v9, v12, v9

    add-int/lit8 v9, v9, 0x9

    const/4 v12, 0x0

    invoke-static {v12}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v16

    add-int/lit8 v12, v16, 0x31

    int-to-byte v12, v12

    invoke-static {v11, v9, v12}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 139
    :try_start_12
    invoke-static {v1, v0}, Lccsansan/bw/deleteDownList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3

    const-string v9, "gp_version"

    .line 140
    :try_start_13
    invoke-static/range {p0 .. p0}, Lccsansan/bw/getDownloadedCount;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v6, :cond_19

    .line 143
    new-instance v9, Lccsanorg/json/JSONObject;

    invoke-direct {v9}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_3

    const-string v11, "jump_type"

    :try_start_14
    const-string v12, "action_type"

    .line 145
    invoke-virtual {v6, v12}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_14
    .catch Lccsanorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3

    if-nez v12, :cond_d

    const-string v12, "unknown"

    goto :goto_e

    :cond_d
    :try_start_15
    const-string v12, "action_type"

    invoke-virtual {v6, v12}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    :goto_e
    invoke-virtual {v9, v11, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_15
    .catch Lccsanorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_2
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_3

    const-string v11, "c_d"

    .line 146
    :try_start_16
    invoke-static {}, Lccsansan/bl/addDownloadListener;->addDownloadListener()Z

    move-result v12

    if-nez v12, :cond_e

    .line 131
    const/16 v12, 0x3f

    goto :goto_f

    :cond_e
    const/4 v12, 0x3

    :goto_f
    packed-switch v12, :pswitch_data_4

    .line 146
    const/4 v12, 0x1

    goto :goto_10

    :pswitch_4
    const/4 v12, 0x0

    :goto_10
    invoke-static {v11, v12}, Lccsansan/bq/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v11
    :try_end_16
    .catch Lccsanorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_2
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_3

    const-string v12, "open_inner_xz"

    if-eqz v11, :cond_f

    .line 131
    const/16 v11, 0x59

    goto :goto_11

    :cond_f
    const/16 v11, 0x18

    :goto_11
    packed-switch v11, :pswitch_data_5

    .line 146
    move-object/from16 v11, v20

    goto :goto_12

    :pswitch_5
    move-object v11, v15

    .line 147
    :goto_12
    :try_start_17
    invoke-virtual {v9, v12, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 148
    invoke-static {v9}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Lccsanorg/json/JSONObject;)V
    :try_end_17
    .catch Lccsanorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_2
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_3

    const-string v11, "immediate_report"

    .line 150
    :try_start_18
    iget-boolean v12, v2, Lccsansan/m/getDownloadedList;->ActionTypeDetailPage:Z

    if-eqz v12, :cond_10

    .line 195
    move-object/from16 v12, v20

    goto :goto_13

    .line 150
    :cond_10
    move-object v12, v15

    :goto_13
    invoke-virtual {v9, v11, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_18
    .catch Lccsanorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_2
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_3

    const-string v11, "trackstatus"

    .line 151
    :try_start_19
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget v15, v2, Lccsansan/m/getDownloadedList;->getDownloadingCount:I

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_19
    .catch Lccsanorg/json/JSONException; {:try_start_19 .. :try_end_19} :catch_2
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_3

    const-string v11, "s2sstatus"

    .line 152
    :try_start_1a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "s2s_track_status"
    :try_end_1a
    .catch Lccsanorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_3

    move-object/from16 v16, v10

    const/4 v10, -0x3

    :try_start_1b
    invoke-virtual {v2, v15, v10}, Lccsansan/m/getDownloadedList;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 154
    invoke-static {v1, v0}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0
    :try_end_1b
    .catch Lccsanorg/json/JSONException; {:try_start_1b .. :try_end_1b} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_3

    if-eqz v0, :cond_11

    .line 131
    const/4 v0, 0x1

    goto :goto_14

    :cond_11
    const/4 v0, 0x0

    :goto_14
    const-string v10, "0"

    packed-switch v0, :pswitch_data_6

    .line 154
    move-object v0, v10

    goto :goto_15

    :pswitch_6
    nop

    .line 195
    const-string v0, "1"

    .line 154
    :goto_15
    :try_start_1c
    const-string v11, "\u0007\u000f\u000f\u0010\u0011\u000c\u000e\u0017\u000f\u0010\u0011\u0010j"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    const/16 v15, 0xd

    sub-int/2addr v15, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    rsub-int/lit8 v12, v12, 0x5

    int-to-byte v12, v12

    invoke-static {v11, v15, v12}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 155
    invoke-virtual {v9, v11, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const/16 v0, 0xe10

    const/4 v11, 0x6

    .line 157
    new-array v11, v11, [F

    int-to-float v0, v0

    const/4 v12, 0x0

    aput v0, v11, v12

    const/16 v0, 0x5460

    int-to-float v0, v0

    const/4 v12, 0x1

    aput v0, v11, v12

    const v0, 0xa8c0

    int-to-float v0, v0

    aput v0, v11, v19

    const v0, 0x15180

    int-to-float v0, v0

    const/4 v12, 0x3

    aput v0, v11, v12

    const v0, 0x2a300

    int-to-float v0, v0

    const/4 v12, 0x4

    aput v0, v11, v12

    const v0, 0x3f480

    int-to-float v0, v0

    const/4 v12, 0x5

    aput v0, v11, v12

    .line 158
    invoke-static {}, Lccsansan/dr/deleteDownItem;->getDownloadingList()J

    move-result-wide v20

    const-wide/16 v17, 0x0

    cmp-long v0, v20, v17

    if-nez v0, :cond_12

    move-object/from16 v12, v22

    goto :goto_16

    .line 159
    :cond_12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v17

    sub-long v0, v17, v20

    long-to-float v0, v0

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    invoke-static {v0, v11}, Lccsansan/bw/AdFormat;->unifiedDownload(F[F)Ljava/lang/String;

    move-result-object v12

    :goto_16
    const-string v0, "al_utl"

    .line 160
    invoke-virtual {v9, v0, v12}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 161
    invoke-static {}, Lccsansan/dr/deleteDownItem;->IncentiveDownloadUtils()I

    move-result v0
    :try_end_1c
    .catch Lccsanorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_3

    const-string v1, "gp_ic"

    .line 162
    :try_start_1d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 163
    invoke-static {}, Lccsansan/dr/deleteDownItem;->addDownloadListener()I

    move-result v0
    :try_end_1d
    .catch Lccsanorg/json/JSONException; {:try_start_1d .. :try_end_1d} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_3

    const-string v1, "other_ic"

    .line 164
    :try_start_1e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 165
    invoke-virtual {v6, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 131
    const/16 v0, 0x50

    goto :goto_17

    :cond_13
    const/16 v0, 0xb

    :goto_17
    packed-switch v0, :pswitch_data_7

    .line 165
    move-object v0, v13

    goto :goto_18

    :pswitch_7
    invoke-virtual {v6, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_18
    invoke-virtual {v9, v4, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v0, "actived"

    .line 167
    invoke-virtual {v2, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Lccsanorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_3

    const-string v1, "actived"

    .line 168
    :try_start_1f
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4
    :try_end_1f
    .catch Lccsanorg/json/JSONException; {:try_start_1f .. :try_end_1f} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_3

    if-eqz v4, :cond_14

    .line 131
    const/4 v4, 0x1

    goto :goto_19

    :cond_14
    const/4 v4, 0x0

    :goto_19
    packed-switch v4, :pswitch_data_8

    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_15

    .line 168
    :cond_15
    move-object v0, v10

    :pswitch_8
    :try_start_20
    invoke-virtual {v9, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 170
    invoke-virtual {v2, v5}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 131
    const/16 v0, 0x48

    goto :goto_1a

    :cond_16
    const/16 v0, 0x3e

    :goto_1a
    packed-switch v0, :pswitch_data_9

    .line 172
    const-string v0, "\u7096\u70ff\u78bc\u6a27\uc17f\u51d3\ue4e6\u6978\u3b23\u2619\ub0ad\ud505\ue75a"

    goto :goto_1b

    .line 170
    :pswitch_9
    const-string v0, "\u7096\u70ff\u78bc\u6a27\uc17f\u51d3\ue4e6\u6978\u3b23\u2619\ub0ad\ud505\ue75a"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    const/4 v4, 0x1

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    .line 171
    invoke-virtual {v9, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 172
    invoke-virtual {v2, v5}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_1c

    :goto_1b
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v4

    const/4 v1, 0x1

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v0, v4}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {v9, v0, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 175
    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :goto_1c
    invoke-static {v2, v6}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 178
    invoke-static {v9, v6, v2}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V

    .line 181
    :cond_17
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 182
    invoke-virtual {v9, v14, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_20
    .catch Lccsanorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_3

    :cond_18
    const-string v0, "exfo"

    .line 184
    :try_start_21
    invoke-virtual {v9}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_21
    .catch Lccsanorg/json/JSONException; {:try_start_21 .. :try_end_21} :catch_1
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_3

    move-object/from16 v3, v16

    :try_start_22
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_22
    .catch Lccsanorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_0
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_3

    goto :goto_1d

    :catch_0
    move-exception v0

    goto :goto_1d

    :catch_1
    move-exception v0

    move-object/from16 v3, v16

    goto :goto_1d

    :catch_2
    move-exception v0

    move-object v3, v10

    goto :goto_1d

    .line 140
    :cond_19
    move-object v3, v10

    .line 184
    :goto_1d
    :try_start_23
    const-string v0, "\u0016\u0011\r\u000f\u0017\u0002\u000e\u000f\u0010\u0011~~"

    invoke-static {v13}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    rsub-int/lit8 v1, v1, 0xc

    const/16 v4, 0x30

    invoke-static {v13, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x11

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 189
    move-object/from16 v1, p0

    invoke-static {v1, v0, v3}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 191
    sget-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->AZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v0}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v0

    iput v0, v2, Lccsansan/m/getDownloadedList;->execute:I

    .line 192
    iput-wide v7, v2, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    .line 193
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, v2}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_3

    goto :goto_1e

    :catch_3
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-static {v2, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v2

    const/4 v3, 0x1

    rsub-int/lit8 v6, v2, 0x1

    const-string v2, "\ud006\ud075\ud7ef\uc56e\uf940\u9ce2\udccb\ua449\u9ba1\u8967\u888e\u1821\u47ea\u7d1d\u44a5\u4c0b\u3316\u21f1\uf047\u80dd\uff1f\u95c4\uac09\uf4b9\uab43\u599a\u5822\u28c1\u169b\u0e70\u15d0\u635a\uc2b8\uf214\uc1d6"

    invoke-static {v2, v6}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/2addr v1, v3

    const-string v2, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    invoke-static {v2, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1e
    return-void

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
    .packed-switch 0x47
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xd
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x3
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x18
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0xb
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_8
    .end packed-switch

    :pswitch_data_9
    .packed-switch 0x48
        :pswitch_9
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 10

    .line 11
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 3
    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 4
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v9, Lccsansan/bn/addDownloadListener$removeDownloadListener;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    invoke-direct/range {v1 .. v8}, Lccsansan/bn/addDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    invoke-virtual {v0, v9}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_1

    .line 11
    :cond_1
    invoke-static/range {p0 .. p6}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x3b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x28

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    :goto_0
    packed-switch v0, :pswitch_data_0

    :goto_1
    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 9

    .line 36
    const-string v0, "exfo"

    sget v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x55

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 18
    :cond_0
    invoke-static {p0}, Lccsansan/bn/addDownloadListener;->addDownloadListener(Lccsansan/m/getDownloadedList;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz p1, :cond_1

    .line 36
    const/16 v2, 0x5a

    goto :goto_0

    :cond_1
    const/16 v2, 0x23

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    :goto_1
    goto/16 :goto_2

    .line 18
    :pswitch_0
    nop

    .line 22
    :try_start_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 23
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 24
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "from_convert"

    const-string v5, "true"

    .line 26
    invoke-virtual {v4, v2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "trigger_scene"

    .line 27
    :try_start_1
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "activate_success_time"

    .line 28
    :try_start_2
    invoke-virtual {p1}, Lccsancom/san/convert/database/ConvertIntent;->ActionTypeReserveApp()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 29
    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 36
    sget p1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    const/4 p1, 0x5

    goto :goto_1

    :cond_2
    const/16 p1, 0x4a

    goto :goto_1

    .line 29
    :catch_0
    move-exception p1

    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-string v2, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    invoke-static {v2, v0}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v6

    const-string v2, "\u0007\u0014}}\u0008\t\u0015\t\u0015\n\u0007\u0019\u0019\u000c\r\u0017\u0011\r\u0002\u0006\u0015\u000f\u000b\u0008\u001a\u001b"

    cmp-long v8, v6, v4

    rsub-int/lit8 v4, v8, 0x19

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v5

    shr-int/lit8 v5, v5, 0x16

    add-int/lit8 v5, v5, 0x11

    int-to-byte v5, v5

    invoke-static {v2, v4, v5}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 33
    invoke-static {v0, v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    :cond_3
    :goto_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {v3, v3}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-string v2, "\u6364\u6325\uf8f0\uea41\u5698\ucd95\u732d\uf50e\u28df\ua64e\u2748\u494a\uf4a3\u520c\ueb6e\u1d53\u8068\u0eea\u5fbf\ud1ad\u4c40\ubadc\u03d4\ua5df"

    invoke-static {v2, v0}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v1}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 36
    invoke-static {p0}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsansan/m/getDownloadedList;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x5a
        :pswitch_0
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsansan/m/getDownloadedList;)Ljava/util/HashMap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/m/getDownloadedList;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    const-string v0, "s_rid"

    const-string v1, "real_time"

    const-string v2, "ad_cache"

    .line 196
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 197
    iget-object v4, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const-string v5, "portal"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v4, p0, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    const-string v5, "url"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v4, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    const-string v5, "pkg"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    iget-object v4, p0, Lccsansan/m/getDownloadedList;->trackReportClick:Ljava/lang/String;

    const-string v5, "ad"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "downid"

    const-string v6, "cpiparam"

    const-string v7, "sourcetype"

    if-eqz v4, :cond_11

    .line 204
    sget v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x61

    rem-int/lit16 v8, v4, 0x80

    sput v8, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_0

    .line 203
    :cond_0
    iget-object v4, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v8, 0x0

    if-nez v4, :cond_2

    .line 268
    sget v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x53

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_1

    .line 204
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    iget-object v9, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v10, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v4

    :try_start_0
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 268
    :catchall_0
    move-exception p0

    throw p0

    .line 204
    :cond_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    iget-object v9, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    iget-object v10, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v4, v9, v10}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v4

    .line 268
    :goto_0
    goto :goto_1

    .line 206
    :cond_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v4

    iget-object v9, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v4

    :goto_1
    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v4, :cond_3

    .line 214
    const/4 v11, 0x1

    goto :goto_2

    :cond_3
    const/4 v11, 0x0

    :goto_2
    const-string v12, "ad_id"

    packed-switch v11, :pswitch_data_0

    .line 210
    iget-object v11, v4, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_5

    goto :goto_3

    .line 252
    :pswitch_0
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 253
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v3, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    nop

    .line 255
    invoke-virtual {p0, v7}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x31

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_14

    goto/16 :goto_c

    .line 211
    :goto_3
    iget-object v11, v4, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    const-string v13, "placement_id"

    invoke-virtual {v3, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    :cond_5
    iget-object v11, v4, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    const/16 v13, 0x1d

    if-nez v11, :cond_6

    .line 214
    const/16 v11, 0x1d

    goto :goto_4

    :cond_6
    const/16 v11, 0x4c

    :goto_4
    packed-switch v11, :pswitch_data_1

    .line 227
    sget v11, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v11, v11, 0xf

    rem-int/lit16 v14, v11, 0x80

    sput v14, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_7

    .line 214
    iget-object v11, v4, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    array-length v11, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_5

    .line 227
    :catchall_1
    move-exception p0

    throw p0

    .line 214
    :cond_7
    iget-object v11, v4, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    :goto_5
    :pswitch_1
    iget-object v11, v4, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v3, v5, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    const-string v11, "did"

    invoke-virtual {v3, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    const-string v6, "pid"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    const-string v6, "creative_id"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    const-string v6, "formatid"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    const-string v6, "adnet"

    invoke-virtual {v3, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const-string v5, "sid"

    invoke-virtual {v4, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v5, v4, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 226
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 204
    sget v5, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v5, v5, 0x15

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_8

    .line 227
    invoke-virtual {p0, v7}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x58

    :try_start_2
    div-int/2addr v6, v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_6

    .line 204
    :catchall_2
    move-exception p0

    throw p0

    .line 226
    :cond_8
    nop

    .line 227
    invoke-virtual {p0, v7}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_9
    :goto_6
    nop

    .line 229
    invoke-virtual {v3, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :try_start_3
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5}, Lccsanorg/json/JSONObject;-><init>()V

    .line 233
    invoke-virtual {p0, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 234
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v11, "0"

    if-eqz v7, :cond_b

    .line 227
    sget v6, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v6, v6, 0x2f

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_a

    .line 214
    const/4 v6, 0x1

    goto :goto_7

    :cond_a
    const/4 v6, 0x0

    :goto_7
    packed-switch v6, :pswitch_data_2

    .line 234
    move-object v6, v11

    goto :goto_8

    .line 227
    :pswitch_2
    :try_start_4
    invoke-super {v8}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-object v6, v11

    goto :goto_8

    :catchall_3
    move-exception p0

    throw p0

    .line 234
    :cond_b
    :goto_8
    :try_start_5
    invoke-virtual {v5, v1, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v1, "actived"

    .line 236
    invoke-virtual {p0, v1}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    const-string v6, "\u7096\u70ff\u78bc\u6a27\uc17f\u51d3\ue4e6\u6978\u3b23\u2619\ub0ad\ud505\ue75a"

    if-nez v1, :cond_d

    .line 214
    sget v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/2addr v1, v13

    rem-int/lit16 v7, v1, 0x80

    sput v7, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_c

    .line 236
    :cond_c
    :try_start_6
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v9

    invoke-static {v6, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    const-string v6, "1"

    .line 237
    invoke-virtual {v5, v1, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_9

    :cond_d
    invoke-static {v10, v10}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v1

    add-int/2addr v1, v9

    invoke-static {v6, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 239
    invoke-virtual {v5, v1, v11}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 237
    :goto_9
    nop

    .line 239
    nop

    .line 241
    invoke-virtual {v4, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v1, :cond_f

    .line 204
    sget v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v6, v1, 0x80

    sput v6, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_e

    :try_start_7
    array-length v1, v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_a

    :catchall_4
    move-exception p0

    throw p0

    .line 241
    :cond_e
    nop

    .line 268
    :goto_a
    const-string v1, ""

    goto :goto_b

    .line 241
    :cond_f
    :try_start_8
    invoke-virtual {v4, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_b
    invoke-virtual {v5, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 243
    invoke-virtual {v4, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 245
    invoke-virtual {v5, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_0

    :cond_10
    const-string v0, "exfo"

    .line 247
    :try_start_9
    invoke-virtual {v5}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Lccsanorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0

    goto :goto_d

    :catch_0
    move-exception v0

    goto :goto_d

    .line 258
    :cond_11
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 204
    sget v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_12

    .line 259
    :cond_12
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsansan/m/getDownloadedList;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-virtual {p0, v7}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    sget v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_14

    .line 268
    :cond_14
    :goto_c
    nop

    .line 264
    :goto_d
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 265
    iget-object v0, p0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    const-string v1, "sub_portal"

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v4, p0, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    sub-long/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "interval_time"

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4c
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch
.end method

.method public static addDownloadListener(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 378
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    const-string v3, "sid"

    const-string v4, "sourcetype"

    const-string v5, "cpiparam"

    .line 331
    const/4 v6, 0x0

    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    .line 332
    new-instance v9, Ljava/util/LinkedHashMap;

    invoke-direct {v9}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v10, "portal"

    .line 333
    invoke-virtual {v9, v10, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "url"

    .line 334
    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "result"

    if-eqz p2, :cond_1

    .line 346
    sget v11, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v11, v11, 0x31

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_0

    .line 334
    :cond_0
    const-string v11, "success"

    goto :goto_0

    :cond_1
    const-string v11, "failed"

    .line 335
    :goto_0
    :try_start_1
    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "pkg"

    .line 336
    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v10, "ave_speed"

    .line 337
    move-object/from16 v11, p4

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v10

    invoke-virtual {v10, v2, v1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v1

    const/4 v10, 0x0

    if-eqz v1, :cond_8

    .line 341
    iget-object v11, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v11, :cond_3

    .line 346
    sget v11, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v11, v11, 0x77

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v11, v11, 0x2

    if-nez v11, :cond_2

    .line 341
    :cond_2
    const-string v11, "ad_id"

    .line 342
    :try_start_2
    iget-object v12, v1, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_3
    iget-object v11, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v11, :cond_5

    .line 378
    sget v11, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v11, v11, 0x45

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_4

    .line 346
    const/4 v11, 0x1

    goto :goto_1

    :cond_4
    const/4 v11, 0x0

    :goto_1
    const-string v12, "sub_portal"

    packed-switch v11, :pswitch_data_0

    .line 345
    goto :goto_2

    .line 378
    :pswitch_0
    nop

    .line 346
    :try_start_3
    iget-object v11, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    invoke-super {v10}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 378
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 346
    :goto_2
    :try_start_5
    iget-object v11, v1, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v9, v12, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    :goto_3
    nop

    .line 348
    :cond_5
    iget-object v11, v1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v11, :cond_6

    const-string v11, "downid"

    .line 349
    :try_start_6
    iget-object v12, v1, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_6
    const-string v11, "interval_time"

    .line 352
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    iget-wide v14, v1, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    sub-long/2addr v12, v14

    invoke-static {v12, v13}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v11, ""

    invoke-static {v11, v11, v6}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v11

    add-int/2addr v11, v7

    const-string v12, "\u6bb4\u6bd5\u01ef\u136f\ubf67\ue25d\u9af9\udaed\u203f\u5f55\ucead\u668f\ufc6e\uab06"

    invoke-static {v12, v11}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    .line 353
    :try_start_8
    iget-boolean v12, v1, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-eqz v12, :cond_7

    const-string v12, "true"

    goto :goto_4

    :cond_7
    const-string v12, "false"

    :goto_4
    :try_start_9
    invoke-virtual {v9, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    invoke-virtual {v1, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v4, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    invoke-virtual {v1, v3}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    nop

    .line 358
    invoke-static {v1, v10}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 359
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 360
    invoke-static {v3, v10, v1}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v4, "exfo"

    .line 361
    :try_start_a
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    const-string v3, "ad"

    .line 364
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    if-eqz v0, :cond_f

    .line 346
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x6d

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_a

    .line 364
    :cond_a
    if-eqz v1, :cond_b

    .line 346
    const/4 v0, 0x0

    goto :goto_5

    :cond_b
    const/4 v0, 0x1

    :goto_5
    const-string v4, "book"

    packed-switch v0, :pswitch_data_1

    add-int/lit8 v3, v3, 0x77

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_c

    .line 365
    :cond_c
    :try_start_b
    iget-object v0, v1, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 368
    :pswitch_1
    const-string v0, "2"

    .line 369
    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 365
    :cond_d
    const-string v0, "is_book"

    .line 368
    invoke-virtual {v1, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    :goto_6
    nop

    .line 346
    sget v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_e

    .line 378
    :cond_e
    nop

    .line 369
    :cond_f
    nop

    .line 374
    :try_start_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "failed_msg"

    .line 375
    move-object/from16 v1, p5

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u8b39\u8b74\u3d7c\u2fe8\u4a21\u8c2d\u6faf\ub481\uc0b2\u63f1\u3bf0\u08e9\u1cff\u978d\uf7dc\u5ccb\u6821\ucb4c\u4337\u901d\ua43b\u7f5c\u1f68\ue477\uf071\ub311"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    invoke-static {v0, v5}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 376
    invoke-static {v8, v0, v9}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 378
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/2addr v2, v7

    const-string v3, "\u6e5e\u6e3d\u8869\u9af3\uf3a6\u4692\ud620\u7e21\u25ef\ud6c3\u826c\uc265\uf999\u2283\u4e5a\u9679\u8d4d\u7e79\ufaa4\u5a9b\u416b\uca5f\ua6e9\u2ed1\u150e\u0650\u52cd\uf2e3\ua8d4\u51eb\u1f36\ub965\u7ca8\uad88"

    invoke-static {v3, v2}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v1

    sub-int/2addr v7, v1

    const-string v1, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    invoke-static {v1, v7}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    nop

    .line 346
    sget v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    .line 378
    return-void

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

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x18

    const-string v3, ""

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x63

    int-to-byte v3, v3

    const-string v4, "\u0001\u0002\u0003\u0004\u0005\u0000\u0007\u0008\t\u0008\n\u000b\u0008\u0006\u0003\u0001\u0011\u0000\u000e\u000f\u0010\u0011\u00cf\u00cf"

    invoke-static {v4, v2, v3}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1, p2}, Lccsansan/bn/addDownloadListener$IncentiveDownloadUtils;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x49

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0xd

    goto :goto_0

    :cond_0
    const/16 p0, 0x19

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
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 391
    nop

    .line 379
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 380
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v2, "content_id"

    .line 381
    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "name"

    .line 382
    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "size_ex"

    .line 383
    :try_start_1
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "source"

    .line 384
    invoke-virtual {v1, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "portal"

    .line 385
    invoke-virtual {v1, p0, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "mimeType"

    .line 386
    invoke-virtual {v1, p0, p5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p0, "status"

    .line 387
    :try_start_2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsansan/ab/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/ab/removeDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "browser_xz_app"

    .line 389
    invoke-static {v0, p0, v1}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 391
    sget p0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    .line 389
    :catch_0
    move-exception p0

    .line 391
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-static {p2}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result p3

    neg-int p3, p3

    const-string p4, "\ue8ab\ue8c8\u7aa7\u683d\u7650\u39b6\u53d6\u0105\ua31a\u240d\u079a\ubd6c\u7f6c\ud054\ucb91\ue945\u0bb6\u8ca4\u7f42\u25a9\uc794\u3895\u2304\u51f5\u93e0\uf4df\ud73a\u8df4\u2e23\ua33a\u9afb\uc615\ufa02\u5f0b\u4ec6\u7278\ub679\u0b40\uf2b5\uaebb\u42ff\uc7f4\ua62e"

    invoke-static {p4, p3}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 p1, 0x30

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result p1

    neg-int p1, p1

    const-string p2, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    invoke-static {p2, p1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    sget p0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V
    .locals 15

    .line 67
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    const-string v2, "sid"

    .line 1
    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    .line 2
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v7, "portal"

    .line 3
    move-object v8, p0

    invoke-virtual {v6, v7, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "action"

    .line 4
    move-object/from16 v8, p1

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "url"

    .line 5
    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v7, "pkg"

    .line 6
    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v7

    invoke-virtual {v7, v1, v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    const/4 v7, 0x2

    if-eqz v0, :cond_0

    .line 24
    const/4 v8, 0x2

    goto :goto_0

    :cond_0
    const/16 v8, 0x38

    :goto_0
    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 11
    :pswitch_0
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v8, :cond_2

    .line 67
    sget v8, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v8, v8, 0x7d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/2addr v8, v7

    if-eqz v8, :cond_1

    .line 24
    const/16 v8, 0x55

    goto :goto_1

    :cond_1
    const/16 v8, 0x35

    :goto_1
    packed-switch v8, :pswitch_data_1

    .line 12
    :try_start_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v8

    iget-object v9, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v8, 0x0

    :try_start_2
    array-length v8, v8
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 67
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 12
    :goto_2
    :try_start_3
    invoke-static {v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v8

    iget-object v9, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v8, v9, v1}, Lccsansan/m/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1

    goto :goto_4

    .line 14
    :cond_2
    :goto_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v8

    invoke-virtual {v8, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 12
    :goto_4
    nop

    .line 14
    const-string v8, "s_rid"

    const-string v9, "ad_id"

    const-string v10, "sourcetype"

    if-eqz v1, :cond_8

    .line 18
    :try_start_4
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3

    .line 19
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_3
    const-string v9, "downid"

    .line 21
    :try_start_5
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v6, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v9, :cond_5

    .line 12
    sget v9, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v9, v9, 0x65

    rem-int/lit16 v11, v9, 0x80

    sput v11, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/2addr v9, v7

    if-eqz v9, :cond_4

    .line 24
    const/16 v9, 0x4c

    goto :goto_5

    :cond_4
    const/16 v9, 0x4e

    :goto_5
    const-string v11, "placement_id"

    packed-switch v9, :pswitch_data_2

    .line 23
    goto :goto_6

    .line 12
    :pswitch_2
    nop

    .line 24
    :try_start_6
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v6, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const/16 v9, 0x54

    :try_start_7
    div-int/2addr v9, v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_7

    .line 12
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 24
    :goto_6
    :try_start_8
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v6, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :goto_7
    nop

    .line 24
    :cond_5
    nop

    .line 27
    invoke-virtual {v1, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    const-string v2, "did"

    .line 28
    :try_start_9
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    const-string v2, "cpiparam"

    .line 29
    :try_start_a
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    const-string v2, "pid"

    .line 30
    :try_start_b
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    const-string v2, "creative_id"

    .line 31
    :try_start_c
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    const-string v2, "formatid"

    .line 32
    :try_start_d
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    const-string v2, "adnet"

    .line 33
    :try_start_e
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    iget-object v2, v1, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 35
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    if-eqz v9, :cond_7

    if-eqz v0, :cond_7

    .line 67
    sget v2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x51

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/2addr v2, v7

    if-eqz v2, :cond_6

    .line 35
    :cond_6
    nop

    .line 36
    :try_start_f
    invoke-virtual {v0, v10}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_7
    nop

    .line 38
    invoke-virtual {v6, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v1, v8}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    goto :goto_b

    :cond_8
    if-eqz v0, :cond_9

    .line 24
    const/4 v1, 0x0

    goto :goto_8

    :cond_9
    const/4 v1, 0x1

    :goto_8
    packed-switch v1, :pswitch_data_3

    .line 67
    sget v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x3

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/2addr v1, v7

    if-eqz v1, :cond_a

    .line 42
    :cond_a
    :try_start_10
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 24
    const/4 v1, 0x1

    goto :goto_9

    :cond_b
    const/4 v1, 0x0

    :goto_9
    packed-switch v1, :pswitch_data_4

    goto :goto_a

    .line 42
    :pswitch_3
    nop

    .line 43
    iget-object v1, v0, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v6, v9, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    nop

    .line 43
    :goto_a
    nop

    .line 45
    invoke-virtual {v0, v10}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    :pswitch_4
    const-string v1, ""

    :goto_b
    if-eqz v0, :cond_d

    .line 49
    :try_start_11
    iget-object v2, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    if-nez v2, :cond_d

    .line 67
    sget v2, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v9, v2, 0x80

    sput v9, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/2addr v2, v7

    if-nez v2, :cond_c

    .line 49
    :cond_c
    const-string v2, "sub_portal"

    .line 50
    :try_start_12
    iget-object v0, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    :cond_d
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    const-wide/16 v11, 0x0

    const-string v0, "true"

    const-string v2, "false"

    const-string v13, "\u6bb4\u6bd5\u01ef\u136f\ubf67\ue25d\u9af9\udaed\u203f\u5f55\ucead\u668f\ufc6e\uab06"

    cmp-long v14, v9, v11

    invoke-static {v13, v14}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    if-eqz p4, :cond_f

    .line 67
    sget v10, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v10, v10, 0x71

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/2addr v10, v7

    if-nez v10, :cond_e

    .line 50
    :cond_e
    move-object v7, v0

    goto :goto_c

    :cond_f
    move-object v7, v2

    .line 53
    :goto_c
    :try_start_13
    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_1

    .line 55
    :try_start_14
    new-instance v7, Lccsanorg/json/JSONObject;

    invoke-direct {v7}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_14
    .catch Lccsanorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_0
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_1

    const-string v9, "jump_type"

    .line 56
    :try_start_15
    invoke-static/range {p6 .. p6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_15
    .catch Lccsanorg/json/JSONException; {:try_start_15 .. :try_end_15} :catch_0
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_1

    const-string v9, "open_inner_xz"

    if-eqz p5, :cond_10

    goto :goto_d

    :cond_10
    move-object v0, v2

    .line 57
    :goto_d
    :try_start_16
    invoke-virtual {v7, v9, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 58
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 24
    const/16 v0, 0xc

    goto :goto_e

    :cond_11
    const/16 v0, 0x2f

    :goto_e
    packed-switch v0, :pswitch_data_5

    .line 59
    invoke-virtual {v7, v8, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_16
    .catch Lccsanorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_0
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_1

    :pswitch_5
    const-string v0, "exfo"

    .line 61
    :try_start_17
    invoke-virtual {v7}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Lccsanorg/json/JSONException; {:try_start_17 .. :try_end_17} :catch_0
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_1

    goto :goto_f

    :catch_0
    move-exception v0

    :goto_f
    :try_start_18
    const-string v0, "\ufdd1\ufd9c\u7ea0\u6c34\u46d7\u3be4\u6359\u0348\ub65a\u202d\u3706\ubf20\u6a17\ud451\ufb2a\ueb02\u1ec9\u8892\u4fdd\u27d6\ud2e2\u3c8e"

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-static {v5, v0, v6}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_1

    .line 67
    goto :goto_10

    .line 65
    :catch_1
    move-exception v0

    .line 67
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x1

    const-string v4, "\u945e\u943a\ub523\ua7b9\u947e\ub3eb\ub1d7\u8b5b\udfe6\ueb86\ue5a5\u373b\u0382\u1ffa\u2983\u631b\u774c\u433e\u9d77\uafd1\ubb6a\uf725\uc128\udbad\uef19\u3b51\u3531\u078b\u52d2\u6ca7\u78f3\u4c52\u86b2\u9087\uacba\uf832\uca91\uc4c4\u10ce\u24b4"

    invoke-static {v4, v2}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v1

    shr-int/lit8 v1, v1, 0x16

    add-int/2addr v1, v3

    const-string v2, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    invoke-static {v2, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_10
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x55
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x4c
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_4
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x2f
        :pswitch_5
    .end packed-switch
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLccsansan/m/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    .line 330
    move-object/from16 v0, p1

    move-object/from16 v1, p3

    const-string v2, "sid"

    const-string v3, "s_rid"

    const-string v4, "ad_cache"

    const-string v5, "amp_app_id"

    const-string v6, ""

    .line 265
    const/4 v7, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v9

    .line 266
    new-instance v10, Ljava/util/LinkedHashMap;

    invoke-direct {v10}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v11, "portal"

    .line 267
    move-object/from16 v12, p0

    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "url"

    .line 268
    invoke-virtual {v10, v11, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v11, "result"

    if-eqz p2, :cond_0

    const-string v12, "success"

    goto :goto_0

    :cond_0
    const-string v12, "failed"

    .line 269
    :goto_0
    :try_start_1
    invoke-virtual {v10, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_1

    .line 300
    const/4 v11, 0x0

    goto :goto_1

    :cond_1
    const/4 v11, 0x1

    :goto_1
    packed-switch v11, :pswitch_data_0

    move-object/from16 v18, v9

    goto/16 :goto_13

    .line 321
    :pswitch_0
    sget v11, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v11, v11, 0x43

    rem-int/lit16 v12, v11, 0x80

    sput v12, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_2

    .line 272
    :cond_2
    :try_start_2
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v11, :cond_3

    .line 300
    const/16 v11, 0x37

    goto :goto_2

    :cond_3
    const/16 v11, 0x57

    :goto_2
    const/4 v13, 0x0

    packed-switch v11, :pswitch_data_1

    goto :goto_3

    .line 316
    :pswitch_1
    sget v11, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v11, v11, 0x59

    rem-int/lit16 v14, v11, 0x80

    sput v14, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v11, v11, 0x2

    const-string v14, "placement_id"

    if-nez v11, :cond_4

    .line 273
    :try_start_3
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v10, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :try_start_4
    array-length v11, v13
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    .line 316
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 272
    :cond_4
    nop

    .line 273
    :try_start_5
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v10, v14, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :goto_3
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v11}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v11, :cond_5

    .line 300
    const/16 v11, 0x20

    goto :goto_4

    :cond_5
    const/16 v11, 0xa

    :goto_4
    packed-switch v11, :pswitch_data_2

    goto :goto_5

    .line 275
    :pswitch_2
    const-string v11, "ad_id"

    .line 276
    :try_start_6
    iget-object v15, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    const-string v11, "did"

    .line 279
    :try_start_7
    iget-object v15, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v11, "cpiparam"

    .line 280
    :try_start_8
    iget-object v15, v1, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v11, "pkg"

    .line 282
    :try_start_9
    iget-object v15, v1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v11, "pid"

    .line 283
    :try_start_a
    iget-object v15, v1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v10, v11, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    invoke-virtual {v1, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v2, "creative_id"

    .line 285
    :try_start_b
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v2, "formatid"

    .line 286
    :try_start_c
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v2, "adnet"

    .line 287
    :try_start_d
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v2

    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v2, v11, v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v0

    .line 289
    iget-object v2, v1, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 290
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const/16 v15, 0x31

    const-string v12, "sourcetype"

    if-eqz v11, :cond_8

    .line 316
    sget v11, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v11, v11, 0x39

    rem-int/lit16 v14, v11, 0x80

    sput v14, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v11, v11, 0x2

    if-eqz v11, :cond_6

    .line 290
    :cond_6
    if-eqz v0, :cond_7

    .line 300
    const/16 v11, 0x57

    goto :goto_6

    :cond_7
    const/16 v11, 0x31

    :goto_6
    packed-switch v11, :pswitch_data_3

    .line 291
    :try_start_e
    invoke-virtual {v0, v12}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_8
    :pswitch_3
    nop

    .line 293
    invoke-virtual {v10, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v2, "downid"

    .line 294
    :try_start_f
    iget-object v11, v1, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v10, v2, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v2, "2"

    const-string v11, "book"

    if-eqz v0, :cond_d

    const-string v12, "interval_time"

    .line 297
    :try_start_10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    move-object/from16 v18, v9

    iget-wide v8, v0, Lccsansan/m/getDownloadedList;->getDownloadedCount:J

    sub-long v16, v16, v8

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v12, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v8

    shr-int/lit8 v8, v8, 0x18

    rsub-int/lit8 v8, v8, 0x1

    const-string v9, "\u6bb4\u6bd5\u01ef\u136f\ubf67\ue25d\u9af9\udaed\u203f\u5f55\ucead\u668f\ufc6e\uab06"

    invoke-static {v9, v8}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 298
    :try_start_11
    iget-boolean v9, v0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    if-eqz v9, :cond_9

    .line 300
    const/16 v9, 0x49

    goto :goto_7

    :cond_9
    const/16 v9, 0x5a

    :goto_7
    packed-switch v9, :pswitch_data_4

    .line 298
    const-string v9, "false"

    goto :goto_8

    :pswitch_4
    const-string v9, "true"

    :goto_8
    :try_start_12
    invoke-virtual {v10, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    if-nez v8, :cond_b

    .line 321
    sget v8, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v8, v8, 0x19

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v8, v8, 0x2

    if-nez v8, :cond_a

    .line 300
    const/16 v8, 0x14

    goto :goto_9

    :cond_a
    const/16 v8, 0x20

    :goto_9
    const-string v9, "sub_portal"

    packed-switch v8, :pswitch_data_5

    .line 321
    goto :goto_a

    .line 299
    :pswitch_5
    nop

    .line 300
    :try_start_13
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v10, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :goto_a
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v10, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    :try_start_14
    array-length v8, v13
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto :goto_b

    .line 321
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 302
    :cond_b
    :goto_b
    :try_start_15
    iget-object v8, v0, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_c

    .line 300
    const/16 v8, 0x3b

    goto :goto_c

    :cond_c
    const/16 v8, 0x13

    :goto_c
    packed-switch v8, :pswitch_data_6

    .line 302
    goto :goto_d

    .line 303
    :pswitch_6
    const-string v2, "is_book"

    .line 305
    invoke-virtual {v0, v2}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    .line 321
    sget v2, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/2addr v2, v15

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    goto :goto_e

    .line 303
    :goto_d
    :try_start_16
    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 294
    :cond_d
    move-object/from16 v18, v9

    .line 305
    nop

    .line 307
    invoke-virtual {v10, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    .line 303
    :goto_e
    nop

    .line 300
    sget v2, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x11

    rem-int/lit16 v8, v2, 0x80

    sput v8, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_e

    .line 330
    :cond_e
    nop

    .line 310
    :try_start_17
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    .line 312
    invoke-virtual {v1, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    if-nez v8, :cond_10

    .line 321
    sget v8, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v8, v8, 0x29

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_f

    .line 330
    :cond_f
    move-object v8, v6

    goto :goto_f

    .line 312
    :cond_10
    :try_start_18
    invoke-virtual {v1, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :goto_f
    invoke-virtual {v2, v5, v8}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 313
    invoke-virtual {v1, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_11

    move-object v5, v6

    goto :goto_10

    :cond_11
    invoke-virtual {v1, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_10
    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 315
    invoke-static {v0, v1}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v4
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    if-eqz v4, :cond_13

    .line 330
    sget v4, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v4, v4, 0x15

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_12

    .line 316
    :try_start_19
    invoke-static {v2, v1, v0}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    :try_start_1a
    array-length v0, v13
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    goto :goto_11

    .line 330
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 316
    :cond_12
    :try_start_1b
    invoke-static {v2, v1, v0}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V

    :cond_13
    :goto_11
    nop

    .line 319
    invoke-virtual {v1, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 320
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    if-nez v1, :cond_15

    .line 273
    sget v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x51

    rem-int/lit16 v4, v1, 0x80

    sput v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_14

    .line 321
    :try_start_1c
    invoke-virtual {v2, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    :try_start_1d
    array-length v0, v13
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto :goto_12

    .line 273
    :catchall_3
    move-exception v0

    move-object v1, v0

    throw v1

    .line 320
    :cond_14
    nop

    .line 321
    :try_start_1e
    invoke-virtual {v2, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    .line 330
    :goto_12
    nop

    .line 321
    :cond_15
    const-string v0, "exfo"

    .line 323
    :try_start_1f
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_13
    const-string v0, "failed_msg"

    .line 326
    move-object/from16 v1, p5

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "ave_speed"

    .line 327
    move-object/from16 v1, p4

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "\u8b39\u8b74\u3d7c\u2fe8\u4a21\u8c2d\u6faf\ub481\uc0b2\u63f1\u3bf0\u08e9\u1cff\u978d\uf7dc\u5ccb\u6821\ucb4c\u4337\u901d\ua43b\u7f5c\u1f68\ue477\uf071\ub311"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    add-int/2addr v1, v7

    invoke-static {v0, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 328
    move-object/from16 v1, v18

    invoke-static {v1, v0, v10}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    goto :goto_14

    :catch_0
    move-exception v0

    .line 330
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x30

    const/4 v3, 0x0

    invoke-static {v6, v2, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x21

    invoke-static {v6, v6, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    add-int/lit8 v4, v4, 0x4a

    int-to-byte v4, v4

    const-string v5, "\r\u0012\u0001\u0015\u00b6\u00b6\u0008\t\u000c\u0003\r\u0000\u0012\u0019\u000e\u000c\u0016\r\u0012\u000c\u0008\r\u0017\u000c\u0010\u001b\u0008\u0006\u0007\u0017\n\u001d\u0018\u001d"

    invoke-static {v5, v2, v4}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v1

    const/4 v2, 0x0

    const-string v3, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    cmpl-float v1, v1, v2

    add-int/2addr v1, v7

    invoke-static {v3, v1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_14
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x37
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x20
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x31
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x49
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x20
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x13
        :pswitch_6
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V
    .locals 4

    .line 404
    nop

    .line 0
    if-nez p0, :cond_0

    .line 392
    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 404
    nop

    .line 392
    :cond_0
    const-string v0, "common_extra"

    const-string v1, ""

    if-eqz p1, :cond_1

    .line 395
    :try_start_0
    invoke-virtual {p1, v0}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 404
    goto :goto_0

    .line 395
    :cond_1
    move-object p1, v1

    .line 396
    :goto_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_5

    .line 404
    sget p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 v2, p1, 0x80

    sput v2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_0

    goto :goto_3

    .line 396
    :pswitch_0
    if-eqz p2, :cond_3

    .line 404
    const/16 p1, 0x38

    goto :goto_2

    :cond_3
    const/16 p1, 0x36

    :goto_2
    packed-switch p1, :pswitch_data_1

    :pswitch_1
    goto :goto_5

    :goto_3
    const/4 p1, 0x0

    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p2, :cond_4

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    packed-switch v2, :pswitch_data_2

    goto :goto_6

    .line 396
    :goto_5
    nop

    .line 397
    :try_start_2
    invoke-virtual {p2, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 404
    sget p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x7

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_7

    .line 397
    :goto_6
    :pswitch_2
    goto :goto_7

    .line 404
    :catchall_0
    move-exception p0

    throw p0

    .line 396
    :cond_5
    move-object v1, p1

    .line 399
    :goto_7
    :try_start_3
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 400
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 402
    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 403
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 404
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_8

    .line 395
    :catch_0
    move-exception p0

    .line 404
    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;Lccsansan/m/removeDownloadListener;)V
    .locals 21

    .line 264
    move-object/from16 v0, p1

    const-string v1, "sid"

    const-string v2, "s_rid"

    const-string v3, "page_portal"

    const-string v4, ""

    .line 168
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v5

    .line 169
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 170
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-virtual {v7}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v7

    .line 175
    invoke-static {v5}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v8

    .line 177
    invoke-static {v5, v7}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v10, "is_actived"

    const-string v12, "\u8505\u8566\u74da\u665a\u3c71\uaa05\u19e9\u92a8\uceb4\u2a7d\u4dbb\u2ee9\u12c4\ude29\u8190\u7af6\u6618\u82c7\u357b\ub63b\uaa31"

    const-string v13, "0"

    const-string v14, "1"

    const-string v15, "\u25b5\u25dc\ue8a9\ufa32\uc5c4\ubf6e\ue05d\u87c5\u6e00\ub60c\ub416\u3b82\ub269\u425d\u783b\u6f8c"

    const/16 v16, 0x1

    const/4 v11, 0x0

    if-eqz v9, :cond_4

    :try_start_1
    invoke-static {v11}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-static {v12, v9}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 178
    invoke-virtual {v6, v9, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v9, 0x30

    invoke-static {v4, v9}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v9

    neg-int v9, v9

    invoke-static {v15, v9}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 179
    :try_start_2
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    move-object v15, v12

    invoke-static {v5, v7}, Lccsansan/bw/getDownloadedCount;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)J

    move-result-wide v11

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v8, :cond_2

    .line 182
    iget-object v4, v8, Lccsansan/m/getDownloadedList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "hasObb"

    invoke-virtual {v8, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v9, "true"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v4, :cond_2

    .line 264
    sget v4, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v4, v4, 0x49

    rem-int/lit16 v9, v4, 0x80

    sput v9, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    .line 182
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    .line 185
    :goto_0
    :try_start_3
    invoke-static {v7, v4}, Lccsansan/bw/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v13, v14

    :cond_3
    invoke-virtual {v6, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v19, v2

    move-object/from16 v18, v5

    goto/16 :goto_8

    :cond_4
    if-nez v8, :cond_5

    return-void

    :cond_5
    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v17

    const-wide/16 v19, -0x1

    cmp-long v9, v17, v19

    invoke-static {v15, v9}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 189
    invoke-virtual {v8, v9}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 190
    iget v11, v8, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v17, Lccsansan/m/getDownloadedList$unifiedDownload;->AZ_SUCCESS:Lccsansan/m/getDownloadedList$unifiedDownload;

    move-object/from16 v18, v5

    invoke-virtual/range {v17 .. v17}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v5
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eq v11, v5, :cond_6

    .line 264
    const/16 v5, 0xf

    goto :goto_1

    :cond_6
    const/16 v5, 0x36

    :goto_1
    const-string v11, "actived"

    packed-switch v5, :pswitch_data_0

    .line 190
    :try_start_4
    iget v5, v8, Lccsansan/m/getDownloadedList;->execute:I

    goto :goto_2

    .line 264
    :pswitch_0
    move-object/from16 v19, v2

    goto :goto_4

    .line 190
    :goto_2
    sget-object v17, Lccsansan/m/getDownloadedList$unifiedDownload;->ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    .line 191
    move-object/from16 v19, v2

    invoke-virtual/range {v17 .. v17}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v2

    if-eq v5, v2, :cond_a

    iget v2, v8, Lccsansan/m/getDownloadedList;->execute:I

    sget-object v5, Lccsansan/m/getDownloadedList$unifiedDownload;->NO_ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    .line 192
    invoke-virtual {v5}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v5

    if-eq v2, v5, :cond_7

    .line 264
    const/16 v2, 0x39

    goto :goto_3

    :cond_7
    const/16 v2, 0x1e

    :goto_3
    packed-switch v2, :pswitch_data_1

    goto :goto_4

    .line 192
    :pswitch_1
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    goto :goto_4

    .line 194
    :cond_8
    invoke-virtual {v8, v11}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x30

    const/4 v5, 0x0

    invoke-static {v4, v2, v5}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v2

    neg-int v2, v2

    invoke-static {v15, v2}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    return-void

    :cond_a
    :goto_4
    const/4 v2, 0x0

    invoke-static {v2}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v15, v5}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {v6, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    nop

    .line 195
    :goto_5
    nop

    .line 196
    invoke-static {v4}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    neg-int v2, v2

    invoke-static {v12, v2}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 202
    invoke-virtual {v6, v2, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-virtual {v8, v11}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 204
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 264
    const/16 v4, 0x57

    goto :goto_6

    :cond_b
    const/16 v4, 0x4d

    :goto_6
    packed-switch v4, :pswitch_data_2

    move-object v13, v2

    goto :goto_7

    .line 204
    :pswitch_2
    nop

    :goto_7
    invoke-virtual {v6, v10, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 185
    :goto_8
    nop

    .line 247
    sget v2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x35

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_d

    .line 207
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v2

    const/16 v4, 0x7c

    if-ne v2, v4, :cond_c

    .line 264
    const/4 v2, 0x0

    goto :goto_9

    :cond_c
    const/4 v2, 0x1

    :goto_9
    packed-switch v2, :pswitch_data_3

    goto :goto_a

    .line 207
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v2

    const/4 v4, 0x7

    if-ne v2, v4, :cond_e

    .line 208
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v2

    goto :goto_b

    .line 210
    :cond_e
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lccsansan/dt/removeDownloadListener;->AdError()Ljava/lang/String;

    move-result-object v2

    .line 208
    :goto_b
    nop

    .line 210
    const-string v4, "pkg"

    .line 212
    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "url"

    .line 213
    invoke-virtual {v6, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v2, "ad_id"

    const-string v4, "sourcetype"

    if-eqz v0, :cond_18

    .line 216
    :try_start_6
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    if-nez v5, :cond_10

    .line 242
    sget v5, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v5, v5, 0x55

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v5, v5, 0x2

    const-string v7, "placement_id"

    if-eqz v5, :cond_f

    .line 217
    :try_start_7
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const/4 v5, 0x3

    const/4 v7, 0x0

    :try_start_8
    div-int/2addr v5, v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_c

    .line 242
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 216
    :cond_f
    nop

    .line 217
    :try_start_9
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    :cond_10
    :goto_c
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    if-nez v5, :cond_12

    .line 264
    sget v5, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x5b

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_11

    .line 220
    :try_start_a
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const/4 v2, 0x0

    :try_start_b
    array-length v2, v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_d

    .line 264
    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 219
    :cond_11
    nop

    .line 220
    :try_start_c
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :cond_12
    :goto_d
    const-string v2, "did"

    .line 223
    :try_start_d
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    const-string v2, "pid"

    .line 224
    :try_start_e
    iget-object v5, v0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v6, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-virtual {v0, v1}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    const-string v1, "creative_id"

    .line 226
    :try_start_f
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    const-string v1, "adnet"

    .line 227
    :try_start_10
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 229
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    if-eqz v8, :cond_13

    .line 230
    invoke-virtual {v8, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_13
    nop

    .line 232
    invoke-virtual {v6, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    const-string v1, "downid"

    .line 233
    :try_start_11
    iget-object v2, v0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v6, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-virtual {v0, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 235
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    if-nez v2, :cond_15

    .line 248
    sget v2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v2, v2, 0x53

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_14

    .line 264
    const/16 v2, 0x1c

    goto :goto_e

    :cond_14
    const/16 v2, 0x9

    :goto_e
    packed-switch v2, :pswitch_data_4

    .line 235
    goto :goto_f

    .line 248
    :pswitch_4
    nop

    .line 236
    :try_start_12
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    const/16 v1, 0x62

    const/4 v2, 0x0

    :try_start_13
    div-int/2addr v1, v2
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto :goto_10

    .line 248
    :catchall_2
    move-exception v0

    move-object v1, v0

    throw v1

    .line 236
    :goto_f
    :try_start_14
    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    :cond_15
    :goto_10
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 240
    move-object/from16 v2, v19

    invoke-virtual {v0, v2}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    if-nez v3, :cond_16

    .line 264
    const/4 v3, 0x1

    goto :goto_11

    :cond_16
    const/4 v3, 0x0

    :goto_11
    packed-switch v3, :pswitch_data_5

    goto :goto_12

    .line 236
    :pswitch_5
    sget v3, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x75

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_17

    .line 242
    :try_start_15
    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    const/16 v0, 0x62

    const/4 v2, 0x0

    :try_start_16
    div-int/2addr v0, v2
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    goto :goto_12

    .line 236
    :catchall_3
    move-exception v0

    move-object v1, v0

    throw v1

    .line 241
    :cond_17
    nop

    .line 242
    :try_start_17
    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    :goto_12
    const-string v0, "exfo"

    .line 244
    :try_start_18
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0

    const/4 v5, 0x0

    goto :goto_19

    :cond_18
    if-eqz v8, :cond_19

    .line 264
    const/4 v5, 0x1

    goto :goto_13

    :cond_19
    const/4 v5, 0x0

    :goto_13
    packed-switch v5, :pswitch_data_6

    .line 217
    sget v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x7b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1a

    goto :goto_14

    .line 264
    :pswitch_6
    const/4 v5, 0x0

    goto :goto_1a

    .line 247
    :goto_14
    :try_start_19
    iget-object v0, v8, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    const/16 v1, 0x5f

    const/4 v5, 0x0

    :try_start_1a
    div-int/2addr v1, v5
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_4

    if-nez v0, :cond_1c

    goto :goto_15

    .line 217
    :catchall_4
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_1a
    const/4 v5, 0x0

    .line 247
    :try_start_1b
    iget-object v0, v8, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    if-nez v0, :cond_1c

    .line 220
    :goto_15
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1b

    .line 264
    const/4 v0, 0x0

    goto :goto_16

    :cond_1b
    const/4 v0, 0x1

    :goto_16
    packed-switch v0, :pswitch_data_7

    .line 220
    goto :goto_17

    .line 247
    :pswitch_7
    nop

    .line 248
    :try_start_1c
    iget-object v0, v8, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18

    :goto_17
    iget-object v0, v8, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v6, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0

    const/4 v0, 0x0

    :try_start_1d
    array-length v0, v0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    goto :goto_18

    .line 220
    :catchall_5
    move-exception v0

    move-object v1, v0

    throw v1

    .line 248
    :cond_1c
    :goto_18
    nop

    .line 250
    :try_start_1e
    invoke-virtual {v8, v4}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0

    .line 244
    :goto_19
    nop

    .line 250
    :goto_1a
    const-string v0, "2"

    const-string v1, "book"

    if-eqz v8, :cond_20

    .line 254
    :try_start_1f
    iget-object v2, v8, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    if-nez v2, :cond_1e

    .line 217
    sget v2, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x45

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1d

    .line 254
    :cond_1d
    const-string v2, "sub_portal"

    .line 255
    :try_start_20
    iget-object v3, v8, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v6, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    nop

    .line 257
    :cond_1e
    iget-object v2, v8, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 264
    const/16 v16, 0x0

    goto :goto_1b

    :cond_1f
    nop

    :goto_1b
    packed-switch v16, :pswitch_data_8

    .line 257
    goto :goto_1c

    .line 258
    :pswitch_8
    const-string v0, "is_book"

    .line 260
    invoke-virtual {v8, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    .line 258
    :goto_1c
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :goto_1d
    goto :goto_1e

    .line 260
    :cond_20
    nop

    .line 262
    invoke-virtual {v6, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0

    .line 258
    :goto_1e
    nop

    .line 207
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "\ubc77\ubc36\u8244\u90d5\u226e\ua4ca\u07db\u9c46\uf7cb\udce2\u53a7\u2026\u2b96\u28b7\u9f8f\u7439\u5f6a\u7459\u2b64\ub8f4\u9343"

    if-eqz v0, :cond_21

    :try_start_21
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/high16 v2, 0x40000000    # 2.0f

    cmpl-float v0, v0, v2

    invoke-static {v1, v0}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 264
    move-object/from16 v2, v18

    invoke-static {v2, v0, v6}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1f

    .line 207
    :cond_21
    move-object/from16 v2, v18

    .line 262
    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    invoke-static {v1, v0}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 264
    invoke-static {v2, v0, v6}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_0

    goto :goto_1f

    :catch_0
    move-exception v0

    :goto_1f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x36
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x57
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x1c
        :pswitch_4
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_5
    .end packed-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_6
    .end packed-switch

    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_7
    .end packed-switch

    :pswitch_data_8
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
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

    .line 408
    nop

    .line 407
    invoke-static {p0, p1, p2}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 408
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

    const/4 p1, 0x0

    invoke-static {p1}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide p1

    const-wide/16 v0, 0x0

    const-string v2, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    cmp-long v3, p1, v0

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, v3}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x35

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x3e

    goto :goto_0

    :cond_0
    const/16 p0, 0x5e

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

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 14

    .line 2
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x5d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    const/4 v12, 0x1

    move-object v7, p0

    move-object v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move/from16 v11, p4

    move/from16 v13, p5

    invoke-static/range {v7 .. v13}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    goto :goto_1

    .line 0
    :pswitch_0
    const/4 v6, 0x1

    .line 2
    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v7, p5

    invoke-static/range {v1 .. v7}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsansan/m/removeDownloadListener;Ljava/lang/String;)V
    .locals 16

    .line 120
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-string v3, "s_rid"

    const-string v4, "page_portal"

    const-string v5, "sid"

    const-string v6, "ad_cache"

    const-string v7, "amp_app_id"

    const-string v8, ""

    .line 37
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v10

    .line 38
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v12, "portal"

    .line 39
    move-object/from16 v13, p0

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "pkg"

    .line 40
    invoke-virtual {v11, v12, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v12, "url"

    .line 41
    invoke-virtual {v11, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v12

    invoke-virtual {v12, v2, v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v0, "exfo"

    const-string v12, "downid"

    const-string v13, "ad_id"

    const-string v14, "sourcetype"

    if-eqz v1, :cond_c

    .line 45
    :try_start_1
    iget-object v15, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-static {v15}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-nez v15, :cond_0

    .line 120
    const/4 v15, 0x0

    goto :goto_0

    :cond_0
    const/4 v15, 0x1

    :goto_0
    packed-switch v15, :pswitch_data_0

    .line 45
    const-string v15, "placement_id"

    .line 46
    :try_start_2
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v11, v15, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    :pswitch_0
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 49
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v11, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    const-string v9, "did"

    .line 52
    :try_start_3
    iget-object v13, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v9, "cpiparam"

    .line 53
    :try_start_4
    iget-object v13, v1, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const-string v9, "pid"

    .line 54
    :try_start_5
    iget-object v13, v1, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    invoke-virtual {v11, v9, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {v1, v5}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    const-string v5, "creative_id"

    .line 56
    :try_start_6
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    invoke-virtual {v11, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v5, "formatid"

    .line 57
    :try_start_7
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    invoke-virtual {v11, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    const-string v5, "adnet"

    .line 58
    :try_start_8
    iget-object v9, v1, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v11, v5, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    iget-object v5, v1, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 60
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    if-eqz v9, :cond_2

    .line 120
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    const/4 v9, 0x1

    :goto_1
    packed-switch v9, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    sget v9, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v9, v9, 0x1f

    rem-int/lit16 v13, v9, 0x80

    sput v13, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_3

    .line 60
    :cond_3
    if-eqz v2, :cond_5

    .line 120
    add-int/lit8 v13, v13, 0x5b

    rem-int/lit16 v5, v13, 0x80

    sput v5, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_4

    .line 60
    :cond_4
    nop

    .line 61
    :try_start_9
    invoke-virtual {v2, v14}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :cond_5
    :goto_2
    nop

    .line 63
    invoke-virtual {v11, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v5, v1, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    invoke-virtual {v11, v12, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    invoke-virtual {v1, v4}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 67
    invoke-virtual {v11, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 120
    sget v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0x57

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v4, v4, 0x2

    .line 70
    :cond_6
    :try_start_a
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    .line 72
    :try_start_b
    invoke-virtual {v1, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_7

    move-object v5, v8

    goto :goto_3

    :cond_7
    invoke-virtual {v1, v7}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 120
    nop

    .line 72
    :goto_3
    invoke-virtual {v4, v7, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 73
    invoke-virtual {v1, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catch Lccsanorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    if-nez v5, :cond_8

    .line 120
    const/4 v5, 0x1

    goto :goto_4

    :cond_8
    const/4 v5, 0x0

    :goto_4
    packed-switch v5, :pswitch_data_2

    .line 73
    goto :goto_5

    .line 120
    :pswitch_2
    sget v5, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x45

    rem-int/lit16 v7, v5, 0x80

    sput v7, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_9

    .line 73
    :cond_9
    move-object v5, v8

    goto :goto_6

    :goto_5
    :try_start_c
    invoke-virtual {v1, v6}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_6
    invoke-virtual {v4, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 74
    invoke-static {v2, v1}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 120
    const/4 v5, 0x0

    goto :goto_7

    :cond_a
    const/4 v5, 0x1

    :goto_7
    packed-switch v5, :pswitch_data_3

    .line 75
    invoke-static {v4, v1, v2}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V

    :pswitch_3
    nop

    .line 78
    invoke-virtual {v1, v3}, Lccsansan/m/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 80
    invoke-virtual {v4, v3, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_b
    nop

    .line 82
    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Lccsanorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto :goto_9

    :catch_0
    move-exception v0

    goto :goto_a

    :cond_c
    if-eqz v2, :cond_d

    .line 120
    const/16 v3, 0x53

    goto :goto_8

    :cond_d
    const/16 v3, 0x5d

    :goto_8
    packed-switch v3, :pswitch_data_4

    .line 88
    :try_start_d
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 89
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->getThumbPathByRecord:Ljava/lang/String;

    invoke-virtual {v11, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    :cond_e
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 92
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v11, v12, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    nop

    .line 94
    invoke-virtual {v2, v14}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v11, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-static {v2, v1}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 96
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 97
    invoke-static {v3, v1, v2}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V

    .line 98
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 82
    :goto_9
    nop

    .line 120
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    .line 98
    :cond_10
    :goto_a
    :pswitch_4
    const-string v0, "tm"

    .line 103
    :try_start_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    const-string v0, "2"

    const-string v1, "book"

    if-eqz v2, :cond_16

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    const/4 v4, 0x1

    rsub-int/lit8 v9, v3, 0x1

    const-string v3, "\u6bb4\u6bd5\u01ef\u136f\ubf67\ue25d\u9af9\udaed\u203f\u5f55\ucead\u668f\ufc6e\uab06"

    invoke-static {v3, v9}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    .line 106
    :try_start_f
    iget-boolean v4, v2, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    if-eqz v4, :cond_11

    const-string v4, "true"

    goto :goto_b

    :cond_11
    const-string v4, "false"

    :goto_b
    :try_start_10
    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    if-nez v3, :cond_13

    .line 120
    sget v3, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v3, v3, 0x4d

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_12

    .line 107
    :cond_12
    const-string v3, "sub_portal"

    .line 108
    :try_start_11
    iget-object v4, v2, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v11, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_13
    iget-object v3, v2, Lccsansan/m/getDownloadedList;->resolveUrl:Ljava/lang/String;

    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    if-eqz v3, :cond_15

    .line 120
    sget v2, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v2, v2, 0x1d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_14

    .line 110
    :cond_14
    nop

    .line 111
    :try_start_12
    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_15
    const-string v0, "is_book"

    .line 113
    invoke-virtual {v2, v0}, Lccsansan/m/getDownloadedList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_c

    :cond_16
    nop

    .line 115
    invoke-virtual {v11, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    :goto_c
    nop

    .line 120
    nop

    .line 115
    const-string v0, "\u1362\u132f\u200b\u329f\ueb89\u9581\uce07\uad2d\u58e9\u7e86\u9a58\u1145\u84a4\u8afa\u5674\u4567\uf07a\ud63b\ue29f\u89b1\u3c61\u623a\ubed2\ufddc\u6832"

    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    const/4 v2, 0x1

    rsub-int/lit8 v9, v1, 0x1

    invoke-static {v0, v9}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 118
    invoke-static {v10, v0, v11}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_1

    goto :goto_d

    :catch_1
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1f

    invoke-static {v8}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x25

    int-to-byte v3, v3

    const-string v4, "\u0007\u0014\u0091\u0091\u0008\t\u000c\u0003\r\u0000\u0012\u0019\u000e\u000c\u0016\r\u000f\u0018\u0010\u0011\t\u0011\u0019\n\u0097\u0097\u0017\u0007\u001d\u0018E"

    invoke-static {v4, v2, v3}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    const/4 v2, 0x1

    rsub-int/lit8 v9, v1, 0x1

    const-string v1, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    invoke-static {v1, v9}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_d
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x5d
        :pswitch_4
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsansan/m/getDownloadedList;)V
    .locals 5

    .line 13
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x61

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 2
    const/16 v0, 0x21

    goto :goto_0

    :cond_0
    const/16 v0, 0x2c

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lccsansan/cy/unifiedDownload;->resolveUrl()I

    move-result v0

    if-nez v0, :cond_2

    :goto_1
    goto :goto_2

    :pswitch_0
    invoke-static {}, Lccsansan/cy/unifiedDownload;->resolveUrl()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 3
    :goto_2
    invoke-static {}, Lccsansan/cy/unifiedDownload;->shouldTryHandlingAction()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v2, Lccsansan/bn/addDownloadListener$addDownloadListener;

    int-to-long v3, v0

    invoke-direct {v2, v3, v4, p0}, Lccsansan/bn/addDownloadListener$addDownloadListener;-><init>(JLccsansan/m/getDownloadedList;)V

    invoke-virtual {v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 2
    sget p0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p0, p0, 0x69

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_1

    const/16 p0, 0x53

    goto :goto_3

    :cond_1
    const/4 p0, 0x6

    :goto_3
    packed-switch p0, :pswitch_data_1

    .line 13
    goto :goto_4

    .line 11
    :cond_2
    sget-object v0, Lccsansan/m/getDownloadedList$unifiedDownload;->ACTIVE:Lccsansan/m/getDownloadedList$unifiedDownload;

    invoke-virtual {v0}, Lccsansan/m/getDownloadedList$unifiedDownload;->toInt()I

    move-result v0

    iput v0, p0, Lccsansan/m/getDownloadedList;->execute:I

    .line 12
    const-string v0, "actived"

    const-string v1, "1"

    invoke-virtual {p0, v0, v1}, Lccsansan/m/getDownloadedList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/m/getDownloadedList;)V

    :goto_4
    :pswitch_1
    return-void

    :pswitch_data_0
    .packed-switch 0x2c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x53
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
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
    sget-wide v1, Lccsansan/bn/addDownloadListener;->getDownloadingList:J

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

    sget-wide v6, Lccsansan/bn/addDownloadListener;->getDownloadingList:J

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

.method public static declared-synchronized unifiedDownload()V
    .locals 10

    const-class v0, Lccsansan/bn/addDownloadListener;

    monitor-enter v0

    .line 167
    nop

    .line 149
    :try_start_0
    new-instance v1, Lccsansan/p/removeDownloadListener;

    const-string v2, "\u9795\u97f4\ub4cd\ua65c\u2785\u89fd\u0230\ub140\udc33\uea6b\u564c\u0d3dX\u1e22\u9a48\u5913\u7487\u42cf\u2e97\u95c7\ub8a9\uf6e4"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    shr-int/lit8 v3, v3, 0x8

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/p/removeDownloadListener;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-virtual {v1}, Lccsansan/p/removeDownloadListener;->getDownloadingList()Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 167
    :try_start_1
    sget v5, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v5, v5, 0x5d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v5, v5, 0x2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v5, :cond_0

    .line 151
    :cond_0
    :try_start_2
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    .line 167
    goto/16 :goto_5

    .line 154
    :cond_1
    new-instance v5, Lccsanorg/json/JSONArray;

    invoke-direct {v5}, Lccsanorg/json/JSONArray;-><init>()V

    .line 156
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-eqz v7, :cond_4

    .line 167
    :try_start_3
    sget v7, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v7, v7, 0x4b

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v7, v7, 0x2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v7, :cond_2

    .line 157
    const/4 v7, 0x0

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    :goto_1
    packed-switch v7, :pswitch_data_0

    .line 156
    :try_start_4
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    goto :goto_3

    .line 167
    :pswitch_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 157
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/4 v9, 0x0

    :try_start_5
    array-length v9, v9
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_3

    goto :goto_4

    .line 167
    :catchall_0
    move-exception v1

    :goto_2
    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 156
    :goto_3
    :try_start_7
    check-cast v7, Ljava/lang/String;

    .line 157
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v8

    invoke-static {v8, v7}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 167
    :goto_4
    goto :goto_0

    .line 160
    :cond_3
    invoke-virtual {v1, v7}, Lccsansan/p/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 161
    invoke-virtual {v5, v6, v7}, Lccsanorg/json/JSONArray;->put(ILjava/lang/Object;)Lccsanorg/json/JSONArray;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 165
    :cond_4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    const-string v2, "\u0013\u000c\u0007\u000f\u000f\u0010\u0011\u000c\u008c"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x9

    invoke-static {v3}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    add-int/lit8 v3, v3, 0x20

    int-to-byte v3, v3

    invoke-static {v2, v4, v3}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 166
    :try_start_9
    invoke-virtual {v5}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "#\u0006\u0012\u0019\r\u0008\u0008\u0017\u0007\u000f\u000f\u0010\u0011\u000c\u000e\u0017\u0016\u001c|"

    invoke-static {v8, v9}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0xc

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_8

    :cond_5
    :goto_5
    :try_start_a
    sget v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-nez v1, :cond_6

    .line 157
    const/16 v1, 0x27

    goto :goto_6

    :cond_6
    const/16 v1, 0x36

    :goto_6
    packed-switch v1, :pswitch_data_1

    .line 167
    :goto_7
    monitor-exit v0

    return-void

    :pswitch_1
    const/16 v1, 0x48

    :try_start_b
    div-int/2addr v1, v3
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v1

    goto :goto_2

    .line 148
    :catchall_2
    move-exception v1

    monitor-exit v0

    throw v1

    .line 167
    :catch_0
    move-exception v1

    :goto_8
    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x27
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic unifiedDownload(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V
    .locals 2

    .line 1
    sget v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x15

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/m/getDownloadedList;Ljava/lang/String;)V

    sget p0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    const/4 p1, 0x1

    add-int/2addr p0, p1

    rem-int/lit16 p2, p0, 0x80

    sput p2, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

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
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 148
    const-string v0, "cpiparam"

    .line 121
    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    .line 122
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    const-string v4, "portal"

    .line 123
    invoke-virtual {v3, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "url"

    .line 124
    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "pkg"

    .line 125
    invoke-virtual {v3, p0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "tm"

    .line 126
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p0

    invoke-virtual {p0, p2, p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/getDownloadedList;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_8

    .line 148
    sget p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x75

    rem-int/lit16 v4, p1, 0x80

    sput v4, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_0

    .line 130
    const/16 p1, 0x4b

    goto :goto_0

    :cond_0
    const/16 p1, 0x5f

    :goto_0
    const/4 v4, 0x0

    packed-switch p1, :pswitch_data_0

    :try_start_2
    iget-object p1, p0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    goto :goto_2

    :pswitch_0
    iget-object p1, p0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v5, 0x30

    :try_start_3
    div-int/2addr v5, v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    packed-switch p1, :pswitch_data_1

    goto :goto_3

    .line 148
    :catchall_0
    move-exception p0

    throw p0

    .line 130
    :goto_2
    :try_start_4
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-nez p1, :cond_3

    .line 148
    :goto_3
    sget p1, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x9

    rem-int/lit16 v5, p1, 0x80

    sput v5, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_2

    .line 130
    :cond_2
    const-string p1, "sub_portal"

    .line 131
    :try_start_5
    iget-object v5, p0, Lccsansan/m/getDownloadedList;->trackReportShow:Ljava/lang/String;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_3
    :pswitch_1
    iget-object p1, p0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez p1, :cond_4

    .line 130
    const/4 p1, 0x0

    goto :goto_4

    :cond_4
    const/4 p1, 0x1

    :goto_4
    packed-switch p1, :pswitch_data_2

    goto :goto_5

    :pswitch_2
    sget p1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 v5, p1, 0x80

    sput v5, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_5

    .line 133
    :cond_5
    const-string p1, "downid"

    .line 134
    :try_start_6
    iget-object v5, p0, Lccsansan/m/getDownloadedList;->IncentiveSDK$1:Ljava/lang/String;

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :goto_5
    invoke-static {v4, v4}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result p1

    add-int/2addr p1, v1

    const-string v4, "\u6bb4\u6bd5\u01ef\u136f\ubf67\ue25d\u9af9\udaed\u203f\u5f55\ucead\u668f\ufc6e\uab06"

    invoke-static {v4, p1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 136
    :try_start_7
    iget-boolean v4, p0, Lccsansan/m/getDownloadedList;->getPackageNameByRecord:Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v4, :cond_6

    const-string v4, "true"

    goto :goto_6

    :cond_6
    const-string v4, "false"

    :goto_6
    :try_start_8
    invoke-virtual {v3, p1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const/4 p1, 0x0

    invoke-static {p0, p1}, Lccsansan/bw/getDownloadStatusByUrl;->unifiedDownload(Lccsansan/m/getDownloadedList;Lccsansan/m/removeDownloadListener;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 139
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 140
    invoke-static {v4, p1, p0}, Lccsansan/bn/addDownloadListener;->getDownloadingList(Lccsanorg/json/JSONObject;Lccsansan/m/removeDownloadListener;Lccsansan/m/getDownloadedList;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string p0, "exfo"

    .line 141
    :try_start_9
    invoke-virtual {v4}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 130
    sget p0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x7

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_7

    const/16 p0, 0x4f

    goto :goto_7

    :cond_7
    const/16 p0, 0x43

    :goto_7
    packed-switch p0, :pswitch_data_3

    goto :goto_8

    .line 148
    :pswitch_3
    nop

    .line 141
    :cond_8
    :goto_8
    nop

    .line 145
    :try_start_a
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "\u1362\u132f\u200b\u329f\ueb89\u9581\uce07\uad2d\u58e9\u7e86\u9a58\u1145\u84a4\u8afa\u5674\u4567\uf07a\ud63b\ue29f\u89b1\u3c61\u623a\ubed2\ufddc\u6832"

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    rsub-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 146
    invoke-static {v2, p0, v3}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto :goto_9

    :catch_0
    move-exception p0

    .line 148
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result p2

    const/4 v0, 0x0

    const-string v2, "\u0007\u0014\u00b4\u00b4\u0008\t\r\u0003\u0012\u0019\u000e\u000c\u0016\r\u000f\u0018\u0010\u0011\t\u0011\u0019\n\u00ba\u00ba\u0017\u0007\u001d\u0018h"

    const-string v3, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    cmpl-float p2, p2, v0

    add-int/lit8 p2, p2, 0x1c

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    rsub-int/lit8 v0, v0, 0x49

    int-to-byte v0, v0

    invoke-static {v2, p2, v0}, Lccsansan/bn/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    add-int/2addr p1, v1

    invoke-static {v3, p1}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9
    return-void

    :pswitch_data_0
    .packed-switch 0x4b
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

    :pswitch_data_3
    .packed-switch 0x43
        :pswitch_3
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 406
    sget v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x4b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 405
    :cond_0
    const-string v0, "sdk_version"

    const-string v1, "3.10.8"

    invoke-virtual {p0, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 406
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/deleteDownList;->getDownloadedList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_version"

    invoke-virtual {p0, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    sget p0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x27

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    const/4 v0, 0x0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 p0, 0x24

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

.method public static unifiedDownload(Lccsansan/m/getDownloadedList;)V
    .locals 5

    .line 17
    sget v0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Lccsansan/bn/addDownloadListener;->addDownloadListener(Lccsansan/m/getDownloadedList;)Ljava/util/HashMap;

    move-result-object v1

    .line 14
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    const-string v3, "\u6364\u6325\uf8f0\uea41\u5698\ucd95\u732d\uf50e\u28df\ua64e\u2748\u494a\uf4a3\u520c\ueb6e\u1d53\u8068\u0eea\u5fbf\ud1ad\u4c40\ubadc\u03d4\ua5df"

    invoke-static {v0}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x1

    invoke-static {v3, v4}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 15
    invoke-static {p0}, Lccsansan/bn/addDownloadListener;->removeDownloadListener(Lccsansan/m/getDownloadedList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    sget p0, Lccsansan/bn/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x5f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsansan/bn/addDownloadListener;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x1e

    goto :goto_0

    :cond_1
    const/16 p0, 0x47

    :goto_0
    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 15
    :catch_0
    move-exception p0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-string v2, "\u2b23\u2b40\u3146\u23dc\u6d1e\u28d1\u4898\u1062\u6092\u6fec\u1cd4\uac21\ubcfb\u9bb2\ud0c8\uf839\uc828\uc759\u6414\u34e5\u0412\u7367\u3865\u409d\u5073\ubf36\ucc66\u9cb7\uedfb\ue8ce\u818e\ud774\u3980\u14f5\u5588\u6340\u75a3"

    invoke-static {v2, v0}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-static {v0, v0}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1

    const-string v1, "\u070e\u074c\u093f\u1bab\u4c80\udabc\u6919\ue20a\u4cb9\u57a5\u3d4a\u5e6e\u90d2\ua3d1\uf13c\u0a7f\ue41d\uff39\u4588\uc68b\u2831\u4b1b\u19de"

    invoke-static {v1, v0}, Lccsansan/bn/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1e
        :pswitch_0
    .end packed-switch
.end method
