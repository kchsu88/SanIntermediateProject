.class Lccsancom/google/common/util/concurrent/ExecutionSequencer$1;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Lccsancom/google/common/util/concurrent/AsyncCallable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/ExecutionSequencer;->submit(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/util/concurrent/AsyncCallable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/ExecutionSequencer;

.field final synthetic val$callable:Ljava/util/concurrent/Callable;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ExecutionSequencer;Ljava/util/concurrent/Callable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/ExecutionSequencer;

    .line 71
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$1;->this$0:Lccsancom/google/common/util/concurrent/ExecutionSequencer;

    iput-object p2, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/util/concurrent/Futures;->immediateFuture(Ljava/lang/Object;)Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$1;->val$callable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
