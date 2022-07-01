.class public Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;
.super Ljava/lang/Object;
.source "GreedyScheduler.java"

# interfaces
.implements Lccsanandroidx/work/impl/Scheduler;
.implements Lccsanandroidx/work/impl/constraints/WorkConstraintsCallback;
.implements Lccsanandroidx/work/impl/ExecutionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mConstrainedWorkSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/model/WorkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private mRegisteredExecutionListener:Z

.field private mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

.field private mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "GreedyScheduler"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p3, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    .line 61
    iput-object p3, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 62
    new-instance v0, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-direct {v0, p1, p2, p0}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/constraints/WorkConstraintsCallback;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    .line 64
    return-void
.end method

.method public constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;)V
    .locals 1
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "workConstraintsTracker"    # Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    .line 69
    iput-object p1, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 70
    iput-object p2, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    .line 72
    return-void
.end method

.method private registerExecutionListenerIfNeeded()V
    .locals 1

    .line 167
    iget-boolean v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mRegisteredExecutionListener:Z

    if-nez v0, :cond_0

    .line 168
    iget-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/Processor;->addExecutionListener(Lccsanandroidx/work/impl/ExecutionListener;)V

    .line 169
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mRegisteredExecutionListener:Z

    .line 171
    :cond_0
    return-void
.end method

.method private removeConstraintTrackingFor(Ljava/lang/String;)V
    .locals 8
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 149
    iget-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    const/4 v1, 0x0

    .local v1, "i":I
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 154
    iget-object v3, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsanandroidx/work/impl/model/WorkSpec;

    iget-object v3, v3, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 155
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    const-string v5, "Stopping tracking for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 156
    iget-object v3, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 157
    iget-object v3, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v4, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    invoke-virtual {v3, v4}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->replace(Ljava/util/List;)V

    .line 158
    goto :goto_1

    .line 153
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 161
    .end local v1    # "i":I
    .end local v2    # "size":I
    :cond_1
    :goto_1
    monitor-exit v0

    .line 162
    return-void

    .line 161
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v1

    :goto_3
    goto :goto_2
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 5
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 118
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->registerExecutionListenerIfNeeded()V

    .line 119
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v4, "Cancelling work ID %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 121
    iget-object v0, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0, p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->stopWork(Ljava/lang/String;)V

    .line 122
    return-void
.end method

.method public onAllConstraintsMet(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 126
    .local p1, "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 127
    .local v1, "workSpecId":Ljava/lang/String;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 129
    const-string v6, "Constraints met: Scheduling work ID %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Throwable;

    .line 127
    invoke-virtual {v2, v3, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 130
    iget-object v2, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2, v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->startWork(Ljava/lang/String;)V

    .line 131
    .end local v1    # "workSpecId":Ljava/lang/String;
    goto :goto_0

    .line 132
    :cond_0
    return-void
.end method

.method public onAllConstraintsNotMet(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    .local p1, "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 137
    .local v1, "workSpecId":Ljava/lang/String;
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    .line 138
    const-string v6, "Constraints not met: Cancelling work ID %s"

    invoke-static {v6, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Throwable;

    .line 137
    invoke-virtual {v2, v3, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 139
    iget-object v2, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2, v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->stopWork(Ljava/lang/String;)V

    .line 140
    .end local v1    # "workSpecId":Ljava/lang/String;
    goto :goto_0

    .line 141
    :cond_0
    return-void
.end method

.method public onExecuted(Ljava/lang/String;Z)V
    .locals 0
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "needsReschedule"    # Z

    .line 145
    invoke-direct {p0, p1}, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->removeConstraintTrackingFor(Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public varargs schedule([Lccsanandroidx/work/impl/model/WorkSpec;)V
    .locals 12
    .param p1, "workSpecs"    # [Lccsanandroidx/work/impl/model/WorkSpec;

    .line 76
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->registerExecutionListenerIfNeeded()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .local v0, "constrainedWorkSpecs":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "constrainedWorkSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_3

    aget-object v6, p1, v4

    .line 85
    .local v6, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    iget-object v7, v6, Lccsanandroidx/work/impl/model/WorkSpec;->state:Lccsanandroidx/work/WorkInfo$State;

    sget-object v8, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    if-ne v7, v8, :cond_2

    .line 86
    invoke-virtual {v6}, Lccsanandroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v7

    if-nez v7, :cond_2

    iget-wide v7, v6, Lccsanandroidx/work/impl/model/WorkSpec;->initialDelay:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_2

    .line 88
    invoke-virtual {v6}, Lccsanandroidx/work/impl/model/WorkSpec;->isBackedOff()Z

    move-result v7

    if-nez v7, :cond_2

    .line 89
    invoke-virtual {v6}, Lccsanandroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 92
    sget v5, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v5, v7, :cond_0

    iget-object v5, v6, Lccsanandroidx/work/impl/model/WorkSpec;->constraints:Lccsanandroidx/work/Constraints;

    .line 93
    invoke-virtual {v5}, Lccsanandroidx/work/Constraints;->hasContentUriTriggers()Z

    move-result v5

    if-nez v5, :cond_2

    .line 94
    :cond_0
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v5, v6, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 98
    :cond_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v7

    sget-object v8, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    const-string v9, "Starting work for %s"

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v10, v6, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    aput-object v10, v5, v3

    invoke-static {v9, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v9, v3, [Ljava/lang/Throwable;

    invoke-virtual {v7, v8, v5, v9}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 99
    iget-object v5, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    iget-object v7, v6, Lccsanandroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v5, v7}, Lccsanandroidx/work/impl/WorkManagerImpl;->startWork(Ljava/lang/String;)V

    .line 84
    .end local v6    # "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 106
    :cond_3
    iget-object v2, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 107
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 108
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v6, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->TAG:Ljava/lang/String;

    const-string v7, "Starting tracking for [%s]"

    new-array v5, v5, [Ljava/lang/Object;

    const-string v8, ","

    .line 109
    invoke-static {v8, v1}, Lccsanandroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v3

    .line 108
    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v4, v6, v5, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 110
    iget-object v3, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 111
    iget-object v3, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    iget-object v4, p0, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;->mConstrainedWorkSpecs:Ljava/util/List;

    invoke-virtual {v3, v4}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->replace(Ljava/util/List;)V

    .line 113
    :cond_4
    monitor-exit v2

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :goto_2
    throw v3

    :goto_3
    goto :goto_2
.end method
