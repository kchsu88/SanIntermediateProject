.class public Lccsansan/ad/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final addDownloadListener:I

.field private static getDownloadingList:Ljava/lang/String;

.field public static final removeDownloadListener:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x2a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/ad/getDownloadingList;->removeDownloadListener:[B

    const/16 v0, 0xd3

    sput v0, Lccsansan/ad/getDownloadingList;->addDownloadListener:I

    return-void

    :array_0
    .array-data 1
        0xdt
        0x13t
        -0x6bt
        0x70t
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

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "storage_path_setting"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "AUTH_EXTRA_SDCARD_URI"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_0
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    invoke-static {p0}, Lccsansan/da/addDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/da/addDownloadListener$getDownloadingList;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {p0, v0}, Lccsansan/ad/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/da/addDownloadListener$getDownloadingList;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v0, v0, Lccsansan/da/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {p0, v0}, Lccsansan/ad/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lccsansan/ad/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    invoke-direct {v1, v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private static addDownloadListener(Lccsanandroid/content/Context;Lccsansan/da/addDownloadListener$getDownloadingList;)Z
    .locals 3

    .line 9
    invoke-static {p0}, Lccsansan/bw/trackReportClick;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 13
    :cond_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v0, v2, :cond_1

    .line 14
    iget-boolean p0, p1, Lccsansan/da/addDownloadListener$getDownloadingList;->removeDownloadListener:Z

    xor-int/2addr p0, v1

    return p0

    :cond_1
    const/16 v2, 0x1d

    if-gt v0, v2, :cond_3

    .line 18
    invoke-static {p0}, Lccsansan/bw/trackReportClick;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_2

    iget-boolean p0, p1, Lccsansan/da/addDownloadListener$getDownloadingList;->removeDownloadListener:Z

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method private static getDownloadingList(BBS)Ljava/lang/String;
    .locals 5

    mul-int/lit8 p2, p2, 0x6

    rsub-int/lit8 p2, p2, 0x67

    mul-int/lit8 p1, p1, 0x6

    rsub-int/lit8 p1, p1, 0x17

    mul-int/lit8 p0, p0, 0x16

    add-int/lit8 p0, p0, 0x4

    sget-object v0, Lccsansan/ad/getDownloadingList;->removeDownloadListener:[B

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v4, 0x0

    move v3, p2

    move p2, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p2

    aput-byte v4, v1, v3

    add-int/lit8 v4, v3, 0x1

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    aget-byte v3, v0, p0

    :goto_1
    add-int/lit8 p0, p0, 0x1

    add-int/2addr p2, v3

    add-int/lit8 p2, p2, -0x8

    move v3, v4

    goto :goto_0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lccsansan/ad/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    const/4 v0, 0x0

    int-to-byte v0, v0

    int-to-byte v1, v0

    add-int/lit8 v2, v1, 0x1

    int-to-byte v2, v2

    :try_start_0
    invoke-static {v0, v1, v2}, Lccsansan/ad/getDownloadingList;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sget v1, Lccsansan/ad/getDownloadingList;->addDownloadListener:I

    and-int/lit8 v1, v1, 0x5

    int-to-byte v1, v1

    int-to-byte v2, v1

    add-int/lit8 v3, v2, -0x1

    int-to-byte v3, v3

    invoke-static {v1, v2, v3}, Lccsansan/ad/getDownloadingList;->getDownloadingList(BBS)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/pm/PackageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationInfo()Lccsanandroid/content/pm/ApplicationInfo;

    move-result-object p0

    invoke-virtual {v0, p0}, Lccsanandroid/content/pm/PackageManager;->getApplicationLabel(Lccsanandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsansan/ad/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    goto :goto_0

    .line 2
    :catchall_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    throw v0

    :cond_0
    throw p0

    .line 5
    :cond_1
    :goto_0
    sget-object p0, Lccsansan/ad/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-static {p0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Ljava/lang/Object;)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lccsansan/ad/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lccsansan/ad/getDownloadingList;->getDownloadingList:Ljava/lang/String;

    return-object p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3
    invoke-static {p0, p1}, Lccsansan/bw/setLoaderClassName;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lccsansan/ad/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "/Android/data/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsansan/ad/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)Lccsansan/da/removeDownloadListener;
    .locals 2

    .line 1
    invoke-static {p0}, Lccsansan/ad/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-static {p0, v0}, Lccsanandroidx/documentfile/provider/DocumentFile;->fromTreeUri(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;)Lccsanandroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->unifiedDownload(Lccsanandroidx/documentfile/provider/DocumentFile;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-static {p0}, Lccsansan/ad/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/da/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/da/removeDownloadListener;Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lccsansan/da/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object p0

    :goto_0
    return-object p0
.end method
