.class public final Lccsancom/google/android/exoplayer2/util/NotificationUtil;
.super Ljava/lang/Object;
.source "NotificationUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/util/NotificationUtil$Importance;
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

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createNotificationChannel(Lccsanandroid/content/Context;Ljava/lang/String;III)V
    .locals 3
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "nameResourceId"    # I
    .param p3, "descriptionResourceId"    # I
    .param p4, "importance"    # I

    .line 94
    sget v0, Lccsancom/google/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 95
    nop

    .line 97
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 96
    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 98
    .local v0, "notificationManager":Lccsanandroid/app/NotificationManager;
    new-instance v1, Lccsanandroid/app/NotificationChannel;

    .line 99
    invoke-virtual {p0, p2}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2, p4}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 100
    .local v1, "channel":Lccsanandroid/app/NotificationChannel;
    if-eqz p3, :cond_0

    .line 101
    invoke-virtual {p0, p3}, Lccsanandroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroid/app/NotificationChannel;->setDescription(Ljava/lang/String;)V

    .line 103
    :cond_0
    invoke-virtual {v0, v1}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    .line 105
    .end local v0    # "notificationManager":Lccsanandroid/app/NotificationManager;
    .end local v1    # "channel":Lccsanandroid/app/NotificationChannel;
    :cond_1
    return-void
.end method

.method public static setNotification(Lccsanandroid/content/Context;ILccsanandroid/app/Notification;)V
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "id"    # I
    .param p2, "notification"    # Lccsanandroid/app/Notification;

    .line 119
    nop

    .line 120
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/NotificationManager;

    .line 121
    .local v0, "notificationManager":Lccsanandroid/app/NotificationManager;
    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {v0, p1, p2}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {v0, p1}, Lccsanandroid/app/NotificationManager;->cancel(I)V

    .line 126
    :goto_0
    return-void
.end method
