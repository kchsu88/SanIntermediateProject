.class public abstract Lccsanandroidx/work/ListenableWorker;
.super Ljava/lang/Object;
.source "ListenableWorker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/ListenableWorker$Result;
    }
.end annotation


# instance fields
.field private mAppContext:Lccsanandroid/content/Context;

.field private volatile mStopped:Z

.field private mUsed:Z

.field private mWorkerParams:Lccsanandroidx/work/WorkerParameters;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V
    .locals 2
    .param p1, "appContext"    # Lccsanandroid/content/Context;
    .param p2, "workerParams"    # Lccsanandroidx/work/WorkerParameters;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    if-eqz p1, :cond_1

    .line 83
    if-eqz p2, :cond_0

    .line 87
    iput-object p1, p0, Lccsanandroidx/work/ListenableWorker;->mAppContext:Lccsanandroid/content/Context;

    .line 88
    iput-object p2, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    .line 89
    return-void

    .line 84
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WorkerParameters is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application Context is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getApplicationContext()Lccsanandroid/content/Context;
    .locals 1

    .line 97
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mAppContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 249
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public final getId()Ljava/util/UUID;
    .locals 1

    .line 106
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getId()Ljava/util/UUID;

    move-result-object v0

    return-object v0
.end method

.method public final getInputData()Lccsanandroidx/work/Data;
    .locals 1

    .line 117
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getInputData()Lccsanandroidx/work/Data;

    move-result-object v0

    return-object v0
.end method

.method public final getNetwork()Lccsanandroid/net/Network;
    .locals 1

    .line 162
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getNetwork()Lccsanandroid/net/Network;

    move-result-object v0

    return-object v0
.end method

.method public final getRunAttemptCount()I
    .locals 1

    .line 173
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getRunAttemptCount()I

    move-result v0

    return v0
.end method

.method public final getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getTags()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 257
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    return-object v0
.end method

.method public final getTriggeredContentAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getTriggeredContentAuthorities()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final getTriggeredContentUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getTriggeredContentUris()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getWorkerFactory()Lccsanandroidx/work/WorkerFactory;
    .locals 1

    .line 265
    iget-object v0, p0, Lccsanandroidx/work/ListenableWorker;->mWorkerParams:Lccsanandroidx/work/WorkerParameters;

    invoke-virtual {v0}, Lccsanandroidx/work/WorkerParameters;->getWorkerFactory()Lccsanandroidx/work/WorkerFactory;

    move-result-object v0

    return-object v0
.end method

.method public final isStopped()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lccsanandroidx/work/ListenableWorker;->mStopped:Z

    return v0
.end method

.method public final isUsed()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lccsanandroidx/work/ListenableWorker;->mUsed:Z

    return v0
.end method

.method public onStopped()V
    .locals 0

    .line 221
    return-void
.end method

.method public final setUsed()V
    .locals 1

    .line 241
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/ListenableWorker;->mUsed:Z

    .line 242
    return-void
.end method

.method public abstract startWork()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsanandroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end method

.method public final stop()V
    .locals 1

    .line 207
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/ListenableWorker;->mStopped:Z

    .line 208
    invoke-virtual {p0}, Lccsanandroidx/work/ListenableWorker;->onStopped()V

    .line 209
    return-void
.end method
