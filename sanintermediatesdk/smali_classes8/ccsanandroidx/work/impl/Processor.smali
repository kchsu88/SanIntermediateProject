.class public Lccsanandroidx/work/impl/Processor;
.super Ljava/lang/Object;
.source "Processor.java"

# interfaces
.implements Lccsanandroidx/work/impl/ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/Processor$FutureListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppContext:Lccsanandroid/content/Context;

.field private mCancelledIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mConfiguration:Lccsanandroidx/work/Configuration;

.field private mEnqueuedWorkMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroidx/work/impl/WorkerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mOuterListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/ExecutionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedulers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

.field private mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-string v0, "Processor"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 1
    .param p1, "appContext"    # Lccsanandroid/content/Context;
    .param p2, "configuration"    # Lccsanandroidx/work/Configuration;
    .param p3, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p4, "workDatabase"    # Lccsanandroidx/work/impl/WorkDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroidx/work/Configuration;",
            "Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            "Lccsanandroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p5, "schedulers":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/Scheduler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lccsanandroidx/work/impl/Processor;->mAppContext:Lccsanandroid/content/Context;

    .line 65
    iput-object p2, p0, Lccsanandroidx/work/impl/Processor;->mConfiguration:Lccsanandroidx/work/Configuration;

    .line 66
    iput-object p3, p0, Lccsanandroidx/work/impl/Processor;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 67
    iput-object p4, p0, Lccsanandroidx/work/impl/Processor;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    .line 69
    iput-object p5, p0, Lccsanandroidx/work/impl/Processor;->mSchedulers:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    .line 73
    return-void
.end method


# virtual methods
.method public addExecutionListener(Lccsanandroidx/work/impl/ExecutionListener;)V
    .locals 2
    .param p1, "executionListener"    # Lccsanandroidx/work/impl/ExecutionListener;

    .line 203
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit v0

    .line 206
    return-void

    .line 205
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasWork()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 183
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCancelled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "id"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 175
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isEnqueued(Ljava/lang/String;)Z
    .locals 2
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 192
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 194
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onExecuted(Ljava/lang/String;Z)V
    .locals 8
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "needsReschedule"    # Z

    .line 224
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 225
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    const-string v3, "%s %s executed; reschedule = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    .line 227
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v4, v5

    .line 226
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 229
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroidx/work/impl/ExecutionListener;

    .line 230
    .local v2, "executionListener":Lccsanandroidx/work/impl/ExecutionListener;
    invoke-interface {v2, p1, p2}, Lccsanandroidx/work/impl/ExecutionListener;->onExecuted(Ljava/lang/String;Z)V

    .line 231
    .end local v2    # "executionListener":Lccsanandroidx/work/impl/ExecutionListener;
    goto :goto_0

    .line 232
    :cond_0
    monitor-exit v0

    .line 233
    return-void

    .line 232
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public removeExecutionListener(Lccsanandroidx/work/impl/ExecutionListener;)V
    .locals 2
    .param p1, "executionListener"    # Lccsanandroidx/work/impl/ExecutionListener;

    .line 214
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mOuterListeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWork(Ljava/lang/String;)Z
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/work/impl/Processor;->startWork(Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)Z

    move-result v0

    return v0
.end method

.method public startWork(Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)Z
    .locals 10
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "runtimeExtras"    # Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 94
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 98
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v4, Lccsanandroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    const-string v5, "Work %s is already enqueued for processing"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 100
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 98
    invoke-virtual {v1, v4, v2, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 101
    monitor-exit v0

    return v3

    .line 104
    :cond_0
    new-instance v1, Lccsanandroidx/work/impl/WorkerWrapper$Builder;

    iget-object v5, p0, Lccsanandroidx/work/impl/Processor;->mAppContext:Lccsanandroid/content/Context;

    iget-object v6, p0, Lccsanandroidx/work/impl/Processor;->mConfiguration:Lccsanandroidx/work/Configuration;

    iget-object v7, p0, Lccsanandroidx/work/impl/Processor;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    iget-object v8, p0, Lccsanandroidx/work/impl/Processor;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    move-object v4, v1

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lccsanandroidx/work/impl/WorkerWrapper$Builder;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/lang/String;)V

    iget-object v4, p0, Lccsanandroidx/work/impl/Processor;->mSchedulers:Ljava/util/List;

    .line 111
    invoke-virtual {v1, v4}, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->withSchedulers(Ljava/util/List;)Lccsanandroidx/work/impl/WorkerWrapper$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1, p2}, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->withRuntimeExtras(Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)Lccsanandroidx/work/impl/WorkerWrapper$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkerWrapper$Builder;->build()Lccsanandroidx/work/impl/WorkerWrapper;

    move-result-object v1

    .line 114
    .local v1, "workWrapper":Lccsanandroidx/work/impl/WorkerWrapper;
    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkerWrapper;->getFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v4

    .line 115
    .local v4, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Boolean;>;"
    new-instance v5, Lccsanandroidx/work/impl/Processor$FutureListener;

    invoke-direct {v5, p0, p1, v4}, Lccsanandroidx/work/impl/Processor$FutureListener;-><init>(Lccsanandroidx/work/impl/ExecutionListener;Ljava/lang/String;Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    iget-object v6, p0, Lccsanandroidx/work/impl/Processor;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 117
    invoke-interface {v6}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v6

    .line 115
    invoke-interface {v4, v5, v6}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 118
    iget-object v5, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v5, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    nop

    .end local v4    # "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<Ljava/lang/Boolean;>;"
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 121
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v4, Lccsanandroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    const-string v5, "%s: processing %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v3

    aput-object p1, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v4, v5, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 122
    return v2

    .line 119
    .end local v1    # "workWrapper":Lccsanandroidx/work/impl/WorkerWrapper;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopAndCancelWork(Ljava/lang/String;)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    const-string v3, "Processor cancelling %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 154
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mCancelledIds:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 155
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/WorkerWrapper;

    .line 156
    .local v1, "wrapper":Lccsanandroidx/work/impl/WorkerWrapper;
    if-eqz v1, :cond_0

    .line 157
    invoke-virtual {v1, v4}, Lccsanandroidx/work/impl/WorkerWrapper;->interrupt(Z)V

    .line 158
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    const-string v5, "WorkerWrapper cancelled for %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 159
    monitor-exit v0

    return v4

    .line 161
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    const-string v5, "WorkerWrapper could not be found for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 162
    monitor-exit v0

    return v6

    .line 163
    .end local v1    # "wrapper":Lccsanandroidx/work/impl/WorkerWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopWork(Ljava/lang/String;)Z
    .locals 8
    .param p1, "id"    # Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lccsanandroidx/work/impl/Processor;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 133
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/Processor;->TAG:Ljava/lang/String;

    const-string v3, "Processor stopping %s"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 134
    iget-object v1, p0, Lccsanandroidx/work/impl/Processor;->mEnqueuedWorkMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/impl/WorkerWrapper;

    .line 135
    .local v1, "wrapper":Lccsanandroidx/work/impl/WorkerWrapper;
    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v1, v6}, Lccsanandroidx/work/impl/WorkerWrapper;->interrupt(Z)V

    .line 137
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    const-string v5, "WorkerWrapper stopped for %s"

    new-array v7, v4, [Ljava/lang/Object;

    aput-object p1, v7, v6

    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 138
    monitor-exit v0

    return v4

    .line 140
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    const-string v5, "WorkerWrapper could not be found for %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Throwable;

    invoke-virtual {v3, v2, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 141
    monitor-exit v0

    return v6

    .line 142
    .end local v1    # "wrapper":Lccsanandroidx/work/impl/WorkerWrapper;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
