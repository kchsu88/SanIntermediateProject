.class public Lccsancom/san/az/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:[C

.field public static final addDownloadListener:[B

.field private static getDownloadedRecordByUrl:I

.field private static getDownloadingList:I

.field private static removeDownloadListener:J

.field public static final unifiedDownload:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    const/4 v1, 0x1

    sput v1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    invoke-static {}, Lccsancom/san/az/removeDownloadListener;->addDownloadListener()V

    const/16 v2, 0x62

    new-array v2, v2, [B

    fill-array-data v2, :array_0

    sput-object v2, Lccsancom/san/az/removeDownloadListener;->addDownloadListener:[B

    const/16 v2, 0x46

    sput v2, Lccsancom/san/az/removeDownloadListener;->unifiedDownload:I

    sget v2, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v2, v2, 0x6b

    rem-int/lit16 v3, v2, 0x80

    sput v3, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-void

    :goto_1
    const/16 v1, 0x5e

    :try_start_0
    div-int/2addr v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 1
        0x6dt
        0x41t
        -0x66t
        -0x79t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x17t
        0x2et
        0x1t
        0x8t
        -0xdt
        0x15t
        -0x2t
        0xft
        -0x8t
        0x10t
        -0x1t
        -0x4t
        -0x3t
        -0x34t
        0x37t
        0xet
        0x1t
        0x8t
        -0xdt
        0xbt
        0x8t
        -0x44t
        0x44t
        -0x1t
        -0x3dt
        0x24t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x16t
        0x16t
        0xft
        -0xbt
        0x8t
        0x0t
        0xft
        0x0t
        0xft
        -0x1at
        0x15t
        0xet
        0x6t
        -0xet
        0x10t
        0x3t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x1at
        0x27t
        0x7t
        0x3t
        -0x11t
        0xdt
        0x2t
        0x9t
    .end array-data
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;
    .locals 14

    .line 120
    nop

    .line 112
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x52

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 120
    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x55

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object v2

    :pswitch_0
    :try_start_0
    invoke-super {v2}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v2

    :catchall_0
    move-exception p0

    throw p0

    .line 114
    :cond_1
    const-string v0, ".apk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_2

    .line 120
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const/16 v5, 0x32

    const/16 v6, 0xe

    packed-switch v0, :pswitch_data_1

    .line 117
    invoke-static {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    .line 118
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_2

    .line 115
    :pswitch_1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    .line 120
    sget v7, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v7, v7, 0x45

    rem-int/lit16 v8, v7, 0x80

    sput v8, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_3

    .line 115
    :cond_3
    :try_start_1
    sget v7, Lccsancom/san/az/removeDownloadListener;->unifiedDownload:I

    ushr-int/lit8 v3, v7, 0x1

    int-to-byte v3, v3

    sget-object v7, Lccsancom/san/az/removeDownloadListener;->addDownloadListener:[B

    aget-byte v1, v7, v1

    int-to-byte v1, v1

    int-to-byte v8, v1

    invoke-static {v3, v1, v8}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v3, v7, v6

    int-to-byte v3, v3

    aget-byte v5, v7, v5

    int-to-byte v5, v5

    int-to-byte v6, v5

    invoke-static {v3, v5, v6}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-virtual {v0, p0, v4}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_4

    throw v0

    :cond_4
    throw p0

    .line 119
    :goto_2
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->addDownloadListener()[Lccsansan/da/removeDownloadListener;

    move-result-object p0

    array-length v0, p0

    .line 120
    const/4 v7, 0x0

    .line 119
    :goto_3
    if-ge v7, v0, :cond_9

    .line 120
    sget v8, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v8, v8, 0x1d

    rem-int/lit16 v9, v8, 0x80

    sput v9, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_5

    .line 119
    :cond_5
    aget-object v8, p0, v7

    .line 120
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v9

    sget v10, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v10, v10, 0x31

    rem-int/lit16 v11, v10, 0x80

    sput v11, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_6

    :cond_6
    :try_start_2
    sget v10, Lccsancom/san/az/removeDownloadListener;->unifiedDownload:I

    ushr-int/2addr v10, v3

    int-to-byte v10, v10

    sget-object v11, Lccsancom/san/az/removeDownloadListener;->addDownloadListener:[B

    aget-byte v12, v11, v1

    int-to-byte v12, v12

    int-to-byte v13, v12

    invoke-static {v10, v12, v13}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v12, v11, v6

    int-to-byte v12, v12

    aget-byte v11, v11, v5

    int-to-byte v11, v11

    int-to-byte v13, v11

    invoke-static {v12, v11, v13}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v10, v9, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lccsanandroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-virtual {v8}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8, v4}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object v8

    if-eqz v8, :cond_7

    const/4 v9, 0x1

    goto :goto_4

    :cond_7
    const/4 v9, 0x0

    :goto_4
    packed-switch v9, :pswitch_data_2

    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_5

    :pswitch_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :goto_5
    return-object v8

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_8

    throw v0

    :cond_8
    throw p0

    :cond_9
    return-object v2

    :pswitch_data_0
    .packed-switch 0x52
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_2
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(BBB)Ljava/lang/String;
    .locals 9

    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v0, 0x3b

    rem-int/lit16 v2, v1, 0x80

    sput v2, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    sget-object v1, Lccsancom/san/az/removeDownloadListener;->addDownloadListener:[B

    mul-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, 0x11

    mul-int/lit8 p2, p2, 0x2

    rsub-int/lit8 p2, p2, 0x67

    mul-int/lit8 p0, p0, 0x2

    rsub-int/lit8 p0, p0, 0x4a

    new-array v2, p1, [B

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    packed-switch v5, :pswitch_data_0

    const/4 v0, 0x0

    goto :goto_1

    :pswitch_0
    add-int/lit8 v0, v0, 0x13

    rem-int/lit16 v5, v0, 0x80

    sput v5, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    move v0, p2

    const/4 v5, 0x0

    move p2, p1

    goto :goto_2

    :goto_1
    add-int/lit8 v5, v0, 0x1

    int-to-byte v6, p2

    aput-byte v6, v2, v0

    if-ne v5, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2, v4}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v0, v1, p0

    sget v6, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v6, v6, 0x5d

    rem-int/lit16 v7, v6, 0x80

    sput v7, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v6, v6, 0x2

    move v8, p2

    move p2, p1

    move p1, v0

    move v0, v8

    :goto_2
    add-int/2addr p0, v3

    add-int/2addr v0, p1

    add-int/lit8 p1, v0, -0x2

    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x29

    rem-int/lit16 v6, v0, 0x80

    sput v6, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    goto :goto_3

    :cond_2
    const/16 v0, 0x3c

    :goto_3
    packed-switch v0, :pswitch_data_1

    :pswitch_1
    move v0, v5

    move v8, p2

    move p2, p1

    move p1, v8

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch
.end method

.method private static IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V
    .locals 4

    .line 24
    nop

    .line 21
    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x33

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 0
    :cond_0
    if-nez p0, :cond_1

    .line 24
    return-void

    .line 17
    :cond_1
    :try_start_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/KeyguardManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 21
    const/4 v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    :goto_1
    goto :goto_4

    .line 19
    :pswitch_0
    invoke-virtual {v0}, Lccsanandroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    .line 24
    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x75

    rem-int/lit16 v3, v0, 0x80

    sput v3, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3

    .line 21
    const/16 v0, 0x16

    goto :goto_2

    :cond_3
    const/4 v0, 0x1

    :goto_2
    const-string v3, "lock_screen"

    packed-switch v0, :pswitch_data_1

    .line 19
    goto :goto_3

    .line 24
    :pswitch_1
    nop

    .line 21
    :try_start_1
    invoke-virtual {p0, v3, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V

    goto :goto_1

    :goto_3
    invoke-virtual {p0, v3, v2}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_4
    :goto_4
    const-string v0, "is_background"

    .line 24
    :try_start_2
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lccsansan/p/getDownloadedList;->addDownloadListener(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x16
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic addDownloadListener(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2

    .line 3
    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x2b

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/san/az/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object p0

    sget p1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x73

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    const/16 p1, 0x39

    goto :goto_0

    :cond_1
    const/16 p1, 0x3d

    :goto_0
    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return-object p0

    :goto_1
    const/4 p1, 0x0

    :try_start_0
    invoke-super {p1}, Ljava/lang/Object;->hashCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method

.method static addDownloadListener()V
    .locals 2

    const/16 v0, 0x9d

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils:[C

    const-wide v0, 0x9986e20856f524L

    sput-wide v0, Lccsancom/san/az/removeDownloadListener;->removeDownloadListener:J

    return-void

    nop

    :array_0
    .array-data 2
        0x69s
        -0xab6s
        -0x15c5s
        -0x20e8s
        -0x2b0fs
        -0x3628s
        -0x414cs
        -0x4c5ds
        -0x56ads
        -0x61d0s
        -0x6cf7s
        -0x7702s
        0x7dc4s
        0x72s
        -0xabfs
        -0x15d5s
        -0x20fds
        -0x2b1es
        -0x3630s
        -0x416fs
        -0x4c6es
        -0x56ads
        -0x61d0s
        -0x6cf7s
        -0x7720s
        0x7ddcs
        0x72f4s
        0x67d8s
        0x2a7s
        -0x877s
        -0x1711s
        -0x2219s
        -0x29d3s
        -0x34f2s
        -0x4381s
        -0x4ea4s
        -0x546bs
        -0x6304s
        -0x6e30s
        -0x75f9s
        0x7f14s
        0x7061s
        0x654fs
        0x5fa3s
        0x50f5s
        0x45d7s
        0x3e39s
        0x3331s
        0x246as
        0x1953s
        0x13b8s
        0x489s
        -0x628s
        -0xdc4s
        -0x18e7s
        -0x2796s
        -0x2247s
        0x2897s
        0x37f1s
        0x2f9s
        0x933s
        0x1410s
        0x6361s
        0x6e42s
        0x748bs
        0x43e2s
        0x4eces
        0x5519s
        -0x5fe5s
        -0x5083s
        -0x45bas
        -0x7f41s
        -0x7004s
        -0x6539s
        -0x1ecas
        -0x13e1s
        -0x5aa3s
        0x505bs
        0x4f38s
        0x7a52s
        0x71e0s
        0x6cc5s
        0x1bb2s
        0x16c2s
        0xc57s
        0x3b34s
        0x3605s
        0x2de6s
        -0x2731s
        -0x285as
        -0x3d76s
        -0x7des
        -0x8c6s
        -0x1dfds
        -0x6608s
        -0x6b2ds
        -0x7c5ds
        -0x417ds
        -0x4b9bs
        -0x5cfes
        0x5e1fs
        0x55eas
        0x40c6s
        0x7ff2s
        0x6a8cs
        0x606fs
        0x1f4as
        0xa2ds
        0x1e9s
        0x3c9as
        0x2b9as
        0x269ds
        -0x239es
        -0x34bds
        -0x39cas
        -0x2f3s
        -0x1732s
        -0x1805s
        -0x68f7s
        0x623cs
        0x7d50s
        0x4868s
        0x4391s
        0x5ebfs
        0x29d1s
        0x24e0s
        0x3e21s
        0x943s
        0x46es
        0x1fcbs
        -0x1552s
        -0x1a2es
        -0xf0cs
        -0x35a6s
        -0x3ab7s
        -0x2f9es
        -0x547cs
        -0x594as
        -0x4e29s
        -0x730bs
        -0x79ecs
        -0x6e86s
        0x6c78s
        0x678ds
        0x72a3s
        0x4dcfs
        0x58f9s
        0x521bs
        0x2d35s
        0x3819s
        0x3389s
        0xebes
        0x19c3s
        0x14ecs
        -0x11efs
        -0x6d6s
        -0xbabs
    .end array-data
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V
    .locals 5

    .line 111
    nop

    .line 106
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 107
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 108
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 111
    const/16 v1, 0x1a

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    :goto_0
    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    :goto_1
    goto :goto_2

    :pswitch_0
    sget v1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x31

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 108
    :cond_1
    const/4 v1, 0x3

    .line 109
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 111
    sget v1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v1, v1, 0x13

    rem-int/lit16 v3, v1, 0x80

    sput v3, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 109
    :goto_2
    invoke-static {v2, v2}, Lccsanandroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v1

    add-int/lit8 v1, v1, 0x76

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lccsanandroid/util/TypedValue;->complexToFraction(IFF)F

    move-result v2

    cmpl-float v2, v2, v3

    add-int/lit8 v2, v2, 0x27

    const v3, 0x9768

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v4

    shr-int/lit8 v4, v4, 0x10

    sub-int/2addr v3, v4

    int-to-char v3, v3

    invoke-static {v1, v2, v3}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(IIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    .line 110
    invoke-virtual {v0, p1, v1}, Lccsanandroid/content/Intent;->setDataAndType(Lccsanandroid/net/Uri;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 111
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V

    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x9

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x1a
        :pswitch_0
    .end packed-switch
.end method

.method private static getDownloadingList(IIC)Ljava/lang/String;
    .locals 9

    .line 1099
    sget-object v0, Lccsansan/d/getThumbPathByRecord;->unifiedDownload:Ljava/lang/Object;

    monitor-enter v0

    .line 1102
    :try_start_0
    new-array v1, p1, [C

    .line 1105
    const/4 v2, 0x0

    sput v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    :goto_0
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    if-ge v2, p1, :cond_0

    .line 1107
    sget v2, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    sget-object v3, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils:[C

    sget v4, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    add-int/2addr v4, p0

    aget-char v3, v3, v4

    int-to-long v3, v3

    sget v5, Lccsansan/d/getThumbPathByRecord;->IncentiveDownloadUtils:I

    int-to-long v5, v5

    sget-wide v7, Lccsancom/san/az/removeDownloadListener;->removeDownloadListener:J

    mul-long v5, v5, v7

    xor-long/2addr v3, v5

    int-to-long v5, p2

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

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    .locals 5

    .line 100
    nop

    .line 48
    :try_start_0
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_4

    .line 100
    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x79

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    goto :goto_0

    :cond_0
    const/16 v0, 0x27

    :goto_0
    packed-switch v0, :pswitch_data_0

    :try_start_1
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadingRecordByUrl()Z

    move-result v0

    goto :goto_1

    .line 48
    :pswitch_0
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadingRecordByUrl()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 100
    :goto_1
    const/4 v1, 0x0

    :try_start_2
    invoke-super {v1}, Ljava/lang/Object;->hashCode()I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_1

    goto/16 :goto_5

    .line 61
    :cond_1
    :try_start_3
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->getDownloadedList()Z

    move-result v0

    if-eqz v0, :cond_3

    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_2

    .line 100
    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    packed-switch v0, :pswitch_data_1

    goto :goto_3

    .line 62
    :pswitch_1
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lccsancom/san/az/getDownloadingList;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lccsancom/san/az/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-static {p1}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getFadingEdgeLength()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    rsub-int/lit8 v0, v0, 0x1c

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarSize()I

    move-result v1

    shr-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x1c

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v2

    shr-int/lit8 v2, v2, 0x8

    add-int/lit16 v2, v2, 0x2d4

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-static {p1, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 100
    goto :goto_4

    .line 66
    :cond_3
    :goto_3
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {p0, v0}, Lccsansan/bw/AdInfo;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/da/removeDownloadListener;)Lccsanandroid/net/Uri;

    move-result-object v0

    .line 67
    invoke-static {p0, v0}, Lccsancom/san/az/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)V

    .line 68
    invoke-static {p1}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    invoke-static {}, Lccsanandroid/os/Process;->getElapsedCpuTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    rsub-int/lit8 v0, v4, 0x39

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getKeyRepeatDelay()I

    move-result v1

    shr-int/lit8 v1, v1, 0x10

    rsub-int/lit8 v1, v1, 0x14

    const v2, 0xddc9

    invoke-static {}, Lccsanandroid/view/KeyEvent;->getModifierMetaStateMask()I

    move-result v3

    int-to-byte v3, v3

    sub-int/2addr v2, v3

    int-to-char v2, v2

    invoke-static {v0, v1, v2}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(IIC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {p1, v0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 72
    :goto_4
    invoke-static {p0}, Lccsansan/bn/getDownloadedRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 73
    invoke-static {p0, p1}, Lccsansan/bn/getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 100
    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x6f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    goto :goto_6

    :catchall_0
    move-exception p0

    throw p0

    .line 48
    :cond_4
    :goto_5
    nop

    .line 73
    :try_start_4
    const-string p0, "AZManager"

    const-string v0, "operateApp(): app path is empty!!"

    .line 74
    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    new-instance v0, Lccsancom/san/az/removeDownloadListener$getDownloadingList;

    invoke-direct {v0}, Lccsancom/san/az/removeDownloadListener$getDownloadingList;-><init>()V

    invoke-virtual {p0, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 81
    invoke-static {p1}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    const-string p0, "app_not_exist"

    .line 82
    invoke-static {p1, p0}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 100
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    new-instance v0, Lccsancom/san/az/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, p1}, Lccsancom/san/az/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/p/getDownloadedList;)V

    invoke-virtual {p0, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :goto_6
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x27
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;Ljava/lang/String;)V
    .locals 8

    .line 43
    nop

    .line 4
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->unifiedDownload()I

    move-result v1

    invoke-static {p0, v0, v1}, Lccsansan/bw/getDownloadedCount;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 34
    const/16 v0, 0x3e

    goto :goto_0

    :cond_0
    const/16 v0, 0x23

    :goto_0
    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    .line 4
    const/4 v0, 0x1

    goto :goto_1

    :pswitch_0
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    .line 43
    sget p2, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 p2, p2, 0x11

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lccsancom/san/core/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    new-instance p1, Lccsancom/san/az/removeDownloadListener$unifiedDownload;

    invoke-direct {p1}, Lccsancom/san/az/removeDownloadListener$unifiedDownload;-><init>()V

    invoke-virtual {p0, p1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 43
    nop

    .line 10
    :cond_2
    return-void

    .line 20
    :cond_3
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    .line 21
    const-string v3, "portal"

    invoke-virtual {v0, v3, p2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v3

    const-string v4, "path"

    invoke-virtual {v0, v4, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v3, "isGp2p"

    const-string v4, "false"

    invoke-virtual {v0, v3, v4}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    .line 25
    const-string v4, "key"

    invoke-virtual {v0, v4, v3}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    invoke-static {v3, p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object v3

    invoke-static {}, Lccsanandroid/os/Process;->myTid()I

    move-result v4

    shr-int/lit8 v4, v4, 0x16

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getEdgeSlop()I

    move-result v5

    shr-int/lit8 v5, v5, 0x10

    rsub-int/lit8 v5, v5, 0xd

    const/16 v6, 0x30

    const-string v7, ""

    invoke-static {v7, v6, v2, v2}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;CII)I

    move-result v2

    add-int/2addr v2, v1

    int-to-char v2, v2

    invoke-static {v4, v5, v2}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(IIC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2, v0}, Lccsansan/r/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 29
    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/p/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    const-string v3, "system"

    invoke-static {v0, v2, p2, v3}, Lccsancom/san/az/removeDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    sget p2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p2, v0, :cond_9

    .line 43
    sget p2, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p2, p2, 0x7d

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_4

    .line 31
    :cond_4
    :try_start_0
    sget p2, Lccsancom/san/az/removeDownloadListener;->unifiedDownload:I

    ushr-int/2addr p2, v1

    int-to-byte p2, p2

    sget-object v0, Lccsancom/san/az/removeDownloadListener;->addDownloadListener:[B

    const/16 v2, 0x52

    aget-byte v3, v0, v2

    int-to-byte v3, v3

    int-to-byte v4, v3

    invoke-static {p2, v3, v4}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const/16 v3, 0xe

    aget-byte v4, v0, v3

    int-to-byte v4, v4

    const/16 v5, 0x32

    aget-byte v6, v0, v5

    int-to-byte v6, v6

    int-to-byte v7, v6

    invoke-static {v4, v6, v7}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {p2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 43
    sget v4, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v4, v4, 0x25

    rem-int/lit16 v7, v4, 0x80

    sput v7, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_5

    .line 31
    :cond_5
    const/16 v4, 0x13

    :try_start_1
    aget-byte v4, v0, v4

    add-int/2addr v4, v1

    int-to-byte v1, v4

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    aget-byte v2, v0, v2

    int-to-byte v2, v2

    invoke-static {v1, v3, v2}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    aget-byte v2, v0, v5

    int-to-byte v2, v2

    const/16 v3, 0x2e

    aget-byte v3, v0, v3

    int-to-byte v3, v3

    const/16 v4, 0x60

    aget-byte v0, v0, v4

    int-to-byte v0, v0

    invoke-static {v2, v3, v0}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(BBB)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz p2, :cond_7

    .line 43
    sget p2, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 p2, p2, 0x77

    rem-int/lit16 v0, p2, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_6

    .line 34
    const/16 p2, 0x4f

    goto :goto_2

    :cond_6
    const/16 p2, 0x5b

    :goto_2
    packed-switch p2, :pswitch_data_1

    :try_start_2
    invoke-static {p0, p1}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    goto :goto_4

    :pswitch_1
    invoke-static {p0, p1}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    invoke-super {v6}, Ljava/lang/Object;->hashCode()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 43
    :catchall_0
    move-exception p0

    throw p0

    .line 36
    :cond_7
    :try_start_4
    invoke-static {p1}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    const-string p2, "no_permission"

    .line 37
    invoke-static {p1, p2}, Lccsansan/bn/deleteDownItem;->unifiedDownload(Lccsansan/p/getDownloadedList;Ljava/lang/String;)V

    .line 38
    invoke-static {p0}, Lccsansan/bw/trackReportClick;->unifiedDownload(Lccsanandroid/content/Context;)V

    goto :goto_4

    .line 31
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_8

    :goto_3
    throw p1

    :cond_8
    throw p0

    :catchall_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz p1, :cond_8

    goto :goto_3

    .line 38
    :catch_0
    move-exception p0

    goto :goto_4

    .line 43
    :cond_9
    invoke-static {p0, p1}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Lccsansan/p/getDownloadedList;)V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x23
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4f
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic removeDownloadListener(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/IntentSender;
    .locals 2

    .line 2
    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x11

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/san/az/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/IntentSender;

    move-result-object p0

    sget p1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p1, p1, 0x49

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static removeDownloadListener(Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;)Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZI",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 6
    nop

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    const-string v1, "pkg"

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    const-string p1, "result"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    const-string p1, "statusCode"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    const-string p0, "errMsg"

    invoke-virtual {v0, p0, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    const-string p0, "filePath"

    invoke-virtual {v0, p0, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0xb

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    packed-switch p0, :pswitch_data_0

    return-object v0

    :pswitch_0
    const/16 p0, 0x2c

    :try_start_0
    div-int/2addr p0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception p0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 v0, v0, 0x69

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 101
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 104
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;

    invoke-direct {v1, p1, p0, p2, p3}, Lccsancom/san/az/removeDownloadListener$removeDownloadListener;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 105
    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x77

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-wide/16 p1, 0x0

    invoke-static {p1, p2}, Lccsanandroid/widget/ExpandableListView;->getPackedPositionChild(J)I

    move-result p1

    add-int/lit8 p1, p1, 0x4d

    const-string p2, ""

    const/4 p3, 0x0

    invoke-static {p2, p2, p3, p3}, Lccsanandroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;II)I

    move-result p2

    rsub-int/lit8 p2, p2, 0x2a

    const p3, 0xa51e

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v0

    shr-int/lit8 v0, v0, 0x10

    add-int/2addr v0, p3

    int-to-char p3, v0

    invoke-static {p1, p2, p3}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(IIC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/getDownloadedList;)V
    .locals 2

    .line 1
    sget v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 v0, v0, 0x5f

    rem-int/lit16 v1, v0, 0x80

    sput v1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {p0}, Lccsancom/san/az/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/p/getDownloadedList;)V

    packed-switch v0, :pswitch_data_0

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
    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    add-int/lit8 p0, p0, 0x79

    rem-int/lit16 v0, p0, 0x80

    sput v0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    rem-int/lit8 p0, p0, 0x2

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static unifiedDownload(Lccsanandroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/IntentSender;
    .locals 1

    .line 16
    nop

    .line 7
    new-instance p2, Lccsanandroid/content/Intent;

    const-string v0, "com.san.package.action.az_completed"

    invoke-direct {p2, v0}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsanandroid/content/Intent;->setPackage(Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 9
    const-string v0, "key_dynamic_app_pkg_name"

    invoke-virtual {p2, v0, p3}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    .line 10
    const-string p3, "key_dynamic_app_az_path"

    invoke-virtual {p2, p3, p4}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const/4 p3, 0x0

    .line 11
    invoke-static {p0, p1, p2, p3}, Lccsanandroid/app/PendingIntent;->getBroadcast(Lccsanandroid/content/Context;ILccsanandroid/content/Intent;I)Lccsanandroid/app/PendingIntent;

    move-result-object p0

    .line 16
    invoke-virtual {p0}, Lccsanandroid/app/PendingIntent;->getIntentSender()Lccsanandroid/content/IntentSender;

    move-result-object p0

    sget p1, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 p1, p1, 0x51

    rem-int/lit16 p2, p1, 0x80

    sput p2, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p1, p1, 0x2

    return-object p0
.end method

.method private static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 47
    nop

    .line 44
    :try_start_0
    invoke-static {p0, p1}, Lccsansan/bw/getErrorCode;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0, p2}, Lccsansan/bw/getErrorCode;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    invoke-static {p0, p3}, Lccsansan/bw/getErrorCode;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "AZManager"

    .line 47
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/view/ViewConfiguration;->getScrollBarFadeDuration()I

    move-result p3

    shr-int/lit8 p3, p3, 0x10

    rsub-int/lit8 p3, p3, 0xd

    const/4 v0, 0x0

    invoke-static {v0, v0}, Lccsanandroid/view/View;->resolveSize(II)I

    move-result v1

    add-int/lit8 v1, v1, 0xf

    invoke-static {}, Lccsanandroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    cmp-long v7, v2, v4

    rsub-int/lit8 v2, v7, 0x1

    int-to-char v2, v2

    invoke-static {p3, v1, v2}, Lccsancom/san/az/removeDownloadListener;->getDownloadingList(IIC)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    sget p0, Lccsancom/san/az/removeDownloadListener;->getDownloadingList:I

    add-int/lit8 p0, p0, 0x3f

    rem-int/lit16 p1, p0, 0x80

    sput p1, Lccsancom/san/az/removeDownloadListener;->getDownloadedRecordByUrl:I

    rem-int/lit8 p0, p0, 0x2

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method
