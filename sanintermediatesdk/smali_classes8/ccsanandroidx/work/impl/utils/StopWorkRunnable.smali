.class public Lccsanandroidx/work/impl/utils/StopWorkRunnable;
.super Ljava/lang/Object;
.source "StopWorkRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

.field private mWorkSpecId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    const-string v0, "StopWorkRunnable"

    invoke-static {v0}, Lccsanandroidx/work/Logger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lccsanandroidx/work/impl/WorkManagerImpl;Ljava/lang/String;)V
    .locals 0
    .param p1, "workManagerImpl"    # Lccsanandroidx/work/impl/WorkManagerImpl;
    .param p2, "workSpecId"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    .line 41
    iput-object p2, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 46
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkManagerImpl;->getWorkDatabase()Lccsanandroidx/work/impl/WorkDatabase;

    move-result-object v0

    .line 47
    .local v0, "workDatabase":Lccsanandroidx/work/impl/WorkDatabase;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->workSpecDao()Lccsanandroidx/work/impl/model/WorkSpecDao;

    move-result-object v1

    .line 48
    .local v1, "workSpecDao":Lccsanandroidx/work/impl/model/WorkSpecDao;
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->beginTransaction()V

    .line 50
    :try_start_0
    iget-object v2, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-interface {v1, v2}, Lccsanandroidx/work/impl/model/WorkSpecDao;->getState(Ljava/lang/String;)Lccsanandroidx/work/WorkInfo$State;

    move-result-object v2

    sget-object v3, Lccsanandroidx/work/WorkInfo$State;->RUNNING:Lccsanandroidx/work/WorkInfo$State;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    .line 51
    sget-object v2, Lccsanandroidx/work/WorkInfo$State;->ENQUEUED:Lccsanandroidx/work/WorkInfo$State;

    new-array v3, v4, [Ljava/lang/String;

    iget-object v6, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-interface {v1, v2, v3}, Lccsanandroidx/work/impl/model/WorkSpecDao;->setState(Lccsanandroidx/work/WorkInfo$State;[Ljava/lang/String;)I

    .line 53
    :cond_0
    iget-object v2, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkManagerImpl:Lccsanandroidx/work/impl/WorkManagerImpl;

    invoke-virtual {v2}, Lccsanandroidx/work/impl/WorkManagerImpl;->getProcessor()Lccsanandroidx/work/impl/Processor;

    move-result-object v2

    iget-object v3, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsanandroidx/work/impl/Processor;->stopWork(Ljava/lang/String;)Z

    move-result v2

    .line 54
    .local v2, "isStopped":Z
    invoke-static {}, Lccsanandroidx/work/Logger;->get()Lccsanandroidx/work/Logger;

    move-result-object v3

    sget-object v6, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->TAG:Ljava/lang/String;

    const-string v7, "StopWorkRunnable for %s; Processor.stopWork = %s"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    iget-object v9, p0, Lccsanandroidx/work/impl/utils/StopWorkRunnable;->mWorkSpecId:Ljava/lang/String;

    aput-object v9, v8, v5

    .line 59
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    aput-object v9, v8, v4

    .line 56
    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Throwable;

    .line 54
    invoke-virtual {v3, v6, v4, v5}, Lccsanandroidx/work/Logger;->debug(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 60
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .end local v2    # "isStopped":Z
    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 63
    nop

    .line 64
    return-void

    .line 62
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Lccsanandroidx/work/impl/WorkDatabase;->endTransaction()V

    .line 63
    throw v2
.end method
