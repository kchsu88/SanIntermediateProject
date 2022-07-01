.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/NotificationUtil$Importance;
    }
.end annotation


# static fields
.field public static final IMPORTANCE_DEFAULT:I = 0x3

.field public static final IMPORTANCE_HIGH:I = 0x4

.field public static final IMPORTANCE_LOW:I = 0x2

.field public static final IMPORTANCE_MIN:I = 0x1

.field public static final IMPORTANCE_NONE:I = 0x0

.field public static final IMPORTANCE_UNSPECIFIED:I = -0x3e8


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationChannel(Lccsanandroid/content/Context;Ljava/lang/String;II)V
    .locals 2

    .line 77
    sget v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 78
    nop

    .line 79
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 80
    new-instance v1, Lccsanandroid/app/NotificationChannel;

    .line 81
    invoke-virtual {p0, p2}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p1, p0, p3}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 82
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 84
    :cond_0
    return-void
.end method

.method public static setNotification(Lccsanandroid/content/Context;ILccsanandroid/app/Notification;)V
    .locals 1

    .line 98
    nop

    .line 99
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 100
    if-eqz p2, :cond_0

    .line 101
    invoke-virtual {p0, p1, p2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    .line 105
    :goto_0
    return-void
.end method
