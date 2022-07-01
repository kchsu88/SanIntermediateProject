.class public Lccsansan/av/IncentiveDownloadUtils;
.super Lccsansan/av/getDownloadingList;
.source ""


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsansan/av/getDownloadingList;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lccsansan/av/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1}, Lccsansan/av/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/av/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 8
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private declared-synchronized unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 4

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lccsansan/av/getDownloadingList;->getDownloadingList:Ljava/io/File;

    if-nez v0, :cond_0

    const-string v0, ".h5/"

    .line 3
    invoke-static {p1, v0}, Lccsansan/bo/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lccsansan/av/getDownloadingList;->getDownloadingList:Ljava/io/File;

    .line 4
    :cond_0
    iget-object p1, p0, Lccsansan/av/getDownloadingList;->getDownloadingList:Ljava/io/File;

    if-eqz p1, :cond_1

    const-wide/32 v0, 0x500000

    const-wide/32 v2, 0x3200000

    .line 5
    invoke-static {p1, v0, v1, v2, v3}, Lccsansan/av/getDownloadingList;->unifiedDownload(Ljava/io/File;JJ)J

    move-result-wide v0

    .line 6
    iget-object p1, p0, Lccsansan/av/getDownloadingList;->getDownloadingList:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {p1, v2, v2, v0, v1}, Lccsansan/av/addDownloadListener;->addDownloadListener(Ljava/io/File;IIJ)Lccsansan/av/addDownloadListener;

    move-result-object p1

    iput-object p1, p0, Lccsansan/av/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1
    :catchall_0
    move-exception p1

    goto :goto_1

    .line 6
    :catch_0
    move-exception p1

    .line 9
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#init exception = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5DiskCache"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 1
    :goto_1
    monitor-exit p0

    throw p1
.end method

.method static synthetic unifiedDownload(Lccsansan/av/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/av/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method
