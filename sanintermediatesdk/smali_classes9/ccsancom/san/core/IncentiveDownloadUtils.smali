.class public Lccsancom/san/core/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[C

.field private static addDownloadListener:I

.field public static final getDownloadingList:I

.field private static removeDownloadListener:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    invoke-static {}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList()V

    const/16 v2, 0x2b

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsancom/san/core/IncentiveDownloadUtils;->unifiedDownload:[B

    const/16 v2, 0xef

    sput v2, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList:I

    sget v2, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x7b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/4 v0, 0x0

    :try_start_0
    array-length v0, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x0t
        -0x80t
        0x58t
        -0x63t
        -0x7ct
        0x15t
        -0x2t
        0x16t
        0x5t
        0x2t
        0x3t
        -0x2et
        0x3dt
        0x14t
        0x7t
        0xet
        -0x7t
        0x11t
        0xet
        -0x3et
        0x1dt
        0x34t
        0x7t
        0xet
        -0x7t
        0x1bt
        0x4t
        0x6t
        0x17t
        -0x1ct
        0x19t
        0xat
        0x10t
        -0x2t
        0xet
        0x6t
        -0x10t
        0x1ct
        0x15t
        -0x5t
        0xet
        0x6t
        0x15t
    .end array-data
.end method

.method private static getDownloadingList(BSI)Ljava/lang/String;
    .locals 8

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x17

    sget-object v0, Lccsancom/san/core/IncentiveDownloadUtils;->unifiedDownload:[B

    add-int/lit8 p1, p1, 0x5

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    new-array v1, p2, [B

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_2

    :pswitch_0
    sget v4, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v4, v4, 0xd

    rem-int/lit16 v5, v4, 0x80

    sput v5, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v4, v4, 0x2

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_1

    const/16 v4, 0x22

    :try_start_0
    div-int/2addr v4, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :pswitch_1
    move-object v4, v1

    const/4 v5, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_3

    :catchall_0
    move-exception p0

    throw p0

    :goto_2
    add-int/lit8 v5, v4, 0x1

    int-to-byte v6, p0

    add-int/2addr p1, v2

    aput-byte v6, v1, v4

    if-ne v5, p2, :cond_2

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v3}, Ljava/lang/String;-><init>([BI)V

    sget p1, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 p1, p1, 0x47

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0

    :cond_2
    aget-byte v4, v0, p1

    move-object v7, v0

    move v0, p2

    move p2, v4

    move-object v4, v1

    move-object v1, v7

    :goto_3
    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v4

    move v4, v5

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0x71

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/core/IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    return-void

    :array_0
    .array-data 2
        0x11s
        0x43s
        0x64s
        0x63s
        0x66s
        0x56s
        0x5bs
        0x74s
        0x71s
        0x61s
        0x63s
        0x6as
        0x69s
        0x73s
        0x60s
        0x5as
        0x67s
        0x65s
        0x58s
        0x5as
        0x6es
        0x73s
        0x6cs
        0x69s
        0x69s
        0x6bs
        0x49s
        0x49s
        0x6bs
        0x6cs
        0x74s
        0x73s
        0x70s
        0x47s
        0x2ds
        0x2ds
        0x40s
        0x6bs
        0x74s
        0x71s
        0x61s
        0x63s
        0x6as
        0x69s
        0x73s
        0x5cs
        0x59s
        0x67s
        0x61s
        0x67s
        0x68s
        0x42s
        0x2es
        0x2es
        0x43s
        0x63s
        0x66s
        0x6fs
        0x6cs
        0x11s
        0x43s
        0x64s
        0x63s
        0x66s
        0x56s
        0x5bs
        0x74s
        0x71s
        0x61s
        0x63s
        0x6as
        0x69s
        0x73s
        0x60s
        0x5as
        0x67s
        0x65s
        0x58s
        0x5as
        0x6es
        0x73s
        0x6cs
        0x69s
        0x69s
        0x6bs
        0x49s
        0x49s
        0x6bs
        0x6cs
        0x74s
        0x73s
        0x70s
        0x47s
        0x2ds
        0x2ds
        0x40s
        0x6bs
        0x74s
        0x71s
        0x61s
        0x63s
        0x6as
        0x69s
        0x73s
        0x64s
        0x66s
        0x74s
        0x6as
        0x42s
        0x2es
        0x3ds
        0x2es
        0x29s
    .end array-data
.end method

.method public static getDownloadingList(Lccsanandroid/app/Activity;)V
    .locals 5

    .line 12
    nop

    .line 1
    const-string v0, "a_s"

    invoke-static {v0}, Lccsansan/bq/addDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    const/16 v0, 0x59

    goto :goto_0

    :cond_0
    const/16 v0, 0x48

    :goto_0
    const/4 v1, 0x4

    const-string v2, "CPIApkOperateHelper"

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-static {}, Lccsansan/cy/unifiedDownload;->trackReportClick()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    goto :goto_1

    .line 1
    :pswitch_0
    new-array p0, v1, [I

    fill-array-data p0, :array_0

    const-string v0, "\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0000"

    invoke-static {p0, v0, v3}, Lccsancom/san/core/IncentiveDownloadUtils;->unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 2
    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    :goto_2
    packed-switch v0, :pswitch_data_1

    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;

    const-wide/16 v2, 0x1f4

    invoke-direct {v1, v2, v3, p0}, Lccsancom/san/core/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(JLccsanandroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void

    :pswitch_1
    sget p0, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x65

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/2addr p0, v4

    if-eqz p0, :cond_2

    .line 6
    :cond_2
    new-array p0, v1, [I

    fill-array-data p0, :array_1

    const-string v0, "\u0001\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0000\u0001\u0000\u0001\u0001\u0000\u0001\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0001\u0000\u0001\u0000"

    invoke-static {p0, v0, v3}, Lccsancom/san/core/IncentiveDownloadUtils;->unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    sget p0, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 p0, p0, 0x4d

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/2addr p0, v4

    return-void

    :pswitch_data_0
    .packed-switch 0x59
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3b
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3b
        0x36
        0x0
        0x0
    .end array-data
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 16
    sget p0, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 p0, p0, 0x67

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/16 p0, 0x54

    goto :goto_0

    :cond_0
    const/16 p0, 0x2b

    :goto_0
    invoke-static {p2, p1, p3, p4, p5}, Lccsansan/l/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    packed-switch p0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 p0, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    throw p0

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .line 26
    nop

    .line 17
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1}, Lccsansan/bw/getDownloadedCount;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    .line 25
    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    packed-switch v2, :pswitch_data_0

    sget v2, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x7d

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 17
    :cond_1
    :try_start_1
    sget-object v2, Lccsancom/san/core/IncentiveDownloadUtils;->unifiedDownload:[B

    aget-byte v3, v2, v1

    int-to-byte v3, v3

    add-int/lit8 v4, v3, -0x1

    int-to-byte v4, v4

    aget-byte v5, v2, v1

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sget v4, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList:I

    and-int/2addr v4, v0

    int-to-byte v4, v4

    const/4 v5, 0x5

    aget-byte v2, v2, v5

    int-to-byte v2, v2

    and-int/lit8 v5, v2, 0x3

    int-to-byte v5, v5

    invoke-static {v4, v2, v5}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(BSI)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2, p1}, Lccsanandroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object p1

    .line 20
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/san/ads/CommonActivityLifecycle;->getRunningTopActivity()Lccsanandroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 26
    move-object p0, v2

    .line 24
    :cond_2
    nop

    instance-of v2, p0, Lccsanandroid/app/Activity;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v2, :cond_3

    .line 25
    const/16 v2, 0x4f

    goto :goto_1

    :cond_3
    const/16 v2, 0x1d

    :goto_1
    packed-switch v2, :pswitch_data_1

    :goto_2
    goto :goto_5

    .line 26
    :pswitch_0
    sget v2, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v2, v2, 0x9

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_4

    .line 25
    const/16 v2, 0x59

    goto :goto_3

    :cond_4
    const/4 v2, 0x3

    :goto_3
    const/high16 v3, 0x10000000

    packed-switch v2, :pswitch_data_2

    .line 26
    nop

    .line 25
    :try_start_3
    invoke-virtual {p1, v3}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    goto :goto_4

    .line 24
    :pswitch_1
    nop

    .line 25
    invoke-virtual {p1, v3}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_4
    :try_start_4
    array-length v2, v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    .line 26
    :catchall_0
    move-exception p0

    throw p0

    :goto_5
    :try_start_5
    invoke-virtual {p0, p1}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    goto :goto_6

    .line 17
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_5

    throw p1

    :cond_5
    throw p0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 26
    :catch_0
    move-exception p0

    :pswitch_2
    const/4 v0, 0x0

    :goto_6
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x3
        :pswitch_1
    .end packed-switch
.end method

.method private static unifiedDownload([ILjava/lang/String;Z)Ljava/lang/String;
    .locals 12

    if-eqz p1, :cond_0

    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    :cond_0
    check-cast p1, [B

    .line 1195
    sget-object v0, Lccsansan/d/shouldTryHandlingAction;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1198
    const/4 v1, 0x0

    :try_start_0
    aget v2, p0, v1

    .line 1199
    const/4 v3, 0x1

    aget v4, p0, v3

    .line 1200
    const/4 v5, 0x2

    aget v6, p0, v5

    .line 1201
    const/4 v7, 0x3

    aget v7, p0, v7

    .line 1203
    sget-object v8, Lccsancom/san/core/IncentiveDownloadUtils;->IncentiveDownloadUtils:[C

    .line 1204
    new-array v9, v4, [C

    .line 1206
    invoke-static {v8, v2, v9, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1209
    if-eqz p1, :cond_3

    .line 1211
    new-array v2, v4, [C

    .line 1212
    nop

    .line 1214
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    const/4 v8, 0x0

    :goto_0
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge v10, v4, :cond_2

    .line 1216
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-byte v10, p1, v10

    if-ne v10, v3, :cond_1

    .line 1218
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    add-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    goto :goto_1

    .line 1222
    :cond_1
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v11, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v11, v9, v11

    shl-int/2addr v11, v3

    sub-int/2addr v11, v8

    int-to-char v8, v11

    aput-char v8, v2, v10

    .line 1225
    :goto_1
    sget v8, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char v8, v2, v8

    .line 1214
    sget v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr v10, v3

    sput v10, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_0

    .line 1228
    :cond_2
    move-object v9, v2

    .line 1232
    :cond_3
    if-lez v7, :cond_4

    .line 1234
    new-array p1, v4, [C

    .line 1236
    invoke-static {v9, v1, p1, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    sub-int v2, v4, v7

    invoke-static {p1, v1, v9, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1238
    invoke-static {p1, v7, v9, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1242
    :cond_4
    if-eqz p2, :cond_6

    .line 1244
    new-array p1, v4, [C

    .line 1246
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_2
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p2, v4, :cond_5

    .line 1248
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget v2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sub-int v2, v4, v2

    sub-int/2addr v2, v3

    aget-char v2, v9, v2

    aput-char v2, p1, p2

    .line 1246
    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p2, v3

    sput p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_2

    .line 1251
    :cond_5
    move-object v9, p1

    .line 1255
    :cond_6
    if-lez v6, :cond_7

    .line 1257
    sput v1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    :goto_3
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    if-ge p1, v4, :cond_7

    .line 1259
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    sget p2, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    aget-char p2, v9, p2

    aget v1, p0, v5

    sub-int/2addr p2, v1

    int-to-char p2, p2

    aput-char p2, v9, p1

    .line 1257
    sget p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    add-int/2addr p1, v3

    sput p1, Lccsansan/d/shouldTryHandlingAction;->addDownloadListener:I

    goto :goto_3

    .line 1263
    :cond_7
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v9}, Ljava/lang/String;-><init>([C)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    .line 1264
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_5

    :goto_4
    throw p0

    :goto_5
    goto :goto_4
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 8

    .line 15
    sget v0, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    add-int/lit8 v0, v0, 0x53

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 13
    const/16 v0, 0x4d

    goto :goto_0

    :cond_0
    const/16 v0, 0x5c

    :goto_0
    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :pswitch_0
    invoke-static {p0, p1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    :pswitch_1
    goto :goto_3

    .line 15
    :catchall_0
    move-exception p0

    throw p0

    .line 13
    :goto_1
    const/4 v1, 0x0

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    :goto_2
    packed-switch v1, :pswitch_data_1

    goto :goto_4

    .line 15
    :goto_3
    sget v1, Lccsancom/san/core/IncentiveDownloadUtils;->addDownloadListener:I

    add-int/lit8 v1, v1, 0xf

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener:I

    rem-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_2

    .line 13
    :cond_2
    nop

    .line 15
    const-string v1, ""

    move-object v6, v1

    goto :goto_5

    .line 13
    :cond_3
    :goto_4
    const-string v1, "foreground_start_activity_fail"

    move-object v6, v1

    :goto_5
    nop

    .line 14
    const-string v7, "onActivityActive"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, v0

    invoke-static/range {v2 .. v7}, Lccsancom/san/core/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)V

    .line 15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startActivity success: pkgName="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", adId="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CPIApkOperateHelper"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
