.class final Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/az/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field private static IncentiveDownloadUtils:I

.field private static deleteDownItem:I

.field private static unifiedDownload:I


# instance fields
.field final synthetic addDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;

.field final synthetic getDownloadingList:I

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->deleteDownItem:I

    const/16 v0, 0xa0

    sput v0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;ILccsanandroidx/core/app/NotificationCompat$Builder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Context;

    iput p2, p0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:I

    iput-object p3, p0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method

.method private static addDownloadListener(IIIZLjava/lang/String;)Ljava/lang/String;
    .locals 6

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

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

    aget-char v3, p4, v3

    sput v3, Lccsansan/d/trackReportClick;->unifiedDownload:I

    .line 1131
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    sget v4, Lccsansan/d/trackReportClick;->unifiedDownload:I

    add-int/2addr v4, p1

    int-to-char v4, v4

    aput-char v4, v1, v3

    .line 1132
    sget v3, Lccsansan/d/trackReportClick;->removeDownloadListener:I

    aget-char v4, v1, v3

    sget v5, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:I

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
    if-lez p0, :cond_2

    .line 1138
    sput p0, Lccsansan/d/trackReportClick;->getDownloadingList:I

    .line 1140
    new-array p0, p2, [C

    .line 1142
    invoke-static {v1, v2, p0, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1143
    sget p1, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p1, p2, p1

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    invoke-static {p0, v2, v1, p1, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1144
    sget p1, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sget p4, Lccsansan/d/trackReportClick;->getDownloadingList:I

    sub-int p4, p2, p4

    invoke-static {p0, p1, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1148
    :cond_2
    if-eqz p3, :cond_4

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


# virtual methods
.method public callBackOnUIThread()V
    .locals 7

    .line 7
    nop

    .line 3
    sget v0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "notification"

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 3
    :catchall_0
    move-exception v0

    throw v0

    .line 1
    :cond_0
    iget-object v0, p0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    if-eqz v0, :cond_1

    const/16 v1, 0x3a

    goto :goto_0

    :cond_1
    const/16 v1, 0x2a

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 7
    :goto_1
    sget v1, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->deleteDownItem:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x5c

    if-lt v1, v2, :cond_2

    .line 1
    const/16 v1, 0x5b

    goto :goto_2

    :cond_2
    const/16 v1, 0x27

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 3
    :cond_3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    .line 1
    const/16 v1, 0x42

    goto :goto_3

    :cond_4
    const/16 v1, 0xf

    :goto_3
    packed-switch v1, :pswitch_data_2

    .line 3
    :pswitch_0
    const/4 v1, 0x0

    invoke-static {v1, v1}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x2

    invoke-static {v1}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x10c

    invoke-static {v1}, Lccsanandroid/graphics/Color;->blue(I)I

    move-result v4

    rsub-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    const-string v6, "\u0004\ufff9\ufff9\ufff6\u0004\u0001\u0003\u000c"

    invoke-static {v2, v3, v4, v5, v6}, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit8 v3, v3, 0x2

    invoke-static {v1, v1}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v1

    rsub-int v1, v1, 0x10b

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    add-int/lit8 v4, v4, 0x8

    invoke-static {v3, v1, v4, v5, v6}, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(IIIZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {v2, v1}, Lccsansan/bz/addDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 1
    sget v1, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload:I

    add-int/lit8 v1, v1, 0x2d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->deleteDownItem:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    .line 7
    :cond_5
    nop

    :goto_4
    :pswitch_1
    iget v1, p0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList:I

    iget-object v2, p0, Lccsancom/san/az/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    :cond_6
    :pswitch_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2a
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5b
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0xf
        :pswitch_1
    .end packed-switch
.end method
