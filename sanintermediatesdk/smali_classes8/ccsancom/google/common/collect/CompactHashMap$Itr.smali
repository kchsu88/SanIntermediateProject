.class abstract Lccsancom/google/common/collect/CompactHashMap$Itr;
.super Ljava/lang/Object;
.source "CompactHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "Itr"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field currentIndex:I

.field expectedModCount:I

.field indexToRemove:I

.field final synthetic this$0:Lccsancom/google/common/collect/CompactHashMap;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/CompactHashMap;)V
    .locals 1

    .line 475
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$Itr;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 476
    iget v0, p1, Lccsancom/google/common/collect/CompactHashMap;->modCount:I

    iput v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    .line 477
    invoke-virtual {p1}, Lccsancom/google/common/collect/CompactHashMap;->firstEntryIndex()I

    move-result p1

    iput p1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 478
    const/4 p1, -0x1

    iput p1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/CompactHashMap;Lccsancom/google/common/collect/CompactHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/CompactHashMap;
    .param p2, "x1"    # Lccsancom/google/common/collect/CompactHashMap$1;

    .line 475
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$Itr;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/CompactHashMap$Itr;-><init>(Lccsancom/google/common/collect/CompactHashMap;)V

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .line 510
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$Itr;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    iget v0, v0, Lccsancom/google/common/collect/CompactHashMap;->modCount:I

    iget v1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 513
    return-void

    .line 511
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method abstract getOutput(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation
.end method

.method public hasNext()Z
    .locals 1

    .line 482
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$Itr;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    iget v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$Itr;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    .line 490
    invoke-virtual {p0}, Lccsancom/google/common/collect/CompactHashMap$Itr;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    iget v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iput v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 494
    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/CompactHashMap$Itr;->getOutput(I)Ljava/lang/Object;

    move-result-object v0

    .line 495
    .local v0, "result":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    iget v2, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/CompactHashMap;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 496
    return-object v0

    .line 491
    .end local v0    # "result":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 3

    .line 501
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$Itr;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.Itr<TT;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/CompactHashMap$Itr;->checkForConcurrentModification()V

    .line 502
    iget v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 503
    iget v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->expectedModCount:I

    .line 504
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    iget v1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-static {v0, v1}, Lccsancom/google/common/collect/CompactHashMap;->access$000(Lccsancom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 505
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    iget v1, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    iget v2, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    invoke-virtual {v0, v1, v2}, Lccsancom/google/common/collect/CompactHashMap;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->currentIndex:I

    .line 506
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/CompactHashMap$Itr;->indexToRemove:I

    .line 507
    return-void
.end method
