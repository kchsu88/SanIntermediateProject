.class public abstract Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
.super Ljava/lang/Object;
.source "CancelWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mOperation:Lccsanandroidx/work/impl/OperationImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lccsanandroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Lccsanandroidx/work/impl/OperationImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    return-void
.end method

.method public static forAll(Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .param p0, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 206
    new-instance v0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$4;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;)V

    return-object v0
.end method

.method public static forId(Ljava/util/UUID;Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .param p0, "id"    # Ljava/util/UUID;
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 115
    new-instance v0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;

    invoke-direct {v0, p1, p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$1;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)V

    return-object v0
.end method

.method public static forName(Ljava/lang/String;Lccsanandroidx/work/impl/WorkManagerImpl;Z)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "allowReschedule"    # Z

    .line 175
    new-instance v0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;

    invoke-direct {v0, p1, p0, p2}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$3;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static forTag(Ljava/lang/String;Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    .locals 1
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 142
    new-instance v0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$2;

    invoke-direct {v0, p1, p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable$2;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method private iterativelyCancelWorkAndDependents(Lccsanandroidx/work/impl/WorkDatabase;Ljava/lang/String;)V
    .locals 8
    .param p1, "workDatabase"    # Lccsanandroidx/work/impl/WorkDatabase;
    .param p2, "workSpecId"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 90
    .local v0, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkDatabase;->dependencyDao()Lccsanandroidx/work/impl/model/DependencyDao;

    move-result-object v1

    .line 92
    .local v1, "dependencyDao":Lccsanandroidx/work/impl/model/DependencyDao;
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 93
    .local v2, "idsToProcess":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Ljava/lang/String;>;"
    invoke-virtual {v2, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    invoke-virtual {v2}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    invoke-virtual {v2}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 97
    .local v3, "id":Ljava/lang/String;
    invoke-interface {v0, v3}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v4

    .line 98
    .local v4, "state":Lccsanandroidx/work/WorkInfo$State;
    sget-object v5, Lccsanandroidx/work/WorkInfo$State;->SUCCEEDED:Lccsanandroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_0

    sget-object v5, Lccsanandroidx/work/WorkInfo$State;->FAILED:Lccsanandroidx/work/WorkInfo$State;

    if-eq v4, v5, :cond_0

    .line 99
    sget-object v5, Lccsanandroidx/work/WorkInfo$State;->CANCELLED:Lccsanandroidx/work/WorkInfo$State;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-interface {v0, v5, v6}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 101
    :cond_0
    invoke-interface {v1, v3}, Lccsanandroidx/work/impl/model/DependencyDao;->getDependentWorkIds(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addAll(Ljava/util/Collection;)Z

    .line 102
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "state":Lccsanandroidx/work/WorkInfo$State;
    goto :goto_0

    .line 103
    :cond_1
    return-void
.end method


# virtual methods
.method cancel(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 3
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "workSpecId"    # Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->iterativelyCancelWorkAndDependents(Lccsanandroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v0

    .line 74
    .local v0, "processor":Lccsanandroidx/work/impl/Processor;
    invoke-virtual {v0, p2}, Lccsanandroidx/work/impl/Processor;->stopAndCancelWork(Ljava/lang/String;)Z

    .line 76
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/work/impl/Scheduler;

    .line 77
    .local v2, "scheduler":Lccsanandroidx/work/impl/Scheduler;
    invoke-interface {v2, p2}, Lccsanandroidx/work/impl/Scheduler;->cancel(Ljava/lang/String;)V

    .line 78
    .end local v2    # "scheduler":Lccsanandroidx/work/impl/Scheduler;
    goto :goto_0

    .line 79
    :cond_0
    return-void
.end method

.method public getOperation()Lccsanandroidx/work/Operation;
    .locals 1

    .line 55
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    return-object v0
.end method

.method reschedulePendingWorkers(Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 3
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 82
    nop

    .line 83
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v0

    .line 84
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 85
    invoke-virtual {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v2

    .line 82
    invoke-static {v0, v1, v2}, Lccsanandroidx/work/impl/Schedulers;->schedule(Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 86
    return-void
.end method

.method public run()V
    .locals 3

    .line 61
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->runInternal()V

    .line 62
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    sget-object v1, Lccsanandroidx/work/Operation;->SUCCESS:Lccsanandroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/OperationImpl;->setState(Lccsanandroidx/work/Operation$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    goto :goto_0

    .line 63
    :catchall_0
    move-exception v0

    .line 64
    .local v0, "throwable":Ljava/lang/Throwable;
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    new-instance v2, Lccsanandroidx/work/Operation$State$FAILURE;

    invoke-direct {v2, v0}, Lccsanandroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/OperationImpl;->setState(Lccsanandroidx/work/Operation$State;)V

    .line 66
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method abstract runInternal()V
.end method
