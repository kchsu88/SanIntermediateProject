.class public Lccsansan/by/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static addDownloadListener:C

.field private static getDownloadStatusByUrl:I

.field private static getDownloadingList:C

.field private static removeDownloadListener:C

.field private static unifiedDownload:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lccsansan/by/addDownloadListener;->IncentiveDownloadUtils:I

    const/4 v0, 0x1

    sput v0, Lccsansan/by/addDownloadListener;->getDownloadStatusByUrl:I

    const/16 v0, 0x2577

    sput-char v0, Lccsansan/by/addDownloadListener;->unifiedDownload:C

    const v0, 0xe09d

    sput-char v0, Lccsansan/by/addDownloadListener;->addDownloadListener:C

    const/16 v0, 0x6c40

    sput-char v0, Lccsansan/by/addDownloadListener;->getDownloadingList:C

    const v0, 0xa81e

    sput-char v0, Lccsansan/by/addDownloadListener;->removeDownloadListener:C

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/io/File;)Lccsanandroid/content/Intent;
    .locals 7

    .line 6
    nop

    .line 1
    invoke-static {p0}, Lccsansan/by/addDownloadListener;->removeDownloadListener(Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object p0

    .line 2
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 6
    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    packed-switch v1, :pswitch_data_0

    sget v1, Lccsansan/by/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 v1, v1, 0x33

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsansan/by/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 3
    :cond_1
    const/4 v1, 0x3

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    :pswitch_0
    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    const-string v5, "\uba14\uca85\u3b6c\u1e7e\u01dd\u0ded\uacbf\udd1f\u651b\u355b\u1f86\uac8f\ue1cd\ua2a8\u117e\ue41f\uaafc\uaff7\ud265\ub71b\u5aa7\u3cc9\u117e\ue41f\ud533\ue895\uae57\u24f9\u8cc0\u6a82\u0c41\uf606\u626b\ue29f\uc8e3\u4eff\u5b5e\u42c2\ufd37\ua715"

    cmp-long v6, v1, v3

    rsub-int/lit8 v1, v6, 0x28

    invoke-static {v5, v1}, Lccsansan/by/addDownloadListener;->unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-virtual {v0, p0, v1}, Lccsanandroid/content/Intent;->setDataAndType(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/content/Intent;

    sget p0, Lccsansan/by/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x5d

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/by/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_2

    const/16 p0, 0x46

    goto :goto_1

    :cond_2
    const/16 p0, 0x4a

    :goto_1
    packed-switch p0, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    return-object v0

    :goto_2
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch
.end method

.method public static addDownloadListener(Lccsanandroid/graphics/Bitmap;)Lccsanandroid/graphics/Bitmap;
    .locals 7

    .line 16
    nop

    .line 7
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lccsanandroid/graphics/Bitmap$Config;->ARGB_8888:Lccsanandroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Lccsanandroid/graphics/Bitmap;->createBitmap(IILccsanandroid/graphics/Bitmap$Config;)Lccsanandroid/graphics/Bitmap;

    move-result-object v0

    .line 8
    new-instance v1, Lccsanandroid/graphics/Canvas;

    invoke-direct {v1, v0}, Lccsanandroid/graphics/Canvas;-><init>(Lccsanandroid/graphics/Bitmap;)V

    .line 9
    new-instance v2, Lccsanandroid/graphics/Paint;

    invoke-direct {v2}, Lccsanandroid/graphics/Paint;-><init>()V

    .line 10
    new-instance v3, Lccsanandroid/graphics/Rect;

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getHeight()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Lccsanandroid/graphics/Rect;-><init>(IIII)V

    .line 11
    new-instance v4, Lccsanandroid/graphics/RectF;

    invoke-direct {v4, v3}, Lccsanandroid/graphics/RectF;-><init>(Lccsanandroid/graphics/Rect;)V

    .line 12
    invoke-virtual {p0}, Lccsanandroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    const/4 v6, 0x1

    .line 13
    invoke-virtual {v2, v6}, Lccsanandroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    invoke-virtual {v1, v4, v5, v5, v2}, Lccsanandroid/graphics/Canvas;->drawRoundRect(Lccsanandroid/graphics/RectF;FFLccsanandroid/graphics/Paint;)V

    .line 15
    new-instance v4, Lccsanandroid/graphics/PorterDuffXfermode;

    sget-object v5, Lccsanandroid/graphics/PorterDuff$Mode;->SRC_IN:Lccsanandroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Lccsanandroid/graphics/PorterDuffXfermode;-><init>(Lccsanandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v4}, Lccsanandroid/graphics/Paint;->setXfermode(Lccsanandroid/graphics/Xfermode;)Lccsanandroid/graphics/Xfermode;

    .line 16
    invoke-virtual {v1, p0, v3, v3, v2}, Lccsanandroid/graphics/Canvas;->drawBitmap(Lccsanandroid/graphics/Bitmap;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Rect;Lccsanandroid/graphics/Paint;)V

    sget p0, Lccsansan/by/addDownloadListener;->getDownloadStatusByUrl:I

    add-int/lit8 p0, p0, 0x29

    rem-int/lit16 v1, p0, 0x80

    sput v1, Lccsansan/by/addDownloadListener;->IncentiveDownloadUtils:I

    rem-int/lit8 p0, p0, 0x2

    return-object v0
.end method

.method public static removeDownloadListener(Ljava/io/File;)Lccsanandroid/net/Uri;
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".fileprovider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsanandroidx/core/content/FileProvider;->getUriForFile(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object p0

    sget v0, Lccsansan/by/addDownloadListener;->IncentiveDownloadUtils:I

    add-int/lit8 v0, v0, 0x57

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsansan/by/addDownloadListener;->getDownloadStatusByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Ljava/lang/String;I)Ljava/lang/String;
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

    sget-char v11, Lccsansan/by/addDownloadListener;->addDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v2

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/by/addDownloadListener;->getDownloadingList:C

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

    sget-char v11, Lccsansan/by/addDownloadListener;->removeDownloadListener:C

    add-int/2addr v10, v11

    xor-int/2addr v9, v10

    aget-char v10, v4, v6

    ushr-int/lit8 v10, v10, 0x5

    sget-char v11, Lccsansan/by/addDownloadListener;->unifiedDownload:C

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
