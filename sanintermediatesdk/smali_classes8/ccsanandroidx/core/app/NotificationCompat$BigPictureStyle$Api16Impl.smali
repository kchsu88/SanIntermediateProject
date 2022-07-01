.class Lccsanandroidx/core/app/NotificationCompat$BigPictureStyle$Api16Impl;
.super Ljava/lang/Object;
.source "NotificationCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/core/app/NotificationCompat$BigPictureStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Api16Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3077
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3078
    return-void
.end method

.method static setBigLargeIcon(Lccsanandroid/app/Notification$BigPictureStyle;Lccsanandroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "style"    # Lccsanandroid/app/Notification$BigPictureStyle;
    .param p1, "icon"    # Lccsanandroid/graphics/Bitmap;
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

    .line 3085
    invoke-virtual {p0, p1}, Lccsanandroid/app/Notification$BigPictureStyle;->bigLargeIcon(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/app/Notification$BigPictureStyle;

    .line 3086
    return-void
.end method

.method static setSummaryText(Lccsanandroid/app/Notification$BigPictureStyle;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "style"    # Lccsanandroid/app/Notification$BigPictureStyle;
    .param p1, "text"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "style",
            "text"
        }
    .end annotation

    .line 3093
    invoke-virtual {p0, p1}, Lccsanandroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Lccsanandroid/app/Notification$BigPictureStyle;

    .line 3094
    return-void
.end method
