.class final Lccsancom/google/common/cache/LocalCache$WriteQueue;
.super Ljava/util/AbstractQueue;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WriteQueue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractQueue<",
        "Lccsancom/google/common/cache/ReferenceEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final head:Lccsancom/google/common/cache/ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 3516
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V

    .line 3517
    new-instance v0, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/cache/LocalCache$WriteQueue$1;-><init>(Lccsancom/google/common/cache/LocalCache$WriteQueue;)V

    iput-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 3621
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3622
    .local v0, "e":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    if-eq v0, v1, :cond_0

    .line 3623
    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3624
    .local v1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {v0}, Lccsancom/google/common/cache/LocalCache;->nullifyWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3625
    move-object v0, v1

    .line 3626
    .end local v1    # "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    goto :goto_0

    .line 3628
    :cond_0
    invoke-interface {v1, v1}, Lccsancom/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3629
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-interface {v1, v1}, Lccsancom/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3630
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 3599
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/cache/ReferenceEntry;

    .line 3600
    .local v0, "e":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    sget-object v2, Lccsancom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lccsancom/google/common/cache/LocalCache$NullEntry;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 3605
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3634
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache$WriteQueue$2;

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$WriteQueue;->peek()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/cache/LocalCache$WriteQueue$2;-><init>(Lccsancom/google/common/cache/LocalCache$WriteQueue;Lccsancom/google/common/cache/ReferenceEntry;)V

    return-object v0
.end method

.method public offer(Lccsancom/google/common/cache/ReferenceEntry;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)Z"
        }
    .end annotation

    .line 3558
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/cache/LocalCache;->connectWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3561
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/cache/LocalCache;->connectWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3562
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-static {p1, v0}, Lccsancom/google/common/cache/LocalCache;->connectWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3564
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic offer(Ljava/lang/Object;)Z
    .locals 0

    .line 3516
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    check-cast p1, Lccsancom/google/common/cache/ReferenceEntry;

    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache$WriteQueue;->offer(Lccsancom/google/common/cache/ReferenceEntry;)Z

    move-result p1

    return p1
.end method

.method public peek()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3569
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3570
    .local v0, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic peek()Ljava/lang/Object;
    .locals 1

    .line 3516
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$WriteQueue;->peek()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public poll()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3575
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 3576
    .local v0, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    if-ne v0, v1, :cond_0

    .line 3577
    const/4 v1, 0x0

    return-object v1

    .line 3580
    :cond_0
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache$WriteQueue;->remove(Ljava/lang/Object;)Z

    .line 3581
    return-object v0
.end method

.method public bridge synthetic poll()Ljava/lang/Object;
    .locals 1

    .line 3516
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$WriteQueue;->poll()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 3587
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/cache/ReferenceEntry;

    .line 3588
    .local v0, "e":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getPreviousInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3589
    .local v1, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v2

    .line 3590
    .local v2, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {v1, v2}, Lccsancom/google/common/cache/LocalCache;->connectWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3591
    invoke-static {v0}, Lccsancom/google/common/cache/LocalCache;->nullifyWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 3593
    sget-object v3, Lccsancom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lccsancom/google/common/cache/LocalCache$NullEntry;

    if-eq v2, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public size()I
    .locals 3

    .line 3610
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$WriteQueue;, "Lccsancom/google/common/cache/LocalCache$WriteQueue<TK;TV;>;"
    const/4 v0, 0x0

    .line 3611
    .local v0, "size":I
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    invoke-interface {v1}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    .line 3612
    .local v1, "e":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_0
    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache$WriteQueue;->head:Lccsancom/google/common/cache/ReferenceEntry;

    if-eq v1, v2, :cond_0

    .line 3614
    add-int/lit8 v0, v0, 0x1

    .line 3613
    invoke-interface {v1}, Lccsancom/google/common/cache/ReferenceEntry;->getNextInWriteQueue()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    goto :goto_0

    .line 3616
    .end local v1    # "e":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :cond_0
    return v0
.end method
