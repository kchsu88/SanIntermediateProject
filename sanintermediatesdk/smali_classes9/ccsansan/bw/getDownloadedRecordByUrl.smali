.class public final Lccsansan/bw/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final addDownloadListener:I

.field public static final getDownloadingList:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList:[B

    const/16 v0, 0x2a

    sput v0, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0x30t
        -0xat
        0x79t
        0x5t
        0x0t
        0x11t
        -0x22t
        0x13t
        0x4t
        0xat
        -0x8t
        0x8t
        0x0t
        -0x1at
        0x27t
        -0x6t
        0xbt
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
    .end array-data
.end method

.method private static addDownloadListener(BIB)Ljava/lang/String;
    .locals 5

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    sget-object v0, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList:[B

    add-int/lit8 p2, p2, 0xe

    rsub-int/lit8 p1, p1, 0x47

    new-array v1, p2, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v4, p1

    const/4 v3, 0x0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p0

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v4, v0, p1

    :goto_1
    add-int/lit8 p1, p1, 0x1

    add-int/2addr p0, v4

    add-int/lit8 p0, p0, -0x2

    goto :goto_0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;
    .locals 6

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList:[B

    const/4 v2, 0x4

    aget-byte v3, v1, v2

    int-to-byte v3, v3

    or-int/lit8 v4, v3, 0x36

    int-to-byte v4, v4

    const/16 v5, 0x9

    aget-byte v5, v1, v5

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x1a

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    aget-byte v2, v1, v2

    int-to-byte v2, v2

    const/16 v5, 0x16

    aget-byte v1, v1, v5

    neg-int v1, v1

    int-to-byte v1, v1

    invoke-static {v4, v2, v1}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v1, 0x4000

    .line 2
    :try_start_1
    invoke-virtual {p0, p1, v1}, Lccsanandroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Lccsanandroid/content/pm/PackageInfo;

    move-result-object p0

    return-object p0

    .line 1
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    throw p1

    :cond_0
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2
    :catchall_1
    move-exception p0

    return-object v0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/res/Resources;
    .locals 6

    .line 1
    :try_start_0
    new-instance v0, Lccsanandroid/util/DisplayMetrics;

    invoke-direct {v0}, Lccsanandroid/util/DisplayMetrics;-><init>()V

    .line 2
    invoke-virtual {v0}, Lccsanandroid/util/DisplayMetrics;->setToDefaults()V

    const-string v0, "android.content.res.AssetManager"

    .line 4
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    .line 6
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 7
    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "addAssetPath"

    .line 8
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 9
    new-array v3, v2, [Ljava/lang/Object;

    .line 10
    aput-object p1, v3, v5

    .line 11
    invoke-virtual {v0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p0

    .line 14
    const/4 p1, 0x3

    new-array v0, p1, [Ljava/lang/Class;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v5

    .line 16
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    aput-object v3, v0, v2

    .line 17
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v0, v4

    .line 18
    const-class v3, Lccsanandroid/content/res/Resources;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 19
    new-array p1, p1, [Ljava/lang/Object;

    .line 20
    aput-object v1, p1, v5

    .line 21
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getDisplayMetrics()Lccsanandroid/util/DisplayMetrics;

    move-result-object v1

    aput-object v1, p1, v2

    .line 22
    invoke-virtual {p0}, Lccsanandroid/content/res/Resources;->getConfiguration()Lccsanandroid/content/res/Configuration;

    move-result-object p0

    aput-object p0, p1, v4

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 26
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageExtractor"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/pm/PackageInfo;
    .locals 10

    .line 1
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList:[B

    const/4 v2, 0x4

    aget-byte v3, v1, v2

    int-to-byte v3, v3

    or-int/lit8 v4, v3, 0x36

    int-to-byte v4, v4

    const/16 v5, 0x9

    aget-byte v5, v1, v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    int-to-byte v5, v5

    invoke-static {v3, v4, v5}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0x1a

    aget-byte v5, v1, v4

    int-to-byte v5, v5

    aget-byte v7, v1, v2

    int-to-byte v7, v7

    const/16 v8, 0x16

    aget-byte v8, v1, v8

    neg-int v8, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x2

    :try_start_1
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    aput-object p1, v5, v7

    aget-byte p1, v1, v2

    int-to-byte p1, p1

    or-int/lit8 v8, p1, 0x20

    int-to-byte v8, v8

    const/4 v9, 0x7

    aget-byte v9, v1, v9

    int-to-byte v9, v9

    invoke-static {p1, v8, v9}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    or-int/lit8 v8, v4, 0x42

    int-to-byte v8, v8

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    invoke-static {v4, v8, v1}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v7

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v6

    invoke-virtual {p1, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    :goto_0
    throw p1

    :cond_0
    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1
    :try_end_2
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz p1, :cond_0

    goto :goto_0

    :catch_0
    move-exception p0

    return-object v0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/content/pm/PackageInfo;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v1, p2, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_1

    .line 3
    iget-object p0, p2, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 5
    :cond_1
    iget-object v2, v1, Lccsanandroid/content/pm/ApplicationInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v2, :cond_2

    .line 6
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 9
    :cond_2
    :try_start_0
    iget v1, v1, Lccsanandroid/content/pm/ApplicationInfo;->labelRes:I

    if-eqz v1, :cond_3

    .line 10
    invoke-static {p0, p1}, Lccsansan/bw/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/res/Resources;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 12
    iget-object p1, p2, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget p1, p1, Lccsanandroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {p0, p1}, Lccsanandroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 17
    :cond_3
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    :try_start_1
    sget-object p1, Lccsansan/bw/getDownloadedRecordByUrl;->getDownloadingList:[B

    const/4 v1, 0x4

    aget-byte v2, p1, v1

    int-to-byte v2, v2

    or-int/lit8 v3, v2, 0x36

    int-to-byte v3, v3

    const/16 v4, 0x9

    aget-byte v4, p1, v4

    add-int/lit8 v4, v4, -0x1

    int-to-byte v4, v4

    invoke-static {v2, v3, v4}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v3, 0x1a

    aget-byte v3, p1, v3

    int-to-byte v3, v3

    aget-byte v1, p1, v1

    int-to-byte v1, v1

    const/16 v4, 0x16

    aget-byte p1, p1, v4

    neg-int p1, p1

    int-to-byte p1, p1

    invoke-static {v3, v1, p1}, Lccsansan/bw/getDownloadedRecordByUrl;->addDownloadListener(BIB)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p2, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    invoke-virtual {p0, p1}, Lccsanandroid/content/pm/PackageManager;->getApplicationLabel(Lccsanandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object p0

    .line 23
    :cond_4
    iget-object p0, p2, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    if-eqz p0, :cond_5

    return-object p0

    .line 26
    :cond_5
    iget-object p0, p2, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    return-object p0

    .line 17
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6

    throw p1

    :cond_6
    throw p0
.end method
