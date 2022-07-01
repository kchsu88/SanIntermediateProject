.class final Lccsancom/google/common/util/concurrent/MoreExecutors$2;
.super Ljava/lang/Object;
.source "MoreExecutors.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/util/concurrent/MoreExecutors;->renamingDecorator(Ljava/util/concurrent/Executor;Lccsancom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$nameSupplier:Lccsancom/google/common/base/Supplier;


# direct methods
.method constructor <init>(Ljava/util/concurrent/Executor;Lccsancom/google/common/base/Supplier;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$2;->val$nameSupplier:Lccsancom/google/common/base/Supplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/Runnable;

    .line 834
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lccsancom/google/common/util/concurrent/MoreExecutors$2;->val$nameSupplier:Lccsancom/google/common/base/Supplier;

    invoke-static {p1, v1}, Lccsancom/google/common/util/concurrent/Callables;->threadRenaming(Ljava/lang/Runnable;Lccsancom/google/common/base/Supplier;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 835
    return-void
.end method
