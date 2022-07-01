.class public Lccsansan/bw/trackReportClick;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/bw/trackReportClick$IncentiveDownloadUtils;
    }
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field public static final getDownloadingList:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lccsansan/bw/trackReportClick;->addDownloadListener()V

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    return-void
.end method

.method public static IncentiveDownloadUtils([Ljava/lang/String;[ILccsansan/bw/trackReportClick$IncentiveDownloadUtils;)V
    .locals 3

    if-eqz p2, :cond_3

    .line 1
    array-length v0, p0

    if-eqz v0, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 5
    aget v2, p1, v1

    if-eqz v2, :cond_0

    .line 6
    aget-object v2, p0, v1

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    invoke-virtual {p2, p0}, Lccsansan/bw/trackReportClick$IncentiveDownloadUtils;->IncentiveDownloadUtils([Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-virtual {p2}, Lccsansan/bw/trackReportClick$IncentiveDownloadUtils;->getDownloadingList()V

    :cond_3
    :goto_1
    return-void
.end method

.method public static IncentiveDownloadUtils()Z
    .locals 10

    .line 18
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x1

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_2

    .line 19
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    :try_start_0
    sget-object v2, Lccsansan/bw/trackReportClick;->getDownloadingList:[B

    const/16 v3, 0x8

    aget-byte v4, v2, v3

    add-int/2addr v4, v1

    int-to-byte v4, v4

    const/16 v5, 0x9

    aget-byte v6, v2, v5

    int-to-byte v6, v6

    const/16 v7, 0xd

    aget-byte v7, v2, v7

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lccsansan/bw/trackReportClick;->unifiedDownload(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x5

    aget-byte v6, v2, v6

    int-to-byte v6, v6

    const/16 v7, 0x32

    aget-byte v8, v2, v7

    int-to-byte v8, v8

    or-int/lit8 v9, v8, 0x35

    int-to-byte v9, v9

    invoke-static {v6, v8, v9}, Lccsansan/bw/trackReportClick;->unifiedDownload(BBS)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    invoke-virtual {v4, v6, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    aget-byte v4, v2, v7

    int-to-byte v4, v4

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x18

    aget-byte v6, v2, v6

    neg-int v6, v6

    int-to-byte v6, v6

    invoke-static {v4, v5, v6}, Lccsansan/bw/trackReportClick;->unifiedDownload(BBS)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v3, v2, v3

    int-to-byte v3, v3

    const/16 v5, 0x19

    aget-byte v5, v2, v5

    int-to-byte v5, v5

    const/16 v6, 0x12

    aget-byte v2, v2, v6

    add-int/2addr v2, v1

    int-to-byte v1, v2

    invoke-static {v3, v5, v1}, Lccsansan/bw/trackReportClick;->unifiedDownload(BBS)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    throw v1

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    throw v1

    :cond_1
    throw v0

    :cond_2
    :goto_0
    return v1
.end method

.method static addDownloadListener()V
    .locals 1

    const/16 v0, 0x62

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/bw/trackReportClick;->getDownloadingList:[B

    const/16 v0, 0xd8

    sput v0, Lccsansan/bw/trackReportClick;->IncentiveDownloadUtils:I

    return-void

    :array_0
    .array-data 1
        0x53t
        -0x2bt
        -0x3t
        -0x4bt
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
        -0xft
        0x1at
        -0x15t
        -0xet
        -0x6t
        0xet
        -0x10t
        -0x3t
        0x22t
        -0x13t
        -0x4t
        -0xat
        0x8t
        -0x8t
        0x0t
        0x1at
        -0x27t
        -0x7t
        -0x3t
        0x11t
        -0xdt
        -0x2t
        -0x9t
    .end array-data
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 2

    .line 15
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    invoke-static {}, Lccsanandroid/os/Environment;->isExternalStorageManager()Z

    move-result p0

    goto :goto_1

    .line 16
    :cond_0
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v1}, Lccsansan/bw/trackReportClick;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 17
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lccsansan/bw/trackReportClick;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 14
    invoke-static {}, Lccsansan/bw/trackReportClick;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    invoke-static {p0, p1}, Lccsanandroidx/core/app/ActivityCompat;->checkSelfPermission(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static unifiedDownload(BBS)Ljava/lang/String;
    .locals 6

    add-int/lit8 p2, p2, 0x4

    mul-int/lit8 p0, p0, 0x2

    rsub-int/lit8 p0, p0, 0x21

    sget-object v0, Lccsansan/bw/trackReportClick;->getDownloadingList:[B

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x67

    new-array v1, p0, [B

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move p1, p0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p2

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    move v5, p1

    move p1, p0

    move p0, v5

    :goto_0
    int-to-byte v4, p0

    aput-byte v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 p2, p2, 0x1

    aget-byte v4, v0, p2

    move-object v5, v0

    move v0, p2

    move p2, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    neg-int p2, p2

    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x2

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 3

    .line 2
    :try_start_0
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 3
    new-instance v0, Lccsanandroid/content/Intent;

    const-string v1, "android.settings.MANAGE_UNKNOWN_APP_SOURCES"

    invoke-direct {v0, v1}, Lccsanandroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->setData(Lccsanandroid/net/Uri;)Lccsanandroid/content/Intent;

    .line 5
    instance-of v1, p0, Lccsanandroid/app/Activity;

    if-eqz v1, :cond_0

    .line 6
    check-cast p0, Lccsanandroid/app/Activity;

    const/16 v1, 0x45

    invoke-virtual {p0, v0, v1}, Lccsanandroid/app/Activity;->startActivityForResult(Lccsanandroid/content/Intent;I)V

    goto :goto_0

    :cond_0
    const/high16 v1, 0x10000000

    .line 8
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    .line 9
    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch unknown app failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PermissionsUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static unifiedDownload()Z
    .locals 2

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
