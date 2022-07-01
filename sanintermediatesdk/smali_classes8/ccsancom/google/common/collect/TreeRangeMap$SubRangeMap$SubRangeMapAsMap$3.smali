.class Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;
.super Lccsancom/google/common/collect/AbstractIterator;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->entryIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIterator<",
        "Ljava/util/Map$Entry<",
        "Lccsancom/google/common/collect/Range<",
        "TK;>;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

.field final synthetic val$backingItr:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$2"    # Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    .line 660
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iput-object p2, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->val$backingItr:Ljava/util/Iterator;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractIterator;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 660
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->computeNext()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;"
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 665
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->val$backingItr:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 666
    .local v0, "entry":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getLowerBound()Lccsancom/google/common/collect/Cut;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v2, v2, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;)Lccsancom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/Cut;->compareTo(Lccsancom/google/common/collect/Cut;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 667
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->endOfData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    return-object v1

    .line 668
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lccsancom/google/common/collect/Cut;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v2, v2, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;)Lccsancom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/Cut;->compareTo(Lccsancom/google/common/collect/Cut;)I

    move-result v1

    if-lez v1, :cond_1

    .line 670
    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lccsancom/google/common/collect/Range;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    iget-object v2, v2, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v2}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;)Lccsancom/google/common/collect/Range;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    return-object v1

    .line 672
    .end local v0    # "entry":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :cond_1
    goto :goto_0

    .line 673
    :cond_2
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$3;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method
