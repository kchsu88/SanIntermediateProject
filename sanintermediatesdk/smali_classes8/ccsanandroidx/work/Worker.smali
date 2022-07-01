.class public abstract Lccsanandroidx/work/Worker;
.super Lccsanandroidx/work/ListenableWorker;
.source "Worker.java"


# instance fields
.field mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/work/impl/utils/futures/SettableFuture<",
            "Lccsanandroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "workerParams"    # Lccsanandroidx/work/WorkerParameters;

    .line 55
    invoke-direct {p0, p1, p2}, Lccsanandroidx/work/ListenableWorker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V

    .line 56
    return-void
.end method


# virtual methods
.method public abstract doWork()Lccsanandroidx/work/ListenableWorker$Result;
.end method

.method public final startWork()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsanandroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 80
    invoke-static {}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->create()Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/Worker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    .line 81
    invoke-virtual {p0}, Lccsanandroidx/work/Worker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lccsanandroidx/work/Worker$1;

    invoke-direct {v1, p0}, Lccsanandroidx/work/Worker$1;-><init>(Lccsanandroidx/work/Worker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 93
    iget-object v0, p0, Lccsanandroidx/work/Worker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method
