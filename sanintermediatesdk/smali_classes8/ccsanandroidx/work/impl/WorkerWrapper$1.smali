.class Lccsanandroidx/work/impl/WorkerWrapper$1;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsanandroidx/work/impl/WorkerWrapper;->runWorker()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsanandroidx/work/impl/WorkerWrapper;

.field final synthetic val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkerWrapper;Lccsanandroidx/work/impl/utils/futures/SettableFuture;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/WorkerWrapper;

    .line 261
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkerWrapper$1;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iput-object p2, p0, Lccsanandroidx/work/impl/WorkerWrapper$1;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 265
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Starting work for %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper$1;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iget-object v4, v4, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 267
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper$1;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iget-object v1, v0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorker:Lccsanandroidx/work/ListenableWorker;

    invoke-virtual {v1}, Lccsanandroidx/work/ListenableWorker;->startWork()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    iput-object v1, v0, Lccsanandroidx/work/impl/WorkerWrapper;->mInnerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 268
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper$1;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper$1;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iget-object v1, v1, Lccsanandroidx/work/impl/WorkerWrapper;->mInnerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 271
    goto :goto_0

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper$1;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 273
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
