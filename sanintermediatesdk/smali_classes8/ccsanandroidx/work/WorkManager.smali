.class public abstract Lccsanandroidx/work/WorkManager;
.super Ljava/lang/Object;
.source "WorkManager.java"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    return-void
.end method

.method public static getInstance()Lccsanandroidx/work/WorkManager;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 159
    invoke-static {}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 160
    .local v0, "workManager":Lccsanandroidx/work/WorkManager;
    if-eqz v0, :cond_0

    .line 166
    return-object v0

    .line 161
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WorkManager is not initialized properly.  The most likely cause is that you disabled WorkManagerInitializer in your manifest but forgot to call WorkManager#initialize in your Application#onCreate or a ContentProvider."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/WorkManager;
    .locals 1
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 180
    invoke-static {p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    return-object v0
.end method

.method public static initialize(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;)V
    .locals 0
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "configuration"    # Lccsanandroidx/work/Configuration;

    .line 203
    invoke-static {p0, p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->initialize(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;)V

    .line 204
    return-void
.end method


# virtual methods
.method public final beginUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Lccsanandroidx/work/OneTimeWorkRequest;)Lccsanandroidx/work/WorkContinuation;
    .locals 1
    .param p1, "uniqueWorkName"    # Ljava/lang/String;
    .param p2, "existingWorkPolicy"    # Lccsanandroidx/work/ExistingWorkPolicy;
    .param p3, "work"    # Lccsanandroidx/work/OneTimeWorkRequest;

    .line 285
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/work/WorkManager;->beginUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;

    move-result-object v0

    return-object v0
.end method

.method public abstract beginUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation
.end method

.method public final beginWith(Lccsanandroidx/work/OneTimeWorkRequest;)Lccsanandroidx/work/WorkContinuation;
    .locals 1
    .param p1, "work"    # Lccsanandroidx/work/OneTimeWorkRequest;

    .line 238
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/WorkManager;->beginWith(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;

    move-result-object v0

    return-object v0
.end method

.method public abstract beginWith(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation
.end method

.method public abstract cancelAllWork()Lccsanandroidx/work/Operation;
.end method

.method public abstract cancelAllWorkByTag(Ljava/lang/String;)Lccsanandroidx/work/Operation;
.end method

.method public abstract cancelUniqueWork(Ljava/lang/String;)Lccsanandroidx/work/Operation;
.end method

.method public abstract cancelWorkById(Ljava/util/UUID;)Lccsanandroidx/work/Operation;
.end method

.method public final enqueue(Lccsanandroidx/work/WorkRequest;)Lccsanandroidx/work/Operation;
    .locals 1
    .param p1, "workRequest"    # Lccsanandroidx/work/WorkRequest;

    .line 214
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroidx/work/WorkManager;->enqueue(Ljava/util/List;)Lccsanandroidx/work/Operation;

    move-result-object v0

    return-object v0
.end method

.method public abstract enqueue(Ljava/util/List;)Lccsanandroidx/work/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lccsanandroidx/work/WorkRequest;",
            ">;)",
            "Lccsanandroidx/work/Operation;"
        }
    .end annotation
.end method

.method public abstract enqueueUniquePeriodicWork(Ljava/lang/String;Lccsanandroidx/work/ExistingPeriodicWorkPolicy;Lccsanandroidx/work/PeriodicWorkRequest;)Lccsanandroidx/work/Operation;
.end method

.method public enqueueUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Lccsanandroidx/work/OneTimeWorkRequest;)Lccsanandroidx/work/Operation;
    .locals 1
    .param p1, "uniqueWorkName"    # Ljava/lang/String;
    .param p2, "existingWorkPolicy"    # Lccsanandroidx/work/ExistingWorkPolicy;
    .param p3, "work"    # Lccsanandroidx/work/OneTimeWorkRequest;

    .line 344
    nop

    .line 347
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 344
    invoke-virtual {p0, p1, p2, v0}, Lccsanandroidx/work/WorkManager;->enqueueUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lccsanandroidx/work/Operation;

    move-result-object v0

    return-object v0
.end method

.method public abstract enqueueUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lccsanandroidx/work/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/ExistingWorkPolicy;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Lccsanandroidx/work/Operation;"
        }
    .end annotation
.end method

.method public abstract getLastCancelAllTimeMillis()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLastCancelAllTimeMillisLiveData()Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkInfoById(Ljava/util/UUID;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkInfoByIdLiveData(Ljava/util/UUID;)Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/UUID;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWorkInfosByTag(Ljava/lang/String;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkInfosByTagLiveData(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkInfosForUniqueWork(Ljava/lang/String;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract getWorkInfosForUniqueWorkLiveData(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract pruneWork()Lccsanandroidx/work/Operation;
.end method
