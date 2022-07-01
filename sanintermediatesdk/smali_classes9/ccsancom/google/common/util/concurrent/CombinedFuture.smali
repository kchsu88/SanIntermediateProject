.class final Lccsancom/google/common/util/concurrent/CombinedFuture;
.super Lccsancom/google/common/util/concurrent/AggregateFuture;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;,
        Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;,
        Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;,
        Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/AggregateFuture<",
        "Ljava/lang/Object;",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lccsancom/google/common/util/concurrent/AsyncCallable;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Lccsancom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;)V"
        }
    .end annotation

    .line 37
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>;"
    .local p1, "futures":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<+Lccsancom/google/common/util/concurrent/ListenableFuture<*>;>;"
    .local p4, "callable":Lccsancom/google/common/util/concurrent/AsyncCallable;, "Lccsancom/google/common/util/concurrent/AsyncCallable<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AggregateFuture;-><init>()V

    .line 38
    new-instance v0, Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;

    new-instance v1, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;

    invoke-direct {v1, p0, p4, p3}, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;-><init>(Lccsancom/google/common/util/concurrent/CombinedFuture;Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;-><init>(Lccsancom/google/common/util/concurrent/CombinedFuture;Lccsancom/google/common/collect/ImmutableCollection;ZLccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V

    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/CombinedFuture;->init(Lccsancom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 43
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V
    .locals 2
    .param p2, "allMustSucceed"    # Z
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "*>;>;Z",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>;"
    .local p1, "futures":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<+Lccsancom/google/common/util/concurrent/ListenableFuture<*>;>;"
    .local p4, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AggregateFuture;-><init>()V

    .line 50
    new-instance v0, Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;

    new-instance v1, Lccsancom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;

    invoke-direct {v1, p0, p4, p3}, Lccsancom/google/common/util/concurrent/CombinedFuture$CallableInterruptibleTask;-><init>(Lccsancom/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)V

    invoke-direct {v0, p0, p1, p2, v1}, Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureRunningState;-><init>(Lccsancom/google/common/util/concurrent/CombinedFuture;Lccsancom/google/common/collect/ImmutableCollection;ZLccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;)V

    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/CombinedFuture;->init(Lccsancom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 53
    return-void
.end method
