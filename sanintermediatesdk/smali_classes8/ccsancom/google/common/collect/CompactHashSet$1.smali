.class Lccsancom/google/common/collect/CompactHashSet$1;
.super Ljava/lang/Object;
.source "CompactHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/CompactHashSet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field expectedModCount:I

.field index:I

.field indexToRemove:I

.field final synthetic this$0:Lccsancom/google/common/collect/CompactHashSet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/CompactHashSet;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/CompactHashSet;

    .line 430
    .local p0, "this":Lccsancom/google/common/collect/CompactHashSet$1;, "Lccsancom/google/common/collect/CompactHashSet$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/CompactHashSet$1;->this$0:Lccsancom/google/common/collect/CompactHashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 431
    iget v0, p1, Lccsancom/google/common/collect/CompactHashSet;->modCount:I

    iput v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    .line 432
    invoke-virtual {p1}, Lccsancom/google/common/collect/CompactHashSet;->firstEntryIndex()I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->index:I

    .line 433
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    return-void
.end method

.method private checkForConcurrentModification()V
    .locals 2

    .line 464
    .local p0, "this":Lccsancom/google/common/collect/CompactHashSet$1;, "Lccsancom/google/common/collect/CompactHashSet$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->this$0:Lccsancom/google/common/collect/CompactHashSet;

    iget v0, v0, Lccsancom/google/common/collect/CompactHashSet;->modCount:I

    iget v1, p0, Lccsancom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 467
    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 437
    .local p0, "this":Lccsancom/google/common/collect/CompactHashSet$1;, "Lccsancom/google/common/collect/CompactHashSet$1;"
    iget v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->index:I

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
            "()TE;"
        }
    .end annotation

    .line 443
    .local p0, "this":Lccsancom/google/common/collect/CompactHashSet$1;, "Lccsancom/google/common/collect/CompactHashSet$1;"
    invoke-direct {p0}, Lccsancom/google/common/collect/CompactHashSet$1;->checkForConcurrentModification()V

    .line 444
    invoke-virtual {p0}, Lccsancom/google/common/collect/CompactHashSet$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    iget v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->index:I

    iput v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    .line 448
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->this$0:Lccsancom/google/common/collect/CompactHashSet;

    iget-object v0, v0, Lccsancom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/CompactHashSet$1;->index:I

    aget-object v0, v0, v1

    .line 449
    .local v0, "result":Ljava/lang/Object;, "TE;"
    iget-object v2, p0, Lccsancom/google/common/collect/CompactHashSet$1;->this$0:Lccsancom/google/common/collect/CompactHashSet;

    invoke-virtual {v2, v1}, Lccsancom/google/common/collect/CompactHashSet;->getSuccessor(I)I

    move-result v1

    iput v1, p0, Lccsancom/google/common/collect/CompactHashSet$1;->index:I

    .line 450
    return-object v0

    .line 445
    .end local v0    # "result":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 5

    .line 455
    .local p0, "this":Lccsancom/google/common/collect/CompactHashSet$1;, "Lccsancom/google/common/collect/CompactHashSet$1;"
    invoke-direct {p0}, Lccsancom/google/common/collect/CompactHashSet$1;->checkForConcurrentModification()V

    .line 456
    iget v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    const/4 v1, 0x1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkRemove(Z)V

    .line 457
    iget v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->expectedModCount:I

    .line 458
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->this$0:Lccsancom/google/common/collect/CompactHashSet;

    iget-object v1, v0, Lccsancom/google/common/collect/CompactHashSet;->elements:[Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    aget-object v1, v1, v2

    iget-object v2, p0, Lccsancom/google/common/collect/CompactHashSet$1;->this$0:Lccsancom/google/common/collect/CompactHashSet;

    invoke-static {v2}, Lccsancom/google/common/collect/CompactHashSet;->access$000(Lccsancom/google/common/collect/CompactHashSet;)[J

    move-result-object v2

    iget v3, p0, Lccsancom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    aget-wide v3, v2, v3

    invoke-static {v3, v4}, Lccsancom/google/common/collect/CompactHashSet;->access$100(J)I

    move-result v2

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/CompactHashSet;->access$200(Lccsancom/google/common/collect/CompactHashSet;Ljava/lang/Object;I)Z

    .line 459
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->this$0:Lccsancom/google/common/collect/CompactHashSet;

    iget v1, p0, Lccsancom/google/common/collect/CompactHashSet$1;->index:I

    iget v2, p0, Lccsancom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    invoke-virtual {v0, v1, v2}, Lccsancom/google/common/collect/CompactHashSet;->adjustAfterRemove(II)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->index:I

    .line 460
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/collect/CompactHashSet$1;->indexToRemove:I

    .line 461
    return-void
.end method
