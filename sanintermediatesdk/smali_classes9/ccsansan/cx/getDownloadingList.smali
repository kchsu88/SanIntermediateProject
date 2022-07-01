.class public Lccsansan/cx/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static IncentiveDownloadUtils:Ljava/util/concurrent/Executor;

.field private static final removeDownloadListener:Ljava/util/concurrent/ThreadFactory;

.field private static unifiedDownload:Lccsanandroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/cx/getDownloadingList$removeDownloadListener;

    invoke-direct {v0}, Lccsansan/cx/getDownloadingList$removeDownloadListener;-><init>()V

    sput-object v0, Lccsansan/cx/getDownloadingList;->removeDownloadListener:Ljava/util/concurrent/ThreadFactory;

    .line 10
    invoke-static {}, Lccsansan/cx/getDownloadingList;->removeDownloadListener()V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils()Ljava/util/concurrent/Executor;
    .locals 1

    .line 1
    sget-object v0, Lccsansan/cx/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public static varargs addDownloadListener(Lccsanandroid/os/AsyncTask;[Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsanandroid/os/AsyncTask<",
            "TP;**>;[TP;)V"
        }
    .end annotation

    .line 2
    const-string v0, "Unable to execute null AsyncTask."

    invoke-static {p0, v0}, Lccsansan/cx/addDownloadListener;->unifiedDownload(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 5
    sget-object v0, Lccsansan/cx/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lccsanandroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lccsanandroid/os/AsyncTask;

    goto :goto_0

    :cond_0
    nop

    .line 7
    const-string v0, "tag"

    const-string v1, "Posting AsyncTask to main thread for execution."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    sget-object v0, Lccsansan/cx/getDownloadingList;->unifiedDownload:Lccsanandroid/os/Handler;

    new-instance v1, Lccsansan/cx/getDownloadingList$getDownloadingList;

    invoke-direct {v1, p0, p1}, Lccsansan/cx/getDownloadingList$getDownloadingList;-><init>(Lccsanandroid/os/AsyncTask;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private static removeDownloadListener()V
    .locals 9

    .line 1
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v6}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    sget-object v7, Lccsansan/cx/getDownloadingList;->removeDownloadListener:Ljava/util/concurrent/ThreadFactory;

    const/4 v1, 0x1

    const/16 v2, 0x400

    const-wide/16 v3, 0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 4
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v0}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    invoke-virtual {v8, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->setRejectedExecutionHandler(Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 6
    sput-object v8, Lccsansan/cx/getDownloadingList;->IncentiveDownloadUtils:Ljava/util/concurrent/Executor;

    .line 8
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    sput-object v0, Lccsansan/cx/getDownloadingList;->unifiedDownload:Lccsanandroid/os/Handler;

    return-void
.end method
