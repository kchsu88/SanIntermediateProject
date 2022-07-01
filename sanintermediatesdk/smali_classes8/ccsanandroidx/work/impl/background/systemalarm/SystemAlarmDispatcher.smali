.class public Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;
.super Ljava/lang/Object;
.source "SystemAlarmDispatcher.java"

# interfaces
.implements Lccsanandroidx/work/impl/ExecutionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;,
        Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;,
        Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$DequeueAndCheckForCompletion;
    }
.end annotation


# static fields
.field private static final DEFAULT_START_ID:I = 0x0

.field private static final KEY_START_ID:Ljava/lang/String; = "KEY_START_ID"

.field private static final PROCESS_COMMAND_TAG:Ljava/lang/String; = "ProcessCommand"

.field static final TAG:Ljava/lang/String;


# instance fields
.field final mCommandHandler:Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;

.field private mCompletedListener:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

.field final mContext:Lccsanandroid/content/Context;

.field mCurrentIntent:Lccsanandroid/content/Intent;

.field final mIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsanandroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mMainHandler:Lccsanandroid/os/Handler;

.field private final mProcessor:Lccsanandroidx/work/impl/Processor;

.field private final mTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

.field private final mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

.field private final mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-string v0, "SystemAlarmDispatcher"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Lccsanandroid/content/Context;

    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/Processor;Lccsanandroidx/work/impl/WorkManagerImpl;)V

    .line 76
    return-void
.end method

.method constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/Processor;Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "processor"    # Lccsanandroidx/work/impl/Processor;
    .param p3, "workManager"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Lccsanandroid/content/Context;

    .line 85
    new-instance v1, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;

    invoke-direct {v1, v0}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCommandHandler:Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;

    .line 86
    new-instance v0, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    invoke-direct {v0}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    .line 87
    if-eqz p3, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 88
    if-eqz p2, :cond_1

    move-object v1, p2

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v1

    :goto_1
    iput-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Lccsanandroidx/work/impl/Processor;

    .line 89
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 90
    invoke-virtual {v1, p0}, Lccsanandroidx/work/impl/Processor;->addExecutionListener(Lccsanandroidx/work/impl/ExecutionListener;)V

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    .line 95
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mMainHandler:Lccsanandroid/os/Handler;

    .line 96
    return-void
.end method

.method private assertMainThread()V
    .locals 2

    .line 317
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mMainHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 320
    return-void

    .line 318
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Needs to be invoked on the main thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private hasIntentWithAction(Ljava/lang/String;)Z
    .locals 4
    .param p1, "action"    # Ljava/lang/String;

    .line 305
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    .line 306
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    monitor-enter v0

    .line 307
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/Intent;

    .line 308
    .local v2, "intent":Lccsanandroid/content/Intent;
    invoke-virtual {v2}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 311
    .end local v2    # "intent":Lccsanandroid/content/Intent;
    :cond_0
    goto :goto_0

    .line 312
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 313
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

.method private processCommand()V
    .locals 3

    .line 246
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    .line 247
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Lccsanandroid/content/Context;

    .line 248
    const-string v1, "ProcessCommand"

    invoke-static {v0, v1}, Lccsanandroidx/work/impl/utils/WakeLocks;->newWakeLock(Lccsanandroid/content/Context;Ljava/lang/String;)Lccsanandroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 250
    .local v0, "processCommandLock":Lccsanandroid/os/PowerManager$WakeLock;
    :try_start_0
    invoke-virtual {v0}, Lccsanandroid/os/PowerManager$WakeLock;->acquire()V

    .line 252
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v1}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object v1

    new-instance v2, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;

    invoke-direct {v2, p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$1;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;)V

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    invoke-virtual {v0}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 300
    nop

    .line 301
    return-void

    .line 299
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsanandroid/os/PowerManager$WakeLock;->release()V

    .line 300
    throw v1
.end method


# virtual methods
.method public add(Lccsanandroid/content/Intent;I)Z
    .locals 7
    .param p1, "intent"    # Lccsanandroid/content/Intent;
    .param p2, "startId"    # I

    .line 135
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Adding command %s (%s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 136
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    .line 137
    invoke-virtual {p1}, Lccsanandroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 138
    .local v0, "action":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    const-string v3, "Unknown command. Ignoring"

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v3, v5}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 140
    return v4

    .line 146
    :cond_0
    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "ACTION_CONSTRAINTS_CHANGED"

    .line 147
    invoke-direct {p0, v1}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->hasIntentWithAction(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    return v4

    .line 151
    :cond_1
    const-string v1, "KEY_START_ID"

    invoke-virtual {p1, v1, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    .line 152
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    monitor-enter v1

    .line 153
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v4, 0x1

    :cond_2
    move v2, v4

    .line 154
    .local v2, "hasCommands":Z
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    if-nez v2, :cond_3

    .line 159
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->processCommand()V

    .line 161
    .end local v2    # "hasCommands":Z
    :cond_3
    monitor-exit v1

    .line 162
    return v6

    .line 161
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method dequeueAndCheckForCompletion()V
    .locals 7

    .line 198
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const-string v2, "Checking if commands are complete."

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v4}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 199
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->assertMainThread()V

    .line 201
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    monitor-enter v0

    .line 218
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    if-eqz v2, :cond_1

    .line 219
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v2

    const-string v4, "Removing command %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    aput-object v6, v5, v3

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Throwable;

    invoke-virtual {v2, v1, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 220
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsanandroid/content/Intent;

    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 223
    const/4 v2, 0x0

    iput-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCurrentIntent:Lccsanandroid/content/Intent;

    goto :goto_0

    .line 221
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Dequeue-d command is not the first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 225
    :cond_1
    :goto_0
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v2}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;

    move-result-object v2

    .line 226
    .local v2, "serialExecutor":Lccsanandroidx/work/impl/utils/SerialExecutor;
    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCommandHandler:Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;

    invoke-virtual {v4}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->hasPendingCommands()Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    .line 227
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    invoke-virtual {v2}, Lccsanandroidx/work/impl/utils/SerialExecutor;->hasPendingTasks()Z

    move-result v4

    if-nez v4, :cond_2

    .line 232
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    const-string v5, "No more commands & intents."

    new-array v3, v3, [Ljava/lang/Throwable;

    invoke-virtual {v4, v1, v5, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 233
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    if-eqz v1, :cond_3

    .line 234
    invoke-interface {v1}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;->onAllCommandsCompleted()V

    goto :goto_1

    .line 236
    :cond_2
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mIntents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 238
    invoke-direct {p0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->processCommand()V

    .line 240
    .end local v2    # "serialExecutor":Lccsanandroidx/work/impl/utils/SerialExecutor;
    :cond_3
    :goto_1
    monitor-exit v0

    .line 241
    return-void

    .line 240
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getProcessor()Lccsanandroidx/work/impl/Processor;
    .locals 1

    .line 176
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Lccsanandroidx/work/impl/Processor;

    return-object v0
.end method

.method getTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 188
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object v0
.end method

.method getWorkManager()Lccsanandroidx/work/impl/WorkManagerImpl;
    .locals 1

    .line 184
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkManager:Lccsanandroidx/work/impl/WorkManagerImpl;

    return-object v0
.end method

.method getWorkTimer()Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;
    .locals 1

    .line 180
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    return-object v0
.end method

.method onDestroy()V
    .locals 4

    .line 103
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "Destroying SystemAlarmDispatcher"

    invoke-virtual {v0, v1, v3, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 104
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mProcessor:Lccsanandroidx/work/impl/Processor;

    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/Processor;->removeExecutionListener(Lccsanandroidx/work/impl/ExecutionListener;)V

    .line 105
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mWorkTimer:Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/background/systemalarm/WorkTimer;->onDestroy()V

    .line 106
    const/4 v0, 0x0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    .line 107
    return-void
.end method

.method public onExecuted(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "needsReschedule"    # Z

    .line 116
    new-instance v0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;

    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mContext:Lccsanandroid/content/Context;

    .line 119
    invoke-static {v1, p1, p2}, Lccsanandroidx/work/impl/background/systemalarm/CommandHandler;->createExecutionCompletedIntent(Lccsanandroid/content/Context;Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$AddRunnable;-><init>(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;Lccsanandroid/content/Intent;I)V

    .line 116
    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 124
    return-void
.end method

.method postOnMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 192
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mMainHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method

.method setCompletedListener(Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;)V
    .locals 4
    .param p1, "listener"    # Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    .line 166
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->TAG:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Throwable;

    const-string v3, "A completion listener for SystemAlarmDispatcher already exists."

    invoke-virtual {v0, v1, v3, v2}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 170
    return-void

    .line 172
    :cond_0
    iput-object p1, p0, Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher;->mCompletedListener:Lccsanandroidx/work/impl/background/systemalarm/SystemAlarmDispatcher$CommandsCompletedListener;

    .line 173
    return-void
.end method
