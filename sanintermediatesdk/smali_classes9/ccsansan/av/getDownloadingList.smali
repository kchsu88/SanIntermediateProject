.class public abstract Lccsansan/av/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;

.field protected getDownloadingList:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static unifiedDownload(Ljava/io/File;JJ)J
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lccsanandroid/os/StatFs;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lccsanandroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Lccsanandroid/os/StatFs;->getBlockCount()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {v0}, Lccsanandroid/os/StatFs;->getBlockSize()I

    move-result p0

    int-to-long v3, p0

    mul-long v1, v1, v3

    const-wide/16 v3, 0x32

    .line 4
    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    move-wide v1, p1

    .line 8
    :goto_0
    invoke-static {v1, v2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    invoke-static {p3, p4, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method


# virtual methods
.method public declared-synchronized removeDownloadListener()V
    .locals 1

    monitor-enter p0

    .line 61
    :try_start_0
    iget-object v0, p0, Lccsansan/av/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lccsansan/av/addDownloadListener;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 65
    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 60
    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized unifiedDownload(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 9
    :try_start_0
    iget-object v0, p0, Lccsansan/av/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsansan/av/addDownloadListener;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    iget-object v0, p0, Lccsansan/av/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;

    invoke-virtual {v0, p1}, Lccsansan/av/addDownloadListener;->unifiedDownload(Ljava/lang/String;)Lccsansan/av/addDownloadListener$getDownloadingList;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, v0}, Lccsansan/av/addDownloadListener$getDownloadingList;->getDownloadingList(I)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    .line 8
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unifiedDownload(Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 5

    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v0, p0, Lccsansan/av/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lccsansan/av/addDownloadListener;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-nez v0, :cond_9

    if-nez p2, :cond_0

    goto/16 :goto_b

    :cond_0
    const/4 v0, 0x0

    .line 19
    :try_start_1
    iget-object v2, p0, Lccsansan/av/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;

    invoke-virtual {v2, p1}, Lccsansan/av/addDownloadListener;->getDownloadingList(Ljava/lang/String;)Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 21
    invoke-virtual {p1, v1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener(I)Ljava/io/OutputStream;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 23
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v0, 0x400

    .line 25
    :try_start_2
    new-array v0, v0, [B

    .line 26
    :goto_0
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 27
    invoke-virtual {v3, v0, v1, v2}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 26
    :cond_1
    move-object v0, v3

    goto :goto_1

    .line 50
    :catchall_0
    move-exception p1

    move-object v0, v3

    goto :goto_8

    .line 31
    :catch_0
    move-exception p1

    move-object v0, v3

    goto :goto_4

    .line 27
    :cond_2
    nop

    .line 30
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Lccsansan/av/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload()V

    .line 31
    iget-object p1, p0, Lccsansan/av/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/av/addDownloadListener;

    invoke-virtual {p1}, Lccsansan/av/addDownloadListener;->unifiedDownload()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    const/4 v1, 0x1

    goto :goto_2

    :catch_1
    move-exception p1

    goto :goto_4

    :cond_3
    nop

    :goto_2
    if-eqz p2, :cond_4

    .line 39
    :try_start_4
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_3

    :catch_2
    move-exception p1

    :cond_4
    :goto_3
    if-eqz v0, :cond_6

    goto :goto_6

    .line 45
    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_3
    move-exception p1

    :goto_4
    :try_start_5
    const-string v2, "Hybrid"

    const-string v3, "save e = "

    .line 46
    invoke-static {v2, v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz p2, :cond_5

    .line 50
    :try_start_6
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_5

    :catch_4
    move-exception p1

    :cond_5
    :goto_5
    if-eqz v0, :cond_6

    .line 45
    :goto_6
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_7

    :catch_5
    move-exception p1

    .line 50
    :cond_6
    :goto_7
    monitor-exit p0

    return v1

    :catchall_2
    move-exception p1

    :goto_8
    if-eqz p2, :cond_7

    :try_start_8
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_9

    :catch_6
    move-exception p2

    :cond_7
    :goto_9
    if-eqz v0, :cond_8

    .line 56
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_a

    :catch_7
    move-exception p2

    .line 60
    :cond_8
    :goto_a
    :try_start_a
    throw p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_9
    :goto_b
    monitor-exit p0

    return v1

    .line 13
    :catchall_3
    move-exception p1

    monitor-exit p0

    goto :goto_d

    :goto_c
    throw p1

    :goto_d
    goto :goto_c
.end method
