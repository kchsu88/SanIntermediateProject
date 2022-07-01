.class public Lccsansan/al/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:[C

.field private static getDownloadingRecordByUrl:C

.field private static unifiedDownload:Lccsansan/al/IncentiveDownloadUtils;


# instance fields
.field private IncentiveDownloadUtils:I

.field private addDownloadListener:I

.field private getDownloadingList:J

.field private removeDownloadListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/al/IncentiveDownloadUtils;->deleteDownItem:I

    const/4 v0, 0x1

    sput v0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl()V

    sget v0, Lccsansan/al/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x3

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    .line 1
    const-string v0, "enable"

    const-string v1, "thread_count"

    const-string v2, "min_part_size"

    const-string v3, "part_count"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v4, 0x8

    iput v4, p0, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener:I

    .line 3
    const-wide/32 v4, 0xa00000

    iput-wide v4, p0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadingList:J

    .line 4
    const/4 v4, 0x4

    iput v4, p0, Lccsansan/al/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    .line 5
    const/4 v4, 0x1

    iput-boolean v4, p0, Lccsansan/al/IncentiveDownloadUtils;->removeDownloadListener:Z

    .line 20
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v4

    const-string v5, ""

    const/16 v6, 0x30

    invoke-static {v5, v6}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    add-int/lit8 v6, v6, 0xf

    int-to-byte v6, v6

    const-string v7, "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\u0000\u000b\n\u000b\u0008\u000f\u0006\u000e\u0005\n"

    invoke-static {v7, v5, v6}, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 21
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    .line 25
    :cond_0
    :try_start_0
    new-instance v5, Lccsanorg/json/JSONObject;

    invoke-direct {v5, v4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v5, v3}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 27
    invoke-virtual {v5, v3}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener:I

    :cond_1
    nop

    .line 28
    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 29
    invoke-virtual {v5, v2}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadingList:J

    :cond_2
    nop

    .line 30
    invoke-virtual {v5, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 31
    invoke-virtual {v5, v1}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lccsansan/al/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    :cond_3
    nop

    .line 32
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 33
    invoke-virtual {v5, v0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lccsansan/al/IncentiveDownloadUtils;->removeDownloadListener:Z
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 35
    const-string v1, "MultiPartConfig"

    invoke-static {v1, v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsansan/al/IncentiveDownloadUtils;->getDownloadedList:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/al/IncentiveDownloadUtils;->getDownloadingRecordByUrl:C

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

.method public static addDownloadListener()Lccsansan/al/IncentiveDownloadUtils;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/al/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/al/IncentiveDownloadUtils;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/al/IncentiveDownloadUtils;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/al/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/al/IncentiveDownloadUtils;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/al/IncentiveDownloadUtils;

    invoke-direct {v1}, Lccsansan/al/IncentiveDownloadUtils;-><init>()V

    sput-object v1, Lccsansan/al/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/al/IncentiveDownloadUtils;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/al/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/al/IncentiveDownloadUtils;

    return-object v0
.end method

.method static getDownloadStatusByUrl()V
    .locals 1

    const/4 v0, 0x4

    sput-char v0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadingRecordByUrl:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadedList:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x6ds
        0x75s
        0x6cs
        0x74s
        0x69s
        0x70s
        0x61s
        0x72s
        0x5fs
        0x64s
        0x6fs
        0x77s
        0x6es
        0x71s
        0x73s
        0x76s
    .end array-data
.end method


# virtual methods
.method public IncentiveDownloadUtils()I
    .locals 4

    .line 1
    sget v0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/al/IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener:I

    goto :goto_1

    :pswitch_0
    iget v0, p0, Lccsansan/al/IncentiveDownloadUtils;->addDownloadListener:I

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    :goto_1
    sget v2, Lccsansan/al/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v2, v2, 0x19

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    const/16 v2, 0x5b

    goto :goto_2

    :cond_1
    const/16 v2, 0x16

    :goto_2
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return v0

    :goto_3
    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return v0

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method public getDownloadingList()I
    .locals 3

    .line 1
    sget v0, Lccsansan/al/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v0, 0x5

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget v1, p0, Lccsansan/al/IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x65

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    return v1
.end method

.method public removeDownloadListener()J
    .locals 3

    .line 1
    sget v0, Lccsansan/al/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0xb

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-wide v0, p0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadingList:J

    goto :goto_1

    :pswitch_0
    iget-wide v0, p0, Lccsansan/al/IncentiveDownloadUtils;->getDownloadingList:J

    goto :goto_2

    :goto_1
    const/4 v2, 0x0

    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-wide v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public unifiedDownload()Z
    .locals 3

    .line 1
    sget v0, Lccsansan/al/IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v0, 0x29

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    :cond_0
    iget-boolean v1, p0, Lccsansan/al/IncentiveDownloadUtils;->removeDownloadListener:Z

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/al/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    const/16 v0, 0x4f

    goto :goto_0

    :cond_1
    const/16 v0, 0x5d

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return v1

    :goto_1
    const/16 v0, 0x4d

    :try_start_0
    div-int/lit8 v0, v0, 0x0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v1

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x5d
        :pswitch_0
    .end packed-switch
.end method
