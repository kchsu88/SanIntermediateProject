.class abstract Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.super Lccsancom/google/common/util/concurrent/FluentFuture;
.source "FluentFuture.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/AbstractFuture$Trusted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/FluentFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "TrustedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/FluentFuture<",
        "TV;>;",
        "Lccsancom/google/common/util/concurrent/AbstractFuture$Trusted<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 77
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/FluentFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 104
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/util/concurrent/FluentFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 105
    return-void
.end method

.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 110
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/util/concurrent/FluentFuture;->cancel(Z)Z

    move-result v0

    return v0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 82
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lccsancom/google/common/util/concurrent/FluentFuture;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/ExecutionException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/FluentFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 99
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lccsancom/google/common/util/concurrent/FluentFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 94
    .local p0, "this":Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lccsancom/google/common/util/concurrent/FluentFuture;->isDone()Z

    move-result v0

    return v0
.end method
