.class public Lccsansan/bk/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final IncentiveDownloadUtils:Lccsansan/bk/addDownloadListener;

.field private final addDownloadListener:Lccsanandroid/os/Handler;

.field private final removeDownloadListener:Ljava/util/concurrent/Executor;

.field private final unifiedDownload:Lccsansan/bk/deleteDownItem;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/os/Handler;

    .line 3
    invoke-direct {p0}, Lccsansan/bk/getDownloadStatusByUrl;->getDownloadingList()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl;->removeDownloadListener:Ljava/util/concurrent/Executor;

    .line 4
    new-instance v1, Lccsansan/bk/deleteDownItem;

    invoke-direct {v1, v0}, Lccsansan/bk/deleteDownItem;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v1, p0, Lccsansan/bk/getDownloadStatusByUrl;->unifiedDownload:Lccsansan/bk/deleteDownItem;

    .line 5
    new-instance v0, Lccsansan/bk/getDownloadStatusByUrl$getDownloadingList;

    invoke-direct {v0, p0}, Lccsansan/bk/getDownloadStatusByUrl$getDownloadingList;-><init>(Lccsansan/bk/getDownloadStatusByUrl;)V

    iput-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/bk/addDownloadListener;

    return-void
.end method

.method private getDownloadingList()Ljava/util/concurrent/Executor;
    .locals 10

    .line 2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v8, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v8}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v9, Lccsansan/bk/removeDownloadListener;

    invoke-direct {v9}, Lccsansan/bk/removeDownloadListener;-><init>()V

    const-wide/16 v5, 0x0

    move-object v2, v0

    move v3, v4

    invoke-direct/range {v2 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Lccsansan/bk/deleteDownItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl;->unifiedDownload:Lccsansan/bk/deleteDownItem;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl;->removeDownloadListener:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public unifiedDownload()Lccsansan/bk/addDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/bk/addDownloadListener;

    return-object v0
.end method

.method public unifiedDownload(Lccsansan/bk/getDownloadingList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/bk/getDownloadStatusByUrl;->addDownloadListener:Lccsanandroid/os/Handler;

    invoke-virtual {p1}, Lccsansan/bk/getDownloadingList;->getDownloadingList()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
