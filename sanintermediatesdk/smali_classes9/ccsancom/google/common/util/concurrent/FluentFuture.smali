.class public abstract Lccsancom/google/common/util/concurrent/FluentFuture;
.super Lccsancom/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;
.source "FluentFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 114
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/GwtFluentFutureCatchingSpecialization;-><init>()V

    return-void
.end method

.method public static from(Lccsancom/google/common/util/concurrent/ListenableFuture;)Lccsancom/google/common/util/concurrent/FluentFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)",
            "Lccsancom/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 124
    .local p0, "future":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    instance-of v0, p0, Lccsancom/google/common/util/concurrent/FluentFuture;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lccsancom/google/common/util/concurrent/FluentFuture;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/util/concurrent/ForwardingFluentFuture;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/ForwardingFluentFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public final addCallback(Lccsancom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/FutureCallback<",
            "-TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 371
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "callback":Lccsancom/google/common/util/concurrent/FutureCallback;, "Lccsancom/google/common/util/concurrent/FutureCallback<-TV;>;"
    invoke-static {p0, p1, p2}, Lccsancom/google/common/util/concurrent/Futures;->addCallback(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/FutureCallback;Ljava/util/concurrent/Executor;)V

    .line 372
    return-void
.end method

.method public final catching(Ljava/lang/Class;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lccsancom/google/common/base/Function<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/Futures;->catching(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final catchingAsync(Ljava/lang/Class;Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p3, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 233
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p2, "fallback":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-static {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/Futures;->catchingAsync(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final transform(Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/FluentFuture<",
            "TT;>;"
        }
    .end annotation

    .line 330
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TV;TT;>;"
    invoke-static {p0, p1, p2}, Lccsancom/google/common/util/concurrent/Futures;->transform(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final transformAsync(Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TV;TT;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/FluentFuture<",
            "TT;>;"
        }
    .end annotation

    .line 294
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture<TV;>;"
    .local p1, "function":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TV;TT;>;"
    invoke-static {p0, p1, p2}, Lccsancom/google/common/util/concurrent/Futures;->transformAsync(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method

.method public final withTimeout(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lccsancom/google/common/util/concurrent/FluentFuture;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lccsancom/google/common/util/concurrent/FluentFuture<",
            "TV;>;"
        }
    .end annotation

    .line 250
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture<TV;>;"
    invoke-static {p0, p1, p2, p3, p4}, Lccsancom/google/common/util/concurrent/Futures;->withTimeout(Lccsancom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/FluentFuture;

    return-object v0
.end method
