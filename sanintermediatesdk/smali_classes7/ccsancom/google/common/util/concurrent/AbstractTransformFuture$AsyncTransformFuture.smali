.class final Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;
.super Lccsancom/google/common/util/concurrent/AbstractTransformFuture;
.source "AbstractTransformFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractTransformFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AsyncTransformFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<I:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractTransformFuture<",
        "TI;TO;",
        "Lccsancom/google/common/util/concurrent/AsyncFunction<",
        "-TI;+TO;>;",
        "Lccsancom/google/common/util/concurrent/ListenableFuture<",
        "+TO;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/AsyncFunction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 208
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "inputFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TI;>;"
    .local p2, "function":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    .line 209
    return-void
.end method


# virtual methods
.method doTransform(Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AsyncFunction<",
            "-TI;+TO;>;TI;)",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TO;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 214
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "function":Lccsancom/google/common/util/concurrent/AsyncFunction;, "Lccsancom/google/common/util/concurrent/AsyncFunction<-TI;+TO;>;"
    .local p2, "input":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, p2}, Lccsancom/google/common/util/concurrent/AsyncFunction;->apply(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 215
    .local v0, "outputFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    const-string v1, "AsyncFunction.apply returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v1, p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    return-object v0
.end method

.method bridge synthetic doTransform(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 203
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    check-cast p1, Lccsancom/google/common/util/concurrent/AsyncFunction;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->doTransform(Lccsancom/google/common/util/concurrent/AsyncFunction;Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object p1

    return-object p1
.end method

.method setResult(Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TO;>;)V"
        }
    .end annotation

    .line 225
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    .local p1, "result":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TO;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z

    .line 226
    return-void
.end method

.method bridge synthetic setResult(Ljava/lang/Object;)V
    .locals 0

    .line 203
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture<TI;TO;>;"
    check-cast p1, Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture$AsyncTransformFuture;->setResult(Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method
