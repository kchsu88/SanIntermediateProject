.class public Lccsansan/c/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;
    }
.end annotation


# static fields
.field private static final removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$80lELs4CAB2PjHvxJ2DwaVvU5fU(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p7hdlggQuWXrARaccHhp_by7sao(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lccsansan/c/getDownloadingRecordByUrl;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#doPeriodicHighPriorityWork "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WorkerManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lccsansan/c/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lccsansan/c/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;)V

    return-void

    :cond_0
    const-wide/32 v0, 0x1b7740

    .line 8
    const-string v2, "high_priority_time"

    invoke-static {p0, v2, v0, v1}, Lccsansan/c/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    invoke-static {p0}, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroidx/work/WorkManager;

    move-result-object p0

    if-nez p0, :cond_1

    return-void

    .line 13
    :cond_1
    sget-object v2, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    new-instance v3, Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-class v5, Lccsansan/c/removeDownloadListener;

    invoke-direct {v3, v5, v0, v1, v4}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    .line 15
    const-string v0, "HighWork"

    invoke-virtual {v3, v0}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    new-instance v3, Lccsanandroidx/work/Data$Builder;

    invoke-direct {v3}, Lccsanandroidx/work/Data$Builder;-><init>()V

    .line 16
    const-string v4, "from"

    invoke-virtual {v3, v4, p1}, Lccsanandroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/work/Data$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroidx/work/Data$Builder;->build()Lccsanandroidx/work/Data;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->setInputData(Lccsanandroidx/work/Data;)Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    .line 17
    invoke-virtual {p1}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->build()Lccsanandroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Lccsanandroidx/work/PeriodicWorkRequest;

    .line 18
    invoke-virtual {p0, v0, v2, p1}, Lccsanandroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Lccsanandroidx/work/ExistingPeriodicWorkPolicy;Lccsanandroidx/work/PeriodicWorkRequest;)Lccsanandroidx/work/Operation;

    :cond_2
    return-void
.end method

.method private static synthetic getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/c/getDownloadingRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroidx/work/WorkManager;
    .locals 0

    .line 66
    :try_start_0
    invoke-static {p0}, Lccsanandroidx/work/WorkManager;->getInstance(Lccsanandroid/content/Context;)Lccsanandroidx/work/WorkManager;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method private static synthetic removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/c/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private static removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;)V
    .locals 8

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#initWorkManager "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "WorkerManager"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p1}, Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;->onInitFinished()V

    return-void

    .line 45
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-instance v4, Lccsansan/c/addDownloadListener;

    invoke-direct {v4}, Lccsansan/c/addDownloadListener;-><init>()V

    const/16 v5, 0x2710

    const/16 v6, 0x4e20

    .line 48
    new-instance v7, Lccsanandroidx/work/Configuration$Builder;

    invoke-direct {v7}, Lccsanandroidx/work/Configuration$Builder;-><init>()V

    .line 49
    invoke-virtual {v7, v4}, Lccsanandroidx/work/Configuration$Builder;->setExecutor(Ljava/util/concurrent/Executor;)Lccsanandroidx/work/Configuration$Builder;

    move-result-object v7

    .line 50
    invoke-virtual {v7, v4}, Lccsanandroidx/work/Configuration$Builder;->setTaskExecutor(Ljava/util/concurrent/Executor;)Lccsanandroidx/work/Configuration$Builder;

    move-result-object v4

    .line 51
    invoke-virtual {v4, v5, v6}, Lccsanandroidx/work/Configuration$Builder;->setJobSchedulerJobIdRange(II)Lccsanandroidx/work/Configuration$Builder;

    move-result-object v4

    .line 52
    invoke-virtual {v4}, Lccsanandroidx/work/Configuration$Builder;->build()Lccsanandroidx/work/Configuration;

    move-result-object v4

    .line 53
    invoke-static {p0, v4}, Lccsanandroidx/work/WorkManager;->initialize(Lccsanandroid/content/Context;Lccsanandroidx/work/Configuration;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 58
    invoke-interface {p1}, Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;->onInitFinished()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 59
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    sget-object p0, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 62
    invoke-interface {p1}, Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;->onInitFinished()V

    :goto_0
    return-void

    .line 63
    :goto_1
    sget-object v1, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 64
    invoke-interface {p1}, Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;->onInitFinished()V

    .line 65
    throw p0
.end method

.method private static removeDownloadListener()Z
    .locals 3

    .line 67
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "forbidden_worker"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static declared-synchronized unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 8

    const-class v0, Lccsansan/c/getDownloadingRecordByUrl;

    monitor-enter v0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#doExitWork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WorkerManager"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v1, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lccsansan/c/getDownloadingRecordByUrl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lccsansan/c/getDownloadingRecordByUrl$$ExternalSyntheticLambda1;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-static {p0, v1}, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/c/getDownloadingRecordByUrl$addDownloadListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_0
    const-wide/32 v1, 0x6ddd00

    :try_start_1
    const-string v3, "ExitWork"

    const-wide/32 v4, 0x493e0

    .line 10
    invoke-static {p0, v3, v4, v5}, Lccsansan/c/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    invoke-static {}, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 12
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v2, Lccsansan/c/getDownloadingRecordByUrl$getDownloadingList;

    invoke-direct {v2, p0, p1}, Lccsansan/c/getDownloadingRecordByUrl$getDownloadingList;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#doExitWork WorkManager "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WorkerManager"

    invoke-static {v4, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lccsansan/c/getDownloadingRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroidx/work/WorkManager;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    monitor-exit v0

    return-void

    .line 24
    :cond_2
    :try_start_2
    sget-object v4, Lccsanandroidx/work/ExistingPeriodicWorkPolicy;->REPLACE:Lccsanandroidx/work/ExistingPeriodicWorkPolicy;

    new-instance v5, Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-class v7, Lccsansan/c/removeDownloadListener;

    invoke-direct {v5, v7, v1, v2, v6}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;-><init>(Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)V

    const-string v1, "HighWork"

    .line 26
    invoke-virtual {v5, v1}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->addTag(Ljava/lang/String;)Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object v1

    check-cast v1, Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    new-instance v2, Lccsanandroidx/work/Data$Builder;

    invoke-direct {v2}, Lccsanandroidx/work/Data$Builder;-><init>()V

    const-string v5, "from"

    .line 27
    invoke-virtual {v2, v5, p1}, Lccsanandroidx/work/Data$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Lccsanandroidx/work/Data$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroidx/work/Data$Builder;->build()Lccsanandroidx/work/Data;

    move-result-object p1

    invoke-virtual {v1, p1}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->setInputData(Lccsanandroidx/work/Data;)Lccsanandroidx/work/WorkRequest$Builder;

    move-result-object p1

    check-cast p1, Lccsanandroidx/work/PeriodicWorkRequest$Builder;

    .line 28
    invoke-virtual {p1}, Lccsanandroidx/work/PeriodicWorkRequest$Builder;->build()Lccsanandroidx/work/WorkRequest;

    move-result-object p1

    check-cast p1, Lccsanandroidx/work/PeriodicWorkRequest;

    const-string v1, "HighWork"

    .line 29
    invoke-virtual {v3, v1, v4, p1}, Lccsanandroidx/work/WorkManager;->enqueueUniquePeriodicWork(Ljava/lang/String;Lccsanandroidx/work/ExistingPeriodicWorkPolicy;Lccsanandroidx/work/PeriodicWorkRequest;)Lccsanandroidx/work/Operation;

    :goto_0
    const-string p1, "ExitWork"

    .line 37
    invoke-static {p0, p1}, Lccsansan/c/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_3
    monitor-exit v0

    return-void

    .line 0
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
