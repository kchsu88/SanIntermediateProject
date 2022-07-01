.class Lccsanandroidx/room/MultiInstanceInvalidationClient;
.super Ljava/lang/Object;
.source "MultiInstanceInvalidationClient.java"


# instance fields
.field final mAppContext:Lccsanandroid/content/Context;

.field final mCallback:Lccsanandroidx/room/IMultiInstanceInvalidationCallback;

.field mClientId:I

.field final mExecutor:Ljava/util/concurrent/Executor;

.field final mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

.field final mName:Ljava/lang/String;

.field final mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

.field final mRemoveObserverRunnable:Ljava/lang/Runnable;

.field mService:Lccsanandroidx/room/IMultiInstanceInvalidationService;

.field final mServiceConnection:Lccsanandroid/content/ServiceConnection;

.field final mSetUpRunnable:Ljava/lang/Runnable;

.field final mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mTearDownRunnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/room/InvalidationTracker;Ljava/util/concurrent/Executor;)V
    .locals 4
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "invalidationTracker"    # Lccsanandroidx/room/InvalidationTracker;
    .param p4, "executor"    # Ljava/util/concurrent/Executor;

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lccsanandroidx/room/MultiInstanceInvalidationClient$1;

    invoke-direct {v0, p0}, Lccsanandroidx/room/MultiInstanceInvalidationClient$1;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mCallback:Lccsanandroidx/room/IMultiInstanceInvalidationCallback;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 98
    new-instance v0, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;

    invoke-direct {v0, p0}, Lccsanandroidx/room/MultiInstanceInvalidationClient$2;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mServiceConnection:Lccsanandroid/content/ServiceConnection;

    .line 116
    new-instance v1, Lccsanandroidx/room/MultiInstanceInvalidationClient$3;

    invoke-direct {v1, p0}, Lccsanandroidx/room/MultiInstanceInvalidationClient$3;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mSetUpRunnable:Ljava/lang/Runnable;

    .line 133
    new-instance v1, Lccsanandroidx/room/MultiInstanceInvalidationClient$4;

    invoke-direct {v1, p0}, Lccsanandroidx/room/MultiInstanceInvalidationClient$4;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mRemoveObserverRunnable:Ljava/lang/Runnable;

    .line 141
    new-instance v1, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;

    invoke-direct {v1, p0}, Lccsanandroidx/room/MultiInstanceInvalidationClient$5;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;)V

    iput-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mTearDownRunnable:Ljava/lang/Runnable;

    .line 166
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mAppContext:Lccsanandroid/content/Context;

    .line 167
    iput-object p2, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mName:Ljava/lang/String;

    .line 168
    iput-object p3, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mInvalidationTracker:Lccsanandroidx/room/InvalidationTracker;

    .line 169
    iput-object p4, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mExecutor:Ljava/util/concurrent/Executor;

    .line 170
    new-instance v2, Lccsanandroidx/room/MultiInstanceInvalidationClient$6;

    iget-object v3, p3, Lccsanandroidx/room/InvalidationTracker;->mTableNames:[Ljava/lang/String;

    invoke-direct {v2, p0, v3}, Lccsanandroidx/room/MultiInstanceInvalidationClient$6;-><init>(Lccsanandroidx/room/MultiInstanceInvalidationClient;[Ljava/lang/String;)V

    iput-object v2, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mObserver:Lccsanandroidx/room/InvalidationTracker$Observer;

    .line 191
    new-instance v2, Lccsanandroid/content/Intent;

    const-class v3, Lccsanandroidx/room/MultiInstanceInvalidationService;

    invoke-direct {v2, v1, v3}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    .line 192
    .local v2, "intent":Lccsanandroid/content/Intent;
    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lccsanandroid/content/Context;->bindService(Lccsanandroid/content/Intent;Lccsanandroid/content/ServiceConnection;I)Z

    .line 193
    return-void
.end method


# virtual methods
.method stop()V
    .locals 3

    .line 196
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mStopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsanandroidx/room/MultiInstanceInvalidationClient;->mTearDownRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 199
    :cond_0
    return-void
.end method
