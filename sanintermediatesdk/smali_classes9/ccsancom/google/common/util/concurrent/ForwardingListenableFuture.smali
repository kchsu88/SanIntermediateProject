.class public abstract Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;
.super Lccsancom/google/common/util/concurrent/ForwardingFuture;
.source "ForwardingListenableFuture.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/ListenableFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/ForwardingFuture<",
        "TV;>;",
        "Lccsancom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 38
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/ForwardingFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 1
    .param p1, "listener"    # Ljava/lang/Runnable;
    .param p2, "exec"    # Ljava/util/concurrent/Executor;

    .line 45
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;->delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 46
    return-void
.end method

.method protected abstract delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 32
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;->delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .line 32
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;->delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
