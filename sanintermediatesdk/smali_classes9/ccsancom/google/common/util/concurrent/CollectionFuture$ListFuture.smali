.class final Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;
.super Lccsancom/google/common/util/concurrent/CollectionFuture;
.source "CollectionFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/CollectionFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ListFuture"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/CollectionFuture<",
        "TV;",
        "Ljava/util/List<",
        "TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableCollection;Z)V
    .locals 1
    .param p2, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "+",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;Z)V"
        }
    .end annotation

    .line 90
    .local p0, "this":Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;, "Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture<TV;>;"
    .local p1, "futures":Lccsancom/google/common/collect/ImmutableCollection;, "Lccsancom/google/common/collect/ImmutableCollection<+Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/CollectionFuture;-><init>()V

    .line 91
    new-instance v0, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture$ListFutureRunningState;-><init>(Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;Lccsancom/google/common/collect/ImmutableCollection;Z)V

    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/CollectionFuture$ListFuture;->init(Lccsancom/google/common/util/concurrent/AggregateFuture$RunningState;)V

    .line 92
    return-void
.end method
