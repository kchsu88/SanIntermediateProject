.class public Lccsanandroidx/work/impl/WorkManagerImpl;
.super Lccsanandroidx/work/WorkManager;
.source "WorkManagerImpl.java"


# static fields
.field public static final MAX_PRE_JOB_SCHEDULER_API_LEVEL:I = 0x16

.field public static final MIN_JOB_SCHEDULER_API_LEVEL:I = 0x17

.field private static sDefaultInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

.field private static sDelegatedInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

.field private static final sLock:Ljava/lang/Object;


# instance fields
.field private mConfiguration:Lccsanandroidx/work/Configuration;

.field private mContext:Lccsanandroid/content/Context;

.field private mForceStopRunnableCompleted:Z

.field private mPreferences:Lccsanandroidx/work/impl/utils/Preferences;

.field private mProcessor:Lccsanandroidx/work/impl/Processor;

.field private mRescheduleReceiverResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;

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

    .line 85
    const/4 v0, 0x0

    sput-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 86
    sput-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "configuration"    # Lccsanandroidx/work/Configuration;
    .param p3, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 201
    nop

    .line 204
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    sget v1, Lccsanandroidx/work/R$bool;->workmanager_test_configuration:I

    invoke-virtual {v0, v1}, Lccsanandroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 201
    invoke-direct {p0, p1, p2, p3, v0}, Lccsanandroidx/work/impl/WorkManagerImpl;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Z)V

    .line 205
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;Lccsanandroidx/work/impl/Processor;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "configuration"    # Lccsanandroidx/work/Configuration;
    .param p3, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p4, "workDatabase"    # Lccsanandroidx/work/impl/WorkDatabase;
    .param p6, "processor"    # Lccsanandroidx/work/impl/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroidx/work/Configuration;",
            "Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            "Lccsanandroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;",
            "Lccsanandroidx/work/impl/Processor;",
            ")V"
        }
    .end annotation

    .line 256
    .local p5, "schedulers":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/Scheduler;>;"
    invoke-direct {p0}, Lccsanandroidx/work/WorkManager;-><init>()V

    .line 257
    invoke-direct/range {p0 .. p6}, Lccsanandroidx/work/impl/WorkManagerImpl;->internalInit(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;Lccsanandroidx/work/impl/Processor;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Z)V
    .locals 10
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "configuration"    # Lccsanandroidx/work/Configuration;
    .param p3, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p4, "useTestDatabase"    # Z

    .line 222
    invoke-direct {p0}, Lccsanandroidx/work/WorkManager;-><init>()V

    .line 224
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 225
    .local v0, "applicationContext":Lccsanandroid/content/Context;
    nop

    .line 226
    invoke-virtual {p2}, Lccsanandroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 225
    invoke-static {v0, v1, p4}, Lccsanandroidx/work/impl/WorkDatabase;->create(Lccsanandroid/content/Context;Ljava/util/concurrent/Executor;Z)Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v1

    .line 227
    .local v1, "database":Lccsanandroidx/work/impl/WorkDatabase;
    new-instance v2, Lccsanandroidx/work/Logger$LogcatLogger;

    invoke-virtual {p2}, Lccsanandroidx/work/Configuration;->getMinimumLoggingLevel()I

    move-result v3

    invoke-direct {v2, v3}, Lccsanandroidx/work/Logger$LogcatLogger;-><init>(I)V

    invoke-static {v2}, Lccsanandroidx/work/Logger;->setLogger(Lccsanandroidx/work/Logger;)V

    .line 228
    invoke-virtual {p0, v0, p3}, Lccsanandroidx/work/impl/WorkManagerImpl;->createSchedulers(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Ljava/util/List;

    move-result-object v9

    .line 229
    .local v9, "schedulers":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/Scheduler;>;"
    new-instance v8, Lccsanandroidx/work/impl/Processor;

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v1

    move-object v7, v9

    invoke-direct/range {v2 .. v7}, Lccsanandroidx/work/impl/Processor;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 235
    .local v8, "processor":Lccsanandroidx/work/impl/Processor;
    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lccsanandroidx/work/impl/WorkManagerImpl;->internalInit(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;Lccsanandroidx/work/impl/Processor;)V

    .line 236
    return-void
.end method

.method private createWorkContinuationForUniquePeriodicWork(Ljava/lang/String;Lccsanandroidx/work/ExistingPeriodicWorkPolicy;Lccsanandroidx/work/PeriodicWorkRequest;)Lccsanandroidx/work/impl/WorkContinuationImpl;
    .locals 3
    .param p1, "uniqueWorkName"    # Ljava/lang/String;
    .param p2, "existingPeriodicWorkPolicy"    # Lccsanandroidx/work/ExistingPeriodicWorkPolicy;
    .param p3, "periodicWork"    # Lccsanandroidx/work/PeriodicWorkRequest;

    .line 387
    sget-object v0, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->KEEP:Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    if-ne p2, v0, :cond_0

    .line 388
    sget-object v0, Lccsanandroidx/work/ExistingWorkPolicy;->KEEP:Lccsanandroidx/work/ExistingWorkPolicy;

    .local v0, "existingWorkPolicy":Lccsanandroidx/work/ExistingWorkPolicy;
    goto :goto_0

    .line 390
    .end local v0    # "existingWorkPolicy":Lccsanandroidx/work/ExistingWorkPolicy;
    :cond_0
    sget-object v0, Lccsanandroidx/work/ExistingWorkPolicy;->REPLACE:Lccsanandroidx/work/ExistingWorkPolicy;

    .line 392
    .restart local v0    # "existingWorkPolicy":Lccsanandroidx/work/ExistingWorkPolicy;
    :goto_0
    new-instance v1, Lccsanandroidx/work/impl/WorkContinuationImpl;

    .line 396
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, p0, p1, v0, v2}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    .line 392
    return-object v1
.end method

.method public static getInstance()Lccsanandroidx/work/impl/WorkManagerImpl;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 112
    sget-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_0
    sget-object v1, Lccsanandroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    if-eqz v1, :cond_0

    .line 114
    monitor-exit v0

    return-object v1

    .line 117
    :cond_0
    sget-object v1, Lccsanandroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    monitor-exit v0

    return-object v1

    .line 118
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;
    .locals 5
    .param p0, "context"    # Lccsanandroid/content/Context;

    .line 130
    sget-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 131
    :try_start_0
    invoke-static {}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance()Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v1

    .line 132
    .local v1, "instance":Lccsanandroidx/work/impl/WorkManagerImpl;
    if-nez v1, :cond_1

    .line 133
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    .line 134
    .local v2, "appContext":Lccsanandroid/content/Context;
    instance-of v3, v2, Lccsanandroidx/work/Configuration$Provider;

    if-eqz v3, :cond_0

    .line 135
    move-object v3, v2

    check-cast v3, Lccsanandroidx/work/Configuration$Provider;

    .line 137
    invoke-interface {v3}, Lccsanandroidx/work/Configuration$Provider;->getWorkManagerConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v3

    .line 135
    invoke-static {v2, v3}, Lccsanandroidx/work/impl/WorkManagerImpl;->initialize(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;)V

    .line 138
    invoke-static {v2}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 140
    :cond_0
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "WorkManager is not initialized properly.  You have explicitly disabled WorkManagerInitializer in your manifest, have not manually called WorkManager#initialize at this point, and your Application does not implement Configuration.Provider."

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Lccsanandroid/content/Context;
    throw v3

    .line 147
    .end local v2    # "appContext":Lccsanandroid/content/Context;
    .restart local p0    # "context":Lccsanandroid/content/Context;
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v1

    .line 148
    .end local v1    # "instance":Lccsanandroidx/work/impl/WorkManagerImpl;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static initialize(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;)V
    .locals 4
    .param p0, "context"    # Lccsanandroid/content/Context;
    .param p1, "configuration"    # Lccsanandroidx/work/Configuration;

    .line 165
    sget-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 166
    :try_start_0
    sget-object v1, Lccsanandroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    if-eqz v1, :cond_1

    sget-object v2, Lccsanandroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    if-nez v2, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WorkManager is already initialized.  Did you try to initialize it manually without disabling WorkManagerInitializer? See WorkManager#initialize(Context, Configuration) or the class levelJavadoc for more information."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local p0    # "context":Lccsanandroid/content/Context;
    .end local p1    # "configuration":Lccsanandroidx/work/Configuration;
    throw v1

    .line 174
    .restart local p0    # "context":Lccsanandroid/content/Context;
    .restart local p1    # "configuration":Lccsanandroidx/work/Configuration;
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 175
    invoke-virtual {p0}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    move-object p0, v1

    .line 176
    sget-object v1, Lccsanandroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    if-nez v1, :cond_2

    .line 177
    new-instance v1, Lccsanandroidx/work/impl/WorkManagerImpl;

    new-instance v2, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;

    .line 180
    invoke-virtual {p1}, Lccsanandroidx/work/Configuration;->getTaskExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    invoke-direct {v2, v3}, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    invoke-direct {v1, p0, p1, v2}, Lccsanandroidx/work/impl/WorkManagerImpl;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)V

    sput-object v1, Lccsanandroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 182
    :cond_2
    sget-object v1, Lccsanandroidx/work/impl/WorkManagerImpl;->sDefaultInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    sput-object v1, Lccsanandroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 184
    :cond_3
    monitor-exit v0

    .line 185
    return-void

    .line 184
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private internalInit(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;Lccsanandroidx/work/impl/Processor;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "configuration"    # Lccsanandroidx/work/Configuration;
    .param p3, "workTaskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .param p4, "workDatabase"    # Lccsanandroidx/work/impl/WorkDatabase;
    .param p6, "processor"    # Lccsanandroidx/work/impl/Processor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroidx/work/Configuration;",
            "Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            "Lccsanandroidx/work/impl/WorkDatabase;",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;",
            "Lccsanandroidx/work/impl/Processor;",
            ")V"
        }
    .end annotation

    .line 636
    .local p5, "schedulers":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/impl/Scheduler;>;"
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    .line 637
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mContext:Lccsanandroid/content/Context;

    .line 638
    iput-object p2, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mConfiguration:Lccsanandroidx/work/Configuration;

    .line 639
    iput-object p3, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    .line 640
    iput-object p4, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    .line 641
    iput-object p5, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    .line 642
    iput-object p6, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mProcessor:Lccsanandroidx/work/impl/Processor;

    .line 643
    new-instance v0, Lccsanandroidx/work/impl/utils/Preferences;

    invoke-direct {v0, p1}, Lccsanandroidx/work/impl/utils/Preferences;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mPreferences:Lccsanandroidx/work/impl/utils/Preferences;

    .line 644
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mForceStopRunnableCompleted:Z

    .line 647
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    new-instance v1, Lccsanandroidx/work/impl/utils/ForceStopRunnable;

    invoke-direct {v1, p1, p0}, Lccsanandroidx/work/impl/utils/ForceStopRunnable;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;)V

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 648
    return-void
.end method

.method public static setDelegate(Lccsanandroidx/work/impl/WorkManagerImpl;)V
    .locals 2
    .param p0, "delegate"    # Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 97
    sget-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    sput-object p0, Lccsanandroidx/work/impl/WorkManagerImpl;->sDelegatedInstance:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 99
    monitor-exit v0

    .line 100
    return-void

    .line 99
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public beginUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .locals 2
    .param p1, "uniqueWorkName"    # Ljava/lang/String;
    .param p2, "existingWorkPolicy"    # Lccsanandroidx/work/ExistingWorkPolicy;
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

    .line 353
    .local p3, "work":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/OneTimeWorkRequest;>;"
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    return-object v0

    .line 354
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginUniqueWork needs at least one OneTimeWorkRequest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public beginWith(Ljava/util/List;)Lccsanandroidx/work/WorkContinuation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroidx/work/OneTimeWorkRequest;",
            ">;)",
            "Lccsanandroidx/work/WorkContinuation;"
        }
    .end annotation

    .line 341
    .local p1, "work":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/OneTimeWorkRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 345
    new-instance v0, Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)V

    return-object v0

    .line 342
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "beginWith needs at least one OneTimeWorkRequest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public cancelAllWork()Lccsanandroidx/work/Operation;
    .locals 2

    .line 423
    invoke-static {p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forAll(Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v0

    .line 424
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1, v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 425
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->getOperation()Lccsanandroidx/work/Operation;

    move-result-object v1

    return-object v1
.end method

.method public cancelAllWorkByTag(Ljava/lang/String;)Lccsanandroidx/work/Operation;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 408
    invoke-static {p1, p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forTag(Ljava/lang/String;Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v0

    .line 409
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1, v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 410
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->getOperation()Lccsanandroidx/work/Operation;

    move-result-object v1

    return-object v1
.end method

.method public cancelUniqueWork(Ljava/lang/String;)Lccsanandroidx/work/Operation;
    .locals 2
    .param p1, "uniqueWorkName"    # Ljava/lang/String;

    .line 416
    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forName(Ljava/lang/String;Lccsanandroidx/work/impl/WorkManagerImpl;Z)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v0

    .line 417
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1, v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 418
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->getOperation()Lccsanandroidx/work/Operation;

    move-result-object v1

    return-object v1
.end method

.method public cancelWorkById(Ljava/util/UUID;)Lccsanandroidx/work/Operation;
    .locals 2
    .param p1, "id"    # Ljava/util/UUID;

    .line 401
    invoke-static {p1, p0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->forId(Ljava/util/UUID;Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/utils/CancelWorkRunnable;

    move-result-object v0

    .line 402
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/CancelWorkRunnable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1, v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 403
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/CancelWorkRunnable;->getOperation()Lccsanandroidx/work/Operation;

    move-result-object v1

    return-object v1
.end method

.method public createSchedulers(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Ljava/util/List;
    .locals 3
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "taskExecutor"    # Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;",
            ")",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation

    .line 655
    const/4 v0, 0x2

    new-array v0, v0, [Lccsanandroidx/work/impl/Scheduler;

    .line 656
    invoke-static {p1, p0}, Lccsanandroidx/work/impl/Schedulers;->createBestAvailableBackgroundScheduler(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/WorkManagerImpl;)Lccsanandroidx/work/impl/Scheduler;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;

    invoke-direct {v1, p1, p2, p0}, Lccsanandroidx/work/impl/background/greedy/GreedyScheduler;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;Lccsanandroidx/work/impl/WorkManagerImpl;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 655
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public enqueue(Ljava/util/List;)Lccsanandroidx/work/Operation;
    .locals 2
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

    .line 332
    .local p1, "workRequests":Ljava/util/List;, "Ljava/util/List<+Lccsanandroidx/work/WorkRequest;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 336
    new-instance v0, Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-direct {v0, p0, p1}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/List;)V

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->enqueue()Lccsanandroidx/work/Operation;

    move-result-object v0

    return-object v0

    .line 333
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "enqueue needs at least one WorkRequest."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enqueueUniquePeriodicWork(Ljava/lang/String;Lccsanandroidx/work/ExistingPeriodicWorkPolicy;Lccsanandroidx/work/PeriodicWorkRequest;)Lccsanandroidx/work/Operation;
    .locals 1
    .param p1, "uniqueWorkName"    # Ljava/lang/String;
    .param p2, "existingPeriodicWorkPolicy"    # Lccsanandroidx/work/ExistingPeriodicWorkPolicy;
    .param p3, "periodicWork"    # Lccsanandroidx/work/PeriodicWorkRequest;

    .line 375
    invoke-direct {p0, p1, p2, p3}, Lccsanandroidx/work/impl/WorkManagerImpl;->createWorkContinuationForUniquePeriodicWork(Ljava/lang/String;Lccsanandroidx/work/ExistingPeriodicWorkPolicy;Lccsanandroidx/work/PeriodicWorkRequest;)Lccsanandroidx/work/impl/WorkContinuationImpl;

    move-result-object v0

    .line 379
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->enqueue()Lccsanandroidx/work/Operation;

    move-result-object v0

    .line 375
    return-object v0
.end method

.method public enqueueUniqueWork(Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)Lccsanandroidx/work/Operation;
    .locals 1
    .param p1, "uniqueWorkName"    # Ljava/lang/String;
    .param p2, "existingWorkPolicy"    # Lccsanandroidx/work/ExistingWorkPolicy;
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

    .line 365
    .local p3, "work":Ljava/util/List;, "Ljava/util/List<Lccsanandroidx/work/OneTimeWorkRequest;>;"
    new-instance v0, Lccsanandroidx/work/impl/WorkContinuationImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsanandroidx/work/impl/WorkContinuationImpl;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/ExistingWorkPolicy;Ljava/util/List;)V

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkContinuationImpl;->enqueue()Lccsanandroidx/work/Operation;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationContext()Lccsanandroid/content/Context;
    .locals 1

    .line 266
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mContext:Lccsanandroid/content/Context;

    return-object v0
.end method

.method public getConfiguration()Lccsanandroidx/work/Configuration;
    .locals 1

    .line 285
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mConfiguration:Lccsanandroidx/work/Configuration;

    return-object v0
.end method

.method public getLastCancelAllTimeMillis()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 435
    invoke-static {}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->create()Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    .line 437
    .local v0, "future":Lccsanandroidx/work/impl/utils/futures/SettableFuture;, "Lccsanandroidx/work/impl/utils/futures/SettableFuture<Ljava/lang/Long;>;"
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mPreferences:Lccsanandroidx/work/impl/utils/Preferences;

    .line 438
    .local v1, "preferences":Lccsanandroidx/work/impl/utils/Preferences;
    iget-object v2, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    new-instance v3, Lccsanandroidx/work/impl/WorkManagerImpl$1;

    invoke-direct {v3, p0, v0, v1}, Lccsanandroidx/work/impl/WorkManagerImpl$1;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Lccsanandroidx/work/impl/utils/futures/SettableFuture;Lccsanandroidx/work/impl/utils/Preferences;)V

    invoke-interface {v2, v3}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 448
    return-object v0
.end method

.method public getLastCancelAllTimeMillisLiveData()Lccsanandroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 430
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mPreferences:Lccsanandroidx/work/impl/utils/Preferences;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/Preferences;->getLastCancelAllTimeMillisLiveData()Lccsanandroidx/lifecycle/LiveData;

    move-result-object v0

    return-object v0
.end method

.method public getPreferences()Lccsanandroidx/work/impl/utils/Preferences;
    .locals 1

    .line 322
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mPreferences:Lccsanandroidx/work/impl/utils/Preferences;

    return-object v0
.end method

.method public getProcessor()Lccsanandroidx/work/impl/Processor;
    .locals 1

    .line 304
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mProcessor:Lccsanandroidx/work/impl/Processor;

    return-object v0
.end method

.method public getSchedulers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsanandroidx/work/impl/Scheduler;",
            ">;"
        }
    .end annotation

    .line 295
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mSchedulers:Ljava/util/List;

    return-object v0
.end method

.method public getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;
    .locals 1

    .line 275
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    return-object v0
.end method

.method public getWorkInfoById(Ljava/util/UUID;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "id"    # Ljava/util/UUID;
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

    .line 479
    invoke-static {p0, p1}, Lccsanandroidx/work/impl/utils/StatusRunnable;->forUUID(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/util/UUID;)Lccsanandroidx/work/impl/utils/StatusRunnable;

    move-result-object v0

    .line 480
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/StatusRunnable;, "Lccsanandroidx/work/impl/utils/StatusRunnable<Lccsanandroidx/work/WorkInfo;>;"
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 481
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/StatusRunnable;->getFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public getWorkInfoByIdLiveData(Ljava/util/UUID;)Lccsanandroidx/lifecycle/LiveData;
    .locals 4
    .param p1, "id"    # Ljava/util/UUID;
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

    .line 460
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 461
    .local v0, "dao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    nop

    .line 462
    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v1

    .line 463
    .local v1, "inputLiveData":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;>;"
    new-instance v2, Lccsanandroidx/work/impl/WorkManagerImpl$2;

    invoke-direct {v2, p0}, Lccsanandroidx/work/impl/WorkManagerImpl$2;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;)V

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-static {v1, v2, v3}, Lccsanandroidx/work/impl/utils/LiveDataUtils;->dedupedMappedLiveDataFor(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method getWorkInfosById(Ljava/util/List;)Lccsanandroidx/lifecycle/LiveData;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Ljava/util/List<",
            "Lccsanandroidx/work/WorkInfo;",
            ">;>;"
        }
    .end annotation

    .line 524
    .local p1, "workSpecIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 525
    .local v0, "dao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    nop

    .line 526
    invoke-interface {v0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoLiveDataForIds(Ljava/util/List;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v1

    .line 527
    .local v1, "inputLiveData":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;>;"
    sget-object v2, Lccsanandroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lccsanandroidx/arch/core/util/Function;

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-static {v1, v2, v3}, Lccsanandroidx/work/impl/utils/LiveDataUtils;->dedupedMappedLiveDataFor(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getWorkInfosByTag(Ljava/lang/String;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
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

    .line 497
    invoke-static {p0, p1}, Lccsanandroidx/work/impl/utils/StatusRunnable;->forTag(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lccsanandroidx/work/impl/utils/StatusRunnable;

    move-result-object v0

    .line 498
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/StatusRunnable;, "Lccsanandroidx/work/impl/utils/StatusRunnable<Ljava/util/List<Lccsanandroidx/work/WorkInfo;>;>;"
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 499
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/StatusRunnable;->getFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public getWorkInfosByTagLiveData(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
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

    .line 486
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 487
    .local v0, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    nop

    .line 488
    invoke-interface {v0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoLiveDataForTag(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v1

    .line 489
    .local v1, "inputLiveData":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;>;"
    sget-object v2, Lccsanandroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lccsanandroidx/arch/core/util/Function;

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-static {v1, v2, v3}, Lccsanandroidx/work/impl/utils/LiveDataUtils;->dedupedMappedLiveDataFor(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getWorkInfosForUniqueWork(Ljava/lang/String;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
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

    .line 517
    nop

    .line 518
    invoke-static {p0, p1}, Lccsanandroidx/work/impl/utils/StatusRunnable;->forUniqueWork(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)Lccsanandroidx/work/impl/utils/StatusRunnable;

    move-result-object v0

    .line 519
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/StatusRunnable;, "Lccsanandroidx/work/impl/utils/StatusRunnable<Ljava/util/List<Lccsanandroidx/work/WorkInfo;>;>;"
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 520
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/StatusRunnable;->getFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    return-object v1
.end method

.method public getWorkInfosForUniqueWorkLiveData(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
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

    .line 505
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkDatabase:Lccsanandroidx/work/impl/WorkDatabase;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    .line 506
    .local v0, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    nop

    .line 507
    invoke-interface {v0, p1}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getWorkStatusPojoLiveDataForName(Ljava/lang/String;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v1

    .line 508
    .local v1, "inputLiveData":Lccsanandroidx/lifecycle/LiveData;, "Lccsanandroidx/lifecycle/LiveData<Ljava/util/List<Lccsanandroidx/work/impl/model/WorkSpec$WorkInfoPojo;>;>;"
    sget-object v2, Lccsanandroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lccsanandroidx/arch/core/util/Function;

    iget-object v3, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-static {v1, v2, v3}, Lccsanandroidx/work/impl/utils/LiveDataUtils;->dedupedMappedLiveDataFor(Lccsanandroidx/lifecycle/LiveData;Lccsanandroidx/arch/core/util/Function;Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;)Lccsanandroidx/lifecycle/LiveData;

    move-result-object v2

    return-object v2
.end method

.method public getWorkTaskExecutor()Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;
    .locals 1

    .line 313
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    return-object v0
.end method

.method public onForceStopRunnableCompleted()V
    .locals 2

    .line 591
    sget-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 592
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mForceStopRunnableCompleted:Z

    .line 593
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;

    if-eqz v1, :cond_0

    .line 594
    invoke-virtual {v1}, Lccsanandroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 595
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;

    .line 597
    :cond_0
    monitor-exit v0

    .line 598
    return-void

    .line 597
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pruneWork()Lccsanandroidx/work/Operation;
    .locals 2

    .line 453
    new-instance v0, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;)V

    .line 454
    .local v0, "runnable":Lccsanandroidx/work/impl/utils/PruneWorkRunnable;
    iget-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    invoke-interface {v1, v0}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 455
    invoke-virtual {v0}, Lccsanandroidx/work/impl/utils/PruneWorkRunnable;->getOperation()Lccsanandroidx/work/Operation;

    move-result-object v1

    return-object v1
.end method

.method public rescheduleEligibleWork()V
    .locals 3

    .line 571
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 572
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/work/impl/background/systemjob/SystemJobScheduler;->cancelAll(Lccsanandroid/content/Context;)V

    .line 576
    :cond_0
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroidx/work/impl/model/WorkSpecDao;->resetScheduledState()I

    .line 581
    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getConfiguration()Lccsanandroidx/work/Configuration;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v1

    invoke-virtual {p0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getSchedulers()Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsanandroidx/work/impl/Schedulers;->schedule(Lccsanandroidx/work/Configuration;Lccsanandroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    .line 582
    return-void
.end method

.method public setReschedulePendingResult(Lccsanandroid/content/BroadcastReceiver$PendingResult;)V
    .locals 2
    .param p1, "rescheduleReceiverResult"    # Lccsanandroid/content/BroadcastReceiver$PendingResult;

    .line 611
    sget-object v0, Lccsanandroidx/work/impl/WorkManagerImpl;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 612
    :try_start_0
    iput-object p1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;

    .line 613
    iget-boolean v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mForceStopRunnableCompleted:Z

    if-eqz v1, :cond_0

    .line 614
    invoke-virtual {p1}, Lccsanandroid/content/BroadcastReceiver$PendingResult;->finish()V

    .line 615
    const/4 v1, 0x0

    iput-object v1, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mRescheduleReceiverResult:Lccsanandroid/content/BroadcastReceiver$PendingResult;

    .line 617
    :cond_0
    monitor-exit v0

    .line 618
    return-void

    .line 617
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startWork(Ljava/lang/String;)V
    .locals 1
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 539
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->startWork(Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)V

    .line 540
    return-void
.end method

.method public startWork(Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)V
    .locals 2
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "runtimeExtras"    # Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    .line 549
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    new-instance v1, Lccsanandroidx/work/impl/utils/StartWorkRunnable;

    invoke-direct {v1, p0, p1, p2}, Lccsanandroidx/work/impl/utils/StartWorkRunnable;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)V

    .line 550
    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 552
    return-void
.end method

.method public stopWork(Ljava/lang/String;)V
    .locals 2
    .param p1, "workSpecId"    # Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lccsanandroidx/work/impl/WorkManagerImpl;->mWorkTaskExecutor:Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;

    new-instance v1, Lccsanandroidx/work/impl/utils/StopWorkRunnable;

    invoke-direct {v1, p0, p1}, Lccsanandroidx/work/impl/utils/StopWorkRunnable;-><init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;->executeOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 561
    return-void
.end method
