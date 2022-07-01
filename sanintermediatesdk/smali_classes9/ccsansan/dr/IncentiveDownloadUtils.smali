.class public Lccsansan/dr/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final addDownloadListener:[B

.field private static getDownloadingList:Lccsanandroid/content/pm/PackageManager;

.field public static final removeDownloadListener:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lccsansan/dr/IncentiveDownloadUtils;->IncentiveDownloadUtils()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static IncentiveDownloadUtils(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 17

    .line 1
    const-string v1, ""

    :try_start_0
    invoke-static {}, Lccsansan/dr/getDownloadedList;->getDownloadingRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 3
    :cond_0
    sget-object v0, Lccsansan/dr/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/pm/PackageManager;

    const/16 v2, 0x13

    const/16 v3, 0x18

    const/16 v4, 0x9

    const/16 v5, 0x1a

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x4

    if-nez v0, :cond_2

    .line 4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v9, Lccsansan/dr/IncentiveDownloadUtils;->addDownloadListener:[B

    aget-byte v10, v9, v8

    int-to-byte v10, v10

    aget-byte v11, v9, v4

    int-to-byte v11, v11

    aget-byte v12, v9, v3

    sub-int/2addr v12, v7

    int-to-byte v12, v12

    invoke-static {v10, v11, v12}, Lccsansan/dr/IncentiveDownloadUtils;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    aget-byte v11, v9, v5

    int-to-byte v11, v11

    aget-byte v12, v9, v2

    int-to-byte v12, v12

    aget-byte v9, v9, v8

    int-to-byte v9, v9

    invoke-static {v11, v12, v9}, Lccsansan/dr/IncentiveDownloadUtils;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    invoke-virtual {v9, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sput-object v0, Lccsansan/dr/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/pm/PackageManager;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_1

    throw v2

    :cond_1
    throw v0

    .line 8
    :cond_2
    :goto_0
    sget-object v0, Lccsansan/dr/IncentiveDownloadUtils;->getDownloadingList:Lccsanandroid/content/pm/PackageManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v9, 0x2

    :try_start_3
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v7

    aput-object p0, v10, v11

    sget-object v12, Lccsansan/dr/IncentiveDownloadUtils;->addDownloadListener:[B

    aget-byte v13, v12, v8

    int-to-byte v13, v13

    int-to-byte v14, v13

    or-int/lit8 v15, v14, 0x20

    int-to-byte v15, v15

    invoke-static {v13, v14, v15}, Lccsansan/dr/IncentiveDownloadUtils;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v13

    aget-byte v14, v12, v5

    int-to-byte v14, v14

    const/4 v15, 0x7

    aget-byte v15, v12, v15

    int-to-byte v15, v15

    const/16 v16, 0x36

    aget-byte v16, v12, v16

    add-int/lit8 v6, v16, -0x1

    int-to-byte v6, v6

    invoke-static {v14, v15, v6}, Lccsansan/dr/IncentiveDownloadUtils;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v6

    new-array v9, v9, [Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    aput-object v14, v9, v11

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v9, v7

    invoke-virtual {v13, v6, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    invoke-virtual {v6, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 9
    :try_start_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    aget-byte v9, v12, v8

    int-to-byte v9, v9

    aget-byte v4, v12, v4

    int-to-byte v4, v4

    aget-byte v3, v12, v3

    sub-int/2addr v3, v7

    int-to-byte v3, v3

    invoke-static {v9, v4, v3}, Lccsansan/dr/IncentiveDownloadUtils;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    aget-byte v4, v12, v5

    int-to-byte v4, v4

    aget-byte v2, v12, v2

    int-to-byte v2, v2

    aget-byte v5, v12, v8

    int-to-byte v5, v5

    invoke-static {v4, v2, v5}, Lccsansan/dr/IncentiveDownloadUtils;->removeDownloadListener(BSS)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {v2, v6, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/PackageManager;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v0, v0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Lccsanandroid/content/pm/PackageManager;->getApplicationLabel(Lccsanandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_3

    throw v2

    :cond_3
    throw v0

    .line 8
    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_4

    throw v2

    :cond_4
    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 9
    :cond_5
    :goto_1
    return-object v1

    :catch_0
    move-exception v0

    return-object v1
.end method

.method static IncentiveDownloadUtils()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/dr/IncentiveDownloadUtils;->addDownloadListener:[B

    const/16 v0, 0x68

    sput v0, Lccsansan/dr/IncentiveDownloadUtils;->removeDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0x21t
        -0x5bt
        -0x3ft
        -0x5ft
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

.method private static addDownloadListener(Ljava/io/File;)Lccsanandroid/util/Pair;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lccsanandroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 16
    new-instance p0, Lccsanandroid/util/Pair;

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :cond_0
    nop

    .line 21
    const-wide/16 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 23
    array-length v2, p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v3, 0x0

    move-wide v4, v0

    move-wide v6, v4

    :goto_0
    if-ge v3, v2, :cond_3

    :try_start_1
    aget-object v8, p0, v3

    .line 25
    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 26
    invoke-static {v8}, Lccsansan/dr/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/File;)Lccsanandroid/util/Pair;

    move-result-object v8

    .line 27
    iget-object v9, v8, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    .line 28
    iget-object v8, v8, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v11
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    add-long/2addr v6, v11

    goto :goto_2

    :cond_1
    const-string v9, "MiPushLog"

    .line 30
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 31
    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v9

    goto :goto_1

    .line 30
    :cond_2
    move-wide v9, v0

    .line 33
    :goto_1
    invoke-virtual {v8}, Ljava/io/File;->length()J

    move-result-wide v11

    add-long/2addr v6, v11

    .line 35
    :goto_2
    invoke-static {v4, v5, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    move-wide v0, v4

    goto :goto_3

    .line 23
    :cond_3
    move-wide v0, v6

    goto :goto_4

    .line 21
    :cond_4
    move-wide v4, v0

    goto :goto_4

    .line 39
    :catch_1
    move-exception p0

    move-wide v6, v0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "AppInfo"

    invoke-static {v2, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    move-wide v4, v0

    move-wide v0, v6

    .line 41
    :goto_4
    new-instance p0, Lccsanandroid/util/Pair;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/pm/PackageInfo;Lccsansan/dh/addDownloadListener;)Lccsansan/dh/getDownloadingList;
    .locals 10

    .line 1
    const-string v0, "stat "

    const-string v1, "Android"

    new-instance v2, Lccsansan/dh/getDownloadingList;

    invoke-direct {v2}, Lccsansan/dh/getDownloadingList;-><init>()V

    .line 2
    iget-object v3, p0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsansan/dh/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lccsansan/dh/addDownloadListener;->getLabelName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsansan/dh/getDownloadingList;->addDownloadListener(Ljava/lang/String;)V

    .line 4
    invoke-static {p0, p1}, Lccsansan/dr/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/pm/PackageInfo;Lccsansan/dh/addDownloadListener;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lccsansan/dh/getDownloadingList;->IncentiveDownloadUtils(J)V

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lccsansan/dh/getDownloadingList;->getDownloadingList(Ljava/lang/String;)V

    .line 7
    const/4 p1, 0x0

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lccsanandroid/content/pm/PackageInfo;->applicationInfo:Lccsanandroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_1

    .line 8
    iget v4, v4, Lccsanandroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-virtual {v2, v4}, Lccsansan/dh/getDownloadingList;->unifiedDownload(Z)V

    .line 10
    iget-object p0, p0, Lccsanandroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-static {p0, v4}, Lccsansan/dr/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lccsansan/dh/getDownloadingList;->unifiedDownload(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 17
    :cond_1
    :goto_1
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "data"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Lccsansan/dh/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 19
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 21
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dr/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)[J

    move-result-object p0

    .line 22
    aget-wide v5, p0, p1

    invoke-virtual {v2, v5, v6}, Lccsansan/dh/getDownloadingList;->getDownloadingList(J)V

    .line 23
    invoke-static {v4}, Lccsansan/dr/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/File;)Lccsanandroid/util/Pair;

    move-result-object v4

    .line 24
    iget-object v5, v4, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aget-wide v7, p0, v3

    cmp-long v9, v5, v7

    if-lez v9, :cond_2

    iget-object p0, v4, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_2

    :cond_2
    aget-wide v5, p0, v3

    :goto_2
    invoke-virtual {v2, v5, v6}, Lccsansan/dh/getDownloadingList;->unifiedDownload(J)V

    .line 25
    iget-object p0, v4, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lccsansan/dh/getDownloadingList;->getDownloadedRecordByUrl(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    .line 32
    :cond_3
    :goto_3
    :try_start_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lccsanandroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "obb"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v2}, Lccsansan/dh/getDownloadingList;->removeDownloadListener()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 34
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 36
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/dr/unifiedDownload;->removeDownloadListener(Ljava/lang/String;)[J

    move-result-object p0

    .line 37
    aget-wide v4, p0, p1

    invoke-virtual {v2, v4, v5}, Lccsansan/dh/getDownloadingList;->addDownloadListener(J)V

    .line 38
    invoke-static {v1}, Lccsansan/dr/IncentiveDownloadUtils;->addDownloadListener(Ljava/io/File;)Lccsanandroid/util/Pair;

    move-result-object p1

    .line 39
    iget-object v0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    aget-wide v4, p0, v3

    cmp-long v6, v0, v4

    if-lez v6, :cond_4

    iget-object p0, p1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_4

    :cond_4
    aget-wide v0, p0, v3

    :goto_4
    invoke-virtual {v2, v0, v1}, Lccsansan/dh/getDownloadingList;->getDownloadStatusByUrl(J)V

    .line 40
    iget-object p0, p1, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lccsansan/dh/getDownloadingList;->getDownloadedList(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception p0

    :cond_5
    :goto_5
    return-object v2
.end method

.method private static removeDownloadListener(BSS)Ljava/lang/String;
    .locals 6

    rsub-int/lit8 p1, p1, 0x21

    mul-int/lit8 p0, p0, 0x6

    add-int/lit8 p0, p0, 0x61

    sget-object v0, Lccsansan/dr/IncentiveDownloadUtils;->addDownloadListener:[B

    rsub-int/lit8 p2, p2, 0x46

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    move p2, p1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    add-int/lit8 p2, p2, 0x1

    int-to-byte v4, p0

    aput-byte v4, v1, v3

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, p2

    move v5, p1

    move p1, p0

    move p0, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v0

    move v0, p2

    move p2, v5

    :goto_1
    add-int/2addr p1, p0

    add-int/lit8 p0, p1, -0x2

    move p1, p2

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method private static unifiedDownload(Lccsanandroid/content/pm/PackageInfo;Lccsansan/dh/addDownloadListener;)J
    .locals 2

    .line 10
    invoke-virtual {p1}, Lccsansan/dh/addDownloadListener;->getEvent()I

    move-result v0

    sget-object v1, Lccsansan/dh/addDownloadListener;->AZ:Lccsansan/dh/addDownloadListener;

    invoke-virtual {v1}, Lccsansan/dh/addDownloadListener;->getEvent()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11
    iget-wide p0, p0, Lccsanandroid/content/pm/PackageInfo;->firstInstallTime:J

    return-wide p0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lccsansan/dh/addDownloadListener;->getEvent()I

    move-result p1

    sget-object v0, Lccsansan/dh/addDownloadListener;->UPGRADE:Lccsansan/dh/addDownloadListener;

    invoke-virtual {v0}, Lccsansan/dh/addDownloadListener;->getEvent()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 13
    iget-wide p0, p0, Lccsanandroid/content/pm/PackageInfo;->lastUpdateTime:J

    return-wide p0

    .line 15
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    return-wide p0
.end method
