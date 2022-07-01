.class final Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;
.super Lccsancom/google/common/collect/AbstractNavigableMap;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/TreeRangeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ComplementRangesByLowerBound"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable<",
        "*>;>",
        "Lccsancom/google/common/collect/AbstractNavigableMap<",
        "Lccsancom/google/common/collect/Cut<",
        "TC;>;",
        "Lccsancom/google/common/collect/Range<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field private final complementLowerBoundWindow:Lccsancom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Range<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final positiveRangesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field

.field private final positiveRangesByUpperBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 460
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "positiveRangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lccsancom/google/common/collect/Cut<TC;>;Lccsancom/google/common/collect/Range<TC;>;>;"
    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lccsancom/google/common/collect/Range;)V

    .line 461
    return-void
.end method

.method private constructor <init>(Ljava/util/NavigableMap;Lccsancom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;",
            "Lccsancom/google/common/collect/Range<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;>;)V"
        }
    .end annotation

    .line 464
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "positiveRangesByLowerBound":Ljava/util/NavigableMap;, "Ljava/util/NavigableMap<Lccsancom/google/common/collect/Cut<TC;>;Lccsancom/google/common/collect/Range<TC;>;>;"
    .local p2, "window":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<Lccsancom/google/common/collect/Cut<TC;>;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractNavigableMap;-><init>()V

    .line 465
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 466
    new-instance v0, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-direct {v0, p1}, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;-><init>(Ljava/util/NavigableMap;)V

    iput-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    .line 467
    iput-object p2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    .line 468
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lccsancom/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    .line 447
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    return-object v0
.end method

.method private subMap(Lccsancom/google/common/collect/Range;)Ljava/util/NavigableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;>;)",
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 471
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "subWindow":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<Lccsancom/google/common/collect/Cut<TC;>;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 472
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSortedMap;->of()Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 474
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object p1

    .line 475
    new-instance v0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-direct {v0, v1, p1}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;-><init>(Ljava/util/NavigableMap;Lccsancom/google/common/collect/Range;)V

    return-object v0
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;>;"
        }
    .end annotation

    .line 500
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 648
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method descendingEntryIterator()Ljava/util/Iterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    .line 570
    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    .line 571
    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Cut;

    goto :goto_0

    .line 572
    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/Cut;->aboveAll()Lccsancom/google/common/collect/Cut;

    move-result-object v0

    :goto_0
    nop

    .line 573
    .local v0, "startingPoint":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    .line 574
    invoke-virtual {v1}, Lccsancom/google/common/collect/Range;->hasUpperBound()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    .line 575
    invoke-virtual {v1}, Lccsancom/google/common/collect/Range;->upperBoundType()Lccsancom/google/common/collect/BoundType;

    move-result-object v1

    sget-object v2, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 576
    .local v1, "inclusive":Z
    :goto_1
    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    .line 579
    invoke-interface {v2, v0, v1}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v2

    .line 580
    invoke-interface {v2}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v2

    .line 581
    invoke-interface {v2}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 582
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 577
    invoke-static {v2}, Lccsancom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lccsancom/google/common/collect/PeekingIterator;

    move-result-object v2

    .line 584
    .local v2, "positiveItr":Lccsancom/google/common/collect/PeekingIterator;, "Lccsancom/google/common/collect/PeekingIterator<Lccsancom/google/common/collect/Range<TC;>;>;"
    invoke-interface {v2}, Lccsancom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 585
    nop

    .line 586
    invoke-interface {v2}, Lccsancom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Range;

    iget-object v3, v3, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-static {}, Lccsancom/google/common/collect/Cut;->aboveAll()Lccsancom/google/common/collect/Cut;

    move-result-object v4

    if-ne v3, v4, :cond_2

    .line 587
    invoke-interface {v2}, Lccsancom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Range;

    iget-object v3, v3, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 588
    invoke-interface {v2}, Lccsancom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/collect/Range;

    iget-object v4, v4, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Cut;

    :goto_2
    nop

    .local v3, "cut":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    goto :goto_3

    .line 589
    .end local v3    # "cut":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :cond_3
    iget-object v3, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v4

    invoke-virtual {v3, v4}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    .line 590
    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_4

    .line 593
    :cond_4
    iget-object v3, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByLowerBound:Ljava/util/NavigableMap;

    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/NavigableMap;->higherKey(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Cut;

    .line 595
    .restart local v3    # "cut":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :goto_3
    nop

    .line 596
    invoke-static {}, Lccsancom/google/common/collect/Cut;->aboveAll()Lccsancom/google/common/collect/Cut;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/collect/Cut;

    .line 597
    .local v4, "firstComplementRangeUpperBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    new-instance v5, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;

    invoke-direct {v5, p0, v4, v2}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;-><init>(Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/PeekingIterator;)V

    return-object v5

    .line 591
    .end local v3    # "cut":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    .end local v4    # "firstComplementRangeUpperBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :cond_5
    :goto_4
    invoke-static {}, Lccsancom/google/common/collect/Iterators;->emptyIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v3

    return-object v3
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;>;"
        }
    .end annotation

    .line 515
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 516
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    .line 519
    invoke-virtual {v1}, Lccsancom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    .line 520
    invoke-virtual {v2}, Lccsancom/google/common/collect/Range;->lowerBoundType()Lccsancom/google/common/collect/BoundType;

    move-result-object v2

    sget-object v3, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 518
    :goto_0
    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 521
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .local v0, "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/google/common/collect/Range<TC;>;>;"
    goto :goto_1

    .line 523
    .end local v0    # "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/google/common/collect/Range<TC;>;>;"
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->positiveRangesByUpperBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 525
    .restart local v0    # "positiveRanges":Ljava/util/Collection;, "Ljava/util/Collection<Lccsancom/google/common/collect/Range<TC;>;>;"
    :goto_1
    nop

    .line 526
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Iterators;->peekingIterator(Ljava/util/Iterator;)Lccsancom/google/common/collect/PeekingIterator;

    move-result-object v1

    .line 528
    .local v1, "positiveItr":Lccsancom/google/common/collect/PeekingIterator;, "Lccsancom/google/common/collect/PeekingIterator<Lccsancom/google/common/collect/Range<TC;>;>;"
    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->complementLowerBoundWindow:Lccsancom/google/common/collect/Range;

    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 529
    invoke-interface {v1}, Lccsancom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Lccsancom/google/common/collect/PeekingIterator;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Range;

    iget-object v2, v2, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v3

    if-eq v2, v3, :cond_3

    .line 530
    :cond_2
    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v2

    .local v2, "firstComplementRangeLowerBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    goto :goto_2

    .line 531
    .end local v2    # "firstComplementRangeLowerBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :cond_3
    invoke-interface {v1}, Lccsancom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 532
    invoke-interface {v1}, Lccsancom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Range;

    iget-object v2, v2, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    .line 536
    .restart local v2    # "firstComplementRangeLowerBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :goto_2
    new-instance v3, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;

    invoke-direct {v3, p0, v2, v1}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$1;-><init>(Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/PeekingIterator;)V

    return-object v3

    .line 534
    .end local v2    # "firstComplementRangeLowerBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    :cond_4
    invoke-static {}, Lccsancom/google/common/collect/Iterators;->emptyIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    return-object v2
.end method

.method public get(Ljava/lang/Object;)Lccsancom/google/common/collect/Range;
    .locals 4
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 630
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Cut;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 633
    :try_start_0
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Cut;

    .line 635
    .local v0, "cut":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lccsancom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v2

    .line 636
    .local v2, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TC;>;Lccsancom/google/common/collect/Range<TC;>;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Cut;

    invoke-virtual {v3, v0}, Lccsancom/google/common/collect/Cut;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Range;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 641
    .end local v0    # "cut":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    .end local v2    # "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TC;>;Lccsancom/google/common/collect/Range<TC;>;>;"
    :cond_0
    goto :goto_0

    .line 639
    :catch_0
    move-exception v0

    .line 640
    .local v0, "e":Ljava/lang/ClassCastException;
    return-object v1

    .line 643
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :cond_1
    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 447
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->get(Ljava/lang/Object;)Lccsancom/google/common/collect/Range;

    move-result-object p1

    return-object p1
.end method

.method public headMap(Lccsancom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "toKey":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Range;->upTo(Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lccsancom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 447
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lccsancom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->headMap(Lccsancom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 1

    .line 624
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Iterators;->size(Ljava/util/Iterator;)I

    move-result v0

    return v0
.end method

.method public subMap(Lccsancom/google/common/collect/Cut;ZLccsancom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;Z",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 482
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    .local p3, "toKey":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    nop

    .line 484
    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v0

    .line 485
    invoke-static {p4}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v1

    .line 483
    invoke-static {p1, v0, p3, v1}, Lccsancom/google/common/collect/Range;->range(Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 482
    invoke-direct {p0, v0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lccsancom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 447
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lccsancom/google/common/collect/Cut;

    check-cast p3, Lccsancom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lccsancom/google/common/collect/Cut;ZLccsancom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Lccsancom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;Z)",
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 495
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    .local p1, "fromKey":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TC;>;"
    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/google/common/collect/Range;->downTo(Ljava/lang/Comparable;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->subMap(Lccsancom/google/common/collect/Range;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 447
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound<TC;>;"
    check-cast p1, Lccsancom/google/common/collect/Cut;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->tailMap(Lccsancom/google/common/collect/Cut;Z)Ljava/util/NavigableMap;

    move-result-object p1

    return-object p1
.end method