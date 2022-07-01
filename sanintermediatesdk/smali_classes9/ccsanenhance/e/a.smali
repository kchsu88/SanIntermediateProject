.class public Lccsanenhance/e/a;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static a:Lccsanenhance/e/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Lccsanandroid/content/Intent;)Lccsanandroid/app/PendingIntent;
    .locals 3

    .line 35
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-direct {v0, p0}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Intent;)V

    .line 36
    const-string p0, "launch_way"

    const-string v1, "click_notification"

    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 37
    invoke-static {v0}, Lccsanenhance/e/a;->b(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p0

    .line 38
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x20000000

    const/high16 v2, 0x8000000

    invoke-static {v0, v1, p0, v2}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccsanandroid/content/Intent;Lccsanenhance/b/b;)Lccsanandroid/content/Intent;
    .locals 8

    .line 1
    const-string v0, "launch_way"

    const-string v1, "notification"

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 3
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 6
    invoke-virtual {p1}, Lccsanenhance/b/b;->m()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-virtual {p1}, Lccsanenhance/b/b;->p()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p1}, Lccsanenhance/b/b;->g()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-virtual {p1}, Lccsanenhance/b/b;->h()Ljava/lang/String;

    move-result-object v5

    .line 10
    invoke-virtual {p1}, Lccsanenhance/b/b;->e()Ljava/lang/String;

    move-result-object v6

    .line 11
    invoke-virtual {p1}, Lccsanenhance/b/b;->a()Ljava/lang/String;

    move-result-object v7

    .line 12
    invoke-static/range {v2 .. v7}, Lccsanenhance/e/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/widget/RemoteViews;

    move-result-object v2

    .line 19
    invoke-static {p0}, Lccsanenhance/e/a;->a(Lccsanandroid/content/Intent;)Lccsanandroid/app/PendingIntent;

    move-result-object v3

    .line 20
    const-string v4, "enhance_notification_layout"

    invoke-static {v4}, Lccsanenhance/g/h;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 21
    const-string v4, "enhance_notification_button"

    invoke-static {v4}, Lccsanenhance/g/h;->b(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v3}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 23
    invoke-virtual {p1}, Lccsanenhance/b/b;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lccsanenhance/b/b;->g()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lccsanenhance/e/a;->a(Lccsanandroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v2

    .line 25
    invoke-static {v0}, Lccsanenhance/e/a;->a(Lccsanandroid/app/NotificationManager;)V

    .line 27
    invoke-static {p0}, Lccsanenhance/e/a;->b(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p0

    .line 28
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, 0x8000000

    invoke-static {v3, v4, p0, v5}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v3

    .line 29
    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Lccsanandroid/app/PendingIntent;Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    .line 31
    const v3, 0xabcdef

    invoke-virtual {v0, v3}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    .line 32
    invoke-virtual {v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    .line 34
    invoke-static {v1, p0, p1}, Lccsanenhance/e/a;->a(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanenhance/b/b;)V

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/widget/RemoteViews;
    .locals 1

    .line 39
    new-instance p2, Lccsanandroid/widget/RemoteViews;

    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object p4

    invoke-virtual {p4}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    const-string v0, "en_hance_launchsdk_convert_notification_small"

    invoke-static {v0}, Lccsanenhance/g/h;->c(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, p4, v0}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 44
    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const/4 v0, 0x0

    if-nez p4, :cond_0

    new-instance p4, Ljava/io/File;

    invoke-direct {p4, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4}, Ljava/io/File;->exists()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 45
    invoke-static {p3}, Lccsanandroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Lccsanandroid/graphics/Bitmap;

    move-result-object p3

    invoke-static {p3}, Lccsanenhance/g/d;->a(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    :cond_0
    nop

    .line 48
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 49
    invoke-static {p0}, Lccsanenhance/g/c;->a(Ljava/lang/String;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p3

    goto :goto_0

    .line 48
    :cond_1
    move-object p3, v0

    .line 49
    :goto_0
    if-eqz p3, :cond_3

    .line 52
    invoke-static {p3}, Lccsanenhance/g/d;->a(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 55
    invoke-static {p3}, Lccsanenhance/g/d;->a(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_1

    .line 52
    :cond_2
    move-object p3, v0

    .line 55
    :goto_1
    if-eqz p3, :cond_3

    move-object v0, p3

    goto :goto_2

    :cond_3
    nop

    :goto_2
    const/4 p3, 0x1

    const-string p4, "enhance_notification_icon"

    if-eqz v0, :cond_4

    .line 63
    invoke-static {p4}, Lccsanenhance/g/h;->b(Ljava/lang/String;)I

    move-result p4

    invoke-virtual {p2, p4, v0}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    goto :goto_3

    :cond_4
    nop

    .line 65
    invoke-static {p4}, Lccsanenhance/g/h;->b(Ljava/lang/String;)I

    move-result p4

    const-string v0, "sym_def_app_icon"

    invoke-static {v0, p3}, Lccsanenhance/g/h;->b(Ljava/lang/String;Z)I

    move-result v0

    invoke-virtual {p2, p4, v0}, Lccsanandroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 69
    :goto_3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-eqz p4, :cond_5

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_5

    .line 70
    invoke-static {p0}, Lccsanenhance/g/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_5
    nop

    .line 72
    const-string p0, "enhance_notification_title"

    invoke-static {p0}, Lccsanenhance/g/h;->b(Ljava/lang/String;)I

    move-result p0

    invoke-static {}, Lccsanenhance/a/a;->b()Ljava/lang/String;

    move-result-object p4

    new-array p3, p3, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p1, p3, v0

    invoke-static {p4, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p0, p1}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 82
    invoke-static {p5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const-string p5, "Open"

    .line 85
    :cond_6
    const-string p0, "enhance_notification_button"

    invoke-static {p0}, Lccsanenhance/g/h;->b(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0, p5}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    return-object p2
.end method

.method public static a(Lccsanandroid/widget/RemoteViews;Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;
    .locals 3

    .line 86
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$Builder;

    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "Y2hhbm5lbF9pZF9jb252ZXJ0"

    invoke-direct {v0, v1, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 87
    const-string v1, "en_hance_launchsdk_logo_small"

    invoke-static {v1}, Lccsanenhance/g/h;->a(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 88
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v1

    const-string v2, "en_hance_launchsdk_logo_large"

    invoke-static {v2}, Lccsanenhance/g/h;->a(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lccsanandroid/graphics/BitmapFactory;->decodeResource(Lccsanandroid/content/res/Resources;I)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setLargeIcon(Lccsanandroid/graphics/Bitmap;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 91
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setPriority(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 92
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCategory(Ljava/lang/String;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1, p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCustomBigContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 96
    invoke-virtual {p1, p0}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCustomHeadsUpContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccsanandroid/app/NotificationManager;)V
    .locals 4

    .line 97
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 98
    new-instance v0, Lccsanandroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "Y2hhbm5lbF9pZF9jb252ZXJ0"

    const-string v3, "Y2hhbm5lbF9uYW1lX2NvbnZlcnQ="

    invoke-direct {v0, v2, v3, v1}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 99
    const-string v1, "Y2hhbm5lbF9kZXNjcmlwdGlvbl9jb252ZXJ0"

    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0, v0}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    const/4 p0, 0x1

    .line 101
    invoke-virtual {v0, p0}, Lccsanandroid/app/NotificationChannel;->setBypassDnd(Z)V

    :cond_0
    return-void
.end method

.method public static a(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanenhance/b/b;)V
    .locals 4

    .line 102
    const-string v0, "launch_is_background"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 103
    const-string v2, "launch_lock_screen"

    invoke-virtual {p1, v2, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 104
    const-string v3, "launch_draw_overlay"

    invoke-virtual {p1, v3, v1}, Lccsanandroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 105
    invoke-static {p0, v0, v2, p1, p2}, Lccsanenhance/a/f;->a(Ljava/lang/String;ZZZLccsanenhance/b/b;)V

    return-void
.end method

.method public static b(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;
    .locals 3

    .line 12
    invoke-static {}, Lccsanenhance/g/b;->c()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "launch_is_background"

    invoke-virtual {p0, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 13
    invoke-static {}, Lccsanenhance/g/c;->e()Z

    move-result v0

    const-string v1, "launch_lock_screen"

    invoke-virtual {p0, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 14
    invoke-static {}, Lccsanenhance/g/c;->a()Z

    move-result v0

    const-string v1, "launch_draw_overlay"

    invoke-virtual {p0, v1, v0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "launch_time"

    invoke-virtual {p0, v2, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;J)Lccsanandroid/content/Intent;

    return-object p0
.end method

.method public static b(Lccsanandroid/content/Intent;Lccsanenhance/b/b;)Lccsanandroid/content/Intent;
    .locals 2

    .line 1
    const-string v0, "launch_way"

    const-string v1, "code"

    invoke-virtual {p0, v0, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 2
    invoke-static {}, Lccsanenhance/g/b;->b()Lccsanandroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lccsanenhance/e/a;->b(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p0

    .line 5
    invoke-virtual {v0, p0}, Lccsanandroid/app/Activity;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {p0}, Lccsanenhance/e/a;->b(Lccsanandroid/content/Intent;)Lccsanandroid/content/Intent;

    move-result-object p0

    .line 8
    invoke-static {}, Lccsanenhance/g/b;->a()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    :goto_0
    nop

    .line 11
    invoke-static {v1, p0, p1}, Lccsanenhance/e/a;->a(Ljava/lang/String;Lccsanandroid/content/Intent;Lccsanenhance/b/b;)V

    return-object p0
.end method
