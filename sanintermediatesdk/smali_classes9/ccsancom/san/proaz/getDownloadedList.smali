.class public Lccsancom/san/proaz/getDownloadedList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:I

.field private static getDownloadingList:[C

.field private static removeDownloadListener:I

.field private static unifiedDownload:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    const/4 v0, 0x1

    sput v0, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    const/16 v0, 0x79

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/proaz/getDownloadedList;->getDownloadingList:[C

    const-wide v0, 0x22b8bf50576e91fL

    sput-wide v0, Lccsancom/san/proaz/getDownloadedList;->unifiedDownload:J

    return-void

    nop

    :array_0
    .array-data 2
        0x4fs
        -0x1696s
        -0x2db6s
        -0x44f3s
        -0x5bf2s
        -0x720cs
        0x76f3s
        0x5fb7s
        0x488bs
        0x3263s
        0x1b57s
        0x439s
        -0x12e8s
        -0x292bs
        -0x4039s
        -0x5743s
        -0x6e64s
        0x7b5cs
        0x644ds
        0x4d3fs
        0x3609s
        0x1fees
        0x8c4s
        0x50a7s
        -0x4654s
        -0x7d68s
        -0x1454s
        -0xb22s
        -0x228fs
        0x2659s
        0xf28s
        0x185as
        0x62f7s
        0x4bd1s
        0x54b2s
        -0x4268s
        -0x79cfs
        -0x10acs
        -0x7c4s
        -0x3efbs
        0x2be3s
        0x34c0s
        0x1da0s
        0x668fs
        0x4f6ds
        0x584ds
        -0x5ed1s
        -0x75bas
        -0x6b5bs
        -0x239s
        -0x3955s
        0x2f8fs
        0x3862s
        0x14bs
        0x6a63s
        0x7316s
        0x5c12s
        -0x5944s
        -0x702as
        -0x6750s
        -0x1e76s
        -0x3594s
        -0x2ca6s
        0x3c36s
        0x519s
        0x6fb4s
        0x78d9s
        0x41b9s
        -0x557as
        -0x4cc2s
        -0x5057s
        0x46a4s
        0x7d8as
        0x14d8s
        0xbc9s
        0x2234s
        -0x26ecs
        -0xfa4s
        -0x18b5s
        -0x6260s
        -0x4b64s
        -0x5403s
        0x42c1s
        0x793fs
        0x100ds
        0x754s
        0x3e43s
        -0x2b45s
        -0x3479s
        -0x1d1ds
        -0x6629s
        -0x4fc3s
        -0x58e4s
        0x5e4cs
        0x7556s
        0x6bb8s
        0x28fs
        0x39fcs
        0x64d4s
        -0x7227s
        -0x4909s
        -0x205bs
        -0x3f4cs
        -0x16b7s
        0x1269s
        0x3b21s
        0x2c36s
        0x56dds
        0x7fe1s
        0x6080s
        -0x7644s
        -0x4dbes
        -0x2490s
        -0x33d7s
        -0xac2s
        0x1fc6s
        0xfas
        0x299es
        0x52aas
        0x7b40s
        0x6c61s
    .end array-data
.end method

.method private static IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/Bitmap;
    .locals 3

    .line 25
    sget v0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x27

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 24
    invoke-static {p0, p1}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lccsancom/san/proaz/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 24
    :pswitch_0
    invoke-static {p0, p1}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 25
    invoke-static {p0}, Lccsancom/san/proaz/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object p0

    :try_start_0
    div-int/2addr v2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    sget p1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x45

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;
    .locals 6

    .line 33
    sget v0, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x6b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 33
    add-int/lit8 v1, v1, 0x29

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    .line 0
    return-object v0

    .line 26
    :cond_1
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x1a

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-lt v1, v2, :cond_2

    .line 33
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    :cond_3
    goto :goto_4

    :pswitch_0
    sget v1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_1

    :try_start_1
    instance-of v1, p0, Lccsanandroid/graphics/drawable/AdaptiveIconDrawable;

    goto :goto_2

    .line 26
    :pswitch_1
    instance-of v1, p0, Lccsanandroid/graphics/drawable/AdaptiveIconDrawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v1, :cond_5

    goto :goto_3

    .line 33
    :goto_2
    :try_start_2
    array-length v2, v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_3

    .line 27
    :goto_3
    :try_start_3
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 28
    new-instance v2, Lccsanandroid/graphics/Canvas;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 29
    invoke-virtual {v2}, Lccsanandroid/graphics/Canvas;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lccsanandroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v4, v4, v3, v5}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 30
    invoke-virtual {p0, v2}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object v1

    .line 33
    :catchall_0
    move-exception p0

    throw p0

    :cond_5
    :goto_4
    :try_start_4
    check-cast p0, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/BitmapDrawable;->getBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    sget v1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x59

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    :cond_6
    packed-switch v3, :pswitch_data_2

    return-object p0

    :pswitch_2
    :try_start_5
    invoke-super {v0}, Ljava/lang/Object;->hashCode()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    throw p0

    :catch_0
    move-exception p0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/widget/RemoteViews;
    .locals 13

    .line 32
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->unifiedDownload()Z

    move-result v0

    .line 2
    invoke-static {v0}, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener(Z)I

    move-result v1

    .line 4
    new-instance v2, Lccsanandroid/widget/RemoteViews;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 7
    const-string v3, "san_out_improve_icon"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4, v1}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    if-nez v0, :cond_0

    .line 32
    const/16 v1, 0x45

    goto :goto_0

    :cond_0
    const/16 v1, 0x3c

    :goto_0
    const-string v4, "san_out_improve_name"

    const/4 v5, 0x1

    const-string v6, "san_out_improve_desc"

    const-string v7, ""

    const/4 v8, 0x0

    packed-switch v1, :pswitch_data_0

    .line 7
    nop

    .line 10
    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_0
    nop

    .line 13
    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    new-array v9, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v8

    invoke-static {v7, v8}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v10

    add-int/lit8 v10, v10, 0x17

    invoke-static {v7, v8}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v11

    rsub-int v11, v11, 0x5082

    int-to-char v11, v11

    invoke-static {v7}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x2f

    invoke-static {v10, v11, v12}, Lccsancom/san/proaz/getDownloadedList;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v1, v9}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto :goto_2

    .line 32
    :goto_1
    nop

    .line 16
    :goto_2
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    .line 18
    const-string v9, "san_promotion_lin"

    invoke-static {v9}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v9

    const/4 v10, 0x0

    invoke-virtual {v2, v9, v10}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 19
    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3, v1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    if-nez v0, :cond_1

    .line 32
    const/16 v0, 0x34

    goto :goto_3

    :cond_1
    const/16 v0, 0x43

    :goto_3
    packed-switch v0, :pswitch_data_1

    .line 22
    nop

    .line 24
    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    goto :goto_4

    .line 32
    :pswitch_1
    sget v0, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/2addr v0, v5

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 19
    :cond_2
    nop

    .line 21
    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    invoke-static {v7, v8, v8}, Lccsanandroid/text/TextUtils;->getCapsMode(Ljava/lang/CharSequence;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x46

    const v3, 0xafda

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v8}, Lccsanandroid/graphics/Color;->red(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1c

    invoke-static {v0, v3, v4}, Lccsancom/san/proaz/getDownloadedList;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 32
    sget v0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x1f

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 24
    :cond_3
    :goto_4
    invoke-static {}, Lccsanandroid/view/KeyEvent;->getMaxKeyCode()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x62

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v3

    shr-int/lit8 v3, v3, 0x10

    add-int/lit16 v3, v3, 0x64a7

    int-to-char v3, v3

    invoke-static {v7}, Lccsanandroid/view/KeyEvent;->keyCodeFromString(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x17

    invoke-static {v0, v3, v4}, Lccsancom/san/proaz/getDownloadedList;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0, v1}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 28
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/san/proaz/unifiedDownload;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x186a1

    .line 29
    const-string v3, "notifyId"

    invoke-virtual {v0, v3, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 30
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pkgName"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 31
    invoke-static {p0, v8, v0, p1}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p0

    .line 32
    const-string p1, "san_out_improve_close"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, p1, p0}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    sget p0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x2b

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_4

    :try_start_0
    array-length p0, v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    throw p0

    :cond_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x3c
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x34
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/app/PendingIntent;Lccsanandroid/widget/RemoteViews;)V
    .locals 5

    .line 21
    nop

    .line 1
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string v1, "promotion_az"

    invoke-direct {v0, p0, v1}, Lccsanandroidx/core/app/NotificationCompat$Builder;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v2, v2, Lccsanandroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 4
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 5
    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setPriority(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 6
    invoke-virtual {v0, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setVisibility(I)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object v0

    .line 7
    invoke-virtual {v0, p2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setCustomContentView(Lccsanandroid/widget/RemoteViews;)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 8
    invoke-virtual {p2, p1, v2}, Lccsanandroidx/core/app/NotificationCompat$Builder;->setFullScreenIntent(Lccsanandroid/app/PendingIntent;Z)Lccsanandroidx/core/app/NotificationCompat$Builder;

    move-result-object p1

    .line 10
    invoke-virtual {p1}, Lccsanandroidx/core/app/NotificationCompat$Builder;->build()Lccsanandroid/app/Notification;

    move-result-object p1

    .line 12
    const-string p2, "notification"

    invoke-virtual {p0, p2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/NotificationManager;

    .line 13
    sget p2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    const/4 v3, 0x0

    if-lt p2, v0, :cond_1

    .line 14
    new-instance p2, Lccsanandroid/app/NotificationChannel;

    const/4 v0, 0x4

    const-string v4, "Common_AZJH"

    invoke-direct {p2, v1, v4, v0}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 15
    invoke-virtual {p2, v2}, Lccsanandroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz p0, :cond_1

    .line 21
    sget v0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x5

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 17
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, p2}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    packed-switch v0, :pswitch_data_0

    const/16 p2, 0x59

    :try_start_0
    div-int/2addr p2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    :pswitch_0
    sget p2, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    add-int/lit8 p2, p2, 0x69

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    rem-int/lit8 p2, p2, 0x2

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    .line 17
    :cond_1
    :goto_1
    if-eqz p0, :cond_2

    const/4 v2, 0x0

    :cond_2
    packed-switch v2, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    const p2, 0x186a1

    .line 21
    invoke-virtual {p0, p2, p1}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/app/PendingIntent;
    .locals 3

    .line 7
    nop

    .line 1
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/san/proaz/OutProAzOperatorActivity;

    invoke-direct {v0, p0, v1}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const v1, 0x8000

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 4
    const-string v1, "source_key"

    const-string v2, "source_fullscreen"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 5
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    const-string v2, "intent_pkg"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 6
    const-string v1, "source_app_item"

    invoke-static {v1, p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/high16 v1, 0x8000000

    .line 7
    invoke-static {p0, p1, v0, v1}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p0

    sget p1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 p1, p1, 0xf

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 22
    sget v0, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x3d

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lccsancom/san/proaz/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    const/16 p0, 0x23

    :try_start_0
    div-int/2addr p0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_0
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static removeDownloadListener(Z)I
    .locals 2

    .line 23
    nop

    .line 0
    if-eqz p0, :cond_0

    .line 23
    const/16 p0, 0x48

    goto :goto_0

    :cond_0
    const/16 p0, 0x4f

    :goto_0
    packed-switch p0, :pswitch_data_0

    .line 0
    goto :goto_1

    .line 23
    :pswitch_0
    sget p0, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v0, p0, 0x29

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    :cond_1
    add-int/lit8 p0, p0, 0x19

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    :cond_2
    const-string p0, "ccsan_ccsan_ccsan_san_dialog_promotion_az_out_improve_simple"

    goto :goto_2

    :goto_1
    const-string p0, "ccsan_ccsan_san_dialog_promotion_az_out_improve"

    :goto_2
    invoke-static {p0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(ICI)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p2, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p2, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/proaz/getDownloadedList;->getDownloadingList:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/proaz/getDownloadedList;->unifiedDownload:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p1

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v1, v2

    .line 1105
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1113
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1114
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 7

    .line 18
    const-string v0, "out_fullScreenIntent"

    sget v1, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v1, v1, 0x79

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    .line 1
    const/4 v1, 0x3

    goto :goto_0

    :cond_0
    const/16 v1, 0x31

    :goto_0
    const-string v2, "notification"

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    .line 18
    nop

    .line 1
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/NotificationManager;

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/NotificationManager;

    if-eqz v1, :cond_1

    const/16 v2, 0xc

    goto :goto_1

    :cond_1
    const/16 v2, 0x63

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_3

    :goto_2
    const/16 v2, 0x5d

    :try_start_0
    div-int/2addr v2, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    .line 18
    :pswitch_1
    sget v2, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener:I

    add-int/lit8 v2, v2, 0xd

    rem-int/lit16 v4, v2, 0x80

    sput v4, Lccsancom/san/proaz/getDownloadedList;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_2

    .line 3
    :cond_2
    invoke-virtual {v1}, Lccsanandroid/app/NotificationManager;->cancelAll()V

    .line 7
    :cond_3
    :goto_3
    :try_start_1
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/app/PendingIntent;

    move-result-object v1

    .line 9
    invoke-static {p0, p1}, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/widget/RemoteViews;

    move-result-object v2

    .line 11
    invoke-static {p0, v1, v2}, Lccsancom/san/proaz/getDownloadedList;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/app/PendingIntent;Lccsanandroid/widget/RemoteViews;)V

    .line 13
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsancom/san/proaz/getDownloadedList;->getDownloadingList(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, p0, v1, v2}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    goto :goto_4

    .line 15
    :catch_0
    move-exception p0

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFullScreenIntentOpen exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2, v2, v3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v2, v3}, Lccsanandroid/text/TextUtils;->getOffsetAfter(Ljava/lang/CharSequence;I)I

    move-result v2

    int-to-char v2, v2

    const/4 v5, 0x0

    invoke-static {v5, v5}, Lccsanandroid/graphics/PointF;->length(FF)F

    move-result v6

    cmpl-float v5, v6, v5

    rsub-int/lit8 v5, v5, 0x17

    invoke-static {v4, v2, v5}, Lccsancom/san/proaz/getDownloadedList;->unifiedDownload(ICI)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v3, p0}, Lccsansan/bn/getDownloadedCount;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
    .end packed-switch
.end method
