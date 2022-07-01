.class public Lccsansan/bo/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final IncentiveDownloadUtils:[B

.field private static addDownloadListener:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final getDownloadingList:I

.field private static removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lccsansan/bo/getDownloadingList;->addDownloadListener()V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "time_h5_unzip_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/bo/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    const-string v0, ".caches"

    sput-object v0, Lccsansan/bo/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    .line 5
    new-instance v0, Lccsansan/bo/getDownloadingList$getDownloadingList;

    invoke-direct {v0}, Lccsansan/bo/getDownloadingList$getDownloadingList;-><init>()V

    sput-object v0, Lccsansan/bo/getDownloadingList;->addDownloadListener:Ljava/util/Set;

    return-void
.end method

.method static addDownloadListener()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bo/getDownloadingList;->IncentiveDownloadUtils:[B

    const/16 v0, 0x67

    sput v0, Lccsansan/bo/getDownloadingList;->getDownloadingList:I

    return-void

    :array_0
    .array-data 1
        0x4dt
        0x1t
        -0x8t
        0x78t
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
    .end array-data
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 1

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lccsansan/bo/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 22
    invoke-static {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    .line 23
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result p1

    if-nez p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    .line 26
    :cond_0
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingCount()Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private static getDownloadingList(BII)Ljava/lang/String;
    .locals 6

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x67

    rsub-int/lit8 p0, p0, 0x47

    add-int/lit8 p2, p2, 0xe

    sget-object v0, Lccsansan/bo/getDownloadingList;->IncentiveDownloadUtils:[B

    new-array v1, p2, [B

    add-int/lit8 p2, p2, -0x1

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

    add-int/lit8 v4, v3, 0x1

    if-ne v3, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p0

    move-object v5, v0

    move v0, p2

    move p2, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    neg-int p2, p2

    add-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x2

    add-int/lit8 p0, p0, 0x1

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {}, Lccsansan/cv/deleteDownItem;->getDownloadingList()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/Android/data/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/files/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->getDownloadedCount()Z

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "/.webview"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 3
    :cond_1
    const-string p0, ""

    .line 10
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lccsansan/bo/getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDownloadingList()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/da/addDownloadListener$getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static getDownloadingList(Lccsanandroid/net/Uri;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 2
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 8
    const-string v3, "cacheable"

    invoke-virtual {p0, v3}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 12
    const-string v4, "ow"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dbvh19g70uon7"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "dwza2b3cs63ny"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    :cond_1
    const-string v1, "false"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 17
    :cond_2
    sget-object v1, Lccsansan/bo/getDownloadingList;->addDownloadListener:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 19
    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_4

    return v0

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    :goto_0
    return v0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)I
    .locals 10

    .line 49
    const/16 v0, 0x36

    int-to-byte v0, v0

    :try_start_0
    sget-object v1, Lccsansan/bo/getDownloadingList;->IncentiveDownloadUtils:[B

    const/4 v2, 0x1

    aget-byte v3, v1, v2

    int-to-byte v3, v3

    or-int/lit8 v4, v3, 0x8

    int-to-byte v4, v4

    invoke-static {v0, v3, v4}, Lccsansan/bo/getDownloadingList;->getDownloadingList(BII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v3, 0x4

    aget-byte v4, v1, v3

    int-to-byte v4, v4

    int-to-byte v5, v4

    const/16 v6, 0x16

    aget-byte v6, v1, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lccsansan/bo/getDownloadingList;->getDownloadingList(BII)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 52
    const/4 v4, 0x0

    :try_start_1
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v5, 0x2

    :try_start_2
    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    aput-object p0, v6, v4

    sget p0, Lccsansan/bo/getDownloadingList;->getDownloadingList:I

    and-int/lit16 v7, p0, 0xb8

    int-to-byte v7, v7

    aget-byte v8, v1, v2

    int-to-byte v8, v8

    const/4 v9, 0x7

    aget-byte v9, v1, v9

    neg-int v9, v9

    int-to-byte v9, v9

    invoke-static {v7, v8, v9}, Lccsansan/bo/getDownloadingList;->getDownloadingList(BII)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    and-int/lit16 p0, p0, 0x1db

    int-to-byte p0, p0

    aget-byte v1, v1, v3

    int-to-byte v1, v1

    int-to-byte v3, v1

    invoke-static {p0, v1, v3}, Lccsansan/bo/getDownloadingList;->getDownloadingList(BII)Ljava/lang/String;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    invoke-virtual {v7, p0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    invoke-virtual {p0, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsanandroid/content/pm/PackageInfo;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    :try_start_3
    iget v4, p0, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0
    :try_end_3
    .catch Lccsanandroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 55
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lccsanandroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v4

    .line 49
    :catchall_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    throw v0

    :cond_1
    throw p0
.end method

.method public static removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lccsanandroid/webkit/MimeTypeMap;->getSingleton()Lccsanandroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p0}, Lccsansan/bo/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsanandroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 27
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 28
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x23

    .line 29
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 31
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/16 v0, 0x3f

    .line 34
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    .line 36
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const/16 v0, 0x2f

    .line 39
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 41
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 45
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0x2e

    .line 46
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ltz v0, :cond_3

    add-int/lit8 v0, v0, 0x1

    .line 48
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-string p0, ""

    return-object p0
.end method
