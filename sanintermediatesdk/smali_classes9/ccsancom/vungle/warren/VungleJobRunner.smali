.class Lccsancom/vungle/warren/VungleJobRunner;
.super Ljava/lang/Object;
.source "VungleJobRunner.java"

# interfaces
.implements Lccsancom/vungle/warren/tasks/JobRunner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/vungle/warren/VungleJobRunner$PendingRunnable;,
        Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static handler:Lccsanandroid/os/Handler;


# instance fields
.field private creator:Lccsancom/vungle/warren/tasks/JobCreator;

.field private executor:Ljava/util/concurrent/Executor;

.field private final networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

.field private final networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

.field private nextCheck:J

.field private pendingJobs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/vungle/warren/VungleJobRunner$PendingJob;",
            ">;"
        }
    .end annotation
.end field

.field private pendingRunnable:Ljava/lang/Runnable;

.field private final threadPriorityHelper:Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    sput-object v0, Lccsancom/vungle/warren/VungleJobRunner;->handler:Lccsanandroid/os/Handler;

    .line 31
    const-class v0, Lccsancom/vungle/warren/VungleJobRunner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/vungle/warren/VungleJobRunner;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsancom/vungle/warren/tasks/JobCreator;Ljava/util/concurrent/Executor;Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;Lccsancom/vungle/warren/utility/NetworkProvider;)V
    .locals 2
    .param p1, "jobCreator"    # Lccsancom/vungle/warren/tasks/JobCreator;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "threadPriorityHelper"    # Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;
    .param p4, "networkProvider"    # Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lccsancom/vungle/warren/VungleJobRunner;->nextCheck:J

    .line 148
    new-instance v0, Lccsancom/vungle/warren/VungleJobRunner$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/VungleJobRunner$1;-><init>(Lccsancom/vungle/warren/VungleJobRunner;)V

    iput-object v0, p0, Lccsancom/vungle/warren/VungleJobRunner;->networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    .line 70
    iput-object p1, p0, Lccsancom/vungle/warren/VungleJobRunner;->creator:Lccsancom/vungle/warren/tasks/JobCreator;

    .line 71
    iput-object p2, p0, Lccsancom/vungle/warren/VungleJobRunner;->executor:Ljava/util/concurrent/Executor;

    .line 72
    iput-object p3, p0, Lccsancom/vungle/warren/VungleJobRunner;->threadPriorityHelper:Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    .line 74
    iput-object p4, p0, Lccsancom/vungle/warren/VungleJobRunner;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 75
    new-instance v0, Lccsancom/vungle/warren/VungleJobRunner$PendingRunnable;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lccsancom/vungle/warren/VungleJobRunner$PendingRunnable;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingRunnable:Ljava/lang/Runnable;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/VungleJobRunner;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/VungleJobRunner;

    .line 28
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleJobRunner;->executePendingJobs()V

    return-void
.end method

.method private declared-synchronized executePendingJobs()V
    .locals 14

    monitor-enter p0

    .line 114
    :try_start_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 115
    .local v0, "now":J
    const-wide v2, 0x7fffffffffffffffL

    .line 116
    .local v2, "nextCheck":J
    const-wide/16 v4, 0x0

    .line 118
    .local v4, "waitingForNetwork":J
    iget-object v6, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;

    .line 119
    .local v7, "job":Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
    invoke-static {v7}, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->access$100(Lccsancom/vungle/warren/VungleJobRunner$PendingJob;)J

    move-result-wide v8

    cmp-long v10, v0, v8

    if-ltz v10, :cond_2

    .line 120
    const/4 v8, 0x1

    .line 121
    .local v8, "canRun":Z
    iget-object v9, v7, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->info:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v9}, Lccsancom/vungle/warren/tasks/JobInfo;->getRequiredNetworkType()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    iget-object v9, p0, Lccsancom/vungle/warren/VungleJobRunner;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    .line 122
    invoke-virtual {v9}, Lccsancom/vungle/warren/utility/NetworkProvider;->getCurrentNetworkType()I

    move-result v9

    const/4 v10, -0x1

    if-ne v9, v10, :cond_0

    .line 123
    const/4 v8, 0x0

    .line 124
    const-wide/16 v9, 0x1

    add-long/2addr v4, v9

    .line 127
    .end local p0    # "this":Lccsancom/vungle/warren/VungleJobRunner;
    :cond_0
    if-eqz v8, :cond_1

    .line 128
    iget-object v9, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 129
    iget-object v9, p0, Lccsancom/vungle/warren/VungleJobRunner;->executor:Ljava/util/concurrent/Executor;

    new-instance v10, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;

    iget-object v11, v7, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->info:Lccsancom/vungle/warren/tasks/JobInfo;

    iget-object v12, p0, Lccsancom/vungle/warren/VungleJobRunner;->creator:Lccsancom/vungle/warren/tasks/JobCreator;

    iget-object v13, p0, Lccsancom/vungle/warren/VungleJobRunner;->threadPriorityHelper:Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;

    invoke-direct {v10, v11, v12, p0, v13}, Lccsancom/vungle/warren/tasks/runnable/JobRunnable;-><init>(Lccsancom/vungle/warren/tasks/JobInfo;Lccsancom/vungle/warren/tasks/JobCreator;Lccsancom/vungle/warren/tasks/JobRunner;Lccsancom/vungle/warren/tasks/utility/ThreadPriorityHelper;)V

    invoke-interface {v9, v10}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 131
    .end local v8    # "canRun":Z
    :cond_1
    goto :goto_1

    .line 132
    :cond_2
    invoke-static {v7}, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->access$100(Lccsancom/vungle/warren/VungleJobRunner$PendingJob;)J

    move-result-wide v8

    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    move-wide v2, v8

    .line 134
    .end local v7    # "job":Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
    :goto_1
    goto :goto_0

    .line 136
    :cond_3
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v8, v2, v6

    if-eqz v8, :cond_4

    iget-wide v6, p0, Lccsancom/vungle/warren/VungleJobRunner;->nextCheck:J

    cmp-long v8, v2, v6

    if-eqz v8, :cond_4

    .line 137
    sget-object v6, Lccsancom/vungle/warren/VungleJobRunner;->handler:Lccsanandroid/os/Handler;

    iget-object v7, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {v6, v7}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 138
    sget-object v6, Lccsancom/vungle/warren/VungleJobRunner;->handler:Lccsanandroid/os/Handler;

    iget-object v7, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingRunnable:Ljava/lang/Runnable;

    sget-object v8, Lccsancom/vungle/warren/VungleJobRunner;->TAG:Ljava/lang/String;

    invoke-virtual {v6, v7, v8, v2, v3}, Lccsanandroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 140
    :cond_4
    iput-wide v2, p0, Lccsancom/vungle/warren/VungleJobRunner;->nextCheck:J

    .line 141
    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_5

    .line 142
    iget-object v6, p0, Lccsancom/vungle/warren/VungleJobRunner;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    iget-object v7, p0, Lccsancom/vungle/warren/VungleJobRunner;->networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v6, v7}, Lccsancom/vungle/warren/utility/NetworkProvider;->addListener(Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;)V

    goto :goto_2

    .line 144
    :cond_5
    iget-object v6, p0, Lccsancom/vungle/warren/VungleJobRunner;->networkProvider:Lccsancom/vungle/warren/utility/NetworkProvider;

    iget-object v7, p0, Lccsancom/vungle/warren/VungleJobRunner;->networkListener:Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;

    invoke-virtual {v6, v7}, Lccsancom/vungle/warren/utility/NetworkProvider;->removeListener(Lccsancom/vungle/warren/utility/NetworkProvider$NetworkListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 146
    :goto_2
    monitor-exit p0

    return-void

    .line 113
    .end local v0    # "now":J
    .end local v2    # "nextCheck":J
    .end local v4    # "waitingForNetwork":J
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public declared-synchronized cancelPendingJob(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    monitor-enter p0

    .line 104
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v0, "jobsToRemove":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/VungleJobRunner$PendingJob;>;"
    iget-object v1, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;

    .line 106
    .local v2, "pendingJob":Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
    iget-object v3, v2, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->info:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v3}, Lccsancom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 107
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    .end local v2    # "pendingJob":Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
    .end local p0    # "this":Lccsancom/vungle/warren/VungleJobRunner;
    :cond_0
    goto :goto_0

    .line 110
    :cond_1
    iget-object v1, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    monitor-exit p0

    return-void

    .line 103
    .end local v0    # "jobsToRemove":Ljava/util/List;, "Ljava/util/List<Lccsancom/vungle/warren/VungleJobRunner$PendingJob;>;"
    .end local p1    # "tag":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public declared-synchronized execute(Lccsancom/vungle/warren/tasks/JobInfo;)V
    .locals 9
    .param p1, "jobInfo"    # Lccsancom/vungle/warren/tasks/JobInfo;

    monitor-enter p0

    .line 81
    :try_start_0
    invoke-virtual {p1}, Lccsancom/vungle/warren/tasks/JobInfo;->copy()Lccsancom/vungle/warren/tasks/JobInfo;

    move-result-object v0

    .line 83
    .local v0, "jobInfoCopy":Lccsancom/vungle/warren/tasks/JobInfo;
    invoke-virtual {v0}, Lccsancom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "jobTag":Ljava/lang/String;
    invoke-virtual {v0}, Lccsancom/vungle/warren/tasks/JobInfo;->getDelay()J

    move-result-wide v2

    .line 87
    .local v2, "delay":J
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Lccsancom/vungle/warren/tasks/JobInfo;->setDelay(J)Lccsancom/vungle/warren/tasks/JobInfo;

    .line 89
    invoke-virtual {v0}, Lccsancom/vungle/warren/tasks/JobInfo;->getUpdateCurrent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 90
    iget-object v4, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;

    .line 91
    .local v5, "job":Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
    iget-object v6, v5, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;->info:Lccsancom/vungle/warren/tasks/JobInfo;

    invoke-virtual {v6}, Lccsancom/vungle/warren/tasks/JobInfo;->getJobTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 92
    sget-object v6, Lccsancom/vungle/warren/VungleJobRunner;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "replacing pending job with new "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lccsanandroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v6, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 95
    .end local v5    # "job":Lccsancom/vungle/warren/VungleJobRunner$PendingJob;
    .end local p0    # "this":Lccsancom/vungle/warren/VungleJobRunner;
    :cond_0
    goto :goto_0

    .line 98
    :cond_1
    iget-object v4, p0, Lccsancom/vungle/warren/VungleJobRunner;->pendingJobs:Ljava/util/List;

    new-instance v5, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;

    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    add-long/2addr v6, v2

    invoke-direct {v5, v6, v7, v0}, Lccsancom/vungle/warren/VungleJobRunner$PendingJob;-><init>(JLccsancom/vungle/warren/tasks/JobInfo;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-direct {p0}, Lccsancom/vungle/warren/VungleJobRunner;->executePendingJobs()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    monitor-exit p0

    return-void

    .line 80
    .end local v0    # "jobInfoCopy":Lccsancom/vungle/warren/tasks/JobInfo;
    .end local v1    # "jobTag":Ljava/lang/String;
    .end local v2    # "delay":J
    .end local p1    # "jobInfo":Lccsancom/vungle/warren/tasks/JobInfo;
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method
