.class final Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;
.super Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;
.source "Futures.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NonCancellationPropagatingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture<",
        "TV;>;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field private delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 785
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    .local p1, "delegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture$TrustedFuture;-><init>()V

    .line 786
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 787
    return-void
.end method


# virtual methods
.method protected afterDone()V
    .locals 1

    .line 810
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 811
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 3

    .line 801
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 802
    .local v0, "localDelegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-eqz v0, :cond_0

    .line 803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delegate=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 805
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public run()V
    .locals 1

    .line 793
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;, "Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->delegate:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 794
    .local v0, "localDelegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    if-eqz v0, :cond_0

    .line 795
    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/Futures$NonCancellationPropagatingFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z

    .line 797
    :cond_0
    return-void
.end method
