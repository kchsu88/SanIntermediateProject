.class public final Lccsancom/google/common/util/concurrent/Futures;
.super Lccsancom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;,
        Lccsancom/google/common/util/concurrent/Futures$CallbackListener;,
        Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;,
        Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;,
        Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;,
        Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/GwtFuturesCatchingSpecialization;-><init>()V

    return-void
.end method

.method public static addCallback(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lccsancom/google/common/util/concurrent/FutureCallback<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 1050
    .local p0, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "callback":Lccsancom/google/common/util/concurrent/FutureCallback;, "Lccsancom/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1051
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$CallbackListener;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/util/concurrent/Futures$CallbackListener;-><init>(Ljava/util/concurrent/Future;Lccsancom/google/common/util/concurrent/FutureCallback;)V

    invoke-interface {p0, v0, p2}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 1052
    return-void
.end method

.method public static allAsList(Ljava/lang/Iterable;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 610
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lccsancom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs allAsList([Lccsancom/google/common/util/concurrent/ListenableFuture;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 591
    .local p0, "futures":[Lccsancom/google/common/util/concurrent/ListenableFuture;, "[Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lccsancom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static catching(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lccsancom/google/common/base/Function<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 332
    .local p0, "input":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static catchingAsync(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 401
    .local p0, "input":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;->create(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;)TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1169
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p0, p1}, Lccsancom/google/common/util/concurrent/FuturesGetChecked;->getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;",
            "Ljava/lang/Class<",
            "TX;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1221
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    .local p1, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/google/common/util/concurrent/FuturesGetChecked;->getChecked(Ljava/util/concurrent/Future;Ljava/lang/Class;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getDone(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1118
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    const-string v1, "Future was expected to be done: %s"

    invoke-static {v0, v1, p0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 1119
    invoke-static {p0}, Lccsancom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getUnchecked(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TV;>;)TV;"
        }
    .end annotation

    .line 1260
    .local p0, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TV;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    :try_start_0
    invoke-static {p0}, Lccsancom/google/common/util/concurrent/Uninterruptibles;->getUninterruptibly(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 1263
    :catch_0
    move-exception v0

    .line 1264
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/util/concurrent/Futures;->wrapAndThrowUnchecked(Ljava/lang/Throwable;)V

    .line 1265
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method public static immediateCancelledFuture()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 216
    new-instance v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;

    invoke-direct {v0}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateCancelledFuture;-><init>()V

    return-object v0
.end method

.method public static immediateCheckedFuture(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TV;)",
            "Lccsancom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    .local p0, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulCheckedFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static immediateFailedCheckedFuture(Ljava/lang/Exception;)Lccsancom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(TX;)",
            "Lccsancom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 242
    .local p0, "exception":Ljava/lang/Exception;, "TX;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    new-instance v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedCheckedFuture;-><init>(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static immediateFailedFuture(Ljava/lang/Throwable;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Throwable;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 205
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    new-instance v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateFailedFuture;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static immediateFuture(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(TV;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 163
    .local p0, "value":Ljava/lang/Object;, "TV;"
    if-nez p0, :cond_0

    .line 166
    sget-object v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;->NULL:Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    .line 167
    .local v0, "typedNull":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    return-object v0

    .line 169
    .end local v0    # "typedNull":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    :cond_0
    new-instance v0, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/ImmediateFuture$ImmediateSuccessfulFuture;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static inCompletionOrder(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;>;)",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;>;"
        }
    .end annotation

    .line 879
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 880
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    goto :goto_0

    .line 882
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    :cond_0
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 885
    .restart local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/google/common/util/concurrent/ListenableFuture<+TT;>;>;"
    :goto_0
    nop

    .line 887
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    new-array v1, v1, [Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lccsancom/google/common/util/concurrent/ListenableFuture;

    check-cast v1, [Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 888
    .local v1, "copy":[Lccsancom/google/common/util/concurrent/ListenableFuture;, "[Lccsancom/google/common/util/concurrent/ListenableFuture<+TT;>;"
    new-instance v2, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;-><init>([Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/Futures$1;)V

    .line 889
    .local v2, "state":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->builder()Lccsancom/google/common/collect/ImmutableList$Builder;

    move-result-object v4

    .line 890
    .local v4, "delegatesBuilder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<Lccsancom/google/common/util/concurrent/AbstractFuture<TT;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 891
    new-instance v6, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;

    invoke-direct {v6, v2, v3}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;-><init>(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Lccsancom/google/common/util/concurrent/Futures$1;)V

    invoke-virtual {v4, v6}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 890
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 894
    .end local v5    # "i":I
    :cond_1
    invoke-virtual {v4}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3

    .line 895
    .local v3, "delegates":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/util/concurrent/AbstractFuture<TT;>;>;"
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_2

    .line 896
    move v6, v5

    .line 897
    .local v6, "localI":I
    aget-object v7, v1, v5

    new-instance v8, Lccsancom/google/common/util/concurrent/Futures$3;

    invoke-direct {v8, v2, v3, v6}, Lccsancom/google/common/util/concurrent/Futures$3;-><init>(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Lccsancom/google/common/collect/ImmutableList;I)V

    .line 904
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v9

    .line 897
    invoke-interface {v7, v8, v9}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 895
    .end local v6    # "localI":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 908
    .end local v5    # "i":I
    :cond_2
    move-object v5, v3

    .line 909
    .local v5, "delegatesCast":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/util/concurrent/ListenableFuture<TT;>;>;"
    return-object v5
.end method

.method public static lazyTransform(Ljava/util/concurrent/Future;Lccsancom/google/common/base/Function;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Future<",
            "TI;>;",
            "Lccsancom/google/common/base/Function<",
            "-TI;+TO;>;)",
            "Ljava/util/concurrent/Future<",
            "TO;>;"
        }
    .end annotation

    .line 535
    .local p0, "input":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TI;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 537
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$2;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/util/concurrent/Futures$2;-><init>(Ljava/util/concurrent/Future;Lccsancom/google/common/base/Function;)V

    return-object v0
.end method

.method public static makeChecked(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;)Lccsancom/google/common/util/concurrent/CheckedFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            "X:",
            "Ljava/lang/Exception;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;",
            "Lccsancom/google/common/base/Function<",
            "-",
            "Ljava/lang/Exception;",
            "TX;>;)",
            "Lccsancom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 154
    .local p0, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    .local p1, "mapper":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-Ljava/lang/Exception;TX;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-direct {v0, v1, p1}, Lccsancom/google/common/util/concurrent/Futures$MappingCheckedFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;)V

    return-object v0
.end method

.method public static nonCancellationPropagating(Lccsancom/google/common/util/concurrent/ListenableFuture;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 772
    .local p0, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 773
    return-object p0

    .line 775
    :cond_0
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    .line 776
    .local v0, "output":Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 777
    return-object v0
.end method

.method public static scheduleAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 4
    .param p1, "delay"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "executorService"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/AsyncCallable<",
            "TO;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 273
    .local p0, "callable":Lccsancom/google/common/util/concurrent/AsyncCallable;, "Lccsancom/google/common/util/concurrent/AsyncCallable<TO;>;"
    invoke-static {p0}, Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask;->create(Lccsancom/google/common/util/concurrent/AsyncCallable;)Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask;

    move-result-object v0

    .line 274
    .local v0, "task":Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask<TO;>;"
    invoke-interface {p4, v0, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    .line 275
    .local v1, "scheduled":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v2, Lccsancom/google/common/util/concurrent/Futures$1;

    invoke-direct {v2, v1}, Lccsancom/google/common/util/concurrent/Futures$1;-><init>(Ljava/util/concurrent/Future;)V

    .line 283
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    .line 275
    invoke-virtual {v0, v2, v3}, Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 284
    return-object v0
.end method

.method public static submitAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/AsyncCallable<",
            "TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 254
    .local p0, "callable":Lccsancom/google/common/util/concurrent/AsyncCallable;, "Lccsancom/google/common/util/concurrent/AsyncCallable<TO;>;"
    invoke-static {p0}, Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask;->create(Lccsancom/google/common/util/concurrent/AsyncCallable;)Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask;

    move-result-object v0

    .line 255
    .local v0, "task":Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask;, "Lccsancom/google/common/util/concurrent/TrustedListenableFutureTask<TO;>;"
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 256
    return-object v0
.end method

.method public static successfulAsList(Ljava/lang/Iterable;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 850
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lccsancom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static varargs successfulAsList([Lccsancom/google/common/util/concurrent/ListenableFuture;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 831
    .local p0, "futures":[Lccsancom/google/common/util/concurrent/ListenableFuture;, "[Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;-><init>(Lccsancom/google/common/collect/ImmutableCollection;Z)V

    return-object v0
.end method

.method public static transform(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lccsancom/google/common/base/Function<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 508
    .local p0, "input":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture;->create(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static transformAsync(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TI;>;",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TO;>;"
        }
    .end annotation

    .line 471
    .local p0, "input":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TI;>;"
    .local p1, "function":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-static {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture;->create(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public static whenAllComplete(Ljava/lang/Iterable;)Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .line 634
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static varargs whenAllComplete([Lccsancom/google/common/util/concurrent/ListenableFuture;)Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 622
    .local p0, "futures":[Lccsancom/google/common/util/concurrent/ListenableFuture;, "[Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static whenAllSucceed(Ljava/lang/Iterable;)Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)",
            "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .line 660
    .local p0, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static varargs whenAllSucceed([Lccsancom/google/common/util/concurrent/ListenableFuture;)Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">([",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)",
            "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 647
    .local p0, "futures":[Lccsancom/google/common/util/concurrent/ListenableFuture;, "[Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v3}, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/util/concurrent/Futures$1;)V

    return-object v0
.end method

.method public static withTimeout(Lccsancom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 424
    .local p0, "delegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/util/concurrent/ListenableFuture;->isDone()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    return-object p0

    .line 427
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/google/common/util/concurrent/TimeoutFuture;->create(Lccsancom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method private static wrapAndThrowUnchecked(Ljava/lang/Throwable;)V
    .locals 2
    .param p0, "cause"    # Ljava/lang/Throwable;

    .line 1270
    instance-of v0, p0, Ljava/lang/Error;

    if-eqz v0, :cond_0

    .line 1271
    new-instance v0, Lccsancom/google/common/util/concurrent/ExecutionError;

    move-object v1, p0

    check-cast v1, Ljava/lang/Error;

    invoke-direct {v0, v1}, Lccsancom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    throw v0

    .line 1278
    :cond_0
    new-instance v0, Lccsancom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
