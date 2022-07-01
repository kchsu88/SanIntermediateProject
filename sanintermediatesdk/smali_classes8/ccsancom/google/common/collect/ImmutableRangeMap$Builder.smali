.class public final Lccsancom/google/common/collect/ImmutableRangeMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 88
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$Builder;, "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-static {}, Lccsancom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    .line 90
    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/ImmutableRangeMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 122
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$Builder;, "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-static {}, Lccsancom/google/common/collect/Range;->rangeLexOrdering()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Ordering;->onKeys()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 123
    new-instance v0, Lccsancom/google/common/collect/ImmutableList$Builder;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 124
    .local v0, "rangesBuilder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<Lccsancom/google/common/collect/Range<TK;>;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableList$Builder;

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lccsancom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 125
    .local v1, "valuesBuilder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<TV;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 126
    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/Range;

    .line 127
    .local v3, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    if-lez v2, :cond_1

    .line 128
    iget-object v4, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/collect/Range;

    .line 129
    .local v4, "prevRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-virtual {v3, v4}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 130
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Overlapping ranges: range "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " overlaps with entry "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 134
    .end local v4    # "prevRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    :cond_1
    :goto_1
    invoke-virtual {v0, v3}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 135
    iget-object v4, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 125
    .end local v3    # "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 137
    .end local v2    # "i":I
    :cond_2
    new-instance v2, Lccsancom/google/common/collect/ImmutableRangeMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lccsancom/google/common/collect/ImmutableRangeMap;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;)V

    return-object v2
.end method

.method public put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)",
            "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$Builder;, "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Range must not be empty, but was %s"

    invoke-static {v0, v1, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 102
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->entries:Ljava/util/List;

    invoke-static {p1, p2}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object p0
.end method

.method public putAll(Lccsancom/google/common/collect/RangeMap;)Lccsancom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$Builder;, "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<TK;TV;>;"
    .local p1, "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<TK;+TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 110
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Range;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;->put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableRangeMap$Builder;

    .line 111
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;+TV;>;"
    goto :goto_0

    .line 112
    :cond_0
    return-object p0
.end method
