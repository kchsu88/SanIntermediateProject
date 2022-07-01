.class final Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;
.super Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;
.source "CombinedFuture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/CombinedFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsyncCallableInterruptibleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/util/concurrent/CombinedFuture<",
        "TV;>.CombinedFutureInterruptibleTask<",
        "Lccsancom/google/common/util/concurrent/ListenableFuture<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field private final callable:Lccsancom/google/common/util/concurrent/AsyncCallable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/util/concurrent/CombinedFuture;


# direct methods
.method public constructor <init>(Lccsancom/google/common/util/concurrent/CombinedFuture;Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p3, "listenerExecutor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/AsyncCallable<",
            "TV;>;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 141
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    .local p2, "callable":Lccsancom/google/common/util/concurrent/AsyncCallable;, "Lccsancom/google/common/util/concurrent/AsyncCallable<TV;>;"
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->this$0:Lccsancom/google/common/util/concurrent/CombinedFuture;

    .line 142
    invoke-direct {p0, p1, p3}, Lccsancom/google/common/util/concurrent/CombinedFuture$CombinedFutureInterruptibleTask;-><init>(Lccsancom/google/common/util/concurrent/CombinedFuture;Ljava/util/concurrent/Executor;)V

    .line 143
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/google/common/util/concurrent/AsyncCallable;

    iput-object p1, p0, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

    .line 144
    return-void
.end method


# virtual methods
.method runInterruptibly()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->thrownByExecute:Z

    .line 149
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

    invoke-interface {v0}, Lccsancom/google/common/util/concurrent/AsyncCallable;->call()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    .line 150
    .local v0, "result":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

    const-string v2, "AsyncCallable.call returned null instead of a Future. Did you mean to return immediateFuture(null)? %s"

    invoke-static {v0, v2, v1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/util/concurrent/ListenableFuture;

    return-object v1
.end method

.method bridge synthetic runInterruptibly()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->runInterruptibly()Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 159
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    .local p1, "value":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->this$0:Lccsancom/google/common/util/concurrent/CombinedFuture;

    invoke-virtual {v0, p1}, Lccsancom/google/common/util/concurrent/CombinedFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z

    .line 160
    return-void
.end method

.method bridge synthetic setValue(Ljava/lang/Object;)V
    .locals 0

    .line 136
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    check-cast p1, Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->setValue(Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method toPendingString()Ljava/lang/String;
    .locals 1

    .line 164
    .local p0, "this":Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;, "Lccsancom/google/common/util/concurrent/CombinedFuture<TV;>.AsyncCallableInterruptibleTask;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/CombinedFuture$AsyncCallableInterruptibleTask;->callable:Lccsancom/google/common/util/concurrent/AsyncCallable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
