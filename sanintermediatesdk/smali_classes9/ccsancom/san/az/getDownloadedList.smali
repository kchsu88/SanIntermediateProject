.class public Lccsancom/san/az/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:I

.field private static addDownloadListener:J

.field private static deleteDownItem:I

.field private static getDownloadStatusByUrl:I

.field private static getDownloadedList:I

.field private static getDownloadedRecordByUrl:[B

.field private static getDownloadingList:I

.field private static getDownloadingRecordByUrl:[S

.field public static final removeDownloadListener:[B

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    invoke-static {}, Lccsancom/san/az/getDownloadedList;->getDownloadingList()V

    const/16 v2, 0x2a

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsancom/san/az/getDownloadedList;->removeDownloadListener:[B

    const/16 v2, 0xa0

    sput v2, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils:I

    sget v2, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    add-int/lit8 v2, v2, 0x5d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    const/16 v2, 0x55

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x55
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x15t
        -0x42t
        -0x31t
        0x71t
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method private static IncentiveDownloadUtils(BIISI)Ljava/lang/String;
    .locals 7

    .line 1200
    sget-object v0, Lccsansan/d/trackReportShow;->getDownloadStatusByUrl:Ljava/lang/Object;

    monitor-enter v0

    .line 1202
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1205
    sget v2, Lccsancom/san/az/getDownloadedList;->getDownloadingList:I

    add-int/2addr p1, v2

    .line 1206
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1207
    :goto_0
    if-eqz v3, :cond_2

    .line 1209
    sget-object p1, Lccsancom/san/az/getDownloadedList;->getDownloadedRecordByUrl:[B

    if-eqz p1, :cond_1

    .line 1211
    sget v6, Lccsancom/san/az/getDownloadedList;->unifiedDownload:I

    add-int/2addr v6, p4

    aget-byte p1, p1, v6

    add-int/2addr p1, v2

    int-to-byte p1, p1

    goto :goto_1

    .line 1217
    :cond_1
    sget-object p1, Lccsancom/san/az/getDownloadedList;->getDownloadingRecordByUrl:[S

    sget v6, Lccsancom/san/az/getDownloadedList;->unifiedDownload:I

    add-int/2addr v6, p4

    aget-short p1, p1, v6

    add-int/2addr p1, v2

    int-to-short p1, p1

    .line 1223
    :cond_2
    :goto_1
    if-lez p1, :cond_5

    .line 1226
    add-int/2addr p4, p1

    add-int/lit8 p4, p4, -0x2

    sget v2, Lccsancom/san/az/getDownloadedList;->unifiedDownload:I

    add-int/2addr p4, v2

    if-eqz v3, :cond_3

    const/4 v4, 0x1

    :cond_3
    add-int/2addr p4, v4

    sput p4, Lccsansan/d/trackReportShow;->unifiedDownload:I

    .line 1227
    sput-byte p0, Lccsansan/d/trackReportShow;->getDownloadingList:B

    .line 1230
    sget p0, Lccsancom/san/az/getDownloadedList;->getDownloadStatusByUrl:I

    add-int/2addr p2, p0

    int-to-char p0, p2

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

    if-ge p0, p1, :cond_5

    .line 1238
    sget-object p0, Lccsancom/san/az/getDownloadedList;->getDownloadedRecordByUrl:[B

    if-eqz p0, :cond_4

    .line 1240
    sget p2, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-byte p0, p0, p2

    .line 1241
    sget-char p2, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p3

    int-to-byte p0, p0

    sget-byte p4, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p4

    add-int/2addr p2, p0

    int-to-char p0, p2

    sput-char p0, Lccsansan/d/trackReportShow;->removeDownloadListener:C

    goto :goto_3

    .line 1245
    :cond_4
    sget-object p0, Lccsancom/san/az/getDownloadedList;->getDownloadingRecordByUrl:[S

    sget p2, Lccsansan/d/trackReportShow;->unifiedDownload:I

    add-int/lit8 p4, p2, -0x1

    sput p4, Lccsansan/d/trackReportShow;->unifiedDownload:I

    aget-short p0, p0, p2

    .line 1246
    sget-char p2, Lccsansan/d/trackReportShow;->IncentiveDownloadUtils:C

    add-int/2addr p0, p3

    int-to-short p0, p0

    sget-byte p4, Lccsansan/d/trackReportShow;->getDownloadingList:B

    xor-int/2addr p0, p4

    add-int/2addr p2, p0

    int-to-char p0, p2

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

.method static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 20
    nop

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    const/16 v2, 0x30

    invoke-static {v1, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v3

    rsub-int v3, v3, 0x6e02

    const-string v4, "\u23d4\u4dcc\uffce\u69d9\u9be2\u05c6\ub7c6\u21c6\u53de\ufdd0\u6fd5\u99ef\u0bed\ub5e7\u27b7"

    invoke-static {v4, v3}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v2

    rsub-int/lit8 v2, v2, -0x1

    int-to-byte v2, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    rsub-int v3, v3, -0x42f1

    const v4, 0x5a0d9269

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    add-int/2addr v5, v4

    const/4 v4, 0x0

    invoke-static {v4}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x32

    int-to-short v6, v6

    const v7, -0x5d3d230f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    add-int/2addr v8, v7

    invoke-static {v2, v3, v5, v6, v8}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    .line 20
    sget p0, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x6b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 5
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    .line 6
    new-instance v0, Lccsanandroid/widget/RemoteViews;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "san_notification_azing"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 7
    const-string v2, "san_notification_title"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    int-to-byte v5, v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumDrawingCacheSize()I

    move-result v6

    shr-int/lit8 v6, v6, 0x18

    rsub-int v6, v6, -0x42f8

    const v7, 0x5a0d9264

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x8

    add-int/2addr v8, v7

    invoke-static {v1, v1}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v7

    add-int/lit8 v7, v7, -0x80

    int-to-short v7, v7

    const v9, -0x5d3d22fd

    invoke-static {v4, v4, v4, v4}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v10

    sub-int/2addr v9, v10

    invoke-static {v5, v6, v8, v7, v9}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 8
    const-string p1, "san_notification_progressbar"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v4, v4, v2}, Lccsanandroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result p1

    shr-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    const-string v3, "\u23e3\u0ae9\u7192\u58aa\u874f\uee6d\ud500\u3c24\u6a8f\u51cd\ub888\ue7a2\uce5f\u356f\u1c1b"

    cmp-long v9, v5, v7

    add-int/lit16 v9, v9, -0x42fd

    const v5, 0x5a0d927f

    invoke-static {v1}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v5

    invoke-static {v4}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    add-int/lit8 v5, v5, -0x7

    int-to-short v5, v5

    const v6, -0x5d3d22f2

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {p1, v9, v1, v5, v7}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Lccsansan/bz/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 11
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getGlobalActionKeyTimeout()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    add-int/lit16 v1, v1, 0x2920

    invoke-static {v3, v1}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-virtual {p1, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 14
    invoke-virtual {p1, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 16
    invoke-virtual {p1, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 17
    invoke-virtual {p1, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 18
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object p1

    .line 19
    iget v0, p1, Lccsanandroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Lccsanandroid/app/Notification;->flags:I

    .line 20
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadedList$removeDownloadListener;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/san/az/getDownloadedList$removeDownloadListener;-><init>(Lccsanandroid/content/Context;ILccsanandroid/app/Notification;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x43

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method private static addDownloadListener(SSI)Ljava/lang/String;
    .locals 7

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x11

    mul-int/lit8 p0, p0, 0x16

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x67

    sget-object v0, Lccsancom/san/az/getDownloadedList;->removeDownloadListener:[B

    new-array v1, p2, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    packed-switch v4, :pswitch_data_0

    sget v4, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    add-int/lit8 v4, v4, 0x71

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    goto :goto_1

    :pswitch_0
    move-object v4, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_6

    :goto_1
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const/4 v4, 0x1

    :goto_2
    packed-switch v4, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    const/4 v4, 0x0

    :try_start_0
    array-length v4, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_3
    move-object v4, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    :goto_4
    add-int/2addr p0, v2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x8

    sget p2, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    add-int/lit8 p2, p2, 0x2b

    rem-int/lit16 v6, p2, 0x80

    sput v6, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_2

    const/16 p2, 0x2d

    goto :goto_5

    :cond_2
    const/16 p2, 0x1a

    :goto_5
    packed-switch p2, :pswitch_data_2

    :goto_6
    :pswitch_2
    int-to-byte p2, p1

    add-int/lit8 v6, v5, 0x1

    aput-byte p2, v4, v5

    if-ne v6, v0, :cond_3

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v4, v3}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_3
    aget-byte p2, v1, p0

    move v5, v6

    goto :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x2d
        :pswitch_2
    .end packed-switch
.end method

.method static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 4
    sget v0, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-nez p0, :cond_1

    goto :goto_2

    .line 4
    :goto_1
    const/16 v0, 0x26

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez p0, :cond_1

    .line 0
    :goto_2
    return-void

    .line 3
    :cond_1
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    sget p0, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :cond_2
    packed-switch v1, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    return-void

    :goto_3
    const/4 p0, 0x0

    :try_start_1
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    :catchall_1
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 2

    const-wide v0, -0x2cd4bdd7439edc59L    # -4.4421128703361605E92

    sput-wide v0, Lccsancom/san/az/getDownloadedList;->addDownloadListener:J

    const/16 v0, 0x4304

    sput v0, Lccsancom/san/az/getDownloadedList;->getDownloadingList:I

    const v0, -0x5a0d921b

    sput v0, Lccsancom/san/az/getDownloadedList;->getDownloadStatusByUrl:I

    const v0, 0x5d3d230f

    sput v0, Lccsancom/san/az/getDownloadedList;->unifiedDownload:I

    const/16 v0, 0xc9

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/getDownloadedList;->getDownloadingRecordByUrl:[S

    return-void

    nop

    :array_0
    .array-data 2
        -0x33s
        -0x28s
        -0x46s
        -0x32s
        -0x2es
        -0xes
        -0x58s
        -0x34s
        -0x2ds
        -0x3es
        -0x20s
        -0x35s
        -0x39s
        -0x30s
        -0x36s
        -0x3es
        -0x2es
        -0x12s
        0x66s
        0x53s
        0x79s
        0x85s
        0x7ds
        0x80s
        0x8bs
        0x6ds
        0x81s
        0x85s
        0xa5s
        0xas
        -0x7s
        0xas
        0x5s
        -0x2s
        0xfs
        0x12s
        -0x3es
        -0x33s
        -0x51s
        -0x3ds
        -0x39s
        -0x39s
        0xbs
        -0x8ds
        -0x43s
        0x16s
        -0x89s
        -0x36s
        -0x44s
        -0x41s
        -0x35s
        0x119s
        -0x1a5s
        0x11s
        -0x4bs
        -0x32s
        0xcds
        -0x19ds
        -0x31s
        -0x3es
        -0x47s
        -0x2fs
        -0x4bs
        -0x3es
        -0x30s
        -0x3cs
        -0x3es
        -0x50s
        -0x3cs
        0x15s
        -0x82s
        -0x3bs
        -0x4cs
        -0x3bs
        -0x40s
        -0x47s
        -0x36s
        -0x13s
        -0x84s
        -0x5bs
        -0x61s
        -0x5as
        -0x4fs
        -0x6ds
        -0x59s
        -0x55s
        -0x35s
        -0x88s
        -0x52s
        -0x53s
        -0x65s
        0x6s
        -0x1fs
        0x2ds
        0x20s
        0x17s
        0x2fs
        0x13s
        0x20s
        0x2es
        0x22s
        0x20s
        0xes
        0x22s
        0x73s
        -0x2cs
        0x20s
        0x2bs
        0xds
        0x21s
        0x25s
        0x45s
        -0x3as
        -0x50s
        -0x59s
        0xas
        -0x9bs
        -0x51s
        0x8s
        -0x9cs
        -0x3ds
        -0x3fs
        -0x18s
        -0x5as
        -0x97s
        -0x3fs
        -0x4cs
        -0x55s
        -0x3ds
        -0x59s
        -0x4cs
        -0x3es
        -0x4as
        -0x4cs
        -0x5es
        -0x4as
        0x7s
        -0x98s
        -0x4cs
        -0x41s
        -0x5fs
        -0x4bs
        -0x47s
        -0x27s
        -0x4ds
        -0x24s
        -0x2as
        -0x20s
        -0x1bs
        -0x8s
        -0x49s
        -0x23s
        -0x18s
        -0x36s
        -0x22s
        -0x1es
        0x2s
        -0x51s
        -0x1bs
        -0x1cs
        -0x2es
        0x62s
        0x6cs
        0x78s
        0x72s
        0x77s
        0x6as
        0x76s
        0x62s
        0x6fs
        0x7as
        0x5cs
        0x70s
        0x74s
        0x74s
        0x79s
        0x60s
        0x6es
        0x75s
        0x64s
        0x82s
        0x6ds
        0x69s
        0x72s
        0x6cs
        0x64s
        0x74s
        0x70s
        0x7es
        0x60s
        0x7cs
        0x5ds
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
        0x0s
    .end array-data
.end method

.method static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 31
    nop

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0xae5a

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-string v9, ""

    const-string v10, "\u23d4\u8d96\u7f7a\u28db\u9a8a\u4474\u35c2\ue7bc\u510e\u02ea\uecb1\u5e26\u0fee\uf943\uab1d\u14e9\uc60d"

    cmp-long v11, v4, v7

    sub-int/2addr v3, v11

    invoke-static {v10, v3}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMinVolume()F

    move-result v3

    cmpl-float v3, v3, v6

    int-to-byte v3, v3

    invoke-static {v9}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    rsub-int v4, v4, -0x42f1

    const v5, 0x5a0d9269

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v10

    shr-int/lit8 v10, v10, 0x8

    add-int/2addr v10, v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0x33

    int-to-short v5, v5

    const v11, -0x5d3d230f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    sub-int/2addr v11, v12

    invoke-static {v3, v4, v10, v5, v11}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    new-instance v2, Lccsanandroid/content/Intent;

    const-class v3, Lccsancom/san/az/AdAppOperator;

    invoke-direct {v2, v0, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 9
    const-string v3, "source_key"

    const-string v4, "source_ntf"

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 10
    const-string v3, "intent_pkg"

    move-object/from16 v4, p1

    invoke-virtual {v2, v3, v4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const v3, 0x10008000

    .line 11
    invoke-virtual {v2, v3}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 12
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/high16 v4, 0x8000000

    invoke-static {v0, v3, v2, v4}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v2

    .line 14
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 15
    new-instance v4, Lccsanandroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const-string v10, "san_notification_azready"

    invoke-static {v10}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v4, v5, v10}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 16
    const-string v5, "san_notification_title"

    invoke-static {v5}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v11, 0x0

    invoke-static {v11, v11, v11}, Lccsanandroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    rsub-int v12, v12, 0x5171

    const-string v13, "\u23e3\u72b9\u8132\ud79a\u660f\ub4fd\ucb60\u19d4\ua80f\uff2d\u0db8\u5c1f\uf288\u017f\u57fa\ue64b\u34d1\u4b53\u9a39\u28a8\u7f0a\u72f8"

    invoke-static {v13, v12}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v5, v10}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 18
    const-string v5, "san_notification_content"

    invoke-static {v5}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v5

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v11

    invoke-static {v9, v9, v11}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v7, v8}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    rsub-int v7, v7, -0x42d9

    const v8, 0x5a0d925f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v12

    shr-int/lit8 v12, v12, 0x10

    add-int/2addr v12, v8

    invoke-static {v11}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v8

    const-string v13, "san_notification_progressbar"

    const-string v14, "\u23e3\u0ae9\u7192\u58aa\u874f\uee6d\ud500\u3c24\u6a8f\u51cd\ub888\ue7a2\uce5f\u356f\u1c1b"

    cmpl-float v6, v8, v6

    add-int/lit8 v6, v6, 0x3e

    int-to-short v6, v6

    const v8, -0x5d3d22eb

    invoke-static {v9, v11, v11}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v15

    sub-int/2addr v8, v15

    invoke-static {v1, v7, v12, v6, v8}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 19
    invoke-static {v13}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1, v11, v11, v11}, Lccsanandroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {v11, v11, v11, v11}, Lccsanandroid/graphics/Color;->argb(IIII)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v9, v9, v11, v11}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v5

    rsub-int v5, v5, -0x42fc

    const v6, 0x5a0d927f

    invoke-static {v11, v11}, Lccsanandroid/view/View;->getDefaultSize(II)I

    move-result v7

    add-int/2addr v7, v6

    invoke-static {v11}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v6

    add-int/lit8 v6, v6, -0x7

    int-to-short v6, v6

    const v8, -0x5d3d22f2

    invoke-static {v11, v11}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v1, v5, v7, v6, v8}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 21
    invoke-static {v0, v1}, Lccsansan/bz/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 22
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v5, v5, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-static {v9, v9, v11, v11}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result v5

    rsub-int v5, v5, 0x2921

    invoke-static {v14, v5}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 24
    invoke-virtual {v1, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 25
    invoke-virtual {v1, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 27
    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 28
    move/from16 v2, p4

    invoke-virtual {v1, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 29
    invoke-virtual {v1, v11}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 31
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v2

    new-instance v4, Lccsancom/san/az/getDownloadedList$unifiedDownload;

    invoke-direct {v4, v0, v3, v1}, Lccsancom/san/az/getDownloadedList$unifiedDownload;-><init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {v2, v4}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget v0, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 84
    nop

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionType(J)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v2

    shr-int/lit8 v2, v2, 0x16

    rsub-int v2, v2, -0x42f2

    const v3, 0x5a0d928e

    const/4 v4, 0x0

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v4, v4}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v3

    add-int/lit8 v3, v3, 0x23

    int-to-short v3, v3

    const v6, -0x5d3d227f

    const-string v7, ""

    invoke-static {v7, v4}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v8

    add-int/2addr v8, v6

    invoke-static {v1, v2, v5, v3, v8}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x14

    shr-int/lit8 v1, v1, 0x6

    int-to-byte v1, v1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getWindowTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    rsub-int v2, v2, -0x42f1

    const v3, 0x5a0d9269

    invoke-static {v4}, Lccsanandroid/util/TypedValue;->complexToFloat(I)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    add-int/2addr v5, v3

    invoke-static {v7}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x33

    int-to-short v3, v3

    const v6, -0x5d3d230f

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    sub-int/2addr v6, v8

    invoke-static {v1, v2, v5, v3, v6}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p0, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    .line 70
    new-instance v0, Lccsanandroid/widget/RemoteViews;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "san_notification_azfailed"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 71
    const-string v1, "san_notification_title"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    const v5, 0xf89f

    add-int/2addr v3, v5

    const-string v6, "\u23ee\udb56\ud2ea\uca0e\uc1ba\uf8d0\uf071\uefde\ue739\u9e51\u95f8\u8d1e\u84b6\u83d0\ubb2f\ub2d6"

    invoke-static {v6, v3}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 72
    const-string v1, "san_notification_content"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4, v4}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v3

    sub-int/2addr v5, v3

    invoke-static {v6, v5}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 73
    const-string p1, "san_notification_progressbar"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, v4, v4, v4}, Lccsanandroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 74
    const-string p1, "san_notification_icon"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-static {v7, v7, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v1

    int-to-byte v1, v1

    invoke-static {v7}, Lccsanandroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    add-int/lit16 v2, v2, -0x42e4

    const v3, 0x5a0d928f

    const/16 v5, 0x30

    invoke-static {v7, v5, v4, v4}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v6

    add-int/2addr v6, v3

    invoke-static {v7, v5, v4, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    add-int/lit8 v3, v3, -0x6e

    int-to-short v3, v3

    const v8, -0x5d3d226e

    invoke-static {v4}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v9

    add-int/2addr v9, v8

    invoke-static {v1, v2, v6, v3, v9}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lccsanandroid/widget/RemoteViews;->setImageViewResource(II)V

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result p1

    shr-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int v1, v1, -0x42fc

    const v2, 0x5a0d927e

    invoke-static {v7, v5, v4, v4}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CII)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {v4}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    add-int/lit8 v3, v3, -0x6

    int-to-short v3, v3

    const v5, -0x5d3d22f1

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v10, v6, v8

    sub-int/2addr v5, v10

    invoke-static {p1, v1, v2, v3, v5}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-static {p0, p1}, Lccsansan/bz/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 77
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p1, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 79
    invoke-virtual {p1, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 80
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x1

    .line 81
    invoke-virtual {p1, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 82
    invoke-virtual {p1, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 84
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p2, p1}, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p0, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x21

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void
.end method

.method static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 23

    move-object/from16 v1, p0

    .line 65
    nop

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    const/16 v4, 0x8

    shr-int/2addr v3, v4

    add-int/lit16 v3, v3, -0x42f6

    const v5, 0x5a0d928e

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v6

    shr-int/lit8 v6, v6, 0x10

    sub-int/2addr v5, v6

    const/4 v6, 0x0

    invoke-static {v6}, Lccsanandroid/os/Process;->getThreadPriority(I)I

    move-result v7

    add-int/lit8 v7, v7, 0x14

    shr-int/lit8 v7, v7, 0x6

    add-int/lit8 v7, v7, 0x5a

    int-to-short v7, v7

    const v8, -0x5d3d22c2

    const-string v9, ""

    invoke-static {v9}, Lccsanandroid/os/Process;->getGidForName(Ljava/lang/String;)I

    move-result v10

    sub-int/2addr v8, v10

    invoke-static {v2, v3, v5, v7, v8}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getJumpTapTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v3

    const/4 v5, 0x0

    const/16 v7, 0x30

    cmpl-float v3, v3, v5

    rsub-int v3, v3, -0x42f0

    const v8, 0x5b0d9269

    invoke-static {v6, v6, v6}, Lccsanandroid/graphics/Color;->rgb(III)I

    move-result v10

    add-int/2addr v10, v8

    invoke-static {v6}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    rsub-int/lit8 v8, v8, 0x33

    int-to-short v8, v8

    const v11, -0x5d3d2310

    invoke-static {v9, v7}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;C)I

    move-result v12

    sub-int/2addr v11, v12

    invoke-static {v2, v3, v10, v8, v11}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v1, :cond_1

    .line 65
    sget v0, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x43

    :try_start_0
    div-int/2addr v0, v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_0
    return-void

    .line 37
    :cond_1
    invoke-static/range {p0 .. p1}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v8, v0, 0x80

    sput v8, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    :try_start_1
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v0

    throw v1

    .line 37
    :cond_3
    nop

    .line 65
    :goto_1
    nop

    .line 37
    int-to-byte v0, v6

    add-int/lit8 v8, v0, 0x1

    int-to-byte v8, v8

    int-to-byte v10, v8

    :try_start_2
    invoke-static {v0, v8, v10}, Lccsancom/san/az/getDownloadedList;->addDownloadListener(SSI)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget-object v8, Lccsancom/san/az/getDownloadedList;->removeDownloadListener:[B

    aget-byte v4, v8, v4

    sub-int/2addr v4, v2

    int-to-byte v4, v4

    add-int/lit8 v8, v4, -0x1

    int-to-byte v8, v8

    int-to-byte v10, v8

    invoke-static {v4, v8, v10}, Lccsancom/san/az/getDownloadedList;->addDownloadListener(SSI)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v4, p1

    :try_start_3
    invoke-virtual {v0, v4}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 65
    const/4 v0, 0x0

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 37
    const v0, 0x10008000

    .line 41
    invoke-virtual {v3, v0}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_3

    .line 37
    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-eqz v4, :cond_5

    throw v4

    :cond_5
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 47
    :goto_3
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/high16 v4, 0x8000000

    invoke-static {v1, v0, v3, v4}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v0

    .line 49
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v3

    .line 50
    new-instance v4, Lccsanandroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "san_notification_azed"

    invoke-static {v10}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v10

    invoke-direct {v4, v8, v10}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 51
    const-string v8, "san_notification_title"

    invoke-static {v8}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v11

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    invoke-static {v6}, Lccsanandroid/view/KeyEvent;->normalizeMetaState(I)I

    move-result v12

    add-int/lit16 v12, v12, -0x42ee

    const v13, 0x5a0d9264

    invoke-static {v6, v6}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v14

    add-int/2addr v14, v13

    invoke-static {v9, v6, v6}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v13

    rsub-int/lit8 v13, v13, -0x20

    int-to-short v13, v13

    const v15, -0x5d3d22b5

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    const-string v20, "san_notification_content"

    const-string v21, "san_notification_progressbar"

    const-string v2, "\u23e3\u0ae9\u7192\u58aa\u874f\uee6d\ud500\u3c24\u6a8f\u51cd\ub888\ue7a2\uce5f\u356f\u1c1b"

    cmp-long v22, v16, v18

    add-int v15, v22, v15

    invoke-static {v11, v12, v14, v13, v15}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, p2

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 52
    invoke-static/range {v20 .. v20}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6, v6}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v10

    int-to-byte v10, v10

    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v11

    cmpl-float v5, v11, v5

    rsub-int v5, v5, -0x42e2

    const v11, 0x5a0d9263

    invoke-static {v6, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v12

    cmp-long v14, v12, v18

    sub-int/2addr v11, v14

    invoke-static {v6, v6}, Lccsanandroid/view/KeyEvent;->getDeadChar(II)I

    move-result v12

    add-int/lit8 v12, v12, 0x4c

    int-to-short v12, v12

    const v13, -0x5d3d22a0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getZoomControlsTimeout()J

    move-result-wide v14

    cmp-long v16, v14, v18

    add-int v13, v16, v13

    invoke-static {v10, v5, v11, v12, v13}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v8, v5}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 53
    invoke-static/range {v21 .. v21}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5, v6, v6, v6}, Lccsanandroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    invoke-static {v9, v7}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;C)I

    move-result v5

    rsub-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    rsub-int v8, v8, -0x42fc

    const v10, 0x5a0d9280

    invoke-static {v6, v6}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionForChild(II)J

    move-result-wide v11

    cmp-long v13, v11, v18

    add-int/2addr v13, v10

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v10

    int-to-byte v10, v10

    add-int/lit8 v10, v10, -0x6

    int-to-short v10, v10

    const v11, -0x5d3d22f1

    invoke-static {v9, v7, v6}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v7

    add-int/2addr v7, v11

    invoke-static {v5, v8, v13, v10, v7}, Lccsancom/san/az/getDownloadedList;->IncentiveDownloadUtils(BIISI)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    .line 55
    invoke-static {v1, v5}, Lccsansan/bz/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v5

    .line 56
    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v5, v7}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-static/range {v18 .. v19}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionGroup(J)I

    move-result v7

    add-int/lit16 v7, v7, 0x2921

    invoke-static {v2, v7}, Lccsancom/san/az/getDownloadedList;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v5, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 59
    invoke-virtual {v5, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 60
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-virtual {v5, v7, v8}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 61
    invoke-virtual {v5, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentIntent(Lccsanandroid/app/PendingIntent;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 62
    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 63
    invoke-virtual {v5, v6}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 65
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v2, Lccsancom/san/az/getDownloadedList$addDownloadListener;

    invoke-direct {v2, v1, v3, v5}, Lccsancom/san/az/getDownloadedList$addDownloadListener;-><init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V

    invoke-virtual {v0, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1077
    sget-object v0, Lccsansan/d/deleteDownList;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1080
    :try_start_0
    sput p1, Lccsansan/d/deleteDownList;->unifiedDownload:I

    .line 1083
    array-length p1, p0

    new-array p1, p1, [C

    .line 1084
    const/4 v1, 0x0

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    :goto_0
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 1086
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v2, Lccsansan/d/deleteDownList;->getDownloadingList:I

    aget-char v2, p0, v2

    sget v3, Lccsansan/d/deleteDownList;->getDownloadingList:I

    sget v4, Lccsansan/d/deleteDownList;->unifiedDownload:I

    mul-int v3, v3, v4

    xor-int/2addr v2, v3

    int-to-long v2, v2

    sget-wide v4, Lccsancom/san/az/getDownloadedList;->addDownloadListener:J

    xor-long/2addr v2, v4

    long-to-int v3, v2

    int-to-char v2, v3

    aput-char v2, p1, v1

    .line 1084
    sget v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/deleteDownList;->getDownloadingList:I

    goto :goto_0

    .line 1090
    :cond_1
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, p1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1091
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 1

    .line 2
    nop

    .line 0
    if-nez p0, :cond_0

    .line 2
    sget p0, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x7d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    .line 1
    :cond_0
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    const v0, 0x332fbab

    .line 2
    invoke-virtual {p0, v0}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    sget p0, Lccsancom/san/az/getDownloadedList;->deleteDownItem:I

    add-int/lit8 p0, p0, 0x11

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/getDownloadedList;->getDownloadedList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_1

    const/16 p0, 0x46

    goto :goto_0

    :cond_1
    const/16 p0, 0x2a

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
    .packed-switch 0x2a
        :pswitch_0
    .end packed-switch
.end method
