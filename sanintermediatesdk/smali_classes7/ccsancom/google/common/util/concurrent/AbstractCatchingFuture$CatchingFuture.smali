.class final Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;
.super Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;
.source "AbstractCatchingFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CatchingFuture"
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
        "Lccsancom/google/common/base/Function<",
        "-TX;+TV;>;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Lccsancom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TV;>;",
            "Ljava/lang/Class<",
            "TX;>;",
            "Lccsancom/google/common/base/Function<",
            "-TX;+TV;>;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    .local p1, "input":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    .local p2, "exceptionType":Ljava/lang/Class;, "Ljava/lang/Class<TX;>;"
    .local p3, "fallback":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TX;+TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 202
    return-void
.end method


# virtual methods
.method doFallback(Lccsancom/google/common/base/Function;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Function<",
            "-TX;+TV;>;TX;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 207
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    .local p1, "fallback":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TX;+TV;>;"
    .local p2, "cause":Ljava/lang/Throwable;, "TX;"
    invoke-interface {p1, p2}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic doFallback(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 195
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    check-cast p1, Lccsancom/google/common/base/Function;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->doFallback(Lccsancom/google/common/base/Function;Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method setResult(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .line 212
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;, "Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture<TV;TX;>;"
    .local p1, "result":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractCatchingFuture$CatchingFuture;->set(Ljava/lang/Object;)Z

    .line 213
    return-void
.end method
