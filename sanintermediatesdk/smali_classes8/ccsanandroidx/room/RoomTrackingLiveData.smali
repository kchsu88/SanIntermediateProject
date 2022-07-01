.class Lccsanandroidx/room/RoomTrackingLiveData;
.super Lccsanandroidx/lifecycle/LiveData;
.source "RoomTrackingLiveData.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsanandroidx/lifecycle/LiveData<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final mComputeFunction:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation
.end field

.field final mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mContainer:Lccsanandroidx/room/InvalidationLiveDataContainer;

.field final mDatabase:Lccsanandroidx/room/RoomDatabase;

.field final mInTransaction:Z

.field final mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final mInvalidationRunnable:Ljava/lang/Runnable;

.field final mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

.field final mRefreshRunnable:Ljava/lang/Runnable;

.field final mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lccsanandroidx/room/RoomDatabase;Lccsanandroidx/room/InvalidationLiveDataContainer;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
    .locals 2
    .param p1, "database"    # Lccsanandroidx/room/RoomDatabase;
    .param p2, "container"    # Lccsanandroidx/room/InvalidationLiveDataContainer;
    .param p3, "inTransaction"    # Z
    .param p5, "tableNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroidx/room/RoomDatabase;",
            "Lccsanandroidx/room/InvalidationLiveDataContainer;",
            "Z",
            "Ljava/util/concurrent/Callable<",
            "TT;>;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 134
    .local p0, "this":Lccsanandroidx/room/RoomTrackingLiveData;, "Lccsanandroidx/room/RoomTrackingLiveData<TT;>;"
    .local p4, "computeFunction":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-direct {p0}, Lccsanandroidx/lifecycle/LiveData;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 65
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mRegisteredObserver:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Lccsanandroidx/room/RoomTrackingLiveData$1;

    invoke-direct {v0, p0}, Lccsanandroidx/room/RoomTrackingLiveData$1;-><init>(Lccsanandroidx/room/RoomTrackingLiveData;)V

    iput-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v0, Lccsanandroidx/room/RoomTrackingLiveData$2;

    invoke-direct {v0, p0}, Lccsanandroidx/room/RoomTrackingLiveData$2;-><init>(Lccsanandroidx/room/RoomTrackingLiveData;)V

    iput-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mInvalidationRunnable:Ljava/lang/Runnable;

    .line 135
    iput-object p1, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mDatabase:Lccsanandroidx/room/RoomDatabase;

    .line 136
    iput-boolean p3, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mInTransaction:Z

    .line 137
    iput-object p4, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mComputeFunction:Ljava/util/concurrent/Callable;

    .line 138
    iput-object p2, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mContainer:Lccsanandroidx/room/InvalidationLiveDataContainer;

    .line 139
    new-instance v0, Lccsanandroidx/room/RoomTrackingLiveData$3;

    invoke-direct {v0, p0, p5}, Lccsanandroidx/room/RoomTrackingLiveData$3;-><init>(Lccsanandroidx/room/RoomTrackingLiveData;[Ljava/lang/String;)V

    iput-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

    .line 145
    return-void
.end method

.method static synthetic access$000(Lccsanandroidx/room/RoomTrackingLiveData;Ljava/lang/Object;)V
    .locals 0
    .param p0, "x0"    # Lccsanandroidx/room/RoomTrackingLiveData;
    .param p1, "x1"    # Ljava/lang/Object;

    .line 47
    invoke-virtual {p0, p1}, Lccsanandroidx/room/RoomTrackingLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getQueryExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    .line 161
    .local p0, "this":Lccsanandroidx/room/RoomTrackingLiveData;, "Lccsanandroidx/room/RoomTrackingLiveData<TT;>;"
    iget-boolean v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mInTransaction:Z

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mDatabase:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->getTransactionExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    iget-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mDatabase:Lccsanandroidx/room/RoomDatabase;

    invoke-virtual {v0}, Lccsanandroidx/room/RoomDatabase;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method protected onActive()V
    .locals 2

    .line 149
    .local p0, "this":Lccsanandroidx/room/RoomTrackingLiveData;, "Lccsanandroidx/room/RoomTrackingLiveData<TT;>;"
    invoke-super {p0}, Lccsanandroidx/lifecycle/LiveData;->onActive()V

    .line 150
    iget-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mContainer:Lccsanandroidx/room/InvalidationLiveDataContainer;

    invoke-virtual {v0, p0}, Lccsanandroidx/room/InvalidationLiveDataContainer;->onActive(Lccsanandroidx/lifecycle/LiveData;)V

    .line 151
    invoke-virtual {p0}, Lccsanandroidx/room/RoomTrackingLiveData;->getQueryExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 152
    return-void
.end method

.method protected onInactive()V
    .locals 1

    .line 156
    .local p0, "this":Lccsanandroidx/room/RoomTrackingLiveData;, "Lccsanandroidx/room/RoomTrackingLiveData<TT;>;"
    invoke-super {p0}, Lccsanandroidx/lifecycle/LiveData;->onInactive()V

    .line 157
    iget-object v0, p0, Lccsanandroidx/room/RoomTrackingLiveData;->mContainer:Lccsanandroidx/room/InvalidationLiveDataContainer;

    invoke-virtual {v0, p0}, Lccsanandroidx/room/InvalidationLiveDataContainer;->onInactive(Lccsanandroidx/lifecycle/LiveData;)V

    .line 158
    return-void
.end method
