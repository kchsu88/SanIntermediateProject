.class final Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;
.super Lccsancom/google/common/collect/ImmutableSortedSet;
.source "ImmutableRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AsSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableSortedSet<",
        "TC;>;"
    }
.end annotation


# instance fields
.field private final domain:Lccsancom/google/common/collect/DiscreteDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;"
        }
    .end annotation
.end field

.field private transient size:Ljava/lang/Integer;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableRangeSet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableRangeSet;Lccsancom/google/common/collect/DiscreteDomain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/DiscreteDomain<",
            "TC;>;)V"
        }
    .end annotation

    .line 526
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p2, "domain":Lccsancom/google/common/collect/DiscreteDomain;, "Lccsancom/google/common/collect/DiscreteDomain<TC;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    .line 527
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 528
    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    .line 529
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;)Lccsancom/google/common/collect/DiscreteDomain;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;

    .line 523
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    return-object v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 619
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 620
    return v0

    .line 624
    :cond_0
    :try_start_0
    move-object v1, p1

    check-cast v1, Ljava/lang/Comparable;

    .line 625
    .local v1, "c":Ljava/lang/Comparable;, "TC;"
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v2, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;->contains(Ljava/lang/Comparable;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 626
    .end local v1    # "c":Ljava/lang/Comparable;, "TC;"
    :catch_0
    move-exception v1

    .line 627
    .local v1, "e":Ljava/lang/ClassCastException;
    return v0
.end method

.method createDescendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 651
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/DescendingImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableSortedSet;)V

    return-object v0
.end method

.method public descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 573
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet$2;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet$2;-><init>(Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;)V

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 523
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method headSetImpl(Ljava/lang/Comparable;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 597
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "toElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic headSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 523
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->headSetImpl(Ljava/lang/Comparable;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 7
    .param p1, "target"    # Ljava/lang/Object;

    .line 633
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 635
    move-object v0, p1

    check-cast v0, Ljava/lang/Comparable;

    .line 636
    .local v0, "c":Ljava/lang/Comparable;, "TC;"
    const-wide/16 v1, 0x0

    .line 637
    .local v1, "total":J
    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-static {v3}, Lccsancom/google/common/collect/ImmutableRangeSet;->access$000(Lccsancom/google/common/collect/ImmutableRangeSet;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/collect/Range;

    .line 638
    .local v4, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    invoke-virtual {v4, v0}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 639
    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    invoke-static {v4, v3}, Lccsancom/google/common/collect/ContiguousSet;->create(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/ContiguousSet;

    move-result-object v3

    invoke-virtual {v3, v0}, Lccsancom/google/common/collect/ContiguousSet;->indexOf(Ljava/lang/Object;)I

    move-result v3

    int-to-long v5, v3

    add-long/2addr v5, v1

    invoke-static {v5, v6}, Lccsancom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    return v3

    .line 641
    :cond_0
    iget-object v5, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    invoke-static {v4, v5}, Lccsancom/google/common/collect/ContiguousSet;->create(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/ContiguousSet;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/google/common/collect/ContiguousSet;->size()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 643
    .end local v4    # "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    goto :goto_0

    .line 644
    :cond_1
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "impossible"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    .line 646
    .end local v0    # "c":Ljava/lang/Comparable;, "TC;"
    .end local v1    # "total":J
    :cond_2
    const/4 v0, -0x1

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 656
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeSet;->access$000(Lccsancom/google/common/collect/ImmutableRangeSet;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TC;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet$1;-><init>(Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 523
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 8

    .line 536
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->size:Ljava/lang/Integer;

    .line 537
    .local v0, "result":Ljava/lang/Integer;
    if-nez v0, :cond_2

    .line 538
    const-wide/16 v1, 0x0

    .line 539
    .local v1, "total":J
    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-static {v3}, Lccsancom/google/common/collect/ImmutableRangeSet;->access$000(Lccsancom/google/common/collect/ImmutableRangeSet;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/collect/Range;

    .line 540
    .local v4, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v5, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    invoke-static {v4, v5}, Lccsancom/google/common/collect/ContiguousSet;->create(Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/ContiguousSet;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/google/common/collect/ContiguousSet;->size()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v1, v5

    .line 541
    const-wide/32 v5, 0x7fffffff

    cmp-long v7, v1, v5

    if-ltz v7, :cond_0

    .line 542
    goto :goto_1

    .line 544
    .end local v4    # "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    :cond_0
    goto :goto_0

    .line 545
    :cond_1
    :goto_1
    invoke-static {v1, v2}, Lccsancom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->size:Ljava/lang/Integer;

    move-object v0, v3

    .line 547
    .end local v1    # "total":J
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method subSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableRangeSet;->subRangeSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeSet;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeSet;->asSet(Lccsancom/google/common/collect/DiscreteDomain;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;ZTC;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 603
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    .local p3, "toElement":Ljava/lang/Comparable;, "TC;"
    if-nez p2, :cond_0

    if-nez p4, :cond_0

    invoke-static {p1, p3}, Lccsancom/google/common/collect/Range;->compareOrThrow(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSortedSet;->of()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 606
    :cond_0
    nop

    .line 608
    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v0

    .line 609
    invoke-static {p4}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v1

    .line 607
    invoke-static {p1, v0, p3, v1}, Lccsancom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 606
    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 523
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    check-cast p3, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->subSetImpl(Ljava/lang/Comparable;ZLjava/lang/Comparable;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method tailSetImpl(Ljava/lang/Comparable;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TC;>;"
        }
    .end annotation

    .line 614
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    .local p1, "fromElement":Ljava/lang/Comparable;, "TC;"
    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->subSet(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic tailSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 0

    .line 523
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->tailSetImpl(Ljava/lang/Comparable;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 661
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableRangeSet;->access$000(Lccsancom/google/common/collect/ImmutableRangeSet;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 666
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;, "Lccsancom/google/common/collect/ImmutableRangeSet<TC;>.AsSet;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->this$0:Lccsancom/google/common/collect/ImmutableRangeSet;

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableRangeSet;->access$000(Lccsancom/google/common/collect/ImmutableRangeSet;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeSet$AsSet;->domain:Lccsancom/google/common/collect/DiscreteDomain;

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableRangeSet$AsSetSerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/DiscreteDomain;)V

    return-object v0
.end method
