.class public abstract Lccsanandroidx/lifecycle/ComputableLiveData;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mInvalidationRunnable:Ljava/lang/Runnable;

.field final mLiveData:Lccsanandroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mRefreshRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    .local p0, "this":Lccsanandroidx/lifecycle/ComputableLiveData;, "Lccsanandroidx/lifecycle/ComputableLiveData<TT;>;"
    invoke-static {}, Lccsanandroidx/arch/core/executor/ArchTaskExecutor;->getIOThreadExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsanandroidx/lifecycle/ComputableLiveData;-><init>(Ljava/util/concurrent/Executor;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 2
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 65
    .local p0, "this":Lccsanandroidx/lifecycle/ComputableLiveData;, "Lccsanandroidx/lifecycle/ComputableLiveData<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 48
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 86
    new-instance v0, Lccsanandroidx/lifecycle/ComputableLiveData$2;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/ComputableLiveData$2;-><init>(Lccsanandroidx/lifecycle/ComputableLiveData;)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 123
    new-instance v0, Lccsanandroidx/lifecycle/ComputableLiveData$3;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/ComputableLiveData$3;-><init>(Lccsanandroidx/lifecycle/ComputableLiveData;)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    .line 66
    iput-object p1, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mExecutor:Ljava/util/concurrent/Executor;

    .line 67
    new-instance v0, Lccsanandroidx/lifecycle/ComputableLiveData$1;

    invoke-direct {v0, p0}, Lccsanandroidx/lifecycle/ComputableLiveData$1;-><init>(Lccsanandroidx/lifecycle/ComputableLiveData;)V

    iput-object v0, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mLiveData:Lccsanandroidx/lifecycle/LiveData;

    .line 73
    return-void
.end method


# virtual methods
.method protected abstract compute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public getLiveData()Lccsanandroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "TT;>;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lccsanandroidx/lifecycle/ComputableLiveData;, "Lccsanandroidx/lifecycle/ComputableLiveData<TT;>;"
    iget-object v0, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mLiveData:Lccsanandroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    .line 143
    .local p0, "this":Lccsanandroidx/lifecycle/ComputableLiveData;, "Lccsanandroidx/lifecycle/ComputableLiveData<TT;>;"
    invoke-static {}, Lccsanandroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Lccsanandroidx/arch/core/executor/ArchTaskExecutor;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/lifecycle/ComputableLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroidx/arch/core/executor/ArchTaskExecutor;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 144
    return-void
.end method
