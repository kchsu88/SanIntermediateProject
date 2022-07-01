.class public Lccsancom/san/reserve/service/removeDownloadListener;
.super Lccsanandroid/app/Service;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Ljava/lang/String; = ""

.field private static addDownloadListener:C = '\u0000'

.field private static deleteDownItem:C = '\u0000'

.field private static getDownloadStatusByUrl:I = 0x0

.field private static getDownloadedList:C = '\u0000'

.field private static getDownloadedRecordByUrl:I = 0x0

.field private static getDownloadingList:C = '\u0000'

.field public static removeDownloadListener:J = 0x0L

.field public static unifiedDownload:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    invoke-static {}, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload()V

    sget v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x9

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x45

    goto :goto_0

    :cond_0
    const/16 v0, 0x3d

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroid/app/Service;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils()V
    .locals 3

    .line 32
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x4d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 31
    :cond_0
    invoke-direct {p0}, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener()V

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    sget v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x21

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 5

    .line 10
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x35

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 3
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v3, "cancelAlarmManager"

    const-string v4, ""

    packed-switch v0, :pswitch_data_0

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v4}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    goto :goto_2

    .line 1
    :pswitch_0
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, v3, p1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 3
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1, v4, v4}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    const/16 v0, 0x33

    goto :goto_3

    :cond_2
    const/16 v0, 0x19

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_5

    .line 5
    :goto_4
    const-string v0, "notify_cancel"

    invoke-virtual {p1, v0}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 10
    nop

    .line 8
    :goto_5
    :pswitch_2
    sget-object p1, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v0, "3"

    invoke-static {p1, v0}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsancom/san/reserve/service/removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/reserve/service/removeDownloadListener;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 3
    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x1b

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    .line 10
    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x33
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;J)V
    .locals 5

    .line 30
    nop

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#createDelayAlarmManager: pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", closeTime="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ReserveNotifyService"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string p1, "alarm"

    .line 19
    invoke-virtual {p0, p1}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/AlarmManager;

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p2

    .line 21
    new-instance p2, Lccsanandroid/content/Intent;

    const-class p3, Lccsancom/san/reserve/service/ReserveAlarmService;

    invoke-direct {p2, p0, p3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const-string p3, "action_type"

    const-string v2, "check_reserve_time"

    .line 22
    invoke-virtual {p2, p3, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p3, "source_type"

    const-string v2, "notifyDelay"

    .line 23
    invoke-virtual {p2, p3, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/16 p3, 0x3eb

    const/high16 v2, 0x8000000

    .line 24
    invoke-static {p0, p3, p2, v2}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p2

    .line 25
    sget p3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt p3, v2, :cond_0

    .line 30
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 25
    nop

    .line 26
    invoke-virtual {p1, v4, v0, v1, p2}, Lccsanandroid/app/AlarmManager;->setExactAndAllowWhileIdle(IJLccsanandroid/app/PendingIntent;)V

    goto :goto_2

    :pswitch_0
    const/16 v2, 0x13

    if-lt p3, v2, :cond_1

    .line 30
    goto :goto_1

    :cond_1
    const/4 v3, 0x1

    :goto_1
    packed-switch v3, :pswitch_data_1

    .line 28
    nop

    .line 30
    invoke-virtual {p1, v4, v0, v1, p2}, Lccsanandroid/app/AlarmManager;->set(IJLccsanandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :pswitch_1
    sget p3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p3, p3, 0x41

    rem-int/lit16 v2, p3, 0x80

    sput v2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_2

    .line 26
    :cond_2
    nop

    .line 28
    :try_start_1
    invoke-virtual {p1, v4, v0, v1, p2}, Lccsanandroid/app/AlarmManager;->setExact(IJLccsanandroid/app/PendingIntent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 30
    :goto_2
    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x25

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    goto :goto_3

    :catch_0
    move-exception p1

    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;JLjava/lang/String;)V
    .locals 2

    .line 16
    nop

    .line 11
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v0

    const-string v1, "cancelAlarmManager"

    invoke-virtual {v0, v1, p1}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;J)V

    .line 14
    sget-object p1, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string p2, "2"

    invoke-static {p1, p2}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;

    invoke-direct {p2, p0, p4}, Lccsancom/san/reserve/service/removeDownloadListener$removeDownloadListener;-><init>(Lccsancom/san/reserve/service/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x21

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x5e

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    nop

    .line 33
    invoke-direct {p0}, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener()V

    .line 34
    invoke-direct {p0, p0}, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    sput-boolean p1, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    .line 36
    sget-object p1, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v0, "click"

    invoke-static {p0, p1, v0}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    sget-object p1, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    const-string v0, "1"

    invoke-static {p1, v0}, Lccsansan/aj/addDownloadListener;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p0, p2}, Lccsancom/san/reserve/service/removeDownloadListener$addDownloadListener;-><init>(Lccsancom/san/reserve/service/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/widget/RemoteViews;)V
    .locals 3

    .line 71
    nop

    .line 65
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, ".RESERVE_NOTIFY_SERVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    .line 66
    const-string v2, "notify_status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 67
    const-string v1, "notify_pkg_name"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 68
    const-string p2, "notify_show_des"

    invoke-virtual {v0, p2, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 69
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/16 p1, 0x3e8

    const/high16 p2, 0x8000000

    .line 70
    invoke-static {p0, p1, v0, p2}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    .line 71
    const-string p2, "san_default_text"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p4, p2, p1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x57

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private addDownloadListener()V
    .locals 6

    .line 36
    nop

    .line 24
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string v1, "default_reserve_notify_id"

    invoke-direct {v0, p0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 26
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 27
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/ab/addDownloadListener;->getDownloadingList()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    const/4 v3, -0x1

    .line 28
    invoke-virtual {v0, v3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 29
    invoke-virtual {v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v0

    .line 30
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    const/4 v5, 0x0

    if-lt v3, v4, :cond_0

    .line 36
    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v3, v3, 0x13

    rem-int/lit16 v4, v3, 0x80

    sput v4, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 30
    :cond_1
    nop

    .line 31
    const-string v3, "notification"

    invoke-virtual {p0, v3}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/NotificationManager;

    .line 32
    const-string v4, "default_reserve_notify_name"

    invoke-static {v1, v4}, Lccsansan/bz/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object v1

    invoke-virtual {v3, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 36
    sget v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x53

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_1

    .line 32
    :goto_2
    const v1, 0x323b9e9

    .line 34
    invoke-virtual {p0, v1, v0}, Lccsanandroid/app/Service;->startForeground(ILccsanandroid/app/Notification;)V

    .line 35
    invoke-virtual {p0, v2}, Lccsanandroid/app/Service;->stopForeground(Z)V

    .line 36
    sput-boolean v5, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 4

    .line 49
    nop

    .line 47
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const-string v1, "statusbar"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 40
    :try_start_0
    invoke-virtual {p1, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-gt v0, v1, :cond_0

    const/16 v0, 0x13

    goto :goto_0

    :cond_0
    const/16 v0, 0xb

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 40
    :cond_1
    invoke-virtual {p1, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 42
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-gt v0, v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    :goto_1
    packed-switch v0, :pswitch_data_1

    :goto_2
    goto :goto_3

    .line 43
    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "collapse"

    :try_start_1
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    goto :goto_4

    .line 45
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "collapsePanels"

    :try_start_2
    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :goto_4
    nop

    .line 49
    sget v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x7b

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    .line 47
    :try_start_3
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 45
    :cond_3
    nop

    .line 47
    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 49
    :goto_5
    goto :goto_6

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private addDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/widget/RemoteViews;)V
    .locals 3

    .line 85
    nop

    .line 80
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, ".RESERVE_NOTIFY_SERVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x5

    .line 81
    const-string v2, "notify_status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 82
    const-string v1, "notify_pkg_name"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 83
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/16 p1, 0x3ea

    const/high16 p2, 0x8000000

    .line 84
    invoke-static {p0, p1, v0, p2}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    .line 85
    const-string p2, "san_cancel_text"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p3, p2, p1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x33

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void
.end method

.method private static getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;
    .locals 12

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_0
    check-cast p0, [C

    .line 1105
    sget-object v0, Lccsansan/d/IncentiveSDK;->removeDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1107
    :try_start_0
    array-length v1, p0

    new-array v1, v1, [C

    .line 1109
    const/4 v2, 0x0

    sput v2, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1110
    const/4 v3, 0x2

    new-array v4, v3, [C

    .line 1111
    :goto_0
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    array-length v6, p0

    if-ge v5, v6, :cond_2

    .line 1113
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v5, p0, v5

    aput-char v5, v4, v2

    .line 1114
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    aget-char v5, p0, v5

    aput-char v5, v4, v6

    .line 1116
    const v5, 0xe370

    .line 1117
    const/4 v7, 0x0

    :goto_1
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 1119
    aget-char v8, v4, v6

    aget-char v9, v4, v2

    add-int/2addr v9, v5

    aget-char v10, v4, v2

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/reserve/service/removeDownloadListener;->deleteDownItem:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v6

    .line 1122
    aget-char v8, v4, v2

    aget-char v9, v4, v6

    add-int/2addr v9, v5

    aget-char v10, v4, v6

    shl-int/lit8 v10, v10, 0x4

    sget-char v11, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadingList:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    sub-int/2addr v8, v9

    int-to-char v8, v8

    aput-char v8, v4, v2

    .line 1126
    const v8, 0x9e37

    sub-int/2addr v5, v8

    .line 1117
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1128
    :cond_1
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    aget-char v7, v4, v2

    aput-char v7, v1, v5

    .line 1129
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v6

    aget-char v6, v4, v6

    aput-char v6, v1, v5

    .line 1130
    sget v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    add-int/2addr v5, v3

    sput v5, Lccsansan/d/IncentiveSDK;->addDownloadListener:I

    .line 1131
    goto :goto_0

    .line 1134
    :cond_2
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2, p1}, Ljava/lang/String;-><init>([CII)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1135
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_3

    :goto_2
    throw p0

    :goto_3
    goto :goto_2
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 23
    nop

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Lccsanandroid/widget/RemoteViews;

    move-result-object p1

    .line 2
    new-instance p2, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string p3, "reserve_notification_id"

    invoke-direct {p2, p0, p3}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p4

    iget p4, p4, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {p2, p4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 4
    invoke-virtual {p2, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContent(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 5
    const/4 p4, 0x0

    invoke-virtual {p2, p4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 6
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setWhen(J)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    const/4 v1, -0x1

    .line 8
    invoke-virtual {p2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 9
    invoke-virtual {p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object p2

    const/16 v1, 0x62

    .line 10
    iput v1, p2, Lccsanandroid/app/Notification;->flags:I

    .line 11
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    .line 23
    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 12
    iput-object p1, p2, Lccsanandroid/app/Notification;->bigContentView:Lccsanandroid/widget/RemoteViews;

    goto :goto_1

    .line 14
    :pswitch_0
    iput-object p1, p2, Lccsanandroid/app/Notification;->contentView:Lccsanandroid/widget/RemoteViews;

    :goto_1
    const/16 p1, 0x1a

    if-lt v1, p1, :cond_1

    .line 23
    const/4 p4, 0x1

    goto :goto_2

    :cond_1
    nop

    :goto_2
    packed-switch p4, :pswitch_data_1

    goto :goto_3

    :pswitch_1
    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x23

    rem-int/lit16 p4, p1, 0x80

    sput p4, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_2

    .line 14
    :cond_2
    nop

    .line 17
    const-string p1, "notification"

    invoke-virtual {p0, p1}, Lccsanandroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/NotificationManager;

    .line 18
    const-string p4, "reserve_notification_name"

    invoke-static {p3, p4}, Lccsansan/bz/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/app/NotificationChannel;

    move-result-object p3

    invoke-virtual {p1, p3}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    :goto_3
    const p1, 0x323b9e8

    .line 20
    invoke-virtual {p0, p1, p2}, Lccsanandroid/app/Service;->startForeground(ILccsanandroid/app/Notification;)V

    .line 21
    sput-boolean v0, Lccsancom/san/reserve/service/removeDownloadListener;->unifiedDownload:Z

    .line 22
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 23
    const-string p2, "show"

    invoke-static {p0, p1, p2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x29

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLccsanandroid/widget/RemoteViews;)V
    .locals 3

    .line 79
    nop

    .line 72
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, ".RESERVE_NOTIFY_SERVICE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x4

    .line 73
    const-string v2, "notify_status"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 74
    const-string v1, "notify_pkg_name"

    invoke-virtual {v0, v1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 75
    const-string p2, "notify_reserve_close_time"

    invoke-virtual {v0, p2, p4, p5}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;J)Lccsanandroid/content/Intent;

    .line 76
    const-string p2, "notify_show_des"

    invoke-virtual {v0, p2, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 77
    invoke-virtual {v0, p1}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/16 p1, 0x3e9

    const/high16 p2, 0x8000000

    .line 78
    invoke-static {p0, p1, v0, p2}, Lccsanandroid/app/PendingIntent;->getService(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    .line 79
    const-string p2, "san_one_day_later_text"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p6, p2, p1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 p1, 0x9

    :try_start_0
    div-int/2addr p1, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private unifiedDownload(Ljava/lang/String;Ljava/lang/String;J)Lccsanandroid/widget/RemoteViews;
    .locals 9

    .line 64
    nop

    .line 50
    invoke-virtual {p0}, Lccsanandroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 51
    new-instance v8, Lccsanandroid/widget/RemoteViews;

    const-string v0, "san_reserve_notify"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v8, v7, v0}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 52
    const-string v0, "san_notify_bg"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    const-string v1, "san_ads_notify_white_bg"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v1

    const-string v2, "setBackgroundResource"

    invoke-virtual {v8, v0, v2, v1}, Lccsanandroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 53
    const-string v0, "san_image_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v8, v0, v1}, Lccsanandroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 54
    const-string v0, "wait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/16 v0, 0x16

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    const-string v1, "san_one_day_later_text"

    const-string v2, "san_tv_title"

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x6f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_1

    .line 56
    :pswitch_0
    nop

    .line 58
    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v3}, Lccsanandroid/graphics/Color;->alpha(I)I

    move-result v3

    rsub-int/lit8 v3, v3, 0x17

    const-string v4, "\u979a\u28f3\u3ef8\u119d\u858b\u986d\u9e6c\uc677\uc9d2\udae6\uea6d\u291c\u6dc1\ud5e2\udc6c\uf1dd\u7067\u8d1e\uf838\u3d5e\ubbae\ue13a\u1958\ucc57"

    invoke-static {v4, v3}, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 59
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v8, v0, p1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_3

    .line 54
    :cond_1
    :goto_1
    nop

    .line 55
    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatTimeout()I

    move-result v2

    shr-int/lit8 v2, v2, 0x10

    add-int/lit8 v2, v2, 0x1a

    const-string v3, "\u979a\u28f3\u3ef8\u119d\u858b\u986d\u9e6c\uc677\uc9d2\udae6\uea6d\u291c\u6dc1\ud5e2\udc6c\uf1dd\u7067\u8d1e\uf838\u3d5e\ua47d\uaf9a\u07f6\u2215\u8b18\u30ee"

    invoke-static {v3, v2}, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadingList(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v0, v2}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 56
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/app/Service;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const-string v2, "san_reserve_notify_moment_later"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v0, v1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 64
    sget v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x73

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_2

    const/16 v0, 0x11

    goto :goto_2

    :cond_2
    const/16 v0, 0xb

    :goto_2
    packed-switch v0, :pswitch_data_1

    .line 62
    :goto_3
    :pswitch_1
    invoke-direct {p0, v7, p2, p1, v8}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/widget/RemoteViews;)V

    .line 63
    move-object v0, p0

    move-object v1, v7

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLccsanandroid/widget/RemoteViews;)V

    .line 64
    invoke-direct {p0, v7, p2, v8}, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/widget/RemoteViews;)V

    return-object v8

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_1
    .end packed-switch
.end method

.method static unifiedDownload()V
    .locals 1

    const/16 v0, 0x489a

    sput-char v0, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener:C

    const/16 v0, 0xf30

    sput-char v0, Lccsancom/san/reserve/service/removeDownloadListener;->deleteDownItem:C

    const/16 v0, 0x40fb

    sput-char v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedList:C

    const v0, 0xb601

    sput-char v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadingList:C

    return-void
.end method


# virtual methods
.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 2

    sget v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x7

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/16 v0, 0x3f

    goto :goto_0

    :cond_0
    const/16 v0, 0x35

    :goto_0
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
    const/4 v1, 0x0

    :try_start_0
    array-length v1, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    return-object v0

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x35
        :pswitch_0
    .end packed-switch
.end method

.method public onBind(Lccsanandroid/content/Intent;)Lccsanandroid/os/IBinder;
    .locals 3

    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v0, p1, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x9

    :try_start_0
    div-int/2addr v0, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    throw p1

    :goto_1
    add-int/lit8 p1, p1, 0x55

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :cond_1
    const/4 p1, 0x0

    packed-switch v1, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object p1

    :goto_2
    :try_start_1
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p1

    throw p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public onStartCommand(Lccsanandroid/content/Intent;II)I
    .locals 4

    .line 24
    nop

    .line 0
    const/4 p2, 0x2

    if-eqz p1, :cond_8

    .line 24
    sget p3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p3, p3, 0x3d

    rem-int/lit16 v0, p3, 0x80

    sput v0, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/2addr p3, p2

    if-eqz p3, :cond_0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p3

    if-nez p3, :cond_1

    .line 24
    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-direct {p0}, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener()V

    .line 6
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p3

    const-string v0, "notify_status"

    invoke-virtual {p3, v0}, Lccsanandroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p3

    .line 7
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v0

    const-string v1, "notify_pkg_name"

    invoke-virtual {v0, v1}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object v1

    const-string v2, "notify_show_des"

    invoke-virtual {v1, v2}, Lccsanandroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getExtras()Lccsanandroid/os/Bundle;

    move-result-object p1

    const-string v2, "notify_reserve_close_time"

    invoke-virtual {p1, v2}, Lccsanandroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    const/4 p1, 0x1

    if-ne p3, p1, :cond_2

    .line 11
    invoke-direct {p0, v1, v0, v2, v3}, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_3

    :cond_2
    if-ne p3, p2, :cond_3

    .line 24
    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 13
    const/4 p1, 0x3

    if-ne p3, p1, :cond_5

    goto :goto_1

    .line 24
    :pswitch_0
    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x3f

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr p1, p2

    if-nez p1, :cond_4

    .line 13
    :cond_4
    invoke-direct {p0}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils()V

    goto :goto_3

    .line 15
    :goto_1
    invoke-direct {p0, v0, v1}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p1, p1, 0x1f

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/2addr p1, p2

    goto :goto_3

    .line 15
    :cond_5
    const/4 p1, 0x4

    if-ne p3, p1, :cond_6

    .line 24
    const/16 p1, 0x25

    goto :goto_2

    :cond_6
    const/16 p1, 0x39

    :goto_2
    packed-switch p1, :pswitch_data_1

    .line 17
    invoke-direct {p0}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils()V

    .line 19
    invoke-direct {p0, v0, v2, v3, v1}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const/4 p1, 0x5

    if-ne p3, p1, :cond_7

    .line 21
    invoke-direct {p0}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils()V

    .line 23
    invoke-direct {p0, v0}, Lccsancom/san/reserve/service/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 24
    sget p1, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x13

    rem-int/lit16 p3, p1, 0x80

    sput p3, Lccsancom/san/reserve/service/removeDownloadListener;->getDownloadStatusByUrl:I

    rem-int/2addr p1, p2

    .line 23
    :cond_7
    :goto_3
    return p2

    .line 24
    :cond_8
    :goto_4
    invoke-direct {p0}, Lccsancom/san/reserve/service/removeDownloadListener;->addDownloadListener()V

    return p2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x39
        :pswitch_1
    .end packed-switch
.end method
