.class public Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;
.super Lccsanandroidx/work/ListenableWorker;
.source "ConstraintTrackingWorker.java"

# interfaces
.implements Lccsanandroidx/work/impl/constraints/WorkConstraintsCallback;


# static fields
.field public static final ARGUMENT_CLASS_NAME:Ljava/lang/String; = "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field volatile mAreConstraintsUnmet:Z

.field private mDelegate:Lccsanandroidx/work/ListenableWorker;

.field mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/work/impl/utils/futures/SettableFuture<",
            "Lccsanandroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field private mWorkerParameters:Lccsanandroidx/work/WorkerParameters;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "ConstraintTrkngWrkr"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V
    .locals 1
    .param p1, "appContext"    # Lccsanandroid/content/Context;
    .param p2, "workerParams"    # Lccsanandroidx/work/WorkerParameters;

    .line 72
    invoke-direct {p0, p1, p2}, Lccsanandroidx/work/ListenableWorker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V

    .line 73
    iput-object p2, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mWorkerParameters:Lccsanandroidx/work/WorkerParameters;

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    .line 76
    invoke-static {}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->create()Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    .line 77
    return-void
.end method


# virtual methods
.method public getDelegate()Lccsanandroidx/work/ListenableWorker;
    .locals 1

    .line 215
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Lccsanandroidx/work/ListenableWorker;

    return-object v0
.end method

.method public getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 204
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;
    .locals 1

    .line 193
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    return-object v0
.end method

.method public onAllConstraintsMet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 222
    .local p1, "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public onAllConstraintsNotMet(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 227
    .local p1, "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const-string v2, "Constraints changed for %s"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 228
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iput-boolean v3, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    .line 230
    monitor-exit v0

    .line 231
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStopped()V
    .locals 1

    .line 178
    invoke-super {p0}, Lccsanandroidx/work/ListenableWorker;->onStopped()V

    .line 179
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Lccsanandroidx/work/ListenableWorker;

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {v0}, Lccsanandroidx/work/ListenableWorker;->stop()V

    .line 183
    :cond_0
    return-void
.end method

.method setFutureFailed()V
    .locals 2

    .line 168
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Lccsanandroidx/work/ListenableWorker$Result;->failure()Lccsanandroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method setFutureRetry()V
    .locals 2

    .line 173
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {}, Lccsanandroidx/work/ListenableWorker$Result;->retry()Lccsanandroidx/work/ListenableWorker$Result;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 174
    return-void
.end method

.method setupAndRunConstraintTrackingWork()V
    .locals 11

    .line 93
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getInputData()Lccsanandroidx/work/Data;

    move-result-object v0

    const-string v1, "androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME"

    invoke-virtual {v0, v1}, Lccsanandroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 95
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v3, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v2}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 96
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    .line 97
    return-void

    .line 100
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getWorkerFactory()Lccsanandroidx/work/WorkerFactory;

    move-result-object v1

    .line 101
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mWorkerParameters:Lccsanandroidx/work/WorkerParameters;

    .line 100
    invoke-virtual {v1, v3, v0, v4}, Lccsanandroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)Lccsanandroidx/work/ListenableWorker;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Lccsanandroidx/work/ListenableWorker;

    .line 105
    if-nez v1, :cond_1

    .line 106
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v3, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const-string v4, "No worker to delegate to."

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 107
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    .line 108
    return-void

    .line 111
    :cond_1
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 114
    .local v1, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v3

    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getId()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;

    move-result-object v3

    .line 115
    .local v3, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    if-nez v3, :cond_2

    .line 116
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    .line 117
    return-void

    .line 119
    :cond_2
    new-instance v4, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 120
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v6

    invoke-direct {v4, v5, v6, p0}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/constraints/WorkConstraintsCallback;)V

    .line 123
    .local v4, "workConstraintsTracker":Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->replace(Ljava/util/List;)V

    .line 125
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getId()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->areAllConstraintsMet(Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_4

    .line 126
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    sget-object v7, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const-string v8, "Constraints met for delegate %s"

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v0, v9, v2

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    new-array v9, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v8, v9}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 132
    :try_start_0
    iget-object v5, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mDelegate:Lccsanandroidx/work/ListenableWorker;

    invoke-virtual {v5}, Lccsanandroidx/work/ListenableWorker;->startWork()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v5

    .line 133
    .local v5, "innerFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<Lccsanandroidx/work/ListenableWorker$Result;>;"
    new-instance v7, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;

    invoke-direct {v7, p0, v5}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$2;-><init>(Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    .line 144
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v8

    .line 133
    invoke-interface {v5, v7, v8}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    .end local v5    # "innerFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<Lccsanandroidx/work/ListenableWorker$Result;>;"
    :goto_0
    goto :goto_2

    .line 145
    :catchall_0
    move-exception v5

    .line 146
    .local v5, "exception":Ljava/lang/Throwable;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v7

    sget-object v8, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const-string v9, "Delegated worker %s threw exception in startWork."

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v0, v10, v2

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-array v6, v6, [Ljava/lang/Throwable;

    aput-object v5, v6, v2

    invoke-virtual {v7, v8, v9, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 149
    iget-object v7, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 150
    :try_start_1
    iget-boolean v6, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mAreConstraintsUnmet:Z

    if-eqz v6, :cond_3

    .line 151
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v6

    const-string v9, "Constraints were unmet, Retrying."

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v6, v8, v9, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 152
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureRetry()V

    goto :goto_1

    .line 154
    :cond_3
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureFailed()V

    .line 156
    :goto_1
    monitor-exit v7

    goto :goto_0

    :catchall_1
    move-exception v2

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2

    .line 159
    .end local v5    # "exception":Ljava/lang/Throwable;
    :cond_4
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    sget-object v7, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->TAG:Ljava/lang/String;

    const-string v8, "Constraints not met for delegate %s. Requesting retry."

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v5, v7, v6, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 161
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->setFutureRetry()V

    .line 164
    :goto_2
    return-void
.end method

.method public startWork()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsanandroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$1;

    invoke-direct {v1, p0}, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker$1;-><init>(Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 88
    iget-object v0, p0, Lccsanandroidx/work/impl/workers/ConstraintTrackingWorker;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method
