.class public abstract Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;
.super Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;
.source "ForwardingCheckedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingCheckedFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Exception;",
        ">",
        "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture<",
        "TV;TX;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final delegate:Lccsancom/google/common/util/concurrent/CheckedFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lccsancom/google/common/util/concurrent/CheckedFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;)V"
        }
    .end annotation

    .line 87
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    .local p1, "delegate":Lccsancom/google/common/util/concurrent/CheckedFuture;, "Lccsancom/google/common/util/concurrent/CheckedFuture<TV;TX;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture;-><init>()V

    .line 88
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/CheckedFuture;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate:Lccsancom/google/common/util/concurrent/CheckedFuture;

    .line 89
    return-void
.end method


# virtual methods
.method protected final delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/CheckedFuture<",
            "TV;TX;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate:Lccsancom/google/common/util/concurrent/CheckedFuture;

    return-object v0
.end method

.method protected bridge synthetic delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1

    .line 81
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 81
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .line 81
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;, "Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture<TV;TX;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingCheckedFuture$SimpleForwardingCheckedFuture;->delegate()Lccsancom/google/common/util/concurrent/CheckedFuture;

    move-result-object v0

    return-object v0
.end method
