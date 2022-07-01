.class public Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;
.super Ljava/lang/Object;
.source "DefaultExecutorSupplier.java"

# interfaces
.implements Lccsancom/mbridge/msdk/foundation/download/core/ExecutorSupplier;


# static fields
.field private static DEFAULT_MAX_NUM_THREADS:I


# instance fields
.field private final backgroundExecutor:Ljava/util/concurrent/ExecutorService;

.field private final downloadResultExecutor:Ljava/util/concurrent/ExecutorService;

.field private final networkExecutor:Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;


# direct methods
.method constructor <init>()V
    .locals 4

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    goto :goto_0

    .line 24
    :catch_0
    move-exception v0

    .line 25
    const/4 v0, 0x5

    sput v0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    .line 27
    :goto_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/PriorityThreadFactory;-><init>(I)V

    .line 29
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;

    invoke-direct {v1}, Ljava/util/concurrent/ThreadPoolExecutor$DiscardPolicy;-><init>()V

    .line 30
    new-instance v2, Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    sget v3, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->DEFAULT_MAX_NUM_THREADS:I

    invoke-direct {v2, v3, v0, v1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;-><init>(ILjava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v2, p0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->networkExecutor:Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 32
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->downloadResultExecutor:Ljava/util/concurrent/ExecutorService;

    .line 33
    return-void
.end method


# virtual methods
.method public getBackgroundTasks()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDownloadResultTasks()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->downloadResultExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public getDownloadTasks()Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;
    .locals 1

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->networkExecutor:Lccsancom/mbridge/msdk/foundation/download/core/DownloadExecutor;

    return-object v0
.end method

.method public getLruCacheThreadTasks()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 52
    iget-object v0, p0, Lccsancom/mbridge/msdk/foundation/download/core/DefaultExecutorSupplier;->backgroundExecutor:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method
