.class public final Lccsancom/google/common/util/concurrent/ExecutionSequencer;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;
    }
.end annotation


# instance fields
.field private final ref:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 59
    const/4 v1, 0x0

    invoke-static {v1}, Lccsancom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    return-void
.end method

.method public static create()Lccsancom/google/common/util/concurrent/ExecutionSequencer;
    .locals 1

    .line 48
    new-instance v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer;

    invoke-direct {v0}, Lccsancom/google/common/util/concurrent/ExecutionSequencer;-><init>()V

    return-object v0
.end method


# virtual methods
.method public submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 69
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    new-instance v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/util/concurrent/ExecutionSequencer$1;-><init>(Lccsancom/google/common/util/concurrent/ExecutionSequencer;Ljava/util/concurrent/Callable;)V

    invoke-virtual {p0, v0, p2}, Lccsancom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public submitAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 17
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/AsyncCallable<",
            "TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .line 94
    .local p1, "callable":Lccsancom/google/common/util/concurrent/AsyncCallable;, "Lccsancom/google/common/util/concurrent/AsyncCallable<TT;>;"
    move-object/from16 v7, p0

    invoke-static/range {p1 .. p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;->NOT_RUN:Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    move-object v8, v0

    .line 96
    .local v8, "runningState":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Lccsancom/google/common/util/concurrent/ExecutionSequencer$RunningState;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;

    move-object/from16 v9, p1

    invoke-direct {v0, v7, v8, v9}, Lccsancom/google/common/util/concurrent/ExecutionSequencer$2;-><init>(Lccsancom/google/common/util/concurrent/ExecutionSequencer;Ljava/util/concurrent/atomic/AtomicReference;Lccsancom/google/common/util/concurrent/AsyncCallable;)V

    move-object v10, v0

    .line 122
    .local v10, "task":Lccsancom/google/common/util/concurrent/AsyncCallable;, "Lccsancom/google/common/util/concurrent/AsyncCallable<TT;>;"
    invoke-static {}, Lccsancom/google/common/util/concurrent/SettableFuture;->create()Lccsancom/google/common/util/concurrent/SettableFuture;

    move-result-object v11

    .line 124
    .local v11, "newFuture":Lccsancom/google/common/util/concurrent/SettableFuture;, "Lccsancom/google/common/util/concurrent/SettableFuture<Ljava/lang/Object;>;"
    iget-object v0, v7, Lccsancom/google/common/util/concurrent/ExecutionSequencer;->ref:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 127
    .local v12, "oldFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<*>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;

    move-object/from16 v13, p2

    invoke-direct {v0, v7, v12, v13}, Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;-><init>(Lccsancom/google/common/util/concurrent/ExecutionSequencer;Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)V

    .line 128
    invoke-static {v10, v0}, Lccsancom/google/common/util/concurrent/Futures;->submitAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v14

    .line 137
    .local v14, "taskFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TT;>;"
    invoke-static {v14}, Lccsancom/google/common/util/concurrent/Futures;->nonCancellationPropagating(Lccsancom/google/common/util/concurrent/ListenableFuture;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v15

    .line 143
    .local v15, "outputFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TT;>;"
    new-instance v16, Lccsancom/google/common/util/concurrent/ExecutionSequencer$4;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v15

    move-object v4, v8

    move-object v5, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lccsancom/google/common/util/concurrent/ExecutionSequencer$4;-><init>(Lccsancom/google/common/util/concurrent/ExecutionSequencer;Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/atomic/AtomicReference;Lccsancom/google/common/util/concurrent/SettableFuture;Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    .line 162
    .local v0, "listener":Ljava/lang/Runnable;
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v15, v0, v1}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 163
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {v14, v0, v1}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 165
    return-object v15
.end method
