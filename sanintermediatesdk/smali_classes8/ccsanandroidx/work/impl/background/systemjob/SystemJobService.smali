.class public Lccsanandroidx/work/impl/background/systemjob/SystemJobService;
.super Lccsanandroid/app/job/JobService;
.source "SystemJobService.java"

# interfaces
.implements Lccsanandroidx/work/impl/ExecutionListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mJobParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsanandroid/app/job/JobParameters;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-string v0, "SystemJobService"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lccsanandroid/app/job/JobService;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    return-void
.end method

.method private static getWorkSpecIdFromJobParameters(Lccsanandroid/app/job/JobParameters;)Ljava/lang/String;
    .locals 3
    .param p0, "parameters"    # Lccsanandroid/app/job/JobParameters;

    .line 187
    const-string v0, "EXTRA_WORK_SPEC_ID"

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/app/job/JobParameters;->getExtras()Lccsanandroid/os/PersistableBundle;

    move-result-object v1

    .line 188
    .local v1, "extras":Lccsanandroid/os/PersistableBundle;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lccsanandroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    invoke-virtual {v1, v0}, Lccsanandroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 193
    .end local v1    # "extras":Lccsanandroid/os/PersistableBundle;
    :cond_0
    goto :goto_0

    .line 191
    :catch_0
    move-exception v0

    .line 194
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public onCreate()V
    .locals 5

    .line 55
    invoke-super {p0}, Lccsanandroid/app/job/JobService;->onCreate()V

    .line 57
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/impl/WorkManagerImpl;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 58
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/Processor;->addExecutionListener(Lccsanandroidx/work/impl/ExecutionListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-class v1, Lccsanandroid/app/Application;

    invoke-virtual {p0}, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->getApplication()Lccsanandroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v2, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Throwable;

    const-string v4, "Could not find WorkManager instance; this may be because an auto-backup is in progress. Ignoring JobScheduler commands for now. Please make sure that you are initializing WorkManager if you have manually disabled WorkManagerInitializer."

    invoke-virtual {v1, v2, v4, v3}, Lccsanandroidx/work/Logger;->warning(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 81
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :goto_0
    return-void

    .line 73
    .restart local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate()."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onDestroy()V
    .locals 1

    .line 85
    invoke-super {p0}, Lccsanandroid/app/job/JobService;->onDestroy()V

    .line 86
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsanandroidx/work/impl/Processor;->removeExecutionListener(Lccsanandroidx/work/impl/ExecutionListener;)V

    .line 89
    :cond_0
    return-void
.end method

.method public onExecuted(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "workSpecId"    # Ljava/lang/String;
    .param p2, "needsReschedule"    # Z

    .line 173
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v1, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v2, "%s executed on JobScheduler"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 175
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    monitor-enter v0

    .line 176
    :try_start_0
    iget-object v1, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/app/job/JobParameters;

    .line 177
    .local v1, "parameters":Lccsanandroid/app/job/JobParameters;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v1, :cond_0

    .line 179
    invoke-virtual {p0, v1, p2}, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Lccsanandroid/app/job/JobParameters;Z)V

    .line 181
    :cond_0
    return-void

    .line 177
    .end local v1    # "parameters":Lccsanandroid/app/job/JobParameters;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStartJob(Lccsanandroid/app/job/JobParameters;)Z
    .locals 8
    .param p1, "params"    # Lccsanandroid/app/job/JobParameters;

    .line 93
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 94
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v4, "WorkManager is not initialized; requesting retry."

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 95
    invoke-virtual {p0, p1, v1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->jobFinished(Lccsanandroid/app/job/JobParameters;Z)V

    .line 96
    return v2

    .line 99
    :cond_0
    invoke-static {p1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->getWorkSpecIdFromJobParameters(Lccsanandroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v0

    .line 100
    .local v0, "workSpecId":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 101
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v4, "WorkSpec id not found!"

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v5}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 102
    return v2

    .line 105
    :cond_1
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    monitor-enter v3

    .line 106
    :try_start_0
    iget-object v4, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 109
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v6, "Job is already being executed by SystemJobService: %s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v6, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v6, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v1, v6}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 111
    monitor-exit v3

    return v2

    .line 118
    :cond_2
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v4

    sget-object v5, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v6, "onStartJob for %s"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v0, v7, v2

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v4, v5, v6, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 119
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    const/4 v2, 0x0

    .line 123
    .local v2, "runtimeExtras":Lccsanandroidx/work/WorkerParameters$RuntimeExtras;
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_5

    .line 124
    new-instance v3, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;

    invoke-direct {v3}, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;-><init>()V

    move-object v2, v3

    .line 125
    invoke-virtual {p1}, Lccsanandroid/app/job/JobParameters;->getTriggeredContentUris()[Lccsanandroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 126
    nop

    .line 127
    invoke-virtual {p1}, Lccsanandroid/app/job/JobParameters;->getTriggeredContentUris()[Lccsanandroid/net/Uri;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentUris:Ljava/util/List;

    .line 129
    :cond_3
    invoke-virtual {p1}, Lccsanandroid/app/job/JobParameters;->getTriggeredContentAuthorities()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 130
    nop

    .line 131
    invoke-virtual {p1}, Lccsanandroid/app/job/JobParameters;->getTriggeredContentAuthorities()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;->triggeredContentAuthorities:Ljava/util/List;

    .line 133
    :cond_4
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_5

    .line 134
    invoke-virtual {p1}, Lccsanandroid/app/job/JobParameters;->getNetwork()Lccsanandroid/net/Network;

    move-result-object v3

    iput-object v3, v2, Lccsanandroidx/work/WorkerParameters$RuntimeExtras;->network:Lccsanandroid/net/Network;

    .line 145
    :cond_5
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v3, v0, v2}, Lccsanandroidx/work/impl/WorkManagerImpl;->startWork(Ljava/lang/String;Lccsanandroidx/work/WorkerParameters$RuntimeExtras;)V

    .line 146
    return v1

    .line 120
    .end local v2    # "runtimeExtras":Lccsanandroidx/work/WorkerParameters$RuntimeExtras;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onStopJob(Lccsanandroid/app/job/JobParameters;)Z
    .locals 7
    .param p1, "params"    # Lccsanandroid/app/job/JobParameters;

    .line 151
    iget-object v0, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 152
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v0

    sget-object v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v4, "WorkManager is not initialized; requesting retry."

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v0, v3, v4, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 153
    return v1

    .line 156
    :cond_0
    invoke-static {p1}, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->getWorkSpecIdFromJobParameters(Lccsanandroid/app/job/JobParameters;)Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "workSpecId":Ljava/lang/String;
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 158
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v1

    sget-object v3, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v4, "WorkSpec id not found!"

    new-array v5, v2, [Ljava/lang/Throwable;

    invoke-virtual {v1, v3, v4, v5}, Lccsanandroidx/work/Logger;->error(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 159
    return v2

    .line 162
    :cond_1
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v4, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->TAG:Ljava/lang/String;

    const-string v5, "onStopJob for %s"

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-array v2, v2, [Ljava/lang/Throwable;

    invoke-virtual {v3, v4, v5, v2}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 164
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    monitor-enter v2

    .line 165
    :try_start_0
    iget-object v3, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mJobParameters:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2, v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->stopWork(Ljava/lang/String;)V

    .line 168
    iget-object v2, p0, Lccsanandroidx/work/impl/background/systemjob/SystemJobService;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsanandroidx/work/impl/Processor;->isCancelled(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 166
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
