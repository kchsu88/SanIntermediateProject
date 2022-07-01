.class final Lccsancom/san/ads/AdSourceHelper$2;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/AdSourceHelper;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/bq/unifiedDownload;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# static fields
.field public static final IncentiveDownloadUtils:I

.field public static final unifiedDownload:[B


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bq/unifiedDownload;

.field final synthetic getDownloadingList:Z

.field final synthetic removeDownloadListener:Lccsanandroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1a

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lccsancom/san/ads/AdSourceHelper$2;->unifiedDownload:[B

    const/4 v0, 0x3

    sput v0, Lccsancom/san/ads/AdSourceHelper$2;->IncentiveDownloadUtils:I

    return-void

    nop

    :array_0
    .array-data 1
        0x33t
        0x62t
        0x3at
        0x45t
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
    .end array-data
.end method

.method constructor <init>(Lccsansan/bq/unifiedDownload;Lccsanandroid/content/Context;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdSourceHelper$2;->addDownloadListener:Lccsansan/bq/unifiedDownload;

    iput-object p2, p0, Lccsancom/san/ads/AdSourceHelper$2;->removeDownloadListener:Lccsanandroid/content/Context;

    iput-boolean p3, p0, Lccsancom/san/ads/AdSourceHelper$2;->getDownloadingList:Z

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method

.method private static removeDownloadListener(IBS)Ljava/lang/String;
    .locals 6

    add-int/lit8 p0, p0, 0x4

    mul-int/lit8 p1, p1, 0x2

    rsub-int/lit8 p1, p1, 0x17

    sget-object v0, Lccsancom/san/ads/AdSourceHelper$2;->unifiedDownload:[B

    mul-int/lit8 p2, p2, 0x3

    rsub-int/lit8 p2, p2, 0x61

    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move-object v3, v1

    const/4 v4, 0x0

    move-object v1, v0

    move v0, p1

    move p1, p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    move v5, p1

    move p1, p0

    move p0, p2

    move p2, v5

    :goto_0
    int-to-byte v4, p0

    add-int/lit8 p1, p1, 0x1

    aput-byte v4, v1, v3

    if-ne v3, p2, :cond_1

    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Ljava/lang/String;-><init>([BI)V

    return-object p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    aget-byte v4, v0, p1

    move-object v5, v0

    move v0, p2

    move p2, v4

    move v4, v3

    move-object v3, v1

    move-object v1, v5

    :goto_1
    add-int/2addr p0, p2

    add-int/lit8 p0, p0, -0x8

    move p2, v0

    move-object v0, v1

    move-object v1, v3

    move v3, v4

    goto :goto_0
.end method


# virtual methods
.method public execute()V
    .locals 8

    .line 1
    const-string v0, "InitHelper"

    :try_start_0
    iget-object v1, p0, Lccsancom/san/ads/AdSourceHelper$2;->addDownloadListener:Lccsansan/bq/unifiedDownload;

    iget-object v1, v1, Lccsansan/bq/unifiedDownload;->initHelperClazz:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "initialize"

    const/4 v3, 0x1

    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    sget v5, Lccsancom/san/ads/AdSourceHelper$2;->IncentiveDownloadUtils:I

    add-int/lit8 v5, v5, -0x4

    int-to-byte v5, v5

    add-int/lit8 v6, v5, 0x1

    int-to-byte v6, v6

    int-to-byte v7, v6

    invoke-static {v5, v6, v7}, Lccsancom/san/ads/AdSourceHelper$2;->removeDownloadListener(IBS)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lccsancom/san/ads/AdSourceHelper$2;->removeDownloadListener:Lccsanandroid/content/Context;

    aput-object v7, v5, v6

    invoke-static {v1, v2, v4, v5}, Lccsansan/bw/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lccsancom/san/ads/AdSourceHelper$2;->addDownloadListener:Lccsansan/bq/unifiedDownload;

    iput-boolean v3, v1, Lccsansan/bq/unifiedDownload;->isSupport:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    :try_start_2
    iget-object v1, p0, Lccsancom/san/ads/AdSourceHelper$2;->addDownloadListener:Lccsansan/bq/unifiedDownload;

    iget-object v2, v1, Lccsansan/bq/unifiedDownload;->initHelperClazz:Ljava/lang/String;

    const-string v3, "getVersion"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4, v4}, Lccsansan/bw/getPackageNameByRecord;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lccsansan/bq/unifiedDownload;->networkVersion:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v1

    .line 14
    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#invokeInitializeMethod "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/AdSourceHelper$2;->addDownloadListener:Lccsansan/bq/unifiedDownload;

    iget-object v2, v2, Lccsansan/bq/unifiedDownload;->networkName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " finish ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/AdSourceHelper$2;->addDownloadListener:Lccsansan/bq/unifiedDownload;

    iget-object v2, v2, Lccsansan/bq/unifiedDownload;->networkVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "], isFromActivity:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/san/ads/AdSourceHelper$2;->getDownloadingList:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
