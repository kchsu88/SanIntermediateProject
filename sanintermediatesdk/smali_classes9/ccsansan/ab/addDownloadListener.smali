.class public Lccsansan/ab/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static getDownloadingList:Lccsansan/ab/addDownloadListener;


# instance fields
.field private IncentiveDownloadUtils:J

.field private removeDownloadListener:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unifiedDownload()Lccsansan/ab/addDownloadListener;
    .locals 2

    .line 1
    sget-object v0, Lccsansan/ab/addDownloadListener;->getDownloadingList:Lccsansan/ab/addDownloadListener;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lccsansan/ab/addDownloadListener;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lccsansan/ab/addDownloadListener;->getDownloadingList:Lccsansan/ab/addDownloadListener;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsansan/ab/addDownloadListener;

    invoke-direct {v1}, Lccsansan/ab/addDownloadListener;-><init>()V

    sput-object v1, Lccsansan/ab/addDownloadListener;->getDownloadingList:Lccsansan/ab/addDownloadListener;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8
    :cond_1
    :goto_0
    sget-object v0, Lccsansan/ab/addDownloadListener;->getDownloadingList:Lccsansan/ab/addDownloadListener;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addDownloadListener(J)V
    .locals 3

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 9
    :try_start_0
    iput-wide p1, p0, Lccsansan/ab/addDownloadListener;->IncentiveDownloadUtils:J

    .line 10
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lccsansan/ab/addDownloadListener;->removeDownloadListener:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 8
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 10
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getDownloadingList()J
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    iget-wide v0, p0, Lccsansan/ab/addDownloadListener;->IncentiveDownloadUtils:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    .line 5
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/ab/addDownloadListener;->removeDownloadListener:J

    add-long/2addr v0, v2

    .line 6
    iget-wide v2, p0, Lccsansan/ab/addDownloadListener;->IncentiveDownloadUtils:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    cmp-long v4, v0, v2

    monitor-exit p0

    if-gez v4, :cond_1

    return-wide v2

    :cond_1
    return-wide v0

    .line 0
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
