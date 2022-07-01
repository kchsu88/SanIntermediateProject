.class public Lccsansan/k/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:C

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/k/getDownloadedList;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsansan/k/getDownloadedList;->addDownloadListener:I

    const/4 v0, 0x4

    sput-char v0, Lccsansan/k/getDownloadedList;->removeDownloadListener:C

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/k/getDownloadedList;->getDownloadingList:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x61s
        0x70s
        0x6bs
        0x5fs
        0x64s
        0x6fs
        0x77s
        0x6es
        0x6cs
        0x75s
        0x72s
        0x62s
        0x63s
        0x65s
        0x66s
        0x67s
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 10
    sget v0, Lccsansan/k/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x4f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/getDownloadedList;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget p0, Lccsansan/k/getDownloadedList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/k/getDownloadedList;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 3
    :cond_1
    new-instance v0, Lccsancom/san/xz/base/getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/xz/base/getDownloadingList;-><init>()V

    .line 4
    invoke-static {p5}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "file_size"

    invoke-virtual {v0, p3, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance p2, Lccsansan/ae/IncentiveDownloadUtils;

    invoke-direct {p2, v0}, Lccsansan/ae/IncentiveDownloadUtils;-><init>(Lccsancom/san/xz/base/getDownloadingList;)V

    .line 9
    new-instance p3, Lccsancom/san/xz/base/IncentiveDownloadUtils;

    const/4 p4, 0x0

    invoke-static {p4, p4}, Lccsanandroid/graphics/drawable/Drawable;->resolveOpacity(II)I

    move-result p4

    rsub-int/lit8 p4, p4, 0x10

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    const-string v1, "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\t\u0004\u0004\u0008\u0001\u000b\u000b\t"

    invoke-static {v1, p4, v0}, Lccsansan/k/getDownloadedList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p5}, Lccsancom/san/xz/base/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object p4

    invoke-virtual {p4, p0, p2, p3, p1}, Lccsansan/f/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;
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
    sget-object v1, Lccsansan/k/getDownloadedList;->getDownloadingList:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsansan/k/getDownloadedList;->removeDownloadListener:C

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

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 3

    .line 10
    sget v0, Lccsansan/k/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x59

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/k/getDownloadedList;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-static {p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    sget p0, Lccsansan/k/getDownloadedList;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x2d

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsansan/k/getDownloadedList;->unifiedDownload:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 3
    :cond_1
    new-instance v0, Lccsancom/san/xz/base/getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/xz/base/getDownloadingList;-><init>()V

    .line 4
    invoke-static {p5}, Lccsansan/k/addDownloadListener;->getDownloadingRecordByUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    const-string v1, "name"

    invoke-virtual {v0, v1, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string p3, "file_size"

    invoke-virtual {v0, p3, p2}, Lccsancom/san/xz/base/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    new-instance p2, Lccsansan/ae/unifiedDownload;

    invoke-direct {p2, v0}, Lccsansan/ae/unifiedDownload;-><init>(Lccsancom/san/xz/base/getDownloadingList;)V

    .line 9
    new-instance p3, Lccsancom/san/xz/base/IncentiveDownloadUtils;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result p4

    shr-int/lit8 p4, p4, 0x18

    add-int/lit8 p4, p4, 0x10

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x5c

    int-to-byte v0, v0

    const-string v1, "\u0001\u0002\u0003\u0000\u0005\u0006\u0007\u0004\t\u0004\u0004\u0008\u0001\u000b\u000b\t"

    invoke-static {v1, p4, v0}, Lccsansan/k/getDownloadedList;->unifiedDownload(Ljava/lang/String;IB)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p3, p4, p5}, Lccsancom/san/xz/base/IncentiveDownloadUtils;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lccsansan/f/getDownloadingList;->getDownloadingList()Lccsansan/f/getDownloadingList;

    move-result-object p4

    invoke-virtual {p4, p0, p2, p3, p1}, Lccsansan/f/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/ae/getDownloadingList;Lccsancom/san/xz/base/IncentiveDownloadUtils;Ljava/lang/String;)V

    return-void
.end method
