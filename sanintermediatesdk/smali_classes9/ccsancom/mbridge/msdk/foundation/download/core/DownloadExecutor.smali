.class public Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "DownloadExecutor.java"


# direct methods
.method constructor <init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V
    .locals 9

    .line 15
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v0, 0x14

    invoke-direct {v6, v0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    const-wide/16 v3, 0x3c

    move-object v0, p0

    move v1, p1

    move v2, p1

    move-object v7, p2

    move-object v8, p3

    invoke-direct/range {v0 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    .line 16
    return-void
.end method


# virtual methods
.method public submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            ")",
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation

    .line 20
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadFutureTask;

    check-cast p1, Lccsancom/mbridge/msdk/foundation/download/core/Downloader;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadFutureTask;-><init>(Lccsancom/mbridge/msdk/foundation/download/core/Downloader;)V

    .line 21
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 22
    return-object v0
.end method
