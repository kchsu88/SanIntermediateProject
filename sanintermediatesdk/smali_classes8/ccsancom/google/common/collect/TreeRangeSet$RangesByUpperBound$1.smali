.class Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;
.super Lccsancom/google/common/collect/AbstractIterator;
.source "TreeRangeSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;->entryIterator()Ljava/util/Iterator;
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
.field final synthetic this$0:Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;

.field final synthetic val$backingItr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    .line 384
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;, "Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->this$0:Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    iput-object p2, p0, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 384
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;, "Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
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

    .line 387
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;, "Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 388
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0

    .line 390
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Range;

    .line 391
    .local v0, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TC;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->this$0:Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;

    invoke-static {v1}, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;->access$000(Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    iget-object v2, v0, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/Cut;->isLessThan(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 392
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeSet$RangesByUpperBound$1;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    return-object v1

    .line 394
    :cond_1
    iget-object v1, v0, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-static {v1, v0}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1
.end method
