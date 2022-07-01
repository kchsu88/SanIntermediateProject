.class public Lccsanandroidx/work/impl/OperationImpl;
.super Ljava/lang/Object;
.source "OperationImpl.java"

# interfaces
.implements Lccsanandroidx/work/Operation;


# instance fields
.field private final mOperationFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/work/impl/utils/futures/SettableFuture<",
            "Lccsanandroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation
.end field

.field private final mOperationState:Lccsanandroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsanandroidx/lifecycle/MutableLiveData<",
            "Lccsanandroidx/work/Operation$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lccsanandroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Lccsanandroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lccsanandroidx/work/impl/OperationImpl;->mOperationState:Lccsanandroidx/lifecycle/MutableLiveData;

    .line 41
    invoke-static {}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->create()Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-result-object v0

    iput-object v0, p0, Lccsanandroidx/work/impl/OperationImpl;->mOperationFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    .line 43
    sget-object v0, Lccsanandroidx/work/Operation;->IN_PROGRESS:Lccsanandroidx/work/Operation$State$IN_PROGRESS;

    invoke-virtual {p0, v0}, Lccsanandroidx/work/impl/OperationImpl;->setState(Lccsanandroidx/work/Operation$State;)V

    .line 44
    return-void
.end method


# virtual methods
.method public getResult()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Lccsanandroidx/work/Operation$State$SUCCESS;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lccsanandroidx/work/impl/OperationImpl;->mOperationFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    return-object v0
.end method

.method public getState()Lccsanandroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsanandroidx/lifecycle/LiveData<",
            "Lccsanandroidx/work/Operation$State;",
            ">;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lccsanandroidx/work/impl/OperationImpl;->mOperationState:Lccsanandroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public setState(Lccsanandroidx/work/Operation$State;)V
    .locals 3
    .param p1, "state"    # Lccsanandroidx/work/Operation$State;

    .line 62
    iget-object v0, p0, Lccsanandroidx/work/impl/OperationImpl;->mOperationState:Lccsanandroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Lccsanandroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    .line 65
    instance-of v0, p1, Lccsanandroidx/work/Operation$State$SUCCESS;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lccsanandroidx/work/impl/OperationImpl;->mOperationFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    move-object v1, p1

    check-cast v1, Lccsanandroidx/work/Operation$State$SUCCESS;

    invoke-virtual {v0, v1}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->set(Ljava/lang/Object;)Z

    goto :goto_0

    .line 67
    :cond_0
    instance-of v0, p1, Lccsanandroidx/work/Operation$State$FAILURE;

    if-eqz v0, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Lccsanandroidx/work/Operation$State$FAILURE;

    .line 69
    .local v0, "failed":Lccsanandroidx/work/Operation$State$FAILURE;
    iget-object v1, p0, Lccsanandroidx/work/impl/OperationImpl;->mOperationFuture:Lccsanandroidx/work/impl/utils/futures/SettableFuture;

    invoke-virtual {v0}, Lccsanandroidx/work/Operation$State$FAILURE;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsanandroidx/work/impl/utils/futures/SettableFuture;->setException(Ljava/lang/Throwable;)Z

    .line 71
    .end local v0    # "failed":Lccsanandroidx/work/Operation$State$FAILURE;
    :cond_1
    :goto_0
    return-void
.end method
