.class final Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;
.super Lccsancom/google/common/util/concurrent/AbstractTransformFuture;
.source "AbstractTransformFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractTransformFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TransformFuture"
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
        "Lccsancom/google/common/base/Function<",
        "-TI;+TO;>;TO;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/base/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TI;>;",
            "Lccsancom/google/common/base/Function<",
            "-TI;+TO;>;)V"
        }
    .end annotation

    .line 237
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    .local p1, "inputFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TI;>;"
    .local p2, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TI;+TO;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/lang/Object;)V

    .line 238
    return-void
.end method


# virtual methods
.method doTransform(Lccsancom/google/common/base/Function;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Function<",
            "-TI;+TO;>;TI;)TO;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 243
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TI;+TO;>;"
    .local p2, "input":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, p2}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 233
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    check-cast p1, Lccsancom/google/common/base/Function;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;->doTransform(Lccsancom/google/common/base/Function;Ljava/lang/Object;)Ljava/lang/Object;

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
            "(TO;)V"
        }
    .end annotation

    .line 248
    .local p0, "this":Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;, "Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture<TI;TO;>;"
    .local p1, "result":Ljava/lang/Object;, "TO;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractTransformFuture$TransformFuture;->set(Ljava/lang/Object;)Z

    .line 249
    return-void
.end method
