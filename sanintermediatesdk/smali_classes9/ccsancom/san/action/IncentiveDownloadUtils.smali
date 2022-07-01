.class public Lccsancom/san/action/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/bq/getDownloadingRecordByUrl$removeDownloadListener;


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:[C

.field private static getDownloadingList:C

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/action/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x3

    sput-char v0, Lccsancom/san/action/IncentiveDownloadUtils;->getDownloadingList:C

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/action/IncentiveDownloadUtils;->addDownloadListener:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x64s
        0x6fs
        0x77s
        0x6es
        0x6cs
        0x61s
        0x4ds
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addDownloadListener(BLjava/lang/String;I)Ljava/lang/String;
    .locals 8

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_0
    check-cast p1, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsancom/san/action/IncentiveDownloadUtils;->addDownloadListener:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsancom/san/action/IncentiveDownloadUtils;->getDownloadingList:C

    .line 1215
    nop

    .line 1216
    nop

    .line 1218
    new-array v3, p2, [C

    .line 1221
    rem-int/lit8 v4, p2, 0x2

    if-eqz v4, :cond_1

    .line 1223
    add-int/lit8 p2, p2, -0x1

    .line 1224
    aget-char v4, p1, p2

    sub-int/2addr v4, p0

    int-to-char v4, v4

    aput-char v4, v3, p2

    .line 1227
    :cond_1
    const/4 v4, 0x1

    if-le p2, v4, :cond_5

    .line 1229
    const/4 v5, 0x0

    sput v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    :goto_0
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    if-ge v5, p2, :cond_5

    .line 1233
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    aget-char v5, p1, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p1, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    .line 1237
    sget-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    if-ne v5, v6, :cond_2

    .line 1239
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    sget-char v6, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    sub-int/2addr v6, p0

    int-to-char v6, v6

    aput-char v6, v3, v5

    .line 1240
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    sget-char v6, Lccsansan/d/getDownloadedCount;->unifiedDownload:C

    sub-int/2addr v6, p0

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


# virtual methods
.method public addDownloadListener(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsansan/af/removeDownloadListener;)V
    .locals 17

    .line 138
    move-object/from16 v0, p1

    move-object/from16 v8, p3

    const-string v9, "pkgName"

    const-string v1, ""

    sget v2, Lccsancom/san/action/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v10, 0x2

    rem-int/2addr v2, v10

    if-nez v2, :cond_0

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v11

    :try_start_0
    const-string v2, "url"

    .line 6
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v2, "name"

    .line 7
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v2, "mode"

    .line 8
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v1}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x78

    int-to-byte v2, v2

    const-string v3, "\u0001\u0002\u0000\u0005\u0007\u0004\u0003\u0002\u0007\u0000\u0001\u0006"

    invoke-static {v1}, Lccsanandroid/view/MotionEvent;->axisFromString(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v1, v1, 0xd

    invoke-static {v2, v3, v1}, Lccsancom/san/action/IncentiveDownloadUtils;->addDownloadListener(BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    .line 10
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x1

    if-ne v1, v6, :cond_11

    .line 16
    new-instance v16, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object v4, v13

    move-object v5, v14

    const/4 v12, 0x1

    move-object v6, v11

    invoke-direct/range {v1 .. v7}, Lccsancom/san/action/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsancom/san/action/IncentiveDownloadUtils;Lccsansan/af/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 74
    invoke-static/range {v16 .. v16}, Lccsansan/k/addDownloadListener;->unifiedDownload(Lccsansan/k/addDownloadListener$unifiedDownload;)V

    if-ne v15, v12, :cond_1

    .line 138
    const/16 v1, 0x20

    goto :goto_0

    :cond_1
    const/16 v1, 0x56

    :goto_0
    const/16 v2, 0xb

    packed-switch v1, :pswitch_data_0

    .line 77
    if-ne v15, v10, :cond_2

    goto :goto_1

    :pswitch_0
    invoke-static {v13}, Lccsansan/k/addDownloadListener;->removeDownloadListener(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    sget v0, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/action/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v10

    if-eqz v0, :cond_11

    const/16 v2, 0x27

    goto/16 :goto_b

    .line 79
    :goto_1
    :try_start_1
    invoke-static {v13}, Lccsansan/k/addDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_2
    const/4 v1, 0x3

    if-ne v15, v1, :cond_3

    .line 138
    const/16 v3, 0x5f

    goto :goto_2

    :cond_3
    const/16 v3, 0x35

    :goto_2
    packed-switch v3, :pswitch_data_1

    goto/16 :goto_b

    .line 79
    :pswitch_1
    if-eqz v8, :cond_11

    .line 84
    invoke-static {v13}, Lccsansan/k/addDownloadListener;->getDownloadingList(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_4

    goto :goto_3

    .line 88
    :cond_4
    invoke-static {v13}, Lccsansan/k/addDownloadListener;->getDownloadedRecordByUrl(Ljava/lang/String;)Lccsansan/k/unifiedDownload;

    move-result-object v3

    if-nez v3, :cond_5

    .line 138
    nop

    .line 84
    :goto_3
    const/4 v3, -0x1

    goto :goto_4

    .line 92
    :cond_5
    invoke-virtual {v3}, Lccsansan/k/unifiedDownload;->removeDownloadListener()Lccsansan/k/unifiedDownload$unifiedDownload;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/k/unifiedDownload$unifiedDownload;->toInt()I

    move-result v3

    .line 95
    :goto_4
    new-instance v5, Lccsansan/bw/AdError;

    invoke-direct {v5, v11}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    .line 96
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {v5, v0}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 99
    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 100
    new-instance v7, Lccsanorg/json/JSONObject;

    invoke-direct {v7, v6}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 99
    :cond_6
    const/4 v7, 0x0

    .line 100
    :goto_5
    if-ne v3, v4, :cond_9

    .line 104
    new-instance v1, Lccsansan/bw/AdError;

    const-string v2, "minisite"

    invoke-direct {v1, v11, v2}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v5, v13}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v6, 0x0

    const-string v4, "delete"

    cmp-long v9, v2, v6

    if-lez v9, :cond_7

    .line 106
    :try_start_2
    invoke-virtual {v1, v13, v4}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_7
    nop

    .line 108
    invoke-virtual {v1, v13}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 109
    invoke-interface {v8, v4, v13}, Lccsansan/af/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {v5, v0}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v5, v13}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    .line 112
    invoke-static {}, Lccsansan/cy/unifiedDownload;->resolveUrl()I

    move-result v1

    if-ne v1, v12, :cond_11

    .line 113
    invoke-static {v11}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 116
    :cond_8
    invoke-interface {v8, v14, v13}, Lccsansan/af/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_b

    .line 119
    :cond_9
    invoke-static {v3}, Lccsansan/k/unifiedDownload$unifiedDownload;->fromInt(I)Lccsansan/k/unifiedDownload$unifiedDownload;

    move-result-object v3

    .line 120
    sget-object v4, Lccsancom/san/action/IncentiveDownloadUtils$removeDownloadListener;->removeDownloadListener:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eq v3, v12, :cond_a

    .line 138
    const/16 v4, 0x12

    goto :goto_6

    :cond_a
    const/16 v4, 0x5c

    :goto_6
    const-string v6, "completed"

    const-string v9, "total"

    packed-switch v4, :pswitch_data_2

    sget v4, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v4, v4, 0x71

    rem-int/lit16 v11, v4, 0x80

    sput v11, Lccsancom/san/action/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v4, v10

    if-eqz v4, :cond_b

    goto :goto_7

    .line 137
    :pswitch_2
    nop

    .line 138
    :try_start_3
    invoke-virtual {v7, v9}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v7, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v13

    invoke-interface/range {v0 .. v6}, Lccsansan/af/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    .line 120
    :cond_b
    :goto_7
    if-eq v3, v1, :cond_10

    .line 138
    add-int/lit8 v11, v11, 0x53

    rem-int/lit16 v1, v11, 0x80

    sput v1, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/2addr v11, v10

    if-nez v11, :cond_c

    const/4 v6, 0x0

    goto :goto_8

    :cond_c
    const/4 v6, 0x1

    :goto_8
    packed-switch v6, :pswitch_data_3

    .line 120
    const/4 v1, 0x4

    if-eq v3, v1, :cond_f

    goto :goto_a

    .line 138
    :pswitch_3
    if-eq v3, v10, :cond_d

    goto :goto_9

    :cond_d
    const/16 v2, 0x23

    :goto_9
    packed-switch v2, :pswitch_data_4

    .line 120
    :goto_a
    const/4 v0, 0x5

    if-eq v3, v0, :cond_e

    goto :goto_b

    .line 134
    :cond_e
    :try_start_4
    invoke-interface {v8, v14, v13}, Lccsansan/af/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 135
    :cond_f
    :pswitch_4
    invoke-interface {v8, v14, v13}, Lccsansan/af/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {v5, v0}, Lccsansan/bw/AdError;->removeDownloadListener(Ljava/lang/String;)V

    goto :goto_b

    :cond_10
    nop

    .line 137
    invoke-virtual {v7, v9}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v7, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    move-object/from16 v0, p3

    move-object v1, v14

    move-object v2, v13

    invoke-interface/range {v0 .. v6}, Lccsansan/af/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;JJ)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_b

    .line 138
    :catch_0
    move-exception v0

    :cond_11
    :goto_b
    sget v0, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/action/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/2addr v0, v10

    if-eqz v0, :cond_12

    const/4 v1, 0x0

    :try_start_5
    array-length v0, v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_12
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5f
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x5c
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_3
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x23
        :pswitch_4
    .end packed-switch
.end method

.method public unifiedDownload()V
    .locals 2

    .line 3
    sget v0, Lccsancom/san/action/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x2f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-static {}, Lccsansan/au/unifiedDownload;->getDownloadingList()V

    .line 3
    invoke-static {}, Lccsansan/aa/IncentiveDownloadUtils;->unifiedDownload()V

    sget v0, Lccsancom/san/action/IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/action/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    const/16 v0, 0x3a

    goto :goto_0

    :cond_1
    const/16 v0, 0x4a

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0xf

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3a
        :pswitch_0
    .end packed-switch
.end method
