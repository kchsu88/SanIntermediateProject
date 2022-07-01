.class final Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
.super Ljava/lang/Object;
.source "ExecutionList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/ExecutionList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RunnableExecutorPair"
.end annotation


# instance fields
.field final executor:Ljava/util/concurrent/Executor;

.field next:Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;)V
    .locals 0
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "next"    # Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->runnable:Ljava/lang/Runnable;

    .line 161
    iput-object p2, p0, Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->executor:Ljava/util/concurrent/Executor;

    .line 162
    iput-object p3, p0, Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;->next:Lccsancom/google/common/util/concurrent/ExecutionList$RunnableExecutorPair;

    .line 163
    return-void
.end method
