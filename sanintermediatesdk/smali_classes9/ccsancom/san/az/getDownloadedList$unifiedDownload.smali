.class final Lccsancom/san/az/getDownloadedList$unifiedDownload;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static getDownloadingList:C

.field private static unifiedDownload:[C


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/content/Context;

.field final synthetic addDownloadListener:I

.field final synthetic removeDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadStatusByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadedList:I

    const/4 v0, 0x3

    sput-char v0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadingList:C

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->unifiedDownload:[C

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
        0x65s
        0x66s
        0x67s
    .end array-data
.end method

.method constructor <init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    iput p2, p0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->addDownloadListener:I

    iput-object p3, p0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->removeDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(BILjava/lang/String;)Ljava/lang/String;
    .locals 8

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object p2

    :cond_0
    check-cast p2, [C

    .line 1208
    sget-object v0, Lccsansan/d/getDownloadedCount;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 1212
    :try_start_0
    sget-object v1, Lccsancom/san/az/getDownloadedList$unifiedDownload;->unifiedDownload:[C

    .line 1213
    nop

    .line 1214
    sget-char v2, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadingList:C

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
    aget-char v4, p2, p1

    sub-int/2addr v4, p0

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

    aget-char v5, p2, v5

    sput-char v5, Lccsansan/d/getDownloadedCount;->addDownloadListener:C

    .line 1234
    sget v5, Lccsansan/d/getDownloadedCount;->removeDownloadListener:I

    add-int/2addr v5, v4

    aget-char v5, p2, v5

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
.method public callBackOnUIThread()V
    .locals 6

    .line 7
    nop

    .line 1
    iget-object v0, p0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->IncentiveDownloadUtils:Lccsanandroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    goto/16 :goto_5

    :pswitch_0
    sget v3, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x2b

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadedList:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 3
    :cond_1
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_2

    .line 7
    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    nop

    :goto_2
    packed-switch v1, :pswitch_data_1

    :cond_3
    :goto_3
    goto :goto_4

    :pswitch_1
    sget v1, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadedList:I

    add-int/lit8 v1, v1, 0x6f

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadStatusByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    .line 3
    :cond_4
    invoke-static {v2, v2, v2}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v1

    add-int/lit8 v1, v1, 0x3a

    int-to-byte v1, v1

    const-string v3, ""

    invoke-static {v3, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x8

    const-string v4, "\u0001\u0002\u0000\u0005\u0007\u0004\u0003\u0002"

    invoke-static {v1, v3, v4}, Lccsancom/san/az/getDownloadedList$unifiedDownload;->IncentiveDownloadUtils(BILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x14

    shr-int/lit8 v2, v2, 0x6

    rsub-int/lit8 v2, v2, 0x3a

    int-to-byte v2, v2

    const/4 v3, 0x0

    invoke-static {v3, v3}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v5

    cmpl-float v3, v5, v3

    rsub-int/lit8 v3, v3, 0x8

    invoke-static {v2, v3, v4}, Lccsancom/san/az/getDownloadedList$unifiedDownload;->IncentiveDownloadUtils(BILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {v1, v2}, Lccsansan/bz/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 7
    sget v1, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x37

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedList$unifiedDownload;->getDownloadedList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    goto :goto_3

    :goto_4
    iget v1, p0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->addDownloadListener:I

    iget-object v2, p0, Lccsancom/san/az/getDownloadedList$unifiedDownload;->removeDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    goto :goto_1

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
