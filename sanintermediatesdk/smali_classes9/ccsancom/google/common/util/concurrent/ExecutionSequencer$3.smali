.class Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;
.super Ljava/lang/Object;
.source "ExecutionSequencer.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/ExecutionSequencer;->submitAsync(Lccsancom/google/common/util/concurrent/AsyncCallable;Ljava/util/concurrent/Executor;)Lccsancom/google/common/util/concurrent/ListenableFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/ExecutionSequencer;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$oldFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/ExecutionSequencer;Lccsancom/google/common/util/concurrent/ListenableFuture;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/ExecutionSequencer;

    .line 130
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;->this$0:Lccsancom/google/common/util/concurrent/ExecutionSequencer;

    iput-object p2, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;->val$oldFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    iput-object p3, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;->val$executor:Ljava/util/concurrent/Executor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 133
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;->val$oldFuture:Lccsancom/google/common/util/concurrent/ListenableFuture;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/ExecutionSequencer$3;->val$executor:Ljava/util/concurrent/Executor;

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 134
    return-void
.end method
