.class Lccsanandroidx/core/app/NotificationCompat$BigPictureStyle$Api23Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat$BigPictureStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api23Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3105
    return-void
.end method

.method static setBigLargeIcon(Lccsanandroid/app/Notification$BigPictureStyle;Lccsanandroid/graphics/drawable/Icon;)V
    .locals 0
    .param p0, "style"    # Lccsanandroid/app/Notification$BigPictureStyle;
    .param p1, "icon"    # Lccsanandroid/graphics/drawable/Icon;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "icon"
        }
    .end annotation

    .line 3112
    invoke-virtual {p0, p1}, Lccsanandroid/app/Notification$BigPictureStyle;->bigLargeIcon(Lccsanandroid/graphics/drawable/Icon;)Lccsanandroid/app/Notification$BigPictureStyle;

    .line 3113
    return-void
.end method
