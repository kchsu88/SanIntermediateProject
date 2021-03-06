.class public abstract Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;
.super Ljava/lang/Object;
.source "ConstraintTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected final mAppContext:Lccsanandroid/content/Context;

.field mCurrentState:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lccsanandroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field protected final mTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "ConstraintTracker"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 51
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    .line 46
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    .line 52
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mAppContext:Lccsanandroid/content/Context;

    .line 53
    iput-object p2, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 54
    return-void
.end method


# virtual methods
.method public addListener(Lccsanandroidx/work/impl/constraints/ConstraintListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 64
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<TT;>;"
    .local p1, "listener":Lccsanandroidx/work/impl/constraints/ConstraintListener;, "Lccsanandroidx/work/impl/constraints/ConstraintListener<TT;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 65
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 67
    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->getInitialState()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    .line 68
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v3, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->TAG:Ljava/lang/String;

    const-string v4, "%s: initial state = %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    iget-object v6, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    aput-object v6, v5, v2

    .line 68
    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v4, v7, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v2, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 71
    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->startTracking()V

    .line 73
    :cond_0
    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    invoke-interface {p1, v1}, Lccsanandroidx/work/impl/constraints/ConstraintListener;->onConstraintChanged(Ljava/lang/Object;)V

    .line 75
    :cond_1
    monitor-exit v0

    .line 76
    return-void

    .line 75
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract getInitialState()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public removeListener(Lccsanandroidx/work/impl/constraints/ConstraintListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/work/impl/constraints/ConstraintListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 84
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<TT;>;"
    .local p1, "listener":Lccsanandroidx/work/impl/constraints/ConstraintListener;, "Lccsanandroidx/work/impl/constraints/ConstraintListener<TT;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    invoke-virtual {p0}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->stopTracking()V

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setState(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;, "Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker<TT;>;"
    .local p1, "newState":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 99
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    if-eq v1, p1, :cond_1

    if-eqz v1, :cond_0

    .line 100
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    iput-object p1, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mCurrentState:Ljava/lang/Object;

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mListeners:Ljava/util/Set;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    .local v1, "listenersList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/constraints/ConstraintListener<TT;>;>;"
    iget-object v2, p0, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;->mTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v2}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getMainThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;

    invoke-direct {v3, p0, v1}, Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker$1;-><init>(Lccsanandroidx/work/impl/constraints/trackers/ConstraintTracker;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 118
    .end local v1    # "listenersList":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/constraints/ConstraintListener<TT;>;>;"
    monitor-exit v0

    .line 119
    return-void

    .line 101
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public abstract startTracking()V
.end method

.method public abstract stopTracking()V
.end method
