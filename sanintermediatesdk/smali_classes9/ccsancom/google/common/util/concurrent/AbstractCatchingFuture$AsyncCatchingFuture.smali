.class final Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;
.super Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;
.source "AbstractCatchingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncCatchingFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "X:",
        "Ljava/lang/Throwable;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture<",
        "TV;TX;",
        "Lccsancom/google/common/util/concurrent/AsyncFunction<",
        "-TX;+TV;>;",
        "Lccsancom/google/common/util/concurrent/ListenableFuture<",
        "+TV;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/util/concurrent/AsyncFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 170
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    .local p1, "input":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p2, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p3, "fallback":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 171
    return-void
.end method


# virtual methods
.method doFallback(Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/lang/Throwable;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TX;+TV;>;TX;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    .local p1, "fallback":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TX;+TV;>;"
    .local p2, "cause":Ljava/lang/Throwable;, "TX;"
    invoke-interface {p1, p2}, Lccsancom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 177
    .local v0, "replacement":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    const-string v1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    return-object v0
.end method

.method bridge synthetic doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    check-cast p1, Lccsancom/google/common/util/concurrent/AsyncFunction;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->doFallback(Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/lang/Throwable;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method setResult(Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;)V"
        }
    .end annotation

    .line 187
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    .local p1, "result":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z

    .line 188
    return-void
.end method

.method bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    .line 163
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture<TV;TX;>;"
    check-cast p1, Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$AsyncCatchingFuture;->setResult(Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
