.class Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;
.super Lccsancom/google/common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->descendingEntryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lccsancom/google/common/collect/Cut<",
        "TC;>;",
        "Lccsancom/google/common/collect/Range<",
        "TC;>;>;>;"
    }
.end annotation


# instance fields
.field nextComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

.field final synthetic val$firstComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

.field final synthetic val$positiveItr:Lccsancom/google/common/collect/PeekingIterator;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/PeekingIterator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    .line 597
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->this$0:Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    iput-object p2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->val$firstComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

    iput-object p3, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->val$positiveItr:Lccsancom/google/common/collect/PeekingIterator;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractIterator;-><init>()V

    .line 598
    iput-object p2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 597
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Cut<",
            "TC;>;",
            "Lccsancom/google/common/collect/Range<",
            "TC;>;>;"
        }
    .end annotation

    .line 602
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;, "Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 604
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->val$positiveItr:Lccsancom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lccsancom/google/common/collect/PeekingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 605
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->val$positiveItr:Lccsancom/google/common/collect/PeekingIterator;

    invoke-interface {v0}, Lccsancom/google/common/collect/PeekingIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Range;

    .line 606
    .local v0, "positiveRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v1, v0, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

    .line 607
    invoke-static {v1, v2}, Lccsancom/google/common/collect/Range;->create(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    .line 608
    .local v1, "negativeRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v2, v0, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    iput-object v2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

    .line 609
    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->this$0:Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    invoke-static {v2}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->access$100(Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lccsancom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    iget-object v3, v1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 610
    iget-object v2, v1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    invoke-static {v2, v1}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    return-object v2

    .line 609
    .end local v0    # "positiveRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    .end local v1    # "negativeRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    :cond_1
    goto :goto_0

    .line 612
    :cond_2
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->this$0:Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;

    invoke-static {v0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;->access$100(Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    iget-object v0, v0, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 613
    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Range;->create(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 614
    .local v0, "negativeRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->nextComplementRangeUpperBound:Lccsancom/google/common/collect/Cut;

    .line 615
    invoke-static {}, Lccsancom/google/common/collect/Cut;->belowAll()Lccsancom/google/common/collect/Cut;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1

    .line 612
    .end local v0    # "negativeRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    :cond_3
    :goto_0
    nop

    .line 617
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeSet$ComplementRangesByLowerBound$2;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
