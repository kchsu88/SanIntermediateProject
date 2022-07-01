.class public Lccsansan/bw/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final removeDownloadListener:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x5b

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/addDownloadListener;->unifiedDownload:[B

    const/16 v0, 0x88

    sput v0, Lccsansan/bw/addDownloadListener;->removeDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0x3at
        0x54t
        0xdt
        -0x30t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x17t
        -0x2et
        -0x1t
        -0x8t
        0xdt
        -0x15t
        0x2t
        -0xft
        0x8t
        -0x10t
        0x1t
        0x4t
        0x3t
        0x34t
        -0x37t
        -0xet
        -0x1t
        -0x8t
        0xdt
        -0xbt
        -0x8t
        0x44t
        -0x44t
        0x1t
        0x3dt
        -0x24t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x16t
        -0x16t
        -0xft
        0xbt
        -0x8t
        0x0t
        -0xft
        0x0t
        -0x11t
        0x31t
        -0x31t
        -0x2t
        0x2t
        0x1t
        0x4t
        0x0t
        -0x15t
        0x9t
        -0x8t
        -0x1t
        0x23t
        -0x27t
        0x6t
        -0xbt
    .end array-data
.end method

.method private static IncentiveDownloadUtils(IBS)Ljava/lang/String;
    .locals 6

    rsub-int/lit8 p0, p0, 0x21

    mul-int/lit8 p2, p2, 0x2

    rsub-int/lit8 p2, p2, 0x49

    sget-object v0, Lccsansan/bw/addDownloadListener;->unifiedDownload:[B

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x61

    new-array v1, p0, [B

    add-int/lit8 p0, p0, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p1

    aput-byte v4, v1, v3

    if-ne v3, p0, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, p2

    move-object v5, v0

    move v0, p2

    move p2, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    neg-int p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x2

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method public static getDownloadingList()Ljava/lang/String;
    .locals 10

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/addDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v2, "usagestats"

    invoke-virtual {v0, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lccsanandroid/app/usage/UsageStatsManager;

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 6
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->deleteDownList()I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    int-to-long v3, v0

    sub-long v8, v6, v3

    const/4 v3, 0x4

    .line 7
    move-wide v4, v8

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 11
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 12
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "PermissionUtils"

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroid/app/usage/UsageStats;

    .line 13
    invoke-virtual {v3}, Lccsanandroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getStats foreach pkgName ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsanandroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_1
    :try_start_0
    invoke-virtual {v2}, Ljava/util/TreeMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 18
    invoke-virtual {v2}, Ljava/util/TreeMap;->lastKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/usage/UsageStats;

    if-nez v0, :cond_2

    return-object v1

    .line 22
    :cond_2
    invoke-virtual {v0}, Lccsanandroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getStats pkgName ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :cond_3
    return-object v1
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)Z
    .locals 11

    .line 24
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x13

    if-lt v0, v2, :cond_3

    .line 26
    const/4 v0, 0x0

    :try_start_0
    sget-object v2, Lccsansan/bw/addDownloadListener;->unifiedDownload:[B

    const/16 v3, 0x2f

    aget-byte v3, v2, v3

    neg-int v3, v3

    int-to-byte v3, v3

    const/16 v4, 0x32

    aget-byte v5, v2, v4

    int-to-byte v5, v5

    const/16 v6, 0x57

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lccsansan/bw/addDownloadListener;->IncentiveDownloadUtils(IBS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v5, 0x6

    aget-byte v5, v2, v5

    neg-int v5, v5

    int-to-byte v5, v5

    const/4 v6, 0x7

    aget-byte v7, v2, v6

    int-to-byte v7, v7

    const/4 v8, 0x5

    aget-byte v8, v2, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lccsansan/bw/addDownloadListener;->IncentiveDownloadUtils(IBS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v3, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 27
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v7, 0x2

    :try_start_2
    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    aput-object v5, v8, v0

    aget-byte v5, v2, v4

    int-to-byte v5, v5

    int-to-byte v9, v5

    or-int/lit8 v10, v9, 0x18

    int-to-byte v10, v10

    invoke-static {v5, v9, v10}, Lccsansan/bw/addDownloadListener;->IncentiveDownloadUtils(IBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v9, 0x4

    aget-byte v9, v2, v9

    neg-int v9, v9

    int-to-byte v9, v9

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    aget-byte v2, v2, v4

    int-to-byte v2, v2

    invoke-static {v9, v6, v2}, Lccsansan/bw/addDownloadListener;->IncentiveDownloadUtils(IBS)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v4, v1

    invoke-virtual {v5, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/ApplicationInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    const-string v3, "appops"

    .line 28
    invoke-virtual {p0, v3}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/app/AppOpsManager;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "android:get_usage_stats"

    .line 29
    :try_start_4
    iget v4, v2, Lccsanandroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v2, Lccsanandroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3, v4, v2}, Lccsanandroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 27
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw p0

    .line 26
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    throw v1

    :cond_2
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 29
    :catch_0
    move-exception p0

    return v0

    :cond_3
    return v1
.end method
