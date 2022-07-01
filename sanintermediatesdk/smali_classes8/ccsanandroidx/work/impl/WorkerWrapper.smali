.class public Lccsanandroidx/work/impl/WorkerWrapper;
.super Ljava/lang/Object;
.source "WorkerWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/WorkerWrapper$Builder;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Lccsanandroid/content/Context;

.field private mConfiguration:Lccsanandroidx/work/Configuration;

.field private mDependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

.field private mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/work/impl/utils/futures/SettableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field mInnerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsanandroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInterrupted:Z

.field mResult:Lccsanandroidx/work/ListenableWorker$Result;

.field private mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

.field private mSchedulers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private mTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

.field private mWorkDescription:Ljava/lang/String;

.field mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

.field private mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

.field private mWorkSpecId:Ljava/lang/String;

.field private mWorkTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

.field private mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field mWorker:Lccsanandroidx/work/ListenableWorker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-string v0, "WorkerWrapper"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroidx/work/impl/WorkerWrapper$Builder;)V
    .locals 1
    .param p1, "builder"    # Lccsanandroidx/work/impl/WorkerWrapper$Builder;

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    nop

    .line 83
    invoke-static {}, Lccsanandroidx/work/ListenableWorker$Result;->failure()Lccsanandroidx/work/ListenableWorker$Result;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mResult:Lccsanandroidx/work/ListenableWorker$Result;

    .line 95
    invoke-static {}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->create()Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mInnerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 104
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mAppContext:Lccsanandroid/content/Context;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mAppContext:Lccsanandroid/content/Context;

    .line 105
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 106
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorkSpecId:Ljava/lang/String;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 107
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mSchedulers:Ljava/util/List;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    .line 108
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 109
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorker:Lccsanandroidx/work/ListenableWorker;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorker:Lccsanandroidx/work/ListenableWorker;

    .line 111
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mConfiguration:Lccsanandroidx/work/Configuration;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mConfiguration:Lccsanandroidx/work/Configuration;

    .line 112
    iget-object v0, p1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    .line 113
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    .line 114
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->dependencyDao()Lccsanandroidx/work/impl/model/DependencyDao;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mDependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    .line 115
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workTagDao()Lccsanandroidx/work/impl/model/WorkTagDao;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

    .line 116
    return-void
.end method

.method private createWorkDescription(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 569
    .local p1, "tags":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Work [ id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    const-string v1, ", tags={ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x1

    .line 574
    .local v1, "first":Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 575
    .local v3, "tag":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 576
    const/4 v1, 0x0

    goto :goto_1

    .line 578
    :cond_0
    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 580
    :goto_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 581
    .end local v3    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 582
    :cond_1
    const-string v2, " } ]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 584
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private handleResult(Lccsanandroidx/work/ListenableWorker$Result;)V
    .locals 5
    .param p1, "result"    # Lccsanandroidx/work/ListenableWorker$Result;

    .line 435
    instance-of v0, p1, Lccsanandroidx/work/ListenableWorker$Result$Success;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 436
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 438
    const-string v4, "Worker result SUCCESS for %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 436
    invoke-virtual {v0, v3, v1, v2}, Lccsanandroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 439
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 440
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->resetPeriodicAndResolve()V

    goto :goto_0

    .line 442
    :cond_0
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->setSucceededAndResolve()V

    goto :goto_0

    .line 445
    :cond_1
    instance-of v0, p1, Lccsanandroidx/work/ListenableWorker$Result$Retry;

    if-eqz v0, :cond_2

    .line 446
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 448
    const-string v4, "Worker result RETRY for %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 446
    invoke-virtual {v0, v3, v1, v2}, Lccsanandroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 449
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    goto :goto_0

    .line 451
    :cond_2
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    aput-object v4, v1, v2

    .line 453
    const-string v4, "Worker result FAILURE for %s"

    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 451
    invoke-virtual {v0, v3, v1, v2}, Lccsanandroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 454
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 455
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->resetPeriodicAndResolve()V

    goto :goto_0

    .line 457
    :cond_3
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 460
    :goto_0
    return-void
.end method

.method private iterativelyFailWorkAndDependents(Ljava/lang/String;)V
    .locals 6
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 496
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 497
    .local v0, "idsToProcess":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 498
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 499
    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 501
    .local v1, "id":Ljava/lang/String;
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v2, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/WorkInfo$State;->CANCELLED:Lccsanandroidx/work/WorkInfo$State;

    if-eq v2, v3, :cond_0

    .line 502
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    sget-object v3, Lccsanandroidx/work/WorkInfo$State;->FAILED:Lccsanandroidx/work/WorkInfo$State;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mDependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    invoke-interface {v2, v1}, Lccsanandroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 505
    .end local v1    # "id":Ljava/lang/String;
    goto :goto_0

    .line 506
    :cond_1
    return-void
.end method

.method private rescheduleAndResolve()V
    .locals 6

    .line 509
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 511
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    new-array v3, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 512
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    .line 513
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 514
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 516
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 517
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 518
    nop

    .line 519
    return-void

    .line 516
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 517
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 518
    throw v1
.end method

.method private resetPeriodicAndResolve()V
    .locals 5

    .line 522
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 528
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {v1, v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    .line 529
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-interface {v1, v2, v3}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 530
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->resetWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 531
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    const-wide/16 v3, -0x1

    invoke-interface {v1, v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->markWorkSpecScheduled(Ljava/lang/String;J)I

    .line 532
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 534
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 535
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 536
    nop

    .line 537
    return-void

    .line 534
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 535
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 536
    throw v1
.end method

.method private resolve(Z)V
    .locals 5
    .param p1, "needsReschedule"    # Z

    .line 412
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 420
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getAllUnfinishedWork()Ljava/util/List;

    move-result-object v0

    .line 421
    .local v0, "unfinishedWork":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    .line 422
    .local v2, "noMoreWork":Z
    :goto_1
    if-eqz v2, :cond_2

    .line 423
    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mAppContext:Lccsanandroid/content/Context;

    const-class v4, Lccsanandroidx/work/impl/background/systemalarm/RescheduleReceiver;

    invoke-static {v3, v4, v1}, Lccsanandroidx/work/impl/utils/PackageManagerHelper;->setComponentEnabled(Lccsanandroid/content/Context;Ljava/lang/Class;Z)V

    .line 426
    :cond_2
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    .end local v0    # "unfinishedWork":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "noMoreWork":Z
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 429
    nop

    .line 431
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    .line 432
    return-void

    .line 428
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 429
    throw v0
.end method

.method private resolveIncorrectStatus()V
    .locals 7

    .line 378
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v0

    .line 379
    .local v0, "status":Lccsanandroidx/work/WorkInfo$State;
    sget-object v1, Lccsanandroidx/work/WorkInfo$State;->RUNNING:Lccsanandroidx/work/WorkInfo$State;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    .line 380
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v4, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v5, v3

    const-string v6, "Status for %s is RUNNING;not doing any work and rescheduling for later execution"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v5, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 382
    invoke-direct {p0, v2}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_0

    .line 384
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v4, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v5, v3

    aput-object v0, v5, v2

    .line 385
    const-string v2, "Status for %s is %s; not doing any work"

    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 384
    invoke-virtual {v1, v4, v2, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 386
    invoke-direct {p0, v3}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 388
    :goto_0
    return-void
.end method

.method private runWorker()V
    .locals 14

    .line 131
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 137
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    .line 138
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 139
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Didn\'t find WorkSpec for id %s"

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v1, v2

    .line 141
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v4, v2, [Ljava/lang/Throwable;

    .line 139
    invoke-virtual {v0, v3, v1, v4}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 142
    invoke-direct {p0, v2}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 143
    return-void

    .line 148
    :cond_1
    :try_start_1
    iget-object v0, v0, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v3, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    if-eq v0, v3, :cond_2

    .line 149
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    .line 150
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V

    .line 151
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v4, "%s is not in ENQUEUED state. Nothing more to do."

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v5, v1, v2

    .line 152
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 151
    invoke-virtual {v0, v3, v1, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 154
    return-void

    .line 168
    :cond_2
    :try_start_2
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 169
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 174
    .local v3, "now":J
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-wide v5, v0, Lccsanandroidx/work/impl/model/WorkSpec;->periodStartTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-nez v0, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    .line 175
    .local v0, "isFirstRun":Z
    :goto_0
    if-nez v0, :cond_5

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {v5}, Lccsanandroidx/work/impl/model/WorkSpec;->calculateNextRunTime()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-gez v7, :cond_5

    .line 176
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    sget-object v6, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v7, "Delaying execution for %s because it is being executed before schedule."

    new-array v8, v1, [Ljava/lang/Object;

    iget-object v9, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v9, v9, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v9, v8, v2

    .line 177
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 176
    invoke-virtual {v5, v6, v7, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 184
    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 193
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 185
    return-void

    .line 191
    .end local v0    # "isFirstRun":Z
    .end local v3    # "now":J
    :cond_5
    :try_start_3
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 193
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 194
    nop

    .line 199
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 200
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    .local v0, "input":Lccsanandroidx/work/Data;
    goto :goto_1

    .line 202
    .end local v0    # "input":Lccsanandroidx/work/Data;
    :cond_6
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v0, v0, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroidx/work/InputMerger;->fromClassName(Ljava/lang/String;)Lccsanandroidx/work/InputMerger;

    move-result-object v0

    .line 203
    .local v0, "inputMerger":Lccsanandroidx/work/InputMerger;
    if-nez v0, :cond_7

    .line 204
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v5, v5, Lccsanandroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    aput-object v5, v1, v2

    const-string v5, "Could not create Input Merger %s"

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v1, v2}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 206
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 207
    return-void

    .line 209
    :cond_7
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 210
    .local v3, "inputs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/Data;>;"
    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v4, v4, Lccsanandroidx/work/impl/model/WorkSpec;->input:Lccsanandroidx/work/Data;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v4, v5}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getInputsFromPrerequisites(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 212
    invoke-virtual {v0, v3}, Lccsanandroidx/work/InputMerger;->merge(Ljava/util/List;)Lccsanandroidx/work/Data;

    move-result-object v4

    move-object v0, v4

    .line 215
    .end local v3    # "inputs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/Data;>;"
    .local v0, "input":Lccsanandroidx/work/Data;
    :goto_1
    new-instance v3, Lccsanandroidx/work/WorkerParameters;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    .line 216
    invoke-static {v4}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v6

    iget-object v8, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    iget-object v9, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget v10, v4, Lccsanandroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mConfiguration:Lccsanandroidx/work/Configuration;

    .line 221
    invoke-virtual {v4}, Lccsanandroidx/work/Configuration;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v11

    iget-object v12, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mConfiguration:Lccsanandroidx/work/Configuration;

    .line 223
    invoke-virtual {v4}, Lccsanandroidx/work/Configuration;->getWorkerFactory()Lccsanandroidx/work/WorkerFactory;

    move-result-object v13

    move-object v5, v3

    move-object v7, v0

    invoke-direct/range {v5 .. v13}, Lccsanandroidx/work/WorkerParameters;-><init>(Ljava/util/UUID;Lccsanandroidx/work/Data;Ljava/util/Collection;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;ILjava/util/concurrent/Executor;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/WorkerFactory;)V

    .line 227
    .local v3, "params":Lccsanandroidx/work/WorkerParameters;
    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorker:Lccsanandroidx/work/ListenableWorker;

    if-nez v4, :cond_8

    .line 228
    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mConfiguration:Lccsanandroidx/work/Configuration;

    invoke-virtual {v4}, Lccsanandroidx/work/Configuration;->getWorkerFactory()Lccsanandroidx/work/WorkerFactory;

    move-result-object v4

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mAppContext:Lccsanandroid/content/Context;

    iget-object v6, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v6, v6, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v3}, Lccsanandroidx/work/WorkerFactory;->createWorkerWithDefaultFallback(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)Lccsanandroidx/work/ListenableWorker;

    move-result-object v4

    iput-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorker:Lccsanandroidx/work/ListenableWorker;

    .line 234
    :cond_8
    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorker:Lccsanandroidx/work/ListenableWorker;

    if-nez v4, :cond_9

    .line 235
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v6, v6, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v6, v1, v2

    .line 236
    const-string v6, "Could not create Worker %s"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 235
    invoke-virtual {v4, v5, v1, v2}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 237
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 238
    return-void

    .line 241
    :cond_9
    invoke-virtual {v4}, Lccsanandroidx/work/ListenableWorker;->isUsed()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 242
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpec:Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v6, v6, Lccsanandroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    aput-object v6, v1, v2

    .line 243
    const-string v6, "Received an already-used Worker %s; WorkerFactory should return new instances"

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Throwable;

    .line 242
    invoke-virtual {v4, v5, v1, v2}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 246
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->setFailedAndResolve()V

    .line 247
    return-void

    .line 249
    :cond_a
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorker:Lccsanandroidx/work/ListenableWorker;

    invoke-virtual {v1}, Lccsanandroidx/work/ListenableWorker;->setUsed()V

    .line 253
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->trySetRunning()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 254
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 255
    return-void

    .line 258
    :cond_b
    invoke-static {}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->create()Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v1

    .line 260
    .local v1, "future":Lccsanandroidx/work/impl/utils/futures/SettableFuture;, "Lccsanandroidx/work/impl/utils/futures/SettableFuture<Lccsanandroidx/work/ListenableWorker$Result;>;"
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v2}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v4, Lccsanandroidx/work/impl/WorkerWrapper$1;

    invoke-direct {v4, p0, v1}, Lccsanandroidx/work/impl/WorkerWrapper$1;-><init>(Lccsanandroidx/work/impl/WorkerWrapper;Lccsanandroidx/work/impl/utils/futures/SettableFuture;)V

    .line 261
    invoke-interface {v2, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 277
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 278
    .local v2, "workDescription":Ljava/lang/String;
    new-instance v4, Lccsanandroidx/work/impl/WorkerWrapper$2;

    invoke-direct {v4, p0, v1, v2}, Lccsanandroidx/work/impl/WorkerWrapper$2;-><init>(Lccsanandroidx/work/impl/WorkerWrapper;Lccsanandroidx/work/impl/utils/futures/SettableFuture;Ljava/lang/String;)V

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 307
    invoke-interface {v5}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;

    move-result-object v5

    .line 278
    invoke-virtual {v1, v4, v5}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 308
    .end local v1    # "future":Lccsanandroidx/work/impl/utils/futures/SettableFuture;, "Lccsanandroidx/work/impl/utils/futures/SettableFuture<Lccsanandroidx/work/ListenableWorker$Result;>;"
    .end local v2    # "workDescription":Ljava/lang/String;
    goto :goto_2

    .line 309
    :cond_c
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolveIncorrectStatus()V

    .line 311
    :goto_2
    return-void

    .line 193
    .end local v0    # "input":Lccsanandroidx/work/Data;
    .end local v3    # "params":Lccsanandroidx/work/WorkerParameters;
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 194
    throw v0
.end method

.method private setSucceededAndResolve()V
    .locals 13

    .line 540
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 542
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    sget-object v2, Lccsanandroidx/work/WorkInfo$State;->SUCCEEDED:Lccsanandroidx/work/WorkInfo$State;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/String;

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v4, v0

    invoke-interface {v1, v2, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 543
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mResult:Lccsanandroidx/work/ListenableWorker$Result;

    check-cast v1, Lccsanandroidx/work/ListenableWorker$Result$Success;

    .line 545
    .local v1, "success":Lccsanandroidx/work/ListenableWorker$Result$Success;
    invoke-virtual {v1}, Lccsanandroidx/work/ListenableWorker$Result$Success;->getOutputData()Lccsanandroidx/work/Data;

    move-result-object v2

    .line 546
    .local v2, "output":Lccsanandroidx/work/Data;
    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v4, v5, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Lccsanandroidx/work/Data;)V

    .line 549
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 550
    .local v4, "currentTimeMillis":J
    iget-object v6, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mDependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    iget-object v7, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v6, v7}, Lccsanandroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 551
    .local v6, "dependentWorkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 552
    .local v8, "dependentWorkId":Ljava/lang/String;
    iget-object v9, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v9, v8}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v9

    sget-object v10, Lccsanandroidx/work/WorkInfo$State;->BLOCKED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mDependencyDao:Lccsanandroidx/work/impl/model/DependencyDao;

    .line 553
    invoke-interface {v9, v8}, Lccsanandroidx/work/impl/model/DependencyDao;->hasCompletedAllPrerequisites(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 554
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v9

    sget-object v10, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const-string v11, "Setting status to enqueued for %s"

    new-array v12, v3, [Ljava/lang/Object;

    aput-object v8, v12, v0

    .line 555
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    new-array v12, v0, [Ljava/lang/Throwable;

    .line 554
    invoke-virtual {v9, v10, v11, v12}, Lccsanandroidx/work/Logger;->info(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 556
    iget-object v9, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    sget-object v10, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    new-array v11, v3, [Ljava/lang/String;

    aput-object v8, v11, v0

    invoke-interface {v9, v10, v11}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 557
    iget-object v9, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    invoke-interface {v9, v8, v4, v5}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setPeriodStartTime(Ljava/lang/String;J)V

    .line 559
    .end local v8    # "dependentWorkId":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 561
    :cond_1
    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 563
    .end local v1    # "success":Lccsanandroidx/work/ListenableWorker$Result$Success;
    .end local v2    # "output":Lccsanandroidx/work/Data;
    .end local v4    # "currentTimeMillis":J
    .end local v6    # "dependentWorkIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 564
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 565
    nop

    .line 566
    return-void

    .line 563
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 564
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 565
    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method private tryCheckForInterruptionAndResolve()Z
    .locals 6

    .line 396
    iget-boolean v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mInterrupted:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 397
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v2, Lccsanandroidx/work/impl/WorkerWrapper;->TAG:Ljava/lang/String;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    aput-object v5, v4, v1

    const-string v5, "Work interrupted for %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Throwable;

    invoke-virtual {v0, v2, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 398
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v0

    .line 399
    .local v0, "currentState":Lccsanandroidx/work/WorkInfo$State;
    if-nez v0, :cond_0

    .line 402
    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    goto :goto_0

    .line 404
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/work/WorkInfo$State;->isFinished()Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 406
    :goto_0
    return v3

    .line 408
    .end local v0    # "currentState":Lccsanandroidx/work/WorkInfo$State;
    :cond_1
    return v1
.end method

.method private trySetRunning()Z
    .locals 7

    .line 463
    const/4 v0, 0x0

    .line 464
    .local v0, "setToRunning":Z
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 466
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v1

    .line 467
    .local v1, "currentState":Lccsanandroidx/work/WorkInfo$State;
    sget-object v2, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v1, v2, :cond_0

    .line 468
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    sget-object v3, Lccsanandroidx/work/WorkInfo$State;->RUNNING:Lccsanandroidx/work/WorkInfo$State;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 469
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lccsanandroidx/work/impl/model/WorkSpecDao;->incrementWorkSpecRunAttemptCount(Ljava/lang/String;)I

    .line 470
    const/4 v0, 0x1

    .line 472
    :cond_0
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 474
    .end local v1    # "currentState":Lccsanandroidx/work/WorkInfo$State;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 475
    nop

    .line 476
    return v0

    .line 474
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 475
    throw v1
.end method


# virtual methods
.method public getFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method

.method public interrupt(Z)V
    .locals 2
    .param p1, "cancelled"    # Z

    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mInterrupted:Z

    .line 366
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    .line 367
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mInnerFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    if-eqz v1, :cond_0

    .line 369
    invoke-interface {v1, v0}, Lccsancom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 372
    :cond_0
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorker:Lccsanandroidx/work/ListenableWorker;

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Lccsanandroidx/work/ListenableWorker;->stop()V

    .line 375
    :cond_1
    return-void
.end method

.method onWorkFinished()V
    .locals 4

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "isWorkFinished":Z
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->tryCheckForInterruptionAndResolve()Z

    move-result v1

    if-nez v1, :cond_3

    .line 317
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 319
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v1

    .line 320
    .local v1, "state":Lccsanandroidx/work/WorkInfo$State;
    if-nez v1, :cond_0

    .line 325
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 326
    const/4 v0, 0x1

    goto :goto_0

    .line 327
    :cond_0
    sget-object v2, Lccsanandroidx/work/WorkInfo$State;->RUNNING:Lccsanandroidx/work/WorkInfo$State;

    if-ne v1, v2, :cond_1

    .line 328
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mResult:Lccsanandroidx/work/ListenableWorker$Result;

    invoke-direct {p0, v2}, Lccsanandroidx/work/impl/WorkerWrapper;->handleResult(Lccsanandroidx/work/ListenableWorker$Result;)V

    .line 330
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v2

    move-object v1, v2

    .line 331
    invoke-virtual {v1}, Lccsanandroidx/work/WorkInfo$State;->isFinished()Z

    move-result v2

    move v0, v2

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {v1}, Lccsanandroidx/work/WorkInfo$State;->isFinished()Z

    move-result v2

    if-nez v2, :cond_2

    .line 333
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->rescheduleAndResolve()V

    .line 335
    :cond_2
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 337
    .end local v1    # "state":Lccsanandroidx/work/WorkInfo$State;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 338
    goto :goto_1

    .line 337
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 338
    throw v1

    .line 347
    :cond_3
    :goto_1
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 348
    if-eqz v0, :cond_4

    .line 349
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/work/impl/Scheduler;

    .line 350
    .local v2, "scheduler":Lccsanandroidx/work/impl/Scheduler;
    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v2, v3}, Lccsanandroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 351
    .end local v2    # "scheduler":Lccsanandroidx/work/impl/Scheduler;
    goto :goto_2

    .line 353
    :cond_4
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mConfiguration:Lccsanandroidx/work/Configuration;

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mSchedulers:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lccsanandroidx/work/impl/Schedulers;->schedule(Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 355
    :cond_5
    return-void
.end method

.method public run()V
    .locals 2

    .line 125
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkTagDao:Lccsanandroidx/work/impl/model/WorkTagDao;

    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/model/WorkTagDao;->getTagsForWorkSpecId(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mTags:Ljava/util/List;

    .line 126
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->createWorkDescription(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDescription:Ljava/lang/String;

    .line 127
    invoke-direct {p0}, Lccsanandroidx/work/impl/WorkerWrapper;->runWorker()V

    .line 128
    return-void
.end method

.method setFailedAndResolve()V
    .locals 5

    .line 481
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 483
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/WorkerWrapper;->iterativelyFailWorkAndDependents(Ljava/lang/String;)V

    .line 484
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mResult:Lccsanandroidx/work/ListenableWorker$Result;

    check-cast v1, Lccsanandroidx/work/ListenableWorker$Result$Failure;

    .line 486
    .local v1, "failure":Lccsanandroidx/work/ListenableWorker$Result$Failure;
    invoke-virtual {v1}, Lccsanandroidx/work/ListenableWorker$Result$Failure;->getOutputData()Lccsanandroidx/work/Data;

    move-result-object v2

    .line 487
    .local v2, "output":Lccsanandroidx/work/Data;
    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecDao:Lccsanandroidx/work/impl/model/WorkSpecDao;

    iget-object v4, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setOutput(Ljava/lang/String;Lccsanandroidx/work/Data;)V

    .line 488
    iget-object v3, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v3}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    .end local v1    # "failure":Lccsanandroidx/work/ListenableWorker$Result$Failure;
    .end local v2    # "output":Lccsanandroidx/work/Data;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 491
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 492
    nop

    .line 493
    return-void

    .line 490
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lccsanandroidx/work/impl/WorkerWrapper;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 491
    invoke-direct {p0, v0}, Lccsanandroidx/work/impl/WorkerWrapper;->resolve(Z)V

    .line 492
    throw v1
.end method
