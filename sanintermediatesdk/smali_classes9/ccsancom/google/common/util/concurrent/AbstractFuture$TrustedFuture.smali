.class abstract Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.super Lccsancom/google/common/util/concurrent/AbstractFuture;
.source "AbstractFuture.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/AbstractFuture$Trusted;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractFuture;
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
        "Lccsancom/google/common/util/concurrent/AbstractFuture<",
        "TV;>;",
        "Lccsancom/google/common/util/concurrent/AbstractFuture$Trusted<",
        "TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 86
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public final addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 112
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 113
    return-void
.end method

.method public final cancel(Z)Z
    .locals 1
    .param p1, "mayInterruptIfRunning"    # Z

    .line 118
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

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

    .line 90
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture;->get()Ljava/lang/Object;

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

    .line 97
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/AbstractFuture;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final isCancelled()Z
    .locals 1

    .line 107
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture;->isCancelled()Z

    move-result v0

    return v0
.end method

.method public final isDone()Z
    .locals 1

    .line 102
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;, "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<TV;>;"
    invoke-super {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture;->isDone()Z

    move-result v0

    return v0
.end method
