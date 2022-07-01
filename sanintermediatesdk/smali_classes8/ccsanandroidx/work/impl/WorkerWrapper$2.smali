.class Lccsanandroidx/work/impl/WorkerWrapper$2;
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

.field final synthetic val$workDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsanandroidx/work/impl/WorkerWrapper;Lccsanandroidx/work/impl/utils/futures/SettableFuture;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lccsanandroidx/work/impl/WorkerWrapper;

    .line 278
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iput-object p2, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    iput-object p3, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->val$workDescription:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 284
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->val$future:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/work/ListenableWorker$Result;

    .line 285
    .local v2, "result":Lccsanandroidx/work/ListenableWorker$Result;
    if-nez v2, :cond_0

    .line 286
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v5, "%s returned a null result. Treating it as a failure."

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iget-object v7, v7, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v7, v7, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    goto :goto_1

    .line 290
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v5, "%s returned a %s result."

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iget-object v7, v7, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v7, v7, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v7, v6, v1

    aput-object v2, v6, v0

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v1, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 292
    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    iput-object v2, v3, Lccsanandroidx/work/impl/WorkerWrapper;->mResult:Lccsanandroidx/work/ListenableWorker$Result;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 304
    .end local v2    # "result":Lccsanandroidx/work/ListenableWorker$Result;
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 299
    :catch_0
    move-exception v2

    goto :goto_0

    :catch_1
    move-exception v2

    .line 300
    .local v2, "exception":Ljava/lang/Exception;
    :goto_0
    :try_start_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v5, "%s failed because it threw an exception/error"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->val$workDescription:Ljava/lang/String;

    aput-object v7, v6, v1

    .line 301
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    .line 300
    invoke-virtual {v3, v4, v5, v0}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .end local v2    # "exception":Ljava/lang/Exception;
    goto :goto_1

    .line 294
    :catch_2
    move-exception v2

    .line 297
    .local v2, "exception":Ljava/util/concurrent/CancellationException;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v5, "%s was cancelled"

    new-array v6, v0, [Ljava/lang/Object;

    iget-object v7, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->val$workDescription:Ljava/lang/String;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v0, v0, [Ljava/lang/Throwable;

    aput-object v2, v0, v1

    invoke-virtual {v3, v4, v5, v0}, Lccsanandroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    .end local v2    # "exception":Ljava/util/concurrent/CancellationException;
    :goto_1
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkerWrapper;->onWorkFinished()V

    .line 305
    nop

    .line 306
    return-void

    .line 304
    :goto_2
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper$2;->this$0:Lccsanandroidx/work/impl/WorkerWrapper;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkerWrapper;->onWorkFinished()V

    .line 305
    throw v0
.end method
