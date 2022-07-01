.class public final Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FutureCombiner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final allMustSucceed:Z

.field private final futures:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(ZLccsancom/google/common/collect/ImmutableList;)V
    .locals 0
    .param p1, "allMustSucceed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;>;)V"
        }
    .end annotation

    .line 697
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;, "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    .local p2, "futures":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 698
    iput-boolean p1, p0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    .line 699
    iput-object p2, p0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lccsancom/google/common/collect/ImmutableList;

    .line 700
    return-void
.end method

.method synthetic constructor <init>(ZLccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # Z
    .param p2, "x1"    # Lccsancom/google/common/collect/ImmutableList;
    .param p3, "x2"    # Lccsancom/google/common/util/concurrent/Futures$1;

    .line 692
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;, "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;-><init>(ZLccsancom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 736
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;, "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    .local p1, "combiner":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TC;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/CombinedFuture;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lccsancom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lccsancom/google/common/util/concurrent/CombinedFuture;-><init>(Lccsancom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)V

    return-object v0
.end method

.method public callAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/AsyncCallable<",
            "TC;>;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TC;>;"
        }
    .end annotation

    .line 717
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;, "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    .local p1, "combiner":Lccsancom/google/common/util/concurrent/AsyncCallable;, "Lccsancom/google/common/util/concurrent/AsyncCallable<TC;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/CombinedFuture;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;->futures:Lccsancom/google/common/collect/ImmutableList;

    iget-boolean v2, p0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;->allMustSucceed:Z

    invoke-direct {v0, v1, v2, p2, p1}, Lccsancom/google/common/util/concurrent/CombinedFuture;-><init>(Lccsancom/google/common/collect/ImmutableCollection;ZLjava/util/concurrent/Executor;Lccsancom/google/common/util/concurrent/AsyncCallable;)V

    return-object v0
.end method

.method public run(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p1, "combiner"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Runnable;",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "*>;"
        }
    .end annotation

    .line 751
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;, "Lccsancom/google/common/util/concurrent/Futures$FutureCombiner<TV;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner$1;-><init>(Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0, p2}, Lccsancom/google/common/util/concurrent/Futures$FutureCombiner;->call(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
