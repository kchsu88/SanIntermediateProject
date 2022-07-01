.class final Lccsansan/bh/getDownloadingList$addDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/bh/getDownloadingList;->addDownloadListener(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:C


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

.field final synthetic unifiedDownload:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/bh/getDownloadingList$addDownloadListener;->getDownloadingList:I

    const/4 v0, 0x1

    sput v0, Lccsansan/bh/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x4

    sput-char v0, Lccsansan/bh/getDownloadingList$addDownloadListener;->removeDownloadListener:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bh/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x73s
        0x79s
        0x5fs
        0x69s
        0x6es
        0x74s
        0x61s
        0x6cs
        0x6fs
        0x70s
        0x65s
        0x75s
        0x63s
        0x76s
        0x77s
        0x78s
    .end array-data
.end method

.method constructor <init>(Ljava/lang/String;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    iput-object p2, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
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
    sget-object v1, Lccsansan/bh/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/bh/getDownloadingList$addDownloadListener;->removeDownloadListener:C

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


# virtual methods
.method public execute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 22
    nop

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->unifiedDownload:Ljava/lang/String;

    const-string v2, "activate_from"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v1}, Lccsancom/san/convert/database/ConvertIntent;->shouldTryHandlingAction()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "activate_action_time"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v1}, Lccsancom/san/convert/database/ConvertIntent;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bh/IncentiveDownloadUtils;->fromName(Ljava/lang/String;)Lccsansan/bh/IncentiveDownloadUtils;

    move-result-object v1

    .line 6
    sget-object v2, Lccsansan/bh/getDownloadingList$getDownloadingCount;->removeDownloadListener:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const-string v2, ""

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 17
    :pswitch_0
    iget-object v0, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v0}, Lccsancom/san/convert/database/ConvertIntent;->resume()Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    .line 20
    iget-object v4, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    invoke-virtual {v4}, Lccsancom/san/convert/database/ConvertIntent;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    if-eqz v1, :cond_1

    .line 22
    sget v5, Lccsansan/bh/getDownloadingList$addDownloadListener;->getDownloadingList:I

    add-int/lit8 v5, v5, 0x2d

    rem-int/lit16 v6, v5, 0x80

    sput v6, Lccsansan/bh/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v5, v5, 0x2

    if-nez v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    :goto_0
    packed-switch v5, :pswitch_data_1

    .line 20
    goto :goto_1

    .line 22
    :pswitch_1
    const/4 v5, 0x0

    :try_start_0
    array-length v5, v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    .line 20
    :cond_1
    const-string v2, "foreground_start_activity_fail"

    :goto_1
    const-string v5, "old_convert"

    invoke-static {v4, v0, v1, v2, v5}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 21
    :pswitch_2
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    const/16 v4, 0x30

    invoke-static {v2, v4, v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/lit8 v2, v2, 0x19

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    const-string v8, "\u0001\u0002\u0001\u0003\u0000\u0007\u0001\u0004\u0007\u0004\u0006\u0003\t\n\u0008\u0006\u0003\u0001\u0008\u000f\u000e\u0008\u00b3\u00b3"

    cmp-long v9, v4, v6

    add-int/lit8 v9, v9, 0x3f

    int-to-byte v4, v9

    invoke-static {v8, v2, v4}, Lccsansan/bh/getDownloadingList$addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    goto :goto_2

    .line 22
    :pswitch_3
    iget-object v1, p0, Lccsansan/bh/getDownloadingList$addDownloadListener;->addDownloadListener:Lccsancom/san/convert/database/ConvertIntent;

    const-string v2, "open_success"

    invoke-static {v2, v0, v1}, Lccsansan/bh/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/util/HashMap;Lccsancom/san/convert/database/ConvertIntent;)V

    :goto_2
    sget v0, Lccsansan/bh/getDownloadingList$addDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/bh/getDownloadingList$addDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x28

    goto :goto_3

    :cond_2
    const/16 v0, 0x3c

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_4

    :pswitch_4
    return-void

    :goto_4
    const/16 v0, 0x47

    :try_start_1
    div-int/2addr v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3c
        :pswitch_4
    .end packed-switch
.end method
