.class public final Lccsanandroidx/work/Configuration$Builder;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsanandroidx/work/Configuration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field mExecutor:Ljava/util/concurrent/Executor;

.field mLoggingLevel:I

.field mMaxJobSchedulerId:I

.field mMaxSchedulerLimit:I

.field mMinJobSchedulerId:I

.field mTaskExecutor:Ljava/util/concurrent/Executor;

.field mWorkerFactory:Lccsanandroidx/work/WorkerFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    const/4 v0, 0x4

    iput v0, p0, Lccsanandroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 192
    const/4 v0, 0x0

    iput v0, p0, Lccsanandroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 193
    const v0, 0x7fffffff

    iput v0, p0, Lccsanandroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 194
    const/16 v0, 0x14

    iput v0, p0, Lccsanandroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    return-void
.end method


# virtual methods
.method public build()Lccsanandroidx/work/Configuration;
    .locals 1

    .line 319
    new-instance v0, Lccsanandroidx/work/Configuration;

    invoke-direct {v0, p0}, Lccsanandroidx/work/Configuration;-><init>(Lccsanandroidx/work/Configuration$Builder;)V

    return-object v0
.end method

.method public setExecutor(Ljava/util/concurrent/Executor;)Lccsanandroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 214
    iput-object p1, p0, Lccsanandroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    .line 215
    return-object p0
.end method

.method public setJobSchedulerJobIdRange(II)Lccsanandroidx/work/Configuration$Builder;
    .locals 2
    .param p1, "minJobSchedulerId"    # I
    .param p2, "maxJobSchedulerId"    # I

    .line 255
    sub-int v0, p2, p1

    const/16 v1, 0x3e8

    if-lt v0, v1, :cond_0

    .line 260
    iput p1, p0, Lccsanandroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    .line 261
    iput p2, p0, Lccsanandroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    .line 262
    return-object p0

    .line 256
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WorkManager needs a range of at least 1000 job ids."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMaxSchedulerLimit(I)Lccsanandroidx/work/Configuration$Builder;
    .locals 2
    .param p1, "maxSchedulerLimit"    # I

    .line 289
    const/16 v0, 0x14

    if-lt p1, v0, :cond_0

    .line 294
    const/16 v0, 0x32

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lccsanandroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    .line 295
    return-object p0

    .line 290
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WorkManager needs to be able to schedule at least 20 jobs in JobScheduler."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMinimumLoggingLevel(I)Lccsanandroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "loggingLevel"    # I

    .line 309
    iput p1, p0, Lccsanandroidx/work/Configuration$Builder;->mLoggingLevel:I

    .line 310
    return-object p0
.end method

.method public setTaskExecutor(Ljava/util/concurrent/Executor;)Lccsanandroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "taskExecutor"    # Ljava/util/concurrent/Executor;

    .line 232
    iput-object p1, p0, Lccsanandroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 233
    return-object p0
.end method

.method public setWorkerFactory(Lccsanandroidx/work/WorkerFactory;)Lccsanandroidx/work/Configuration$Builder;
    .locals 0
    .param p1, "workerFactory"    # Lccsanandroidx/work/WorkerFactory;

    .line 203
    iput-object p1, p0, Lccsanandroidx/work/Configuration$Builder;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    .line 204
    return-object p0
.end method
