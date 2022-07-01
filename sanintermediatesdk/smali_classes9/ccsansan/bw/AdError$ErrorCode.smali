.class public abstract Lccsansan/bw/AdError$ErrorCode;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:J

.field private final getDownloadingList:J

.field private final removeDownloadListener:Lccsanandroid/os/Handler;

.field private final unifiedDownload:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/bw/AdError$ErrorCode;->IncentiveDownloadUtils:Z

    .line 29
    new-instance v0, Lccsanandroid/os/Handler;

    new-instance v1, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;

    invoke-direct {v1, p0}, Lccsansan/bw/AdError$ErrorCode$unifiedDownload;-><init>(Lccsansan/bw/AdError$ErrorCode;)V

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lccsansan/bw/AdError$ErrorCode;->removeDownloadListener:Lccsanandroid/os/Handler;

    .line 30
    iput-wide p1, p0, Lccsansan/bw/AdError$ErrorCode;->unifiedDownload:J

    .line 31
    iput-wide p3, p0, Lccsansan/bw/AdError$ErrorCode;->getDownloadingList:J

    return-void
.end method

.method static synthetic addDownloadListener(Lccsansan/bw/AdError$ErrorCode;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bw/AdError$ErrorCode;->getDownloadingList:J

    return-wide v0
.end method

.method static synthetic getDownloadingList(Lccsansan/bw/AdError$ErrorCode;)Lccsanandroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/bw/AdError$ErrorCode;->removeDownloadListener:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/bw/AdError$ErrorCode;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/bw/AdError$ErrorCode;->IncentiveDownloadUtils:Z

    return p0
.end method

.method static synthetic unifiedDownload(Lccsansan/bw/AdError$ErrorCode;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener:J

    return-wide v0
.end method


# virtual methods
.method public abstract addDownloadListener()V
.end method

.method public abstract addDownloadListener(J)V
.end method

.method public final declared-synchronized getDownloadingList()V
    .locals 2

    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccsansan/bw/AdError$ErrorCode;->IncentiveDownloadUtils:Z

    .line 3
    iget-object v1, p0, Lccsansan/bw/AdError$ErrorCode;->removeDownloadListener:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized removeDownloadListener()Lccsansan/bw/AdError$ErrorCode;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-boolean v0, p0, Lccsansan/bw/AdError$ErrorCode;->IncentiveDownloadUtils:Z

    .line 3
    iget-wide v0, p0, Lccsansan/bw/AdError$ErrorCode;->unifiedDownload:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 4
    invoke-virtual {p0}, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p0

    .line 7
    :cond_0
    :try_start_1
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsansan/bw/AdError$ErrorCode;->unifiedDownload:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsansan/bw/AdError$ErrorCode;->addDownloadListener:J

    .line 8
    iget-object v0, p0, Lccsansan/bw/AdError$ErrorCode;->removeDownloadListener:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendMessage(Lccsanandroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p0

    .line 1
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
