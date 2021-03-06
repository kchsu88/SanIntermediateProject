.class public final Lccsanandroidx/work/Configuration;
.super Ljava/lang/Object;
.source "Configuration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsanandroidx/work/Configuration$Provider;,
        Lccsanandroidx/work/Configuration$Builder;
    }
.end annotation


# static fields
.field public static final MIN_SCHEDULER_LIMIT:I = 0x14


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mLoggingLevel:I

.field private final mMaxJobSchedulerId:I

.field private final mMaxSchedulerLimit:I

.field private final mMinJobSchedulerId:I

.field private final mTaskExecutor:Ljava/util/concurrent/Executor;

.field private final mWorkerFactory:Lccsanandroidx/work/WorkerFactory;


# direct methods
.method constructor <init>(Lccsanandroidx/work/Configuration$Builder;)V
    .locals 1
    .param p1, "builder"    # Lccsanandroidx/work/Configuration$Builder;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iget-object v0, p1, Lccsanandroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0}, Lccsanandroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    goto :goto_0

    .line 63
    :cond_0
    iget-object v0, p1, Lccsanandroidx/work/Configuration$Builder;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lccsanandroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    .line 66
    :goto_0
    iget-object v0, p1, Lccsanandroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_1

    .line 70
    invoke-direct {p0}, Lccsanandroidx/work/Configuration;->createDefaultExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    goto :goto_1

    .line 72
    :cond_1
    iget-object v0, p1, Lccsanandroidx/work/Configuration$Builder;->mTaskExecutor:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lccsanandroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    .line 75
    :goto_1
    iget-object v0, p1, Lccsanandroidx/work/Configuration$Builder;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    if-nez v0, :cond_2

    .line 76
    invoke-static {}, Lccsanandroidx/work/WorkerFactory;->getDefaultWorkerFactory()Lccsanandroidx/work/WorkerFactory;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/Configuration;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    goto :goto_2

    .line 78
    :cond_2
    iget-object v0, p1, Lccsanandroidx/work/Configuration$Builder;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    iput-object v0, p0, Lccsanandroidx/work/Configuration;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    .line 81
    :goto_2
    iget v0, p1, Lccsanandroidx/work/Configuration$Builder;->mLoggingLevel:I

    iput v0, p0, Lccsanandroidx/work/Configuration;->mLoggingLevel:I

    .line 82
    iget v0, p1, Lccsanandroidx/work/Configuration$Builder;->mMinJobSchedulerId:I

    iput v0, p0, Lccsanandroidx/work/Configuration;->mMinJobSchedulerId:I

    .line 83
    iget v0, p1, Lccsanandroidx/work/Configuration$Builder;->mMaxJobSchedulerId:I

    iput v0, p0, Lccsanandroidx/work/Configuration;->mMaxJobSchedulerId:I

    .line 84
    iget v0, p1, Lccsanandroidx/work/Configuration$Builder;->mMaxSchedulerLimit:I

    iput v0, p0, Lccsanandroidx/work/Configuration;->mMaxSchedulerLimit:I

    .line 85
    return-void
.end method

.method private createDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    .line 177
    nop

    .line 179
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 177
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 93
    iget-object v0, p0, Lccsanandroidx/work/Configuration;->mExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getMaxJobSchedulerId()I
    .locals 1

    .line 154
    iget v0, p0, Lccsanandroidx/work/Configuration;->mMaxJobSchedulerId:I

    return v0
.end method

.method public getMaxSchedulerLimit()I
    .locals 2

    .line 169
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-ne v0, v1, :cond_0

    .line 170
    iget v0, p0, Lccsanandroidx/work/Configuration;->mMaxSchedulerLimit:I

    div-int/lit8 v0, v0, 0x2

    return v0

    .line 172
    :cond_0
    iget v0, p0, Lccsanandroidx/work/Configuration;->mMaxSchedulerLimit:I

    return v0
.end method

.method public getMinJobSchedulerId()I
    .locals 1

    .line 140
    iget v0, p0, Lccsanandroidx/work/Configuration;->mMinJobSchedulerId:I

    return v0
.end method

.method public getMinimumLoggingLevel()I
    .locals 1

    .line 126
    iget v0, p0, Lccsanandroidx/work/Configuration;->mLoggingLevel:I

    return v0
.end method

.method public getTaskExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 103
    iget-object v0, p0, Lccsanandroidx/work/Configuration;->mTaskExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public getWorkerFactory()Lccsanandroidx/work/WorkerFactory;
    .locals 1

    .line 114
    iget-object v0, p0, Lccsanandroidx/work/Configuration;->mWorkerFactory:Lccsanandroidx/work/WorkerFactory;

    return-object v0
.end method
