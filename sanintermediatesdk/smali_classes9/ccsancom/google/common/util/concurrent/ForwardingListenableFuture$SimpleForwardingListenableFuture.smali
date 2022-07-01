.class public abstract Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;
.super Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;
.source "ForwardingListenableFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleForwardingListenableFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private final delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 59
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    .local p1, "delegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture;-><init>()V

    .line 60
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 61
    return-void
.end method


# virtual methods
.method protected final delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 55
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/concurrent/Future;
    .locals 1

    .line 55
    .local p0, "this":Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;, "Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture<TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/ForwardingListenableFuture$SimpleForwardingListenableFuture;->delegate()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
