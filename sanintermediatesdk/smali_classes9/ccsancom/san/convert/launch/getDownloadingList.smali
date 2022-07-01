.class public Lccsancom/san/convert/launch/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Lccsancom/san/convert/launch/getDownloadingList;


# instance fields
.field private removeDownloadListener:Lccsancom/san/convert/launch/IncentiveDownloadUtils;

.field private unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsancom/san/convert/launch/getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/convert/launch/getDownloadingList;-><init>()V

    sput-object v0, Lccsancom/san/convert/launch/getDownloadingList;->addDownloadListener:Lccsancom/san/convert/launch/getDownloadingList;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/convert/launch/getDownloadingList;->removeDownloadListener:Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    .line 3
    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Lccsancom/san/convert/launch/getDownloadingList;->unifiedDownload:J

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;
    .locals 3

    .line 12
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    const-string v1, "launch_is_background"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 13
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->getDownloadedRecordByUrl()Z

    move-result v0

    const-string v1, "launch_lock_screen"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 14
    invoke-static {}, Lccsansan/bw/getMinIntervalToReturn;->deleteDownItem()Z

    move-result v0

    const-string v1, "launch_draw_overlay"

    invoke-virtual {p1, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "launch_time"

    invoke-virtual {p1, v2, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;J)Lccsanandroid/content/Intent;

    return-object p1
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;
    .locals 5

    .line 43
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Lccsanandroid/content/pm/ApplicationInfo;->logo:I

    .line 44
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    if-nez v0, :cond_0

    move v0, v1

    .line 48
    :cond_0
    new-instance v2, Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    const-string v4, "Y2hhbm5lbF9pZF9jb252ZXJ0"

    invoke-direct {v2, v3, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v1

    .line 50
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v0}, Lccsanandroid/graphics/BitmapFactory;->decodeResource(Lccsanandroid/content/res/Resources;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Lccsanandroid/graphics/Bitmap;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 51
    invoke-virtual {v0, p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 52
    invoke-virtual {p2, p3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 53
    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setPriority(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 54
    const-string v0, "alarm"

    invoke-virtual {p2, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 55
    invoke-virtual {p2, p3}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 56
    invoke-virtual {p2, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 57
    invoke-virtual {p2, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 58
    invoke-virtual {p2, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCustomHeadsUpContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    return-object p1
.end method

.method private addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/widget/RemoteViews;
    .locals 3

    .line 27
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    new-instance v0, Lccsanandroid/widget/RemoteViews;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "san_convert_notification"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 29
    const-string v1, "san_notification_cover"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-static {p4}, Lccsanandroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object p4

    invoke-virtual {v0, v1, p4}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 31
    :cond_0
    new-instance v0, Lccsanandroid/widget/RemoteViews;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v1, "san_convert_notification_small"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p4, v1}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 33
    :goto_0
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v1, "san_notification_icon"

    if-nez p4, :cond_1

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_1

    .line 34
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p4

    invoke-static {p3}, Lccsanandroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3}, Lccsansan/by/addDownloadListener;->addDownloadListener(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {v0, p4, p3}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    goto :goto_1

    :cond_1
    nop

    .line 36
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p3

    const/4 p4, 0x1

    const-string v1, "sym_def_app_icon"

    invoke-static {v1, p4}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;Z)I

    move-result p4

    invoke-virtual {v0, p3, p4}, Lccsanandroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1
    nop

    .line 38
    const-string p3, "san_notification_up"

    invoke-static {p3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p3

    const-string p4, "san_icon_up"

    invoke-static {p4}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {v0, p3, p4}, Lccsanandroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 39
    const-string p3, "san_notification_title"

    invoke-static {p3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3, p1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 40
    const-string p1, "san_notification_description"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, p2}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 41
    const-string p1, "san_notification_index"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/32 v1, 0xd9038

    rem-long/2addr p2, v1

    const-wide/32 v1, 0x1b207

    add-long/2addr p2, v1

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 42
    const-string p1, "san_notification_button"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, p5}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object v0
.end method

.method private addDownloadListener(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)V
    .locals 4

    .line 64
    const-string v0, "launch_is_background"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 65
    const-string v2, "launch_lock_screen"

    invoke-virtual {p2, v2, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 66
    const-string v3, "launch_draw_overlay"

    invoke-virtual {p2, v3, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 67
    invoke-static {p1, v0, v2, p2, p3}, Lccsansan/bh/getDownloadingList;->getDownloadingList(Ljava/lang/String;ZZZLccsancom/san/convert/database/ConvertIntent;)V

    return-void
.end method

.method public static getDownloadingList()Lccsancom/san/convert/launch/getDownloadingList;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/convert/launch/getDownloadingList;->addDownloadListener:Lccsancom/san/convert/launch/getDownloadingList;

    return-object v0
.end method

.method private unifiedDownload(Lccsanandroid/content/Intent;)Lccsanandroid/app/PendingIntent;
    .locals 3

    .line 23
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0, p1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    .line 24
    const-string p1, "launch_way"

    const-string v1, "click_notification"

    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 25
    invoke-direct {p0, v0}, Lccsancom/san/convert/launch/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 26
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x20000000

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p1, v2}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p1

    return-object p1
.end method

.method private unifiedDownload(Lccsanandroid/app/NotificationManager;)V
    .locals 4

    .line 59
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 60
    new-instance v0, Lccsanandroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "Y2hhbm5lbF9pZF9jb252ZXJ0"

    const-string v3, "Y2hhbm5lbF9uYW1lX2NvbnZlcnQ="

    invoke-direct {v0, v2, v3, v1}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 61
    const-string v1, "Y2hhbm5lbF9kZXNjcmlwdGlvbl9jb252ZXJ0"

    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1, v0}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    const/4 p1, 0x1

    .line 63
    invoke-virtual {v0, p1}, Lccsanandroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsancom/san/convert/launch/getDownloadingList;->unifiedDownload:J

    return-wide v0
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)Lccsanandroid/content/Intent;
    .locals 8

    .line 2
    const-string v0, "launch_way"

    const-string v1, "notification"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 6
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->getDownloadedCount()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportClick()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->trackReportShow()Ljava/lang/String;

    move-result-object v7

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lccsancom/san/convert/launch/getDownloadingList;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/widget/RemoteViews;

    move-result-object v2

    .line 7
    invoke-direct {p0, p1}, Lccsancom/san/convert/launch/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Intent;)Lccsanandroid/app/PendingIntent;

    move-result-object v3

    .line 8
    const-string v4, "san_notification_layout"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 9
    const-string v4, "san_notification_button"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 11
    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->pause()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lccsancom/san/convert/database/ConvertIntent;->deleteDownList()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lccsancom/san/convert/launch/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 13
    invoke-direct {p0, v0}, Lccsancom/san/convert/launch/getDownloadingList;->unifiedDownload(Lccsanandroid/app/NotificationManager;)V

    .line 15
    invoke-direct {p0, p1}, Lccsancom/san/convert/launch/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 16
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, p1, v5}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v3

    .line 17
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Lccsanandroid/app/PendingIntent;Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 19
    const v3, 0xabcdef

    invoke-virtual {v0, v3}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    .line 20
    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    .line 22
    invoke-direct {p0, v1, p1, p2}, Lccsancom/san/convert/launch/getDownloadingList;->addDownloadListener(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)V

    return-object p1
.end method

.method public addDownloadListener()Lccsancom/san/convert/launch/IncentiveDownloadUtils;
    .locals 1

    .line 16
    iget-object v0, p0, Lccsancom/san/convert/launch/getDownloadingList;->removeDownloadListener:Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    return-object v0
.end method

.method public addDownloadListener(Lccsancom/san/convert/launch/IncentiveDownloadUtils;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lccsancom/san/convert/launch/getDownloadingList;->removeDownloadListener:Lccsancom/san/convert/launch/IncentiveDownloadUtils;

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)Lccsanandroid/content/Intent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, "launch_way"

    const-string v1, "code"

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 2
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-direct {p0, p1}, Lccsancom/san/convert/launch/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 5
    invoke-virtual {v0, p1}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/san/convert/launch/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 8
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    :goto_0
    nop

    .line 11
    invoke-direct {p0, v1, p1, p2}, Lccsancom/san/convert/launch/getDownloadingList;->addDownloadListener(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsancom/san/convert/database/ConvertIntent;)V

    return-object p1
.end method
