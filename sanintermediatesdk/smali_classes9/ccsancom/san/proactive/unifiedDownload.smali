.class public Lccsancom/san/proactive/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:J

.field private static addDownloadListener:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:C

.field private static unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput v0, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    const-wide/16 v1, 0x0

    sput-wide v1, Lccsancom/san/proactive/unifiedDownload;->IncentiveDownloadUtils:J

    sput-char v0, Lccsancom/san/proactive/unifiedDownload;->removeDownloadListener:C

    const v0, 0x16fcf60b

    sput v0, Lccsancom/san/proactive/unifiedDownload;->unifiedDownload:I

    return-void
.end method

.method private static addDownloadListener(Z)I
    .locals 2

    .line 22
    sget v0, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x25

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 0
    :pswitch_0
    if-eqz p0, :cond_2

    goto :goto_3

    .line 22
    :goto_1
    const/16 v0, 0x3e

    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_1

    const/16 p0, 0x38

    goto :goto_2

    :cond_1
    const/16 p0, 0x47

    :goto_2
    packed-switch p0, :pswitch_data_1

    goto :goto_4

    .line 0
    :goto_3
    :pswitch_1
    const-string p0, "ccsan_ccsan_ccsan_san_dialog_promotion_az_out_improve_simple"

    goto :goto_5

    .line 22
    :cond_2
    :goto_4
    const-string p0, "ccsan_ccsan_san_dialog_promotion_az_out_improve"

    :goto_5
    invoke-static {p0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p0

    sget v0, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x45

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    return p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x38
        :pswitch_1
    .end packed-switch
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/Bitmap;
    .locals 2

    .line 24
    sget v0, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x3f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 23
    :cond_0
    invoke-static {p0, p1}, Lccsancom/san/proaz/deleteDownItem;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 24
    invoke-static {p0}, Lccsancom/san/proactive/unifiedDownload;->unifiedDownload(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;

    move-result-object p0

    sget p1, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x77

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;
    .locals 7

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->toCharArray()[C

    move-result-object p4

    :cond_0
    check-cast p4, [C

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    :cond_1
    check-cast p1, [C

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    :cond_2
    check-cast p0, [C

    .line 1123
    sget-object v0, Lccsansan/d/getDownloadingCount;->addDownloadListener:Ljava/lang/Object;

    monitor-enter v0

    .line 1125
    :try_start_0
    invoke-virtual {p4}, [C->clone()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [C

    .line 1126
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    .line 1127
    const/4 v1, 0x0

    aget-char v2, p4, v1

    xor-int/2addr p2, v2

    int-to-char p2, p2

    aput-char p2, p4, v1

    .line 1128
    const/4 p2, 0x2

    aget-char v2, p1, p2

    int-to-char p3, p3

    add-int/2addr v2, p3

    int-to-char p3, v2

    aput-char p3, p1, p2

    .line 1130
    array-length p3, p0

    .line 1131
    new-array v2, p3, [C

    .line 1132
    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    :goto_0
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    if-ge v1, p3, :cond_3

    .line 1134
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/2addr v1, p2

    rem-int/lit8 v1, v1, 0x4

    .line 1135
    sget v3, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v3, v3, 0x3

    rem-int/lit8 v3, v3, 0x4

    .line 1138
    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    rem-int/lit8 v4, v4, 0x4

    aget-char v4, p4, v4

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v5, p1, v1

    add-int/2addr v4, v5

    const v5, 0xffff

    rem-int/2addr v4, v5

    int-to-char v4, v4

    sput-char v4, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    .line 1141
    aget-char v4, p4, v3

    mul-int/lit16 v4, v4, 0x7fce

    aget-char v1, p1, v1

    add-int/2addr v4, v1

    div-int/2addr v4, v5

    int-to-char v1, v4

    aput-char v1, p1, v3

    .line 1144
    sget-char v1, Lccsansan/d/getDownloadingCount;->unifiedDownload:C

    aput-char v1, p4, v3

    .line 1147
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    sget v4, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    aget-char v4, p0, v4

    aget-char v3, p4, v3

    xor-int/2addr v3, v4

    int-to-long v3, v3

    sget-wide v5, Lccsancom/san/proactive/unifiedDownload;->IncentiveDownloadUtils:J

    xor-long/2addr v3, v5

    sget v5, Lccsancom/san/proactive/unifiedDownload;->unifiedDownload:I

    int-to-long v5, v5

    xor-long/2addr v3, v5

    sget-char v5, Lccsancom/san/proactive/unifiedDownload;->removeDownloadListener:C

    int-to-long v5, v5

    xor-long/2addr v3, v5

    long-to-int v4, v3

    int-to-char v3, v4

    aput-char v3, v2, v1

    .line 1132
    sget v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lccsansan/d/getDownloadingCount;->IncentiveDownloadUtils:I

    goto :goto_0

    .line 1154
    :cond_3
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1155
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/app/PendingIntent;
    .locals 3

    .line 6
    nop

    .line 1
    new-instance v0, Lccsanandroid/content/Intent;

    const-class v1, Lccsancom/san/proactive/OutProActiveOperatorActivity;

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

    move-result-object p1

    const-string v1, "intent_pkg"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/high16 p1, 0x8000000

    .line 6
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p0

    sget p1, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x65

    rem-int/lit16 v0, p1, 0x80

    sput v0, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    const/16 v0, 0x3d

    if-nez p1, :cond_0

    const/16 p1, 0x3d

    goto :goto_0

    :cond_0
    const/4 p1, 0x7

    :goto_0
    packed-switch p1, :pswitch_data_0

    return-object p0

    :pswitch_0
    :try_start_0
    div-int/2addr v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 6

    .line 16
    const-string v0, "out_fullScreenIntent"

    .line 1
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/NotificationManager;

    if-eqz v1, :cond_0

    .line 16
    const/16 v2, 0x4e

    goto :goto_0

    :cond_0
    const/16 v2, 0x15

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x5f

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 3
    :cond_1
    invoke-virtual {v1}, Lccsanandroid/app/NotificationManager;->cancelAll()V

    .line 7
    :pswitch_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/app/PendingIntent;

    move-result-object v4

    .line 9
    invoke-static {p0, p1}, Lccsancom/san/proactive/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/widget/RemoteViews;

    move-result-object v5

    .line 11
    invoke-static {p0, v4, v5}, Lccsancom/san/proactive/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/app/PendingIntent;Lccsanandroid/widget/RemoteViews;)V

    .line 13
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v2, v1}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doFullScreenIntentOpen exception="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OutProActiveFullScreen"

    invoke-static {v5, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p1, v3, p0}, Lccsansan/bn/getDownloadedCount;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V

    :goto_1
    sget p0, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    packed-switch v2, :pswitch_data_1

    return-void

    :pswitch_1
    :try_start_1
    array-length p0, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static unifiedDownload(Lccsanandroid/graphics/drawable/Drawable;)Lccsanandroid/graphics/Bitmap;
    .locals 6

    .line 32
    sget v0, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x51

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 0
    :cond_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 32
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    :goto_0
    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    .line 25
    :try_start_0
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 32
    :pswitch_0
    add-int/lit8 v1, v1, 0x1b

    rem-int/lit16 p0, v1, 0x80

    sput p0, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x5d

    goto :goto_1

    :cond_2
    const/16 v1, 0x46

    :goto_1
    packed-switch v1, :pswitch_data_1

    .line 0
    goto :goto_2

    .line 32
    :pswitch_1
    const/16 v1, 0x18

    :try_start_1
    div-int/2addr v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    add-int/lit8 p0, p0, 0x71

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_3

    :try_start_2
    array-length p0, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v3

    :catchall_1
    move-exception p0

    throw p0

    :cond_3
    return-object v3

    .line 25
    :goto_3
    const/16 v2, 0x1a

    if-lt v1, v2, :cond_4

    :try_start_3
    instance-of v1, p0, Lccsanandroid/graphics/drawable/AdaptiveIconDrawable;

    if-eqz v1, :cond_4

    .line 26
    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v4, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v1

    .line 27
    new-instance v2, Lccsanandroid/graphics/Canvas;

    invoke-direct {v2, v1}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 28
    invoke-virtual {v2}, Lccsanandroid/graphics/Canvas;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Lccsanandroid/graphics/Canvas;->getHeight()I

    move-result v5

    invoke-virtual {p0, v0, v0, v4, v5}, Lccsanandroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 29
    invoke-virtual {p0, v2}, Lccsanandroid/graphics/drawable/Drawable;->draw(Lccsanandroid/graphics/Canvas;)V

    return-object v1

    .line 32
    :cond_4
    check-cast p0, Lccsanandroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lccsanandroid/graphics/drawable/BitmapDrawable;->getBitmap()Lccsanandroid/graphics/Bitmap;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    sget v0, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x63

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_5

    :try_start_4
    invoke-super {v3}, Ljava/lang/Object;->hashCode()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-object p0

    :catchall_2
    move-exception p0

    throw p0

    :cond_5
    return-object p0

    :catch_0
    move-exception p0

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x5d
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/widget/RemoteViews;
    .locals 23

    move-object/from16 v0, p0

    .line 38
    nop

    .line 1
    invoke-static {}, Lccsansan/bw/getMinIntervalToStart$addDownloadListener;->unifiedDownload()Z

    move-result v1

    .line 2
    invoke-static {v1}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Z)I

    move-result v2

    .line 4
    new-instance v3, Lccsanandroid/widget/RemoteViews;

    invoke-virtual/range {p0 .. p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lccsanandroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 6
    invoke-static/range {p0 .. p1}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)Lccsanandroid/graphics/Bitmap;

    move-result-object v2

    .line 7
    const-string v4, "san_out_improve_icon"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5, v2}, Lccsanandroid/widget/RemoteViews;->setImageViewBitmap(ILccsanandroid/graphics/Bitmap;)V

    const-string v2, "\uc23f\ud635\uf524\u8f20"

    const-string v5, "\ud3bd\uaa61\ufcf1\u6b06\ud855\uf145\u3406\u6091\u9ec2\u0ae5\uaa1c\ud06b\u01db\u2042\ud7e0\u30d7\ud3cb\u08d6\u7e03\ubef4\u5527\ud88d\u0e5e\uc6f4\ue780\u243f\u460a\u725a"

    const-string v6, "san_out_improve_name"

    const-string v9, "san_out_improve_desc"

    const/4 v10, 0x1

    const-string v11, "\u0000\u0000\u0000\u0000"

    const/4 v12, 0x0

    if-nez v1, :cond_1

    .line 38
    sget v13, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v13, v13, 0x3d

    rem-int/lit16 v14, v13, 0x80

    sput v14, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v13, v13, 0x2

    if-nez v13, :cond_0

    .line 7
    :cond_0
    nop

    .line 10
    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v13, v14}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const-string v13, ""

    invoke-static {v13, v12}, Lccsanandroid/text/TextUtils;->getOffsetBefore(Ljava/lang/CharSequence;I)I

    move-result v14

    rsub-int v14, v14, 0x20f5

    int-to-char v14, v14

    invoke-static {v12, v12}, Lccsanandroid/view/View;->combineMeasuredStates(II)I

    move-result v15

    invoke-static {v5, v11, v14, v15, v2}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v14

    .line 11
    invoke-static {v14}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v14

    const/16 v15, 0x30

    invoke-static {v13, v15, v12}, Lccsanandroid/text/TextUtils;->lastIndexOf(Ljava/lang/CharSequence;CI)I

    move-result v13

    add-int/2addr v13, v10

    int-to-char v13, v13

    invoke-static {}, Lccsanandroid/os/Process;->myPid()I

    move-result v15

    shr-int/lit8 v15, v15, 0x16

    const-string v7, "\udcd9\u5cdc\ub81e\u32e9\ub511\u1ae2\ubfff\ued06\u52d0\u9e75\u5c0b\u4869\u9b5a\uab9d\u05ef\u4c3e\u45e1\ue9ed\u50a8\ub767\ub337\u52b9\u991e\u9f53\uc9ec\u6239\u8f2d\u186d\u64da\u5c22\u357b\ua4b5\u7c49\u629d\u39fc\u5fd9\u9e73\u5698"

    const-string v8, "\uac63\u0f8b\u8bca\u5857"

    invoke-static {v7, v11, v13, v15, v8}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v14, v7}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 38
    sget v7, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v7, v7, 0x3

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v7, v7, 0x2

    goto :goto_0

    .line 11
    :cond_1
    nop

    .line 14
    invoke-static {v9}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v7

    new-array v8, v10, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lccsansan/p/getDownloadedList;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    const v13, 0xc580

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v14

    const-string v10, "\uac80\u4880\u77e1\u2e42\ua9b7\ue5b4\u79bd\u3269\ue3f6\u29e5\u5619\u7be1\ude40\u75e3\u663a\ufa88\u3d1e\udc94\ub79e\u05c8\ucf9c\u52be\u8088\u9cfe\u6d7b\u6958\udf59\uc524\u9b19\ua265\u934d\u9d57\uacf5\u6d7d\u87c5\ud9ff\uda2e\u421a\ueb55\u5c34\u4763\u9448\u1d74"

    const-string v12, "\ue066\uc22e\u81a3\u95c5"

    const-wide/16 v16, 0x0

    cmp-long v18, v14, v16

    add-int v13, v18, v13

    int-to-char v13, v13

    const v14, -0x5c3dd120

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v15

    shr-int/lit8 v15, v15, 0x10

    sub-int/2addr v14, v15

    invoke-static {v10, v11, v13, v14, v12}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :goto_0
    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v7

    shr-int/lit8 v7, v7, 0x16

    int-to-char v7, v7

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-string v14, "\u416e\u3d03\u6378\u11e5"

    const-string v15, "\uaa17\u4aa4\u1287\u48b8\u59ca\u1a3b\u8504\u8faa\ud9ae\u7530\u293b\u0dd2\u21c8\u1aad\ue1be\u4ddd\u455d\u268a\u4560\u156e\u812b\u4e51\uf63d"

    const-string v10, "OPEN"

    const-string v8, "source_key"

    move-object/from16 v19, v9

    const-string v9, "source_fullscreen"

    move-object/from16 v20, v2

    const-string v2, "intent_pkg"

    const-string v21, "san_promotion_lin"

    const-wide/16 v16, 0x0

    cmp-long v22, v12, v16

    const v12, 0x783d0342

    sub-int v12, v12, v22

    invoke-static {v15, v11, v7, v12, v14}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 16
    invoke-static {v7}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7, v10}, Lccsanandroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 18
    new-instance v7, Lccsanandroid/content/Intent;

    const-class v10, Lccsancom/san/proactive/OutProActiveOperatorActivity;

    invoke-direct {v7, v0, v10}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/high16 v10, 0x10000000

    .line 19
    invoke-virtual {v7, v10}, Lccsanandroid/content/Intent;->setFlags(I)Lccsanandroid/content/Intent;

    .line 20
    invoke-virtual {v7, v8, v9}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 21
    invoke-virtual/range {p1 .. p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v2, v8}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 22
    const/high16 v2, 0x8000000

    const/4 v8, 0x0

    invoke-static {v0, v8, v7, v2}, Lccsanandroid/app/PendingIntent;->getActivity(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v7

    .line 24
    invoke-static/range {v21 .. v21}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 25
    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v2, v7}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    if-nez v1, :cond_2

    .line 38
    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 28
    nop

    .line 30
    invoke-static/range {v19 .. v19}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1, v7}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    goto :goto_2

    .line 25
    :pswitch_0
    nop

    .line 27
    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1, v7}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lccsanandroid/graphics/Color;->green(I)I

    move-result v2

    rsub-int v2, v2, 0x20f5

    int-to-char v2, v2

    invoke-static {v1}, Lccsanandroid/graphics/ImageFormat;->getBitsPerPixel(I)I

    move-result v4

    rsub-int/lit8 v1, v4, -0x1

    move-object/from16 v4, v20

    invoke-static {v5, v11, v2, v1, v4}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1, v7}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    goto :goto_4

    .line 38
    :goto_2
    sget v1, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 v1, v1, 0x3d

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_3

    const/4 v10, 0x1

    goto :goto_3

    :cond_3
    const/4 v10, 0x0

    :goto_3
    packed-switch v10, :pswitch_data_1

    .line 30
    :goto_4
    :pswitch_1
    invoke-static {}, Lccsanandroid/media/AudioTrack;->getMaxVolume()F

    move-result v1

    const/4 v2, 0x0

    const-string v4, "notifyId"

    const-string v5, "pkgName"

    const-string v6, "san_out_improve_close"

    cmpl-float v1, v1, v2

    add-int/lit8 v1, v1, -0x1

    int-to-char v1, v1

    const v2, 0x783d0341

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v8

    shr-int/lit8 v8, v8, 0x10

    sub-int/2addr v2, v8

    invoke-static {v15, v11, v1, v2, v14}, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;CILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1, v7}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    .line 34
    new-instance v1, Lccsanandroid/content/Intent;

    const-class v2, Lccsancom/san/proaz/unifiedDownload;

    invoke-direct {v1, v0, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const v2, 0x186a2

    .line 35
    invoke-virtual {v1, v4, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 36
    invoke-virtual/range {p1 .. p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 37
    const/high16 v2, 0x8000000

    const/4 v4, 0x0

    invoke-static {v0, v4, v1, v2}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object v0

    .line 38
    invoke-static {v6}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1, v0}, Lccsanandroid/widget/RemoteViews;->setOnClickPendingIntent(ILccsanandroid/app/PendingIntent;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;Lccsanandroid/app/PendingIntent;Lccsanandroid/widget/RemoteViews;)V
    .locals 4

    .line 21
    nop

    .line 1
    new-instance v0, Lccsanandroidx/core/app/NotificationCompat$Builder;

    const-string v1, "promotion_jh"

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

    if-lt p2, v0, :cond_2

    .line 14
    new-instance p2, Lccsanandroid/app/NotificationChannel;

    const/4 v0, 0x4

    const-string v3, "Common_AZJH"

    invoke-direct {p2, v1, v3, v0}, Lccsanandroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 15
    invoke-virtual {p2, v2}, Lccsanandroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    if-eqz p0, :cond_0

    .line 21
    const/16 v0, 0x5e

    goto :goto_0

    :cond_0
    const/16 v0, 0x28

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget v0, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    add-int/lit8 v0, v0, 0x49

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    .line 17
    :cond_1
    invoke-virtual {p0, p2}, Lccsanandroid/app/NotificationManager;->createNotificationChannel(Lccsanandroid/app/NotificationChannel;)V

    :cond_2
    :goto_1
    if-eqz p0, :cond_3

    .line 21
    const/16 p2, 0x50

    goto :goto_2

    :cond_3
    const/16 p2, 0x2c

    :goto_2
    packed-switch p2, :pswitch_data_1

    .line 17
    const p2, 0x186a2

    .line 21
    invoke-virtual {p0, p2, p1}, Lccsanandroid/app/NotificationManager;->notify(ILccsanandroid/app/Notification;)V

    :pswitch_1
    sget p0, Lccsancom/san/proactive/unifiedDownload;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x4f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/proactive/unifiedDownload;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5e
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2c
        :pswitch_1
    .end packed-switch
.end method
