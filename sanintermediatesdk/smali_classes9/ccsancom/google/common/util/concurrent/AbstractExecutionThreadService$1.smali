.class Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;
.super Lccsancom/google/common/util/concurrent/AbstractService;
.source "AbstractExecutionThreadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    .line 43
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractService;-><init>()V

    return-void
.end method


# virtual methods
.method protected final doStart()V
    .locals 2

    .line 46
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    .line 48
    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;->executor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;

    invoke-direct {v1, p0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$1;-><init>(Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V

    .line 47
    invoke-static {v0, v1}, Lccsancom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lccsancom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 55
    .local v0, "executor":Ljava/util/concurrent/Executor;
    new-instance v1, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;

    invoke-direct {v1, p0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1$2;-><init>(Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 91
    return-void
.end method

.method protected doStop()V
    .locals 1

    .line 95
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;->triggerShutdown()V

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService$1;->this$0:Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;

    invoke-virtual {v0}, Lccsancom/google/common/util/concurrent/AbstractExecutionThreadService;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method