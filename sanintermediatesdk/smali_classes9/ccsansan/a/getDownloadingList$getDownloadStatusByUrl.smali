.class Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/a/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field public static final getDownloadingList:[B


# instance fields
.field final synthetic addDownloadListener:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x57

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->getDownloadingList:[B

    const/16 v0, 0x4e

    sput v0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->IncentiveDownloadUtils:I

    return-void

    :array_0
    .array-data 1
        0x7ct
        0x0t
        -0x7ft
        0x4at
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

.method constructor <init>(Lccsansan/a/getDownloadingList;Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    iput-object p4, p0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private static addDownloadListener(III)Ljava/lang/String;
    .locals 6

    rsub-int/lit8 p1, p1, 0x21

    mul-int/lit8 p2, p2, 0x6

    add-int/lit8 p2, p2, 0x61

    sget-object v0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->getDownloadingList:[B

    rsub-int/lit8 p0, p0, 0x47

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v4, p2

    const/4 v3, 0x0

    move p2, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_0
    int-to-byte v4, p2

    aput-byte v4, v1, v3

    if-ne v3, p1, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, p0

    move v5, p1

    move p1, p0

    move p0, p2

    move p2, v5

    :goto_1
    add-int/2addr p0, v4

    add-int/lit8 p0, p0, -0x2

    add-int/lit8 p1, p1, 0x1

    move v5, p2

    move p2, p0

    move p0, p1

    move p1, v5

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 12

    .line 1
    iget-object v0, p0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    iget-object v1, p0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/unifiedDownload;->addDownloadListener(Ljava/lang/String;)Lccsansan/m/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, v0, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x5265c00

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    if-eqz v1, :cond_1

    iget-object v1, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingCount:Ljava/lang/String;

    .line 3
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget v1, v1, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedCount:I

    if-eqz v1, :cond_1

    .line 4
    const-string v1, "AppPkgReceiver"

    const-string v2, "statsPkgUpgrade right"

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :try_start_0
    iget-object v2, p0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v3, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->getDownloadingList:[B

    const/16 v4, 0x18

    aget-byte v4, v3, v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    const/16 v6, 0x9

    aget-byte v6, v3, v6

    int-to-byte v6, v6

    aget-byte v7, v3, v5

    int-to-byte v7, v7

    invoke-static {v4, v6, v7}, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->addDownloadListener(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    aget-byte v6, v3, v5

    int-to-byte v6, v6

    const/16 v7, 0x13

    aget-byte v7, v3, v7

    int-to-byte v7, v7

    const/16 v8, 0x1a

    aget-byte v9, v3, v8

    int-to-byte v9, v9

    invoke-static {v6, v7, v9}, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->addDownloadListener(III)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v4, p0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/16 v6, 0x4000

    const/4 v7, 0x2

    :try_start_3
    new-array v9, v7, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    const/4 v6, 0x0

    aput-object v4, v9, v6

    const/16 v4, 0x20

    int-to-byte v4, v4

    aget-byte v10, v3, v5

    int-to-byte v10, v10

    int-to-byte v11, v10

    invoke-static {v4, v10, v11}, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->addDownloadListener(III)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    const/16 v10, 0x36

    aget-byte v10, v3, v10

    sub-int/2addr v10, v5

    int-to-byte v10, v10

    const/4 v11, 0x7

    aget-byte v11, v3, v11

    int-to-byte v11, v11

    aget-byte v3, v3, v8

    int-to-byte v3, v3

    invoke-static {v10, v11, v3}, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->addDownloadListener(III)Ljava/lang/String;

    move-result-object v3

    new-array v7, v7, [Ljava/lang/Class;

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v7, v5

    invoke-virtual {v4, v3, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3, v2, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/pm/PackageInfo;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 7
    :try_start_4
    iget-object v3, p0, Lccsansan/a/getDownloadingList$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v4, v2, Lccsanandroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v2, v2, Lccsanandroid/content/pm/PackageInfo;->versionCode:I

    iget-object v0, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    iget-object v5, v0, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadingCount:Ljava/lang/String;

    iget v0, v0, Lccsansan/m/getDownloadingRecordByUrl;->getDownloadedCount:I

    invoke-static {v3, v4, v2, v5, v0}, Lccsansan/l/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;I)V

    goto :goto_1

    .line 6
    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-eqz v2, :cond_0

    :goto_0
    throw v2

    :cond_0
    throw v0

    :catchall_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 7
    :catch_0
    move-exception v0

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statsPkgUpgrade exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method
