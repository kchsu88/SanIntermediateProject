.class public Lccsancom/google/common/collect/ImmutableRangeMap;
.super Ljava/lang/Object;
.source "ImmutableRangeMap.java"

# interfaces
.implements Lccsancom/google/common/collect/RangeMap;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;,
        Lccsancom/google/common/collect/ImmutableRangeMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "*>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/RangeMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final EMPTY:Lccsancom/google/common/collect/ImmutableRangeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableRangeMap<",
            "Ljava/lang/Comparable<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private final transient ranges:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;>;"
        }
    .end annotation
.end field

.field private final transient values:Lccsancom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableList<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 45
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeMap;

    .line 46
    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableRangeMap;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;)V

    sput-object v0, Lccsancom/google/common/collect/ImmutableRangeMap;->EMPTY:Lccsancom/google/common/collect/ImmutableRangeMap;

    .line 45
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableList<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;>;",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "ranges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TK;>;>;"
    .local p2, "values":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 146
    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->values:Lccsancom/google/common/collect/ImmutableList;

    .line 147
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/collect/ImmutableRangeMap;)Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/ImmutableRangeMap;

    .line 43
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public static builder()Lccsancom/google/common/collect/ImmutableRangeMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableRangeMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableRangeMap$Builder;-><init>()V

    return-object v0
.end method

.method public static copyOf(Lccsancom/google/common/collect/RangeMap;)Lccsancom/google/common/collect/ImmutableRangeMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 62
    .local p0, "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<TK;+TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/ImmutableRangeMap;

    return-object v0

    .line 65
    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v0

    .line 66
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Lccsancom/google/common/collect/Range<TK;>;+TV;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lccsancom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 67
    .local v1, "rangesBuilder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<Lccsancom/google/common/collect/Range<TK;>;>;"
    new-instance v2, Lccsancom/google/common/collect/ImmutableList$Builder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Lccsancom/google/common/collect/ImmutableList$Builder;-><init>(I)V

    .line 68
    .local v2, "valuesBuilder":Lccsancom/google/common/collect/ImmutableList$Builder;, "Lccsancom/google/common/collect/ImmutableList$Builder<TV;>;"
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 69
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;+TV;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 70
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lccsancom/google/common/collect/ImmutableList$Builder;->add(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList$Builder;

    .line 71
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lccsancom/google/common/collect/Range<TK;>;+TV;>;"
    goto :goto_0

    .line 72
    :cond_1
    new-instance v3, Lccsancom/google/common/collect/ImmutableRangeMap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableList$Builder;->build()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lccsancom/google/common/collect/ImmutableRangeMap;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;)V

    return-object v3
.end method

.method public static of()Lccsancom/google/common/collect/ImmutableRangeMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 51
    sget-object v0, Lccsancom/google/common/collect/ImmutableRangeMap;->EMPTY:Lccsancom/google/common/collect/ImmutableRangeMap;

    return-object v0
.end method

.method public static of(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableRangeMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)",
            "Lccsancom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 56
    .local p0, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeMap;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableRangeMap;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;)V

    return-object v0
.end method


# virtual methods
.method public asDescendingMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 267
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 270
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 271
    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->reverse()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lccsancom/google/common/collect/Range;->rangeLexOrdering()Lccsancom/google/common/collect/Ordering;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 272
    .local v0, "rangeSet":Lccsancom/google/common/collect/RegularImmutableSortedSet;, "Lccsancom/google/common/collect/RegularImmutableSortedSet<Lccsancom/google/common/collect/Range<TK;>;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->values:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lccsancom/google/common/collect/ImmutableList;->reverse()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public asMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;>;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 260
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 261
    invoke-static {}, Lccsancom/google/common/collect/Range;->rangeLexOrdering()Lccsancom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 262
    .local v0, "rangeSet":Lccsancom/google/common/collect/RegularImmutableSortedSet;, "Lccsancom/google/common/collect/RegularImmutableSortedSet<Lccsancom/google/common/collect/Range<TK;>;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->values:Lccsancom/google/common/collect/ImmutableList;

    invoke-direct {v1, v0, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    return-object v1
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 240
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 343
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/RangeMap;

    if-eqz v0, :cond_0

    .line 344
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/RangeMap;

    .line 345
    .local v0, "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<**>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {v0}, Lccsancom/google/common/collect/RangeMap;->asMapOfRanges()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 347
    .end local v0    # "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Comparable;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 152
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 155
    invoke-static {}, Lccsancom/google/common/collect/Range;->lowerBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v1

    .line 156
    invoke-static {p1}, Lccsancom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Cut;

    move-result-object v2

    sget-object v3, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 153
    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Comparable;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 159
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 160
    return-object v1

    .line 162
    :cond_0
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Range;

    .line 163
    .local v2, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-virtual {v2, p1}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->values:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public getEntry(Ljava/lang/Comparable;)Ljava/util/Map$Entry;
    .locals 5
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

    .line 170
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Comparable;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 173
    invoke-static {}, Lccsancom/google/common/collect/Range;->lowerBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v1

    .line 174
    invoke-static {p1}, Lccsancom/google/common/collect/Cut;->belowValue(Ljava/lang/Comparable;)Lccsancom/google/common/collect/Cut;

    move-result-object v2

    sget-object v3, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_LOWER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 171
    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Comparable;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 177
    .local v0, "index":I
    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 178
    return-object v1

    .line 180
    :cond_0
    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Range;

    .line 181
    .local v2, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-virtual {v2, p1}, Lccsancom/google/common/collect/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->values:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public hashCode()I
    .locals 1

    .line 338
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public put(Lccsancom/google/common/collect/Range;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;TV;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 204
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public putAll(Lccsancom/google/common/collect/RangeMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RangeMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 228
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "rangeMap":Lccsancom/google/common/collect/RangeMap;, "Lccsancom/google/common/collect/RangeMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 216
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Lccsancom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 252
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
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

    .line 187
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Range;

    .line 191
    .local v0, "firstRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Range;

    .line 192
    .local v1, "lastRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    iget-object v2, v0, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    iget-object v3, v1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Range;->create(Lccsancom/google/common/collect/Cut;Lccsancom/google/common/collect/Cut;)Lccsancom/google/common/collect/Range;

    move-result-object v2

    return-object v2

    .line 188
    .end local v0    # "firstRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    .end local v1    # "lastRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeMap;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 277
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Range;

    invoke-virtual {v0}, Lccsancom/google/common/collect/Range;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeMap;->of()Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0

    .line 279
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->span()Lccsancom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/google/common/collect/Range;->encloses(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 282
    :cond_1
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 285
    invoke-static {}, Lccsancom/google/common/collect/Range;->upperBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v1

    iget-object v2, p1, Lccsancom/google/common/collect/Range;->lowerBound:Lccsancom/google/common/collect/Cut;

    sget-object v3, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->FIRST_AFTER:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 283
    invoke-static {v0, v1, v2, v3, v4}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Comparable;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v0

    .line 289
    .local v0, "lowerIndex":I
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->ranges:Lccsancom/google/common/collect/ImmutableList;

    .line 292
    invoke-static {}, Lccsancom/google/common/collect/Range;->lowerBoundFn()Lccsancom/google/common/base/Function;

    move-result-object v2

    iget-object v3, p1, Lccsancom/google/common/collect/Range;->upperBound:Lccsancom/google/common/collect/Cut;

    sget-object v4, Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;->ANY_PRESENT:Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;

    sget-object v5, Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;->NEXT_HIGHER:Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;

    .line 290
    invoke-static {v1, v2, v3, v4, v5}, Lccsancom/google/common/collect/SortedLists;->binarySearch(Ljava/util/List;Lccsancom/google/common/base/Function;Ljava/lang/Comparable;Lccsancom/google/common/collect/SortedLists$KeyPresentBehavior;Lccsancom/google/common/collect/SortedLists$KeyAbsentBehavior;)I

    move-result v1

    .line 296
    .local v1, "upperIndex":I
    if-lt v0, v1, :cond_2

    .line 297
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeMap;->of()Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object v2

    return-object v2

    .line 299
    :cond_2
    move v2, v0

    .line 300
    .local v2, "off":I
    sub-int v3, v1, v0

    .line 301
    .local v3, "len":I
    new-instance v6, Lccsancom/google/common/collect/ImmutableRangeMap$1;

    invoke-direct {v6, p0, v3, v2, p1}, Lccsancom/google/common/collect/ImmutableRangeMap$1;-><init>(Lccsancom/google/common/collect/ImmutableRangeMap;IILccsancom/google/common/collect/Range;)V

    .line 323
    .local v6, "subRanges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TK;>;>;"
    move-object v9, p0

    .line 324
    .local v9, "outer":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v10, Lccsancom/google/common/collect/ImmutableRangeMap$2;

    iget-object v4, p0, Lccsancom/google/common/collect/ImmutableRangeMap;->values:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v4, v0, v1}, Lccsancom/google/common/collect/ImmutableList;->subList(II)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v7

    move-object v4, v10

    move-object v5, p0

    move-object v8, p1

    invoke-direct/range {v4 .. v9}, Lccsancom/google/common/collect/ImmutableRangeMap$2;-><init>(Lccsancom/google/common/collect/ImmutableRangeMap;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/ImmutableRangeMap;)V

    return-object v10

    .line 280
    .end local v0    # "lowerIndex":I
    .end local v1    # "upperIndex":I
    .end local v2    # "off":I
    .end local v3    # "len":I
    .end local v6    # "subRanges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TK;>;>;"
    .end local v9    # "outer":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    :cond_3
    :goto_0
    return-object p0
.end method

.method public bridge synthetic subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/RangeMap;
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 352
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 387
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap;, "Lccsancom/google/common/collect/ImmutableRangeMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeMap$SerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method
