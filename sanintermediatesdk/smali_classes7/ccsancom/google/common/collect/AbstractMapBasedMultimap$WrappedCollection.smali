.class Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
.super Ljava/util/AbstractCollection;
.source "AbstractMapBasedMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/AbstractMapBasedMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WrappedCollection"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final ancestor:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final ancestorDelegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field delegate:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractMapBasedMultimap;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/util/Collection;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;",
            "Lccsancom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;)V"
        }
    .end annotation

    .line 330
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p3, "delegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    .local p4, "ancestor":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 331
    iput-object p2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    .line 332
    iput-object p3, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 333
    iput-object p4, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    .line 334
    if-nez p4, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    .line 335
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)Z"
        }
    .end annotation

    .line 475
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 476
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    .line 477
    .local v0, "wasEmpty":Z
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 478
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    .line 479
    iget-object v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v2}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$208(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 480
    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    .line 484
    :cond_0
    return v1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TV;>;)Z"
        }
    .end annotation

    .line 495
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    return v0

    .line 498
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 499
    .local v0, "oldSize":I
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v1

    .line 500
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 501
    iget-object v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 502
    .local v2, "newSize":I
    iget-object v3, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v3}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v4

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lccsancom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 503
    if-nez v0, :cond_1

    .line 504
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    .line 507
    .end local v2    # "newSize":I
    :cond_1
    return v1
.end method

.method addToMap()V
    .locals 3

    .line 381
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->addToMap()V

    goto :goto_0

    .line 384
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    iget-object v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_0
    return-void
.end method

.method public clear()V
    .locals 3

    .line 524
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 525
    .local v0, "oldSize":I
    if-nez v0, :cond_0

    .line 526
    return-void

    .line 528
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 529
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v2

    sub-int/2addr v2, v0

    invoke-static {v1, v2}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lccsancom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 530
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 531
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 512
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 513
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 518
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 519
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 396
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    if-ne p1, p0, :cond_0

    .line 397
    const/4 v0, 0x1

    return v0

    .line 399
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 400
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getAncestor()Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.WrappedCollection;"
        }
    .end annotation

    .line 488
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    return-object v0
.end method

.method getDelegate()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 416
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    return-object v0
.end method

.method getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 371
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 405
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 406
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 421
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 422
    new-instance v0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection$WrappedIterator;-><init>(Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method

.method refreshIfEmpty()V
    .locals 2

    .line 345
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_1

    .line 346
    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 347
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->getDelegate()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestorDelegate:Ljava/util/Collection;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 348
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 350
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 352
    .local v0, "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_2

    .line 353
    iput-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    .line 356
    .end local v0    # "newDelegate":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    :cond_2
    :goto_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 535
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 536
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 537
    .local v0, "changed":Z
    if-eqz v0, :cond_0

    .line 538
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v1}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$210(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    .line 539
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 541
    :cond_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 546
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    const/4 v0, 0x0

    return v0

    .line 549
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 550
    .local v0, "oldSize":I
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    move-result v1

    .line 551
    .local v1, "changed":Z
    if-eqz v1, :cond_1

    .line 552
    iget-object v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 553
    .local v2, "newSize":I
    iget-object v3, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v3}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v4

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lccsancom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 554
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 556
    .end local v2    # "newSize":I
    :cond_1
    return v1
.end method

.method removeIfEmpty()V
    .locals 2

    .line 363
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->ancestor:Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$000(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    :cond_1
    :goto_0
    return-void
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 561
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->size()I

    move-result v0

    .line 563
    .local v0, "oldSize":I
    iget-object v1, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    move-result v1

    .line 564
    .local v1, "changed":Z
    if-eqz v1, :cond_0

    .line 565
    iget-object v2, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    .line 566
    .local v2, "newSize":I
    iget-object v3, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->this$0:Lccsancom/google/common/collect/AbstractMapBasedMultimap;

    invoke-static {v3}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$200(Lccsancom/google/common/collect/AbstractMapBasedMultimap;)I

    move-result v4

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    invoke-static {v3, v4}, Lccsancom/google/common/collect/AbstractMapBasedMultimap;->access$202(Lccsancom/google/common/collect/AbstractMapBasedMultimap;I)I

    .line 567
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->removeIfEmpty()V

    .line 569
    .end local v2    # "newSize":I
    :cond_0
    return v1
.end method

.method public size()I
    .locals 1

    .line 390
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 391
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 411
    .local p0, "this":Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;, "Lccsancom/google/common/collect/AbstractMapBasedMultimap<TK;TV;>.WrappedCollection;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->refreshIfEmpty()V

    .line 412
    iget-object v0, p0, Lccsancom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;->delegate:Ljava/util/Collection;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
