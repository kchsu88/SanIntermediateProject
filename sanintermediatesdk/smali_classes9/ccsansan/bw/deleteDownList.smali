.class public Lccsansan/bw/deleteDownList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:I

.field private static final addDownloadListener:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static getDownloadedList:Ljava/lang/String;

.field private static getDownloadingList:Ljava/lang/String;

.field public static final removeDownloadListener:I

.field public static final unifiedDownload:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lccsansan/bw/deleteDownList;->getDownloadingList()V

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lccsansan/bw/deleteDownList;->addDownloadListener:Ljava/util/HashMap;

    .line 2
    const/4 v0, -0x1

    sput v0, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils:I

    .line 3
    const-string v0, ""

    sput-object v0, Lccsansan/bw/deleteDownList;->getDownloadingList:Ljava/lang/String;

    .line 4
    sput-object v0, Lccsansan/bw/deleteDownList;->getDownloadedList:Ljava/lang/String;

    return-void
.end method

.method public static IncentiveDownloadUtils()I
    .locals 1

    const/16 v0, 0x7920

    return v0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)I
    .locals 11

    .line 1
    sget v0, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils:I

    if-lez v0, :cond_0

    return v0

    .line 4
    :cond_0
    :try_start_0
    sget v0, Lccsansan/bw/deleteDownList;->removeDownloadListener:I

    and-int/lit8 v0, v0, 0x2e

    int-to-byte v0, v0

    sget-object v1, Lccsansan/bw/deleteDownList;->unifiedDownload:[B

    const/4 v2, 0x4

    aget-byte v3, v1, v2

    int-to-byte v3, v3

    const/16 v4, 0x61

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    invoke-static {v0, v3, v4}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0x42

    int-to-byte v3, v3

    const/16 v4, 0x14

    aget-byte v5, v1, v4

    int-to-byte v5, v5

    const/16 v6, 0x16

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x2

    :try_start_2
    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v6, v9

    aput-object p0, v6, v7

    const/4 p0, 0x6

    aget-byte p0, v1, p0

    int-to-byte p0, p0

    aget-byte v8, v1, v2

    int-to-byte v8, v8

    const/4 v10, 0x7

    aget-byte v10, v1, v10

    neg-int v10, v10

    int-to-byte v10, v10

    invoke-static {p0, v8, v10}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/16 v8, 0x1a

    aget-byte v8, v1, v8

    int-to-byte v8, v8

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    invoke-static {v8, v4, v1}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v7

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v9

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    iget v3, p0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    .line 8
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
    :try_end_3
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 11
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 13
    :goto_0
    sput v3, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils:I

    return v3

    .line 4
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, ""

    invoke-static {p0, p1, v0}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    .line 3
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    .line 6
    :cond_0
    sget-object v0, Lccsansan/bw/deleteDownList;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 10
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 12
    :try_start_0
    sget v2, Lccsansan/bw/deleteDownList;->removeDownloadListener:I

    and-int/lit8 v2, v2, 0x2e

    int-to-byte v2, v2

    sget-object v3, Lccsansan/bw/deleteDownList;->unifiedDownload:[B

    const/4 v4, 0x4

    aget-byte v5, v3, v4

    int-to-byte v5, v5

    const/16 v6, 0x61

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    invoke-static {v2, v5, v6}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const/16 v5, 0x42

    int-to-byte v5, v5

    const/16 v6, 0x14

    aget-byte v7, v3, v6

    int-to-byte v7, v7

    const/16 v8, 0x16

    aget-byte v8, v3, v8

    int-to-byte v8, v8

    invoke-static {v5, v7, v8}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    invoke-virtual {v2, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v2, 0x80

    const/4 v5, 0x2

    :try_start_1
    new-array v7, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x1

    aput-object v2, v7, v8

    const/4 v2, 0x0

    aput-object v0, v7, v2

    const/4 v0, 0x6

    aget-byte v0, v3, v0

    int-to-byte v0, v0

    aget-byte v4, v3, v4

    int-to-byte v4, v4

    const/4 v9, 0x7

    aget-byte v9, v3, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v0, v4, v9}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v4, 0x52

    int-to-byte v4, v4

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    const/16 v9, 0x15

    aget-byte v3, v3, v9

    int-to-byte v3, v3

    invoke-static {v4, v6, v3}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v4, v8

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/ApplicationInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :try_start_2
    iget-object p0, p0, Lccsanandroid/content/pm/ApplicationInfo;->metaData:Lccsanandroid/os/Bundle;

    invoke-virtual {p0, p1}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 15
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 12
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    :goto_0
    throw v0

    :cond_2
    throw p0

    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_3
    :goto_1
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 21
    sget-object p0, Lccsansan/bw/deleteDownList;->addDownloadListener:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_4
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object p2, v1

    :goto_2
    return-object p2
.end method

.method private static IncentiveDownloadUtils(SBS)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p1, p1, 0x6

    add-int/lit8 p1, p1, 0x61

    sget-object v0, Lccsansan/bw/deleteDownList;->unifiedDownload:[B

    add-int/lit8 p2, p2, 0xe

    add-int/lit8 p0, p0, 0x4

    new-array v1, p2, [B

    add-int/lit8 p2, p2, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    move p2, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p1

    aput-byte v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    if-ne v3, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 p0, p0, 0x1

    aget-byte v3, v0, p0

    move v5, p1

    move p1, p0

    move p0, v3

    move-object v3, v1

    move-object v1, v0

    move v0, p2

    move p2, v5

    :goto_1
    neg-int p0, p0

    add-int/2addr p2, p0

    add-int/lit8 p0, p2, -0x2

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    move v5, p1

    move p1, p0

    move p0, v5

    goto :goto_0
.end method

.method public static addDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/deleteDownList;->addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 2
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CLOUD_APPID"

    invoke-static {p0, v1, v0}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 3
    invoke-static {p0, p1}, Lccsansan/bw/toString;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadedList(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 10

    .line 1
    sget-object v0, Lccsansan/bw/deleteDownList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lccsansan/bw/deleteDownList;->getDownloadingList:Ljava/lang/String;

    return-object p0

    .line 4
    :cond_0
    :try_start_0
    sget v0, Lccsansan/bw/deleteDownList;->removeDownloadListener:I

    and-int/lit8 v0, v0, 0x2e

    int-to-byte v0, v0

    sget-object v1, Lccsansan/bw/deleteDownList;->unifiedDownload:[B

    const/4 v2, 0x4

    aget-byte v3, v1, v2

    int-to-byte v3, v3

    const/16 v4, 0x61

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    invoke-static {v0, v3, v4}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/16 v3, 0x42

    int-to-byte v3, v3

    const/16 v4, 0x14

    aget-byte v5, v1, v4

    int-to-byte v5, v5

    const/16 v6, 0x16

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    invoke-static {v3, v5, v6}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 8
    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x2

    :try_start_2
    new-array v5, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v5, v8

    aput-object p0, v5, v6

    const/4 p0, 0x6

    aget-byte p0, v1, p0

    int-to-byte p0, p0

    aget-byte v7, v1, v2

    int-to-byte v7, v7

    const/4 v9, 0x7

    aget-byte v9, v1, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {p0, v7, v9}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const/16 v7, 0x1a

    aget-byte v7, v1, v7

    int-to-byte v7, v7

    aget-byte v4, v1, v4

    int-to-byte v4, v4

    aget-byte v1, v1, v2

    int-to-byte v1, v1

    invoke-static {v7, v4, v1}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(SBS)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v8

    invoke-virtual {p0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    :try_start_3
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    goto :goto_0

    .line 8
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
    :try_end_3
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 11
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string p0, ""

    .line 13
    :goto_0
    sput-object p0, Lccsansan/bw/deleteDownList;->getDownloadingList:Ljava/lang/String;

    return-object p0

    .line 4
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_2

    throw v0

    :cond_2
    throw p0
.end method

.method public static getDownloadedRecordByUrl(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Lccsansan/bw/deleteDownList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ex"

    invoke-static {p0, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.san.channel"

    const-string v1, "gp"

    invoke-static {p0, v0, v1}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getDownloadingList()V
    .locals 1

    const/16 v0, 0x68

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/deleteDownList;->unifiedDownload:[B

    const/16 v0, 0x5d

    sput v0, Lccsansan/bw/deleteDownList;->removeDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0x18t
        0x69t
        -0x4bt
        -0x59t
        0x0t
        -0x11t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        0x6t
        -0xbt
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

.method public static removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/deleteDownList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/bw/deleteDownList;->getDownloadedList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const-string v0, "mads"

    invoke-static {p0, v0}, Lccsansan/bw/deleteDownList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "com.san.APP_KEY"

    invoke-static {p0, v1}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    sput-object p0, Lccsansan/bw/deleteDownList;->getDownloadedList:Ljava/lang/String;

    goto :goto_1

    .line 1
    :cond_1
    const-string v0, ""

    .line 5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MadsKey = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsansan/bw/deleteDownList;->getDownloadedList:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " appKeyFromConfig = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AppUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p0, Lccsansan/bw/deleteDownList;->getDownloadedList:Ljava/lang/String;

    return-object p0
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    :try_start_0
    const-string v1, "app_keys"

    .line 25
    invoke-static {p0, v1, v0}, Lccsansan/bw/performActionWhenOffline;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 26
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, p0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#getAppKeyFromConfig sourceKey = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "; e = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppUtils"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public static unifiedDownload()Ljava/lang/String;
    .locals 1

    const-string v0, "3.10.8"

    return-object v0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "com.san.token"

    const-string v1, "default"

    invoke-static {p0, v0, v1}, Lccsansan/bw/deleteDownList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
