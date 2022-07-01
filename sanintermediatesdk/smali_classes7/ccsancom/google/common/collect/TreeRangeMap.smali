.class public final Lccsancom/google/common/collect/TreeRangeMap;
.super Ljava/lang/Object;
.source "TreeRangeMap.java"

# interfaces
.implements Lccsancom/google/common/collect/RangeMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;,
        Lccsancom/google/common/collect/TreeRangeMap$AsMapOfRanges;,
        Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/RangeMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_SUB_RANGE_MAP:Lccsancom/google/common/collect/RangeMap;


# instance fields
.field private final entriesByLowerBound:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;",
            "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 305
    new-instance v0, Lccsancom/google/common/collect/TreeRangeMap$1;

    invoke-direct {v0}, Lccsancom/google/common/collect/TreeRangeMap$1;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/TreeRangeMap;->EMPTY_SUB_RANGE_MAP:Lccsancom/google/common/collect/RangeMap;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 61
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-static {}, Lccsancom/google/common/collect/Maps;->newTreeMap()Ljava/util/TreeMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    .line 63
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/collect/TreeRangeMap;)Ljava/util/NavigableMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/TreeRangeMap;

    .line 53
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/common/collect/TreeRangeMap;Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/Range;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/TreeRangeMap;
    .param p1, "x1"    # Lccsancom/google/common/collect/Range;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 53
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/TreeRangeMap;->coalescedRange(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/common/collect/TreeRangeMap;)Lccsancom/google/common/collect/RangeMap;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/TreeRangeMap;

    .line 53
    invoke-direct {p0}, Lccsancom/google/common/collect/TreeRangeMap;->emptySubRangeMap()Lccsancom/google/common/collect/RangeMap;

    move-result-object v0

    return-object v0
.end method

.method private static coalesce(Lccsancom/google/common/collect/Range;Ljava/lang/Object;Ljava/util/Map$Entry;)Lccsancom/google/common/collect/Range;
    .locals 1
    .param p2    # Ljava/util/Map$Entry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;",
            "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<",
            "TK;TV;>;>;)",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 159
    .local p0, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz p2, :cond_0

    .line 160
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/Range;->span(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    return-object v0

    .line 164
    :cond_0
    return-object p0
.end method

.method private coalescedRange(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 144
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    move-object v0, p1

    .line 145
    .local v0, "coalescedRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    .line 146
    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 147
    .local v1, "lowerEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    invoke-static {v0, p2, v1}, Lccsancom/google/common/collect/TreeRangeMap;->coalesce(Lccsancom/google/common/collect/Range;Ljava/lang/Object;Ljava/util/Map$Entry;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 149
    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v3, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    .line 150
    invoke-interface {v2, v3}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v2

    .line 151
    .local v2, "higherEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    invoke-static {v0, p2, v2}, Lccsancom/google/common/collect/TreeRangeMap;->coalesce(Lccsancom/google/common/collect/Range;Ljava/lang/Object;Ljava/util/Map$Entry;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 153
    return-object v0
.end method

.method public static create()Lccsancom/google/common/collect/TreeRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/TreeRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 58
    new-instance v0, Lccsancom/google/common/collect/TreeRangeMap;

    invoke-direct {v0}, Lccsancom/google/common/collect/TreeRangeMap;-><init>()V

    return-object v0
.end method

.method private emptySubRangeMap()Lccsancom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 302
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/collect/TreeRangeMap;->EMPTY_SUB_RANGE_MAP:Lccsancom/google/common/collect/RangeMap;

    return-object v0
.end method

.method private putRangeMapEntry(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;",
            "Lccsancom/google/common/collect/Cut<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "lowerBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TK;>;"
    .local p2, "upperBound":Lccsancom/google/common/collect/Cut;, "Lccsancom/google/common/collect/Cut<TK;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    new-instance v1, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-direct {v1, p1, p2, p3}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;Ljava/lang/Object;)V

    invoke-interface {v0, p1, v1}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method


# virtual methods
.method public asDescendingMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 251
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/TreeRangeMap$AsMapOfRanges;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->descendingMap()Ljava/util/NavigableMap;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/collect/TreeRangeMap$AsMapOfRanges;-><init>(Lccsancom/google/common/collect/TreeRangeMap;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public asMapOfRanges()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/TreeRangeMap$AsMapOfRanges;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/collect/TreeRangeMap$AsMapOfRanges;-><init>(Lccsancom/google/common/collect/TreeRangeMap;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 176
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->clear()V

    .line 177
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 697
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 698
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/RangeMap;

    .line 699
    .local v0, "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<**>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lccsancom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 701
    .end local v0    # "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 105
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/TreeRangeMap;->getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 106
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 112
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    .line 113
    invoke-static {p1}, Lccsancom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Cut;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 114
    .local v0, "mapEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v1, p1}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    return-object v1

    .line 117
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 706
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeRangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 124
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/TreeRangeMap;->remove(Lccsancom/google/common/collect/Range;)V

    .line 127
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    new-instance v2, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-direct {v2, p1, p2}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;-><init>(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/NavigableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    :cond_0
    return-void
.end method

.method public putAll(Lccsancom/google/common/collect/RangeMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<TK;TV;>;"
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

    .line 170
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Range;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lccsancom/google/common/collect/TreeRangeMap;->put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 171
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;TV;>;"
    goto :goto_0

    .line 172
    :cond_0
    return-void
.end method

.method public putCoalescing(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .line 133
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/TreeRangeMap;->put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 135
    return-void

    .line 138
    :cond_0
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/TreeRangeMap;->coalescedRange(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/Range;

    move-result-object v0

    .line 139
    .local v0, "coalescedRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-virtual {p0, v0, p2}, Lccsancom/google/common/collect/TreeRangeMap;->put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public remove(Lccsancom/google/common/collect/Range;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .line 196
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "rangeToRemove":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v1, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    .line 205
    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    .line 206
    .local v0, "mapEntryBelowToTruncate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v0, :cond_2

    .line 208
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 209
    .local v1, "rangeMapEntry":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    invoke-virtual {v1}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lccsancom/google/common/collect/Cut;

    move-result-object v2

    iget-object v3, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/Cut;->compareTo(Lccsancom/google/common/collect/Cut;)I

    move-result v2

    if-lez v2, :cond_2

    .line 211
    invoke-virtual {v1}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lccsancom/google/common/collect/Cut;

    move-result-object v2

    iget-object v3, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-virtual {v2, v3}, Lccsancom/google/common/collect/Cut;->compareTo(Lccsancom/google/common/collect/Cut;)I

    move-result v2

    if-lez v2, :cond_1

    .line 214
    iget-object v2, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    .line 216
    invoke-virtual {v1}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lccsancom/google/common/collect/Cut;

    move-result-object v3

    .line 217
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v4}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 214
    invoke-direct {p0, v2, v3, v4}, Lccsancom/google/common/collect/TreeRangeMap;->putRangeMapEntry(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;Ljava/lang/Object;)V

    .line 220
    :cond_1
    nop

    .line 221
    invoke-virtual {v1}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getLowerBound()Lccsancom/google/common/collect/Cut;

    move-result-object v2

    iget-object v3, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v4}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 220
    invoke-direct {p0, v2, v3, v4}, Lccsancom/google/common/collect/TreeRangeMap;->putRangeMapEntry(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;Ljava/lang/Object;)V

    .line 227
    .end local v1    # "rangeMapEntry":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :cond_2
    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v2, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    .line 228
    invoke-interface {v1, v2}, Ljava/util/NavigableMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    .line 229
    .local v1, "mapEntryAboveToTruncate":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v1, :cond_3

    .line 231
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    .line 232
    .local v2, "rangeMapEntry":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    invoke-virtual {v2}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lccsancom/google/common/collect/Cut;

    move-result-object v3

    iget-object v4, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-virtual {v3, v4}, Lccsancom/google/common/collect/Cut;->compareTo(Lccsancom/google/common/collect/Cut;)I

    move-result v3

    if-lez v3, :cond_3

    .line 235
    iget-object v3, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    .line 237
    invoke-virtual {v2}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getUpperBound()Lccsancom/google/common/collect/Cut;

    move-result-object v4

    .line 238
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v5}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 235
    invoke-direct {p0, v3, v4, v5}, Lccsancom/google/common/collect/TreeRangeMap;->putRangeMapEntry(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;Ljava/lang/Object;)V

    .line 241
    .end local v2    # "rangeMapEntry":Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;, "Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;"
    :cond_3
    iget-object v2, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    iget-object v3, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    iget-object v4, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-interface {v2, v3, v4}, Ljava/util/NavigableMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/SortedMap;->clear()V

    .line 242
    return-void
.end method

.method public span()Lccsancom/google/common/collect/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    .line 182
    .local v0, "firstEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v1}, Ljava/util/NavigableMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v1

    .line 183
    .local v1, "lastEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Cut<TK;>;Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    .line 186
    nop

    .line 187
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v2}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lccsancom/google/common/collect/Range;

    move-result-object v2

    iget-object v2, v2, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;

    invoke-virtual {v3}, Lccsancom/google/common/collect/TreeRangeMap$RangeMapEntry;->getKey()Lccsancom/google/common/collect/Range;

    move-result-object v3

    iget-object v3, v3, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    .line 186
    invoke-static {v2, v3}, Lccsancom/google/common/collect/Range;->create(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;)Lccsancom/google/common/collect/Range;

    move-result-object v2

    return-object v2

    .line 184
    :cond_0
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2
.end method

.method public subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/RangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 293
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    .local p1, "subRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-static {}, Lccsancom/google/common/collect/Range;->all()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    return-object p0

    .line 296
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap;-><init>(Lccsancom/google/common/collect/TreeRangeMap;Lccsancom/google/common/collect/Range;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 711
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap;, "Lccsancom/google/common/collect/TreeRangeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap;->entriesByLowerBound:Ljava/util/NavigableMap;

    invoke-interface {v0}, Ljava/util/NavigableMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
