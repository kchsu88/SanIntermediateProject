.class public Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;
.super Ljava/lang/Object;
.source "WorkManagerTaskExecutor.java"

# interfaces
.implements Lccsanandroidx/work/impl/utils/taskexecutor/TaskExecutor;


# instance fields
.field private final mBackgroundExecutor:Lccsanandroidx/work/impl/utils/SerialExecutor;

.field private final mMainThreadExecutor:Ljava/util/concurrent/Executor;

.field private final mMainThreadHandler:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "backgroundExecutor"    # Ljava/util/concurrent/Executor;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadHandler:Lccsanandroid/os/Handler;

    .line 45
    new-instance v0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor$1;

    invoke-direct {v0, p0}, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor$1;-><init>(Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    .line 40
    new-instance v0, Lccsanandroidx/work/impl/utils/SerialExecutor;

    invoke-direct {v0, p1}, Lccsanandroidx/work/impl/utils/SerialExecutor;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Lccsanandroidx/work/impl/utils/SerialExecutor;

    .line 41
    return-void
.end method


# virtual methods
.method public executeOnBackgroundThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 64
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Lccsanandroidx/work/impl/utils/SerialExecutor;

    invoke-virtual {v0, p1}, Lccsanandroidx/work/impl/utils/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 65
    return-void
.end method

.method public getBackgroundExecutor()Lccsanandroidx/work/impl/utils/SerialExecutor;
    .locals 1

    .line 70
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mBackgroundExecutor:Lccsanandroidx/work/impl/utils/SerialExecutor;

    return-object v0
.end method

.method public getMainThreadExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 59
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public postToMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 54
    iget-object v0, p0, Lccsanandroidx/work/impl/utils/taskexecutor/WorkManagerTaskExecutor;->mMainThreadHandler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 55
    return-void
.end method
