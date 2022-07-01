.class public Lccsansan/b/addDownloadListener;
.super Lccsanandroid/app/Service;
.source ""


# static fields
.field public static IncentiveDownloadUtils:Z = false

.field private static addDownloadListener:I

.field private static getDownloadingList:J

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    invoke-static {}, Lccsansan/b/addDownloadListener;->removeDownloadListener()V

    sget v0, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x71

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 8

    .line 22
    nop

    .line 1
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->getDownloadStatusByUrl()Lccsanandroid/widget/RemoteViews;

    move-result-object v0

    .line 2
    new-instance v1, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string v2, "ad_alive_notification_id"

    invoke-direct {v1, p0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget v3, v3, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v1, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 4
    invoke-virtual {v1, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 5
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v4, 0x0

    .line 6
    invoke-virtual {v1, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 7
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v4

    invoke-virtual {v4}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    const/4 v4, -0x1

    .line 8
    invoke-virtual {v1, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v1

    const/16 v4, 0x62

    .line 10
    iput v4, v1, Lccsanandroid/app/Notification;->flags:I

    .line 11
    sget v4, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x10

    if-lt v4, v5, :cond_1

    .line 22
    sget v6, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v6, v6, 0x3

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v6, v6, 0x2

    if-nez v6, :cond_0

    .line 12
    const/16 v6, 0xf

    goto :goto_0

    :cond_0
    const/16 v6, 0x50

    :goto_0
    iput-object v0, v1, Lccsanandroid/app/Notification;->bigContentView:Lccsanandroid/widget/RemoteViews;

    packed-switch v6, :pswitch_data_0

    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :pswitch_0
    goto :goto_1

    :catchall_0
    move-exception v0

    throw v0

    .line 14
    :cond_1
    iput-object v0, v1, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    :goto_1
    const/16 v0, 0x1a

    if-lt v4, v0, :cond_2

    .line 12
    const/16 v0, 0x19

    goto :goto_2

    :cond_2
    const/16 v0, 0x46

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget v0, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x67

    rem-int/lit16 v4, v0, 0x80

    sput v4, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 14
    :cond_3
    nop

    .line 17
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 18
    const-string v4, "ad_alive_notification_name"

    invoke-static {v2, v4}, Lccsansan/b/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    :goto_3
    const v0, 0x323b600

    .line 20
    invoke-virtual {p0, v0, v1}, Lccsanandroid/app/Service;->startForeground(ILccsanandroid/app/Notification;)V

    .line 21
    sput-boolean v3, Lccsansan/b/addDownloadListener;->IncentiveDownloadUtils:Z

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v0

    shr-int/2addr v0, v5

    add-int/lit16 v0, v0, 0x2e5b

    const-string v1, "\uf16c\udf3a\uadd2\u7a6a\u4804\u1695\ue74e\ub500\u83a5\u5061\u3eea\u0c8a\udd3a\uabe6\u7996\u4634\u14d1"

    invoke-static {v1, v0}, Lccsansan/b/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lccsansan/ak/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x50
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x19
        :pswitch_1
    .end packed-switch
.end method

.method private addDownloadListener()V
    .locals 6

    .line 12
    nop

    .line 1
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string v1, "default_ad_alive_notify_id"

    invoke-direct {v0, p0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 3
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 4
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, -0x1

    .line 5
    invoke-virtual {v0, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    .line 7
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/16 v5, 0x5e

    if-lt v3, v4, :cond_0

    .line 9
    const/16 v3, 0x25

    goto :goto_0

    :cond_0
    const/16 v3, 0x5e

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 12
    :pswitch_0
    sget v3, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v3, v3, 0x39

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_1

    .line 9
    const/16 v5, 0x58

    goto :goto_1

    :cond_1
    nop

    :goto_1
    const-string v3, "default_ad_alive_notify_name"

    const-string v4, "notification"

    packed-switch v5, :pswitch_data_1

    .line 12
    nop

    .line 8
    invoke-virtual {p0, v4}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/app/NotificationManager;

    .line 9
    invoke-static {v1, v3}, Lccsansan/b/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v4, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    goto :goto_2

    .line 7
    :pswitch_1
    nop

    .line 8
    invoke-virtual {p0, v4}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsanandroid/app/NotificationManager;

    .line 9
    invoke-static {v1, v3}, Lccsansan/b/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v4, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    goto :goto_3

    :goto_2
    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    :goto_3
    sget v1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x69

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    goto :goto_4

    :catchall_0
    move-exception v0

    throw v0

    .line 9
    :cond_2
    :goto_4
    const v1, 0x323b601

    .line 11
    invoke-virtual {p0, v1, v0}, Lccsanandroid/app/Service;->startForeground(ILccsanandroid/app/Notification;)V

    .line 12
    invoke-virtual {p0, v2}, Lccsanandroid/app/Service;->stopForeground(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5e
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadStatusByUrl()Lccsanandroid/widget/RemoteViews;
    .locals 6

    .line 8
    nop

    .line 1
    invoke-virtual {p0}, Lccsanandroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Lccsanandroid/widget/RemoteViews;

    const-string v2, "san_ad_keep_in_notify"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 3
    const-string v2, "san_alive_notify_bg"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    const-string v4, "san_keep_in_notify_bg"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v4

    const-string v5, "setBackgroundResource"

    invoke-virtual {v1, v3, v5, v4}, Lccsanandroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 4
    new-instance v3, Lccsanandroid/content/Intent;

    const-string v4, ".ALIVE_NOTIFY_SERVICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x3

    .line 5
    const-string v5, "notify_status"

    invoke-virtual {v3, v5, v4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 6
    invoke-virtual {v3, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/16 v0, 0x3e9

    const/high16 v4, 0x8000000

    .line 7
    invoke-static {p0, v0, v3, v4}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v0

    .line 8
    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2, v0}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    sget v0, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5b

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object v1
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-wide v4, Lccsansan/b/addDownloadListener;->getDownloadingList:J

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

.method private getDownloadingList()V
    .locals 3

    .line 4
    sget v0, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->addDownloadListener()V

    .line 2
    invoke-direct {p0, p0}, Lccsansan/b/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lccsansan/b/addDownloadListener;->IncentiveDownloadUtils:Z

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollFriction()F

    move-result v0

    const/4 v1, 0x0

    const-string v2, "\uf16c\udf3a\uadd2\u7a6a\u4804\u1695\ue74e\ub500\u83a5\u5061\u3eea\u0c8a\udd3a\uabe6\u7996\u4634\u14d1"

    cmpl-float v0, v0, v1

    rsub-int v0, v0, 0x2e5c

    invoke-static {v2, v0}, Lccsansan/b/addDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lccsansan/ak/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    sget v0, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x41

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method static removeDownloadListener()V
    .locals 2

    const-wide v0, 0x5864db2b4365f10dL    # 6.574186559684219E117

    sput-wide v0, Lccsansan/b/addDownloadListener;->getDownloadingList:J

    return-void
.end method

.method private unifiedDownload()V
    .locals 2

    .line 3
    sget v0, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 1
    :cond_0
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->addDownloadListener()V

    .line 2
    invoke-direct {p0, p0}, Lccsansan/b/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)V

    const/4 v0, 0x0

    .line 3
    sput-boolean v0, Lccsansan/b/addDownloadListener;->IncentiveDownloadUtils:Z

    sget v0, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0xf

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 4

    .line 13
    nop

    .line 0
    :try_start_0
    const-string v0, "statusbar"

    .line 4
    invoke-virtual {p1, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_0

    .line 7
    const/16 v0, 0x38

    goto :goto_0

    :cond_0
    const/16 v0, 0x31

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 13
    :pswitch_0
    sget v0, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v2, v0, 0x80

    sput v2, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 7
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v3, "collapse"

    packed-switch v0, :pswitch_data_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_2

    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_4

    :goto_2
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 9
    :goto_3
    const-string v2, "collapsePanels"

    :try_start_2
    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 7
    sget v2, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x27

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 13
    :cond_2
    :goto_4
    nop

    .line 7
    sget v2, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x4f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 9
    :cond_3
    nop

    .line 11
    :try_start_3
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_5

    .line 13
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 4

    sget v0, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x38

    :goto_0
    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Lccsanandroid/app/Service;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_1

    :pswitch_0
    invoke-super {p0}, Lccsanandroid/app/Service;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    goto :goto_2

    :goto_1
    :try_start_0
    array-length v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    sget v2, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x33

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    const/16 v2, 0x2f

    goto :goto_3

    :cond_1
    const/16 v2, 0x15

    :goto_3
    packed-switch v2, :pswitch_data_1

    return-object v0

    :pswitch_1
    :try_start_1
    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    :catchall_1
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x38
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2f
        :pswitch_1
    .end packed-switch
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 2

    sget p1, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p1, 0x0

    add-int/lit8 v0, v0, 0x23

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return-object p1
.end method

.method public onStartCommand(Lccsanandroid/content/Intent;II)I
    .locals 0

    .line 13
    nop

    .line 0
    if-eqz p1, :cond_0

    .line 8
    const/16 p2, 0x5d

    goto :goto_0

    :cond_0
    const/16 p2, 0x5c

    :goto_0
    const/4 p3, 0x2

    packed-switch p2, :pswitch_data_0

    .line 1
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p2

    if-nez p2, :cond_1

    .line 13
    :pswitch_0
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->addDownloadListener()V

    return p3

    .line 5
    :cond_1
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->addDownloadListener()V

    .line 6
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string p2, "notify_status"

    invoke-virtual {p1, p2}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 13
    sget p1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x7d

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/2addr p1, p3

    if-nez p1, :cond_2

    .line 8
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->IncentiveDownloadUtils()V

    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    .line 13
    :catchall_0
    move-exception p1

    throw p1

    .line 8
    :cond_2
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->IncentiveDownloadUtils()V

    goto :goto_3

    :cond_3
    if-ne p1, p3, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_1
    packed-switch p2, :pswitch_data_1

    .line 10
    const/4 p2, 0x3

    if-ne p1, p2, :cond_6

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->unifiedDownload()V

    goto :goto_3

    .line 8
    :goto_2
    sget p1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0x61

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/2addr p1, p3

    if-nez p1, :cond_5

    .line 12
    :cond_5
    invoke-direct {p0}, Lccsansan/b/addDownloadListener;->getDownloadingList()V

    .line 8
    sget p1, Lccsansan/b/addDownloadListener;->removeDownloadListener:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsansan/b/addDownloadListener;->addDownloadListener:I

    rem-int/2addr p1, p3

    .line 13
    nop

    .line 12
    :cond_6
    :goto_3
    return p3

    nop

    :pswitch_data_0
    .packed-switch 0x5c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
