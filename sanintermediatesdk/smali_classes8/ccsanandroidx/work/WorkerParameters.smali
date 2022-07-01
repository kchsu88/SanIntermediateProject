.class public final Lccsanandroidx/work/WorkerParameters;
.super Ljava/lang/Object;
.source "WorkerParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/WorkerParameters$RuntimeExtras;
    }
.end annotation


# instance fields
.field private mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field private mId:Ljava/util/UUID;

.field private mInputData:Lccsanandroidx/work/Data;

.field private mRunAttemptCount:I

.field private mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

.field private mTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field private mWorkerFactory:Lccsanandroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Lccsanandroidx/work/Data;Ljava/util/Collection;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;ILjava/util/concurrent/Executor;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/WorkerFactory;)V
    .locals 1
    .param p1, "id"    # Ljava/util/UUID;
    .param p2, "inputData"    # Lccsanandroidx/work/Data;
    .param p4, "runtimeExtras"    # Lccsanandroidx/work/WorkerParameters$RuntimeExtras;
    .param p5, "runAttemptCount"    # I
    .param p6, "backgroundExecutor"    # Ljava/util/concurrent/Executor;
    .param p7, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p8, "workerFactory"    # Lccsanandroidx/work/WorkerFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            "Lccsanandroidx/work/Data;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroidx/work/WorkerParameters$RuntimeExtras;",
            "I",
            "Ljava/util/concurrent/Executor;",
            "Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            "Lccsanandroidx/work/WorkerFactory;",
            ")V"
        }
    .end annotation

    .line 64
    .local p3, "tags":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lccsanandroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    .line 66
    iput-object p2, p0, Lccsanandroidx/work/WorkerParameters;->mInputData:Lccsanandroidx/work/Data;

    .line 67
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mTags:Ljava/util/Set;

    .line 68
    iput-object p4, p0, Lccsanandroidx/work/WorkerParameters;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 69
    iput p5, p0, Lccsanandroidx/work/WorkerParameters;->mRunAttemptCount:I

    .line 70
    iput-object p6, p0, Lccsanandroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 71
    iput-object p7, p0, Lccsanandroidx/work/WorkerParameters;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 72
    iput-object p8, p0, Lccsanandroidx/work/WorkerParameters;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    .line 73
    return-void
.end method


# virtual methods
.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 156
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getId()Ljava/util/UUID;
    .locals 1

    .line 81
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mId:Ljava/util/UUID;

    return-object v0
.end method

.method public getInputData()Lccsanandroidx/work/Data;
    .locals 1

    .line 92
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mInputData:Lccsanandroidx/work/Data;

    return-object v0
.end method

.method public getNetwork()Lccsanandroid/net/Network;
    .locals 1

    .line 137
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v0, v0, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;->network:Lccsanandroid/net/Network;

    return-object v0
.end method

.method public getRunAttemptCount()I
    .locals 1

    .line 148
    iget v0, p0, Lccsanandroidx/work/WorkerParameters;->mRunAttemptCount:I

    return v0
.end method

.method public getTags()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mTags:Ljava/util/Set;

    return-object v0
.end method

.method public getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 164
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object v0
.end method

.method public getTriggeredContentAuthorities()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v0, v0, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentAuthorities:Ljava/util/List;

    return-object v0
.end method

.method public getTriggeredContentUris()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 114
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mRuntimeExtras:Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    iget-object v0, v0, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentUris:Ljava/util/List;

    return-object v0
.end method

.method public getWorkerFactory()Lccsanandroidx/work/WorkerFactory;
    .locals 1

    .line 172
    iget-object v0, p0, Lccsanandroidx/work/WorkerParameters;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    return-object v0
.end method
