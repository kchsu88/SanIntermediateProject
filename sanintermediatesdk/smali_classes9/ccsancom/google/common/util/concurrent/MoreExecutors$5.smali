.class final Lccsancom/google/common/util/concurrent/MoreExecutors$5;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/MoreExecutors;->rejectionPropagatingExecutor(Ljava/util/concurrent/Executor;Lccsancom/google/common/util/concurrent/AbstractFuture;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field thrownFromDelegate:Z

.field final synthetic val$delegate:Ljava/util/concurrent/Executor;

.field final synthetic val$future:Lccsancom/google/common/util/concurrent/AbstractFuture;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lccsancom/google/common/util/concurrent/AbstractFuture;)V
    .locals 0

    .line 971
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$5;->val$future:Lccsancom/google/common/util/concurrent/AbstractFuture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 972
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$5;->thrownFromDelegate:Z

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 977
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$5;->val$delegate:Ljava/util/concurrent/Executor;

    new-instance v1, Lccsancom/google/common/util/concurrent/MoreExecutors$5$1;

    invoke-direct {v1, p0, p1}, Lccsancom/google/common/util/concurrent/MoreExecutors$5$1;-><init>(Lccsancom/google/common/util/concurrent/MoreExecutors$5;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 992
    goto :goto_0

    .line 985
    :catch_0
    move-exception v0

    .line 986
    .local v0, "e":Ljava/util/concurrent/RejectedExecutionException;
    iget-boolean v1, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$5;->thrownFromDelegate:Z

    if-eqz v1, :cond_0

    .line 988
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$5;->val$future:Lccsancom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v1, v0}, Lccsancom/google/common/util/concurrent/AbstractFuture;->setException(Ljava/lang/Throwable;)Z

    .line 993
    .end local v0    # "e":Ljava/util/concurrent/RejectedExecutionException;
    :cond_0
    :goto_0
    return-void
.end method
