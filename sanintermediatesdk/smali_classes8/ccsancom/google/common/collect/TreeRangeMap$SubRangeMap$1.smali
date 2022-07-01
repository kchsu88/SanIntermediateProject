.class Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;
.super Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;->asDescendingMapOfRanges()Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TreeRangeMap<",
        "TK;TV;>.SubRangeMap.SubRangeMapAsMap;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;)V
    .locals 0
    .param p1, "this$1"    # Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 486
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;-><init>(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;)V

    return-void
.end method


# virtual methods
.method entryIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation

    .line 490
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-static {v0}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    invoke-static {}, Lccsancom/google/common/collect/Iterators;->emptyIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0

    .line 493
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    iget-object v0, v0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;->this$0:Lccsancom/google/common/collect/TreeRangeMap;

    .line 494
    invoke-static {v0}, Lccsancom/google/common/collect/TreeRangeMap;->access$000(Lccsancom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;->this$1:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    .line 495
    invoke-static {v1}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;->access$300(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    iget-object v1, v1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;

    move-result-object v0

    .line 496
    invoke-interface {v0}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v0

    .line 497
    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 498
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 499
    .local v0, "backingItr":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    new-instance v1, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1$1;-><init>(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$1;Ljava/util/Iterator;)V

    return-object v1
.end method
