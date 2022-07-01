.class public Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;
.super Ljava/lang/Object;
.source "DelayMetCommandHandler.java"

# interfaces
.implements Lccsanandroidx/work/impl/constraints/WorkConstraintsCallback;
.implements Lccsanandroidx/work/impl/ExecutionListener;
.implements Lccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;


# static fields
.field private static final STATE_INITIAL:I = 0x0

.field private static final STATE_START_REQUESTED:I = 0x1

.field private static final STATE_STOP_REQUESTED:I = 0x2

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Lccsanandroid/content/Context;

.field private mCurrentState:I

.field private final mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

.field private mHasConstraints:Z

.field private final mLock:Ljava/lang/Object;

.field private final mStartId:I

.field private mWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

.field private final mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

.field private final mWorkSpecId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "DelayMetCommandHandler"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;ILjava/lang/String;Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "startId"    # I
    .param p3, "workSpecId"    # Ljava/lang/String;
    .param p4, "dispatcher"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Lccsanandroid/content/Context;

    .line 102
    iput p2, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 103
    iput-object p4, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    .line 104
    iput-object p3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    .line 105
    invoke-virtual {p4}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    .line 106
    .local v0, "taskExecutor":Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    new-instance v1, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-direct {v1, p1, v0, p0}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/constraints/WorkConstraintsCallback;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    .line 107
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    .line 108
    iput v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    .line 110
    return-void
.end method

.method private cleanUp()V
    .locals 8

    .line 264
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 266
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->reset()V

    .line 268
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkTimer()Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->stopTimer(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsanandroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const-string v3, "Releasing wakelock %s for WorkSpec %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v7, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 274
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 276
    :cond_0
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private stopWork()V
    .locals 8

    .line 225
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ge v1, v2, :cond_1

    .line 227
    iput v2, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 228
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const-string v5, "Stopping work for WorkSpec %s"

    new-array v6, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v7, v6, v4

    .line 230
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Throwable;

    .line 228
    invoke-virtual {v1, v2, v5, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 231
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Lccsanandroid/content/Context;

    iget-object v5, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-static {v1, v5}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createStopWorkIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v1

    .line 232
    .local v1, "stopWork":Lccsanandroid/content/Intent;
    iget-object v5, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v6, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    iget v7, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    invoke-direct {v6, v5, v1, v7}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V

    invoke-virtual {v5, v6}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 238
    iget-object v5, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v5}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v5

    iget-object v6, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lccsanandroidx/work/impl/Processor;->isEnqueued(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 239
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    const-string v6, "WorkSpec %s needs to be rescheduled"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v7, v3, v4

    .line 240
    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    .line 239
    invoke-virtual {v5, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 241
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-static {v2, v3}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createScheduleWorkIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v2

    .line 243
    .local v2, "reschedule":Lccsanandroid/content/Intent;
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v4, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    iget v5, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    invoke-direct {v4, v3, v2, v5}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V

    invoke-virtual {v3, v4}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 246
    .end local v2    # "reschedule":Lccsanandroid/content/Intent;
    goto :goto_0

    .line 247
    :cond_0
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v5

    const-string v6, "Processor does not have WorkSpec %s. No need to reschedule "

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v7, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v7, v3, v4

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v5, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 251
    .end local v1    # "stopWork":Lccsanandroid/content/Intent;
    :goto_0
    goto :goto_1

    .line 252
    :cond_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const-string v5, "Already stopped work for %s"

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 254
    :goto_1
    monitor-exit v0

    .line 255
    return-void

    .line 254
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method handleProcessWork()V
    .locals 6

    .line 185
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Lccsanandroid/content/Context;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    .line 187
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "%s (%s)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 185
    invoke-static {v0, v2}, Lccsanandroidx/work/impl/utils/WakeLocks;->newWakeLock(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    .line 188
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v2, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    aput-object v3, v1, v4

    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v3, v1, v5

    .line 189
    const-string v3, "Acquiring wakelock %s for WorkSpec %s"

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v3, v4, [Ljava/lang/Throwable;

    .line 188
    invoke-virtual {v0, v2, v1, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 190
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWakeLock:Lccsanandroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Lccsanandroid/os/PowerManager$WakeLock;->acquire()V

    .line 192
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    .line 195
    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkSpec(Ljava/lang/String;)Lccsanandroidx/work/impl/model/WorkSpec;

    move-result-object v0

    .line 200
    .local v0, "workSpec":Lccsanandroidx/work/impl/model/WorkSpec;
    if-nez v0, :cond_0

    .line 201
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->stopWork()V

    .line 202
    return-void

    .line 207
    :cond_0
    invoke-virtual {v0}, Lccsanandroidx/work/impl/model/WorkSpec;->hasConstraints()Z

    move-result v1

    iput-boolean v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    .line 209
    if-nez v1, :cond_1

    .line 210
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v5, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v5, v3, v4

    const-string v5, "No constraints for %s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Throwable;

    invoke-virtual {v1, v2, v3, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 211
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->onAllConstraintsMet(Ljava/util/List;)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkConstraintsTracker:Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/constraints/WorkConstraintsTracker;->replace(Ljava/util/List;)V

    .line 216
    :goto_0
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

    .line 117
    .local p1, "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 122
    :try_start_0
    iget v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 123
    iput v2, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mCurrentState:I

    .line 125
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v4, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const-string v5, "onAllConstraintsMet for %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 129
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v1

    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/Processor;->startWork(Ljava/lang/String;)Z

    move-result v1

    .line 131
    .local v1, "isEnqueued":Z
    if-eqz v1, :cond_1

    .line 134
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->getWorkTimer()Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    move-result-object v2

    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    const-wide/32 v4, 0x927c0

    .line 135
    invoke-virtual {v2, v3, v4, v5, p0}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->startTimer(Ljava/lang/String;JLccsanandroidx/work/impl/background/systemalarm/WorkTimer$TimeLimitExceededListener;)V

    goto :goto_0

    .line 139
    :cond_1
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->cleanUp()V

    .line 141
    .end local v1    # "isEnqueued":Z
    :goto_0
    goto :goto_1

    .line 142
    :cond_2
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v4, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const-string v5, "Already started work for %s"

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v2, v3

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v1, v4, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 144
    :goto_1
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onAllConstraintsNotMet(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 180
    .local p1, "ignored":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->stopWork()V

    .line 181
    return-void
.end method

.method public onExecuted(Ljava/lang/String;Z)V
    .locals 6
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "needsReschedule"    # Z

    .line 149
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    const-string v4, "onExecuted %s, %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 150
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->cleanUp()V

    .line 152
    if-eqz p2, :cond_0

    .line 155
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Lccsanandroid/content/Context;

    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mWorkSpecId:Ljava/lang/String;

    invoke-static {v0, v1}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createScheduleWorkIntent(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "reschedule":Lccsanandroid/content/Intent;
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v2, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    iget v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    invoke-direct {v2, v1, v0, v3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 160
    .end local v0    # "reschedule":Lccsanandroid/content/Intent;
    :cond_0
    iget-boolean v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mHasConstraints:Z

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mContext:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createConstraintsChangedIntent(Lccsanandroid/content/Context;)Lccsanandroid/content/Intent;

    move-result-object v0

    .line 165
    .local v0, "intent":Lccsanandroid/content/Intent;
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mDispatcher:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;

    new-instance v2, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    iget v3, p0, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->mStartId:I

    invoke-direct {v2, v1, v0, v3}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 168
    .end local v0    # "intent":Lccsanandroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onTimeLimitExceeded(Ljava/lang/String;)V
    .locals 5
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 172
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 174
    const-string v4, "Exceeded time limits on execution for %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Throwable;

    .line 172
    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 175
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/DelayMetCommandHandler;->stopWork()V

    .line 176
    return-void
.end method
