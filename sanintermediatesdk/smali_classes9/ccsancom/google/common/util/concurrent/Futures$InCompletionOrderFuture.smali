.class final Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;
.super Lccsancom/google/common/util/concurrent/AbstractFuture;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderFuture"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/AbstractFuture<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<",
            "TT;>;)V"
        }
    .end annotation

    .line 918
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    .local p1, "state":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/AbstractFuture;-><init>()V

    .line 919
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 920
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Lccsancom/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p2, "x1"    # Lccsancom/google/common/util/concurrent/Futures$1;

    .line 915
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;-><init>(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;)V

    return-void
.end method


# virtual methods
.method protected afterDone()V
    .locals 1

    .line 934
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 935
    return-void
.end method

.method public cancel(Z)Z
    .locals 2
    .param p1, "interruptIfRunning"    # Z

    .line 924
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 925
    .local v0, "localState":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/util/concurrent/AbstractFuture;->cancel(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 926
    invoke-static {v0, p1}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$400(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V

    .line 927
    const/4 v1, 0x1

    return v1

    .line 929
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 3

    .line 939
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderFuture;->state:Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 940
    .local v0, "localState":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    if-eqz v0, :cond_0

    .line 943
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCount=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 944
    invoke-static {v0}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$500(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lccsancom/google/common/util/concurrent/ListenableFuture;

    move-result-object v2

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], remaining=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 946
    invoke-static {v0}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->access$600(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 943
    return-object v1

    .line 949
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
