.class final Lccsancom/google/common/util/concurrent/MoreExecutors$4;
.super Lccsancom/google/common/util/concurrent/WrappingScheduledExecutorService;
.source "MoreExecutors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/ScheduledExecutorService;Lccsancom/google/common/base/Supplier;)Ljava/util/concurrent/ScheduledExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$nameSupplier:Lccsancom/google/common/base/Supplier;


# direct methods
.method constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lccsancom/google/common/base/Supplier;)V
    .locals 0
    .param p1, "delegate"    # Ljava/util/concurrent/ScheduledExecutorService;

    .line 894
    iput-object p2, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lccsancom/google/common/base/Supplier;

    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/WrappingScheduledExecutorService;-><init>(Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method protected wrapTask(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 902
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lccsancom/google/common/base/Supplier;

    invoke-static {p1, v0}, Lccsancom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lccsancom/google/common/base/Supplier;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method protected wrapTask(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Callable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TT;>;)",
            "Ljava/util/concurrent/Callable<",
            "TT;>;"
        }
    .end annotation

    .line 897
    .local p1, "callable":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$4;->val$nameSupplier:Lccsancom/google/common/base/Supplier;

    invoke-static {p1, v0}, Lccsancom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/util/concurrent/Callable;Lccsancom/google/common/base/Supplier;)Ljava/util/concurrent/Callable;

    move-result-object v0

    return-object v0
.end method
