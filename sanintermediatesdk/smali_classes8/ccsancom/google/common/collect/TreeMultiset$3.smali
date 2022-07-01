.class Lccsancom/google/common/collect/TreeMultiset$3;
.super Ljava/lang/Object;
.source "TreeMultiset.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeMultiset;->descendingEntryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lccsancom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/TreeMultiset$AvlNode<",
            "TE;>;"
        }
    .end annotation
.end field

.field prevEntry:Lccsancom/google/common/collect/Multiset$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/TreeMultiset;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeMultiset;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/TreeMultiset;

    .line 476
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$3;, "Lccsancom/google/common/collect/TreeMultiset$3;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeMultiset$3;->this$0:Lccsancom/google/common/collect/TreeMultiset;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 477
    invoke-static {p1}, Lccsancom/google/common/collect/TreeMultiset;->access$1600(Lccsancom/google/common/collect/TreeMultiset;)Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    .line 478
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->prevEntry:Lccsancom/google/common/collect/Multiset$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 482
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$3;, "Lccsancom/google/common/collect/TreeMultiset$3;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 483
    return v1

    .line 484
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->this$0:Lccsancom/google/common/collect/TreeMultiset;

    invoke-static {v0}, Lccsancom/google/common/collect/TreeMultiset;->access$1300(Lccsancom/google/common/collect/TreeMultiset;)Lccsancom/google/common/collect/GeneralRange;

    move-result-object v0

    iget-object v2, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v2}, Lccsancom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsancom/google/common/collect/GeneralRange;->tooLow(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 485
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    .line 486
    return v1

    .line 488
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public next()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 494
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$3;, "Lccsancom/google/common/collect/TreeMultiset$3;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeMultiset$3;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    iget-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->this$0:Lccsancom/google/common/collect/TreeMultiset;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/TreeMultiset;->access$1400(Lccsancom/google/common/collect/TreeMultiset;Lccsancom/google/common/collect/TreeMultiset$AvlNode;)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    .line 498
    .local v0, "result":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    iput-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->prevEntry:Lccsancom/google/common/collect/Multiset$Entry;

    .line 499
    iget-object v1, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lccsancom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/TreeMultiset$3;->this$0:Lccsancom/google/common/collect/TreeMultiset;

    invoke-static {v2}, Lccsancom/google/common/collect/TreeMultiset;->access$1500(Lccsancom/google/common/collect/TreeMultiset;)Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 500
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    goto :goto_0

    .line 502
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    invoke-static {v1}, Lccsancom/google/common/collect/TreeMultiset$AvlNode;->access$900(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/TreeMultiset$3;->current:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    .line 504
    :goto_0
    return-object v0

    .line 495
    .end local v0    # "result":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 476
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$3;, "Lccsancom/google/common/collect/TreeMultiset$3;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeMultiset$3;->next()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 3

    .line 509
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$3;, "Lccsancom/google/common/collect/TreeMultiset$3;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->prevEntry:Lccsancom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 510
    iget-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->this$0:Lccsancom/google/common/collect/TreeMultiset;

    iget-object v2, p0, Lccsancom/google/common/collect/TreeMultiset$3;->prevEntry:Lccsancom/google/common/collect/Multiset$Entry;

    invoke-interface {v2}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/collect/TreeMultiset;->setCount(Ljava/lang/Object;I)I

    .line 511
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$3;->prevEntry:Lccsancom/google/common/collect/Multiset$Entry;

    .line 512
    return-void
.end method
