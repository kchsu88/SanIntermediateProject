.class final Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;
.super Ljava/lang/Object;
.source "Futures.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/util/concurrent/Futures;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InCompletionOrderState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private volatile delegateIndex:I

.field private final incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final inputFutures:[Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;"
        }
    .end annotation
.end field

.field private shouldInterrupt:Z

.field private wasCancelled:Z


# direct methods
.method private constructor <init>([Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "+TT;>;)V"
        }
    .end annotation

    .line 963
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    .local p1, "inputFutures":[Lccsancom/google/common/util/concurrent/ListenableFuture;, "[Lccsancom/google/common/util/concurrent/ListenableFuture<+TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 957
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 958
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 961
    iput v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 964
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 965
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 966
    return-void
.end method

.method synthetic constructor <init>([Lccsancom/google/common/util/concurrent/ListenableFuture;Lccsancom/google/common/util/concurrent/Futures$1;)V
    .locals 0
    .param p1, "x0"    # [Lccsancom/google/common/util/concurrent/ListenableFuture;
    .param p2, "x1"    # Lccsancom/google/common/util/concurrent/Futures$1;

    .line 953
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;-><init>([Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    return-void
.end method

.method static synthetic access$300(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Lccsancom/google/common/collect/ImmutableList;I)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p1, "x1"    # Lccsancom/google/common/collect/ImmutableList;
    .param p2, "x2"    # I

    .line 953
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordInputCompletion(Lccsancom/google/common/collect/ImmutableList;I)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;Z)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;
    .param p1, "x1"    # Z

    .line 953
    invoke-direct {p0, p1}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordOutputCancellation(Z)V

    return-void
.end method

.method static synthetic access$500(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;)[Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 953
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lccsancom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;

    .line 953
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private recordCompletion()V
    .locals 5

    .line 998
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->incompleteOutputCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    if-eqz v0, :cond_1

    .line 999
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lccsancom/google/common/util/concurrent/ListenableFuture;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 1000
    .local v3, "toCancel":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<*>;"
    if-eqz v3, :cond_0

    .line 1001
    iget-boolean v4, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    invoke-interface {v3, v4}, Lccsancom/google/common/util/concurrent/ListenableFuture;->cancel(Z)Z

    .line 999
    .end local v3    # "toCancel":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<*>;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1005
    :cond_1
    return-void
.end method

.method private recordInputCompletion(Lccsancom/google/common/collect/ImmutableList;I)V
    .locals 3
    .param p2, "inputFutureIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/util/concurrent/AbstractFuture<",
            "TT;>;>;I)V"
        }
    .end annotation

    .line 980
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    .local p1, "delegates":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/util/concurrent/AbstractFuture<TT;>;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->inputFutures:[Lccsancom/google/common/util/concurrent/ListenableFuture;

    aget-object v1, v0, p2

    .line 982
    .local v1, "inputFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TT;>;"
    const/4 v2, 0x0

    aput-object v2, v0, p2

    .line 983
    iget v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 984
    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/util/concurrent/AbstractFuture;

    invoke-virtual {v2, v1}, Lccsancom/google/common/util/concurrent/AbstractFuture;->setFuture(Lccsancom/google/common/util/concurrent/ListenableFuture;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 985
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 987
    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 988
    return-void

    .line 983
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 994
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v0

    iput v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->delegateIndex:I

    .line 995
    return-void
.end method

.method private recordOutputCancellation(Z)V
    .locals 1
    .param p1, "interruptIfRunning"    # Z

    .line 969
    .local p0, "this":Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;, "Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->wasCancelled:Z

    .line 972
    if-nez p1, :cond_0

    .line 973
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->shouldInterrupt:Z

    .line 975
    :cond_0
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/Futures$InCompletionOrderState;->recordCompletion()V

    .line 976
    return-void
.end method
