.class public Lccsanandroidx/work/impl/utils/PruneWorkRunnable;
.super Ljava/lang/Object;
.source "PruneWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mOperation:Lccsanandroidx/work/impl/OperationImpl;

.field private final mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method public constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 1
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 41
    new-instance v0, Lccsanandroidx/work/impl/OperationImpl;

    invoke-direct {v0}, Lccsanandroidx/work/impl/OperationImpl;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    .line 42
    return-void
.end method


# virtual methods
.method public getOperation()Lccsanandroidx/work/Operation;
    .locals 1

    .line 48
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    return-object v0
.end method

.method public run()V
    .locals 4

    .line 55
    :try_start_0
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 56
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 57
    .local v1, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-interface {v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast()V

    .line 58
    iget-object v2, p0, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    sget-object v3, Lccsanandroidx/work/Operation;->SUCCESS:Lccsanandroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v2, v3}, Lccsanandroidx/work/impl/OperationImpl;->setState(Lccsanandroidx/work/Operation$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    .end local v0    # "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    .end local v1    # "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    goto :goto_0

    .line 59
    :catchall_0
    move-exception v0

    .line 60
    .local v0, "exception":Ljava/lang/Throwable;
    iget-object v1, p0, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;->mOperation:Lccsanandroidx/work/impl/OperationImpl;

    new-instance v2, Lccsanandroidx/work/Operation$State$FAILURE;

    invoke-direct {v2, v0}, Lccsanandroidx/work/Operation$State$FAILURE;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/OperationImpl;->setState(Lccsanandroidx/work/Operation$State;)V

    .line 62
    .end local v0    # "exception":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method
