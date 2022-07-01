.class public abstract Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;
.super Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;
.source "ForwardingCheckedFuture.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/CheckedFuture;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture<",
        "TV;>;",
        "Lccsancom/google/common/util/concurrent/CheckedFuture<",
        "TV;TX;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 48
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    return-void
.end method


# virtual methods
.method public checkedGet()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 54
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/CheckedFuture;->checkedGet()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TV;^",
            "Ljava/util/concurrent/TimeoutException;",
            "^TX;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .line 60
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/CheckedFuture;->checkedGet(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method
