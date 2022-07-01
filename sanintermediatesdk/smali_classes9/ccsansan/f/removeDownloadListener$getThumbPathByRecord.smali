.class Lccsansan/f/removeDownloadListener$getThumbPathByRecord;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/f/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "getThumbPathByRecord"
.end annotation


# static fields
.field private static addDownloadListener:I

.field private static removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->addDownloadListener:I

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/content/Intent;)V
    .locals 5

    .line 7
    nop

    .line 3
    sget v0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x36

    and-int/lit8 v1, v0, -0x1

    or-int/lit8 v0, v0, -0x1

    add-int/2addr v1, v0

    rem-int/lit16 v0, v1, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 1
    const/16 v0, 0x17

    goto :goto_0

    :cond_0
    const/16 v0, 0x4d

    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_2

    goto :goto_2

    :pswitch_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x61

    if-lt v0, v3, :cond_1

    const/16 v0, 0x32

    goto :goto_1

    :cond_1
    const/4 v0, 0x6

    :goto_1
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    goto :goto_4

    :goto_2
    const/4 v0, 0x0

    goto :goto_3

    :cond_2
    const/4 v0, 0x1

    :goto_3
    packed-switch v0, :pswitch_data_2

    goto :goto_6

    .line 7
    :goto_4
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    .line 3
    sget p0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x62

    and-int/lit8 p1, p0, -0x1

    or-int/lit8 p0, p0, -0x1

    add-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_3

    .line 7
    :cond_3
    :goto_5
    goto :goto_8

    :goto_6
    :pswitch_2
    sget v0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->addDownloadListener:I

    xor-int/lit8 v3, v0, 0x21

    and-int/lit8 v4, v0, 0x21

    or-int/2addr v3, v4

    shl-int/2addr v3, v2

    and-int/lit8 v4, v0, -0x22

    xor-int/lit8 v0, v0, -0x1

    and-int/lit8 v0, v0, 0x21

    or-int/2addr v0, v4

    sub-int/2addr v3, v0

    rem-int/lit16 v0, v3, 0x80

    sput v0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->removeDownloadListener:I

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 1
    const/4 v1, 0x1

    goto :goto_7

    :cond_4
    nop

    :goto_7
    packed-switch v1, :pswitch_data_3

    .line 3
    :try_start_0
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;

    goto :goto_5

    :pswitch_3
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startService(Lccsanandroid/content/Intent;)Lccsanandroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    :try_start_1
    array-length p0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    .line 7
    :catchall_0
    move-exception p0

    throw p0

    .line 3
    :catch_0
    move-exception p0

    .line 7
    :goto_8
    nop

    .line 3
    sget p0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->removeDownloadListener:I

    xor-int/lit8 p1, p0, 0x13

    and-int/lit8 v0, p0, 0x13

    or-int/2addr p1, v0

    shl-int/2addr p1, v2

    xor-int/lit8 v0, v0, -0x1

    or-int/lit8 p0, p0, 0x13

    and-int/2addr p0, v0

    sub-int/2addr p1, p0

    rem-int/lit16 p0, p1, 0x80

    sput p0, Lccsansan/f/removeDownloadListener$getThumbPathByRecord;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    .line 7
    return-void

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x32
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
    .end packed-switch
.end method
