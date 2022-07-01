.class public Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;
.super Ljava/lang/Object;
.source "MBResourceManager.java"


# static fields
.field private static volatile MBResourceManager:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method static synthetic access$000()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;
    .locals 1

    .line 21
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->MBResourceManager:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    return-object v0
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;
    .locals 2

    .line 28
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->MBResourceManager:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    if-nez v0, :cond_1

    .line 29
    const-class v0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->MBResourceManager:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->MBResourceManager:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    .line 33
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 35
    :cond_1
    :goto_0
    sget-object v0, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->MBResourceManager:Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    return-object v0
.end method


# virtual methods
.method public deleteFile(Ljava/io/File;)V
    .locals 5

    .line 47
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 50
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 55
    new-instance v4, Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->deleteFile(Ljava/io/File;)V

    .line 54
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 57
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 59
    :goto_1
    return-void

    .line 48
    :cond_3
    :goto_2
    return-void
.end method

.method public deleteFile(Ljava/lang/String;)V
    .locals 1

    .line 81
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->deleteFile(Ljava/io/File;)V

    .line 82
    return-void
.end method

.method public executeResourceStrategy(Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    .locals 2

    .line 117
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;->getResourceStrategyQueue()Ljava/util/Queue;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;->getResourceStrategyQueue()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 118
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;->getResourceStrategyQueue()Ljava/util/Queue;

    move-result-object v0

    .line 119
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;

    invoke-direct {v1, p0, v0, p1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager$1;-><init>(Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;Ljava/util/Queue;Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V

    .line 132
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->getExecutorSupplier()Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;->getLruCacheThreadTasks()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 120
    :cond_1
    :goto_0
    return-void

    .line 134
    :cond_2
    :goto_1
    return-void
.end method

.method public getDownloadFileOutputStream(Ljava/io/File;)Lccsancom/mbridge/msdk/foundation/download/resource/stream/DownloadFileOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 103
    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 111
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 112
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/resource/stream/FileDownloadRandomAccessDownloadFile;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/resource/stream/FileDownloadRandomAccessDownloadFile;-><init>(Ljava/io/File;)V

    .line 113
    return-object v0

    .line 104
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "file is null"

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getDownloadId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 62
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 63
    return-object v1

    .line 68
    :cond_0
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 75
    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    .line 69
    :catch_2
    move-exception p1

    .line 70
    const/4 p1, 0x0

    .line 72
    :goto_0
    :try_start_1
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 73
    const-string v2, "UTF-8"

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 74
    new-instance p1, Ljava/math/BigInteger;

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v0

    invoke-direct {p1, v2, v0}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 77
    :goto_1
    return-object v1
.end method

.method public getFileSize(Ljava/io/File;)J
    .locals 6

    .line 85
    const-wide/16 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 86
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p1

    .line 88
    nop

    .line 89
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    .line 90
    invoke-virtual {p0, v4}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getFileSize(Ljava/io/File;)J

    move-result-wide v4

    add-long/2addr v0, v4

    .line 89
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 92
    :cond_0
    return-wide v0

    .line 94
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    .line 95
    return-wide v0

    .line 98
    :cond_2
    return-wide v0
.end method

.method public unZip(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/utils/UnzipUtility;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/foundation/download/utils/UnzipUtility;-><init>()V

    .line 43
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/utils/UnzipUtility;->unzip(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 40
    :cond_0
    new-instance p1, Ljava/io/IOException;

    const-string p2, "zipFilePath or destDirectory is null"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
