.class public Lccsansan/ay/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[S

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:I

.field private static unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/ay/removeDownloadListener;->getDownloadedList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/ay/removeDownloadListener;->getDownloadedRecordByUrl:I

    const/16 v0, 0x6d

    sput v0, Lccsansan/ay/removeDownloadListener;->IncentiveDownloadUtils:I

    const v0, 0x5279b825

    sput v0, Lccsansan/ay/removeDownloadListener;->getDownloadingList:I

    const v0, -0x22c881d3

    sput v0, Lccsansan/ay/removeDownloadListener;->removeDownloadListener:I

    const/16 v0, 0xd

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ay/removeDownloadListener;->unifiedDownload:[B

    return-void

    :array_0
    .array-data 1
        -0x60t
        -0x6t
        0x3t
        0x10t
        0x8t
        -0x1t
        0x7t
        -0xat
        0x7t
        0x2t
        -0x5t
        0xct
        0xft
    .end array-data
.end method

.method private static IncentiveDownloadUtils(IISBI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsansan/ay/removeDownloadListener;->IncentiveDownloadUtils:I

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
    sget-object p4, Lccsansan/ay/removeDownloadListener;->unifiedDownload:[B

    if-eqz p4, :cond_1

    .line 1211
    sget v6, Lccsansan/ay/removeDownloadListener;->removeDownloadListener:I

    add-int/2addr v6, p0

    aget-byte p4, p4, v6

    add-int/2addr p4, v2

    int-to-byte p4, p4

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p4, Lccsansan/ay/removeDownloadListener;->addDownloadListener:[S

    sget v6, Lccsansan/ay/removeDownloadListener;->removeDownloadListener:I

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

    sget v2, Lccsansan/ay/removeDownloadListener;->removeDownloadListener:I

    add-int/2addr p0, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p0, v4

    sput p0, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p3, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsansan/ay/removeDownloadListener;->getDownloadingList:I

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
    sget-object p0, Lccsansan/ay/removeDownloadListener;->unifiedDownload:[B

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
    sget-object p0, Lccsansan/ay/removeDownloadListener;->addDownloadListener:[S

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

.method public static getDownloadingList(Lccsanorg/json/JSONArray;)V
    .locals 21

    .line 33
    const-string v0, "md5sum"

    const-string v1, "auto_reservation"

    const-string v2, "app_launch_time"

    const-string v3, ""

    .line 0
    const-string v4, "ReserveInfoUpdateHelper"

    .line 1
    :try_start_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonArray = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 2
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v6

    const/16 v7, 0x58

    if-ge v5, v6, :cond_0

    .line 11
    const/16 v6, 0x32

    goto :goto_1

    :cond_0
    const/16 v6, 0x58

    :goto_1
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_7

    .line 3
    :pswitch_0
    move-object/from16 v6, p0

    invoke-virtual {v6, v5}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lccsanorg/json/JSONObject;

    const-string v9, "package_name"

    .line 4
    invoke-virtual {v8, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "cid"

    .line 5
    invoke-virtual {v8, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 6
    invoke-static {v9}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 11
    const/16 v7, 0x15

    goto :goto_2

    :cond_1
    nop

    :goto_2
    packed-switch v7, :pswitch_data_1

    .line 6
    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto/16 :goto_6

    .line 10
    :cond_2
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_b

    .line 33
    sget v9, Lccsansan/ay/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v9, v9, 0x55

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/ay/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_3

    .line 11
    :try_start_1
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v10, 0x0

    :try_start_2
    array-length v10, v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v9, :cond_4

    goto :goto_3

    .line 33
    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    .line 11
    :cond_3
    :try_start_3
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_4

    :goto_3
    goto/16 :goto_6

    .line 15
    :cond_4
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-eqz v9, :cond_b

    .line 11
    sget v9, Lccsansan/ay/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v9, v9, 0x1d

    rem-int/lit16 v10, v9, 0x80

    sput v10, Lccsansan/ay/removeDownloadListener;->getDownloadedList:I

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_5

    .line 15
    :cond_5
    :try_start_4
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsansan/aj/getDownloadingList;

    .line 16
    invoke-virtual {v8, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 17
    invoke-virtual {v8, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-wide/16 v12, 0x3e8

    mul-long v10, v10, v12

    iput-wide v10, v9, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iget-wide v12, v9, Lccsansan/aj/getDownloadingList;->getThumbPathByRecord:J

    cmp-long v14, v10, v12

    if-gez v14, :cond_6

    .line 19
    sget-object v10, Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;->NO_RELEASED:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    iput-object v10, v9, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 11
    sget v10, Lccsansan/ay/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v10, v10, 0x65

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsansan/ay/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v10, v10, 0x2

    .line 19
    :cond_6
    nop

    .line 22
    :try_start_5
    invoke-virtual {v8, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_8

    .line 23
    invoke-virtual {v8, v1, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v11, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v9, Lccsansan/aj/getDownloadingList;->shouldTryHandlingAction:Ljava/lang/Boolean;

    :cond_8
    const-string v10, "user_config"

    .line 25
    invoke-virtual {v9, v10}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v10

    shr-int/lit8 v10, v10, 0x10

    const v12, 0x22c881d3

    add-int/2addr v10, v12

    const v13, -0x5279b7c1

    invoke-static {v4}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v14

    add-int/2addr v14, v13

    invoke-static {v3, v3, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    int-to-short v13, v13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    int-to-byte v15, v15

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v20, v16, v18

    add-int/lit8 v11, v20, -0x6f

    invoke-static {v10, v14, v13, v15, v11}, Lccsansan/ay/removeDownloadListener;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 26
    invoke-virtual {v8, v10}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-static {v4}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForGroup(I)J

    move-result-wide v10

    cmp-long v13, v10, v18

    add-int/2addr v13, v12

    const v10, -0x5279b7c2

    const/16 v11, 0x30

    invoke-static {v3, v11}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v11

    sub-int/2addr v10, v11

    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    int-to-short v11, v11

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    int-to-byte v12, v12

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v14

    shr-int/lit8 v14, v14, 0x10

    rsub-int/lit8 v14, v14, -0x6e

    invoke-static {v13, v10, v11, v12, v14}, Lccsansan/ay/removeDownloadListener;->IncentiveDownloadUtils(IISBI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 27
    const/4 v11, 0x1

    invoke-virtual {v8, v10, v11}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-static {v10}, Lccsansan/aj/getDownloadingList$unifiedDownload;->fromInt(I)Lccsansan/aj/getDownloadingList$unifiedDownload;

    move-result-object v10

    iput-object v10, v9, Lccsansan/aj/getDownloadingList;->trackReportShow:Lccsansan/aj/getDownloadingList$unifiedDownload;

    .line 33
    nop

    .line 27
    :cond_9
    nop

    .line 30
    invoke-virtual {v8, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 31
    invoke-virtual {v8, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v9, Lccsansan/aj/getDownloadingList;->resolveUrl:Ljava/lang/String;

    .line 33
    :cond_a
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v10

    invoke-virtual {v10, v9}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aj/getDownloadingList;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_4

    :cond_b
    :goto_6
    :pswitch_1
    add-int/lit8 v5, v5, 0x1

    .line 11
    sget v7, Lccsansan/ay/removeDownloadListener;->getDownloadedList:I

    add-int/lit8 v7, v7, 0x7

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsansan/ay/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v7, v7, 0x2

    goto/16 :goto_0

    .line 33
    :catch_0
    move-exception v0

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x58
        :pswitch_1
    .end packed-switch
.end method
