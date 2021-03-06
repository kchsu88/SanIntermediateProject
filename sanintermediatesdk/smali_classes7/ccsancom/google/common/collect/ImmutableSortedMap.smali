.class public final Lccsancom/google/common/collect/ImmutableSortedMap;
.super Lccsancom/google/common/collect/ImmutableSortedMapFauxverideShim;
.source "ImmutableSortedMap.java"

# interfaces
.implements Ljava/util/NavigableMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableSortedMap$SerializedForm;,
        Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableSortedMapFauxverideShim<",
        "TK;TV;>;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final NATURAL_EMPTY_MAP:Lccsancom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "Ljava/lang/Comparable;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATURAL_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/Comparable;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J


# instance fields
.field private transient descendingMap:Lccsancom/google/common/collect/ImmutableSortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private final transient keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final transient valueList:Lccsancom/google/common/collect/ImmutableList;
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

    .line 62
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 64
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 66
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lccsancom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    sput-object v0, Lccsancom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 64
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TV;>;)V"
        }
    .end annotation

    .line 549
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "keySet":Lccsancom/google/common/collect/RegularImmutableSortedSet;, "Lccsancom/google/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, "valueList":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableSortedMap;)V

    .line 550
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableSortedMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/RegularImmutableSortedSet<",
            "TK;>;",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TV;>;",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 555
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "keySet":Lccsancom/google/common/collect/RegularImmutableSortedSet;, "Lccsancom/google/common/collect/RegularImmutableSortedSet<TK;>;"
    .local p2, "valueList":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<TV;>;"
    .local p3, "descendingMap":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableSortedMapFauxverideShim;-><init>()V

    .line 556
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    .line 557
    iput-object p2, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    .line 558
    iput-object p3, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->descendingMap:Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 559
    return-void
.end method

.method static synthetic access$000(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .param p0, "x0"    # Ljava/util/Comparator;
    .param p1, "x1"    # Ljava/lang/Object;
    .param p2, "x2"    # Ljava/lang/Object;

    .line 55
    invoke-static {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/common/collect/ImmutableSortedMap;)Lccsancom/google/common/collect/RegularImmutableSortedSet;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 55
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method static synthetic access$200(Lccsancom/google/common/collect/ImmutableSortedMap;)Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 55
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 207
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    sget-object v0, Lccsancom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    check-cast v0, Lccsancom/google/common/collect/Ordering;

    .line 208
    .local v0, "naturalOrder":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TK;>;"
    invoke-static {p0, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/lang/Iterable;Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 223
    .local p0, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 170
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    sget-object v0, Lccsancom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    check-cast v0, Lccsancom/google/common/collect/Ordering;

    .line 171
    .local v0, "naturalOrder":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TK;>;"
    invoke-static {p0, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Map;Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 187
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static copyOfInternal(Ljava/util/Map;Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 258
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    const/4 v0, 0x0

    .line 259
    .local v0, "sameComparator":Z
    instance-of v1, p0, Ljava/util/SortedMap;

    if-eqz v1, :cond_2

    .line 260
    move-object v1, p0

    check-cast v1, Ljava/util/SortedMap;

    .line 261
    .local v1, "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    invoke-interface {v1}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v2

    .line 262
    .local v2, "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    if-nez v2, :cond_1

    sget-object v3, Lccsancom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    if-ne p1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 263
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/Comparator;->equals(Ljava/lang/Object;)Z

    move-result v3

    :goto_0
    move v0, v3

    .line 266
    .end local v1    # "sortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<**>;"
    .end local v2    # "comparator2":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    :cond_2
    if-eqz v0, :cond_3

    instance-of v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap;

    if-eqz v1, :cond_3

    .line 270
    move-object v1, p0

    check-cast v1, Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 271
    .local v1, "kvMap":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_3

    .line 272
    return-object v1

    .line 275
    .end local v1    # "kvMap":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :cond_3
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method public static copyOfSorted(Ljava/util/SortedMap;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 238
    .local p0, "map":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;+TV;>;"
    invoke-interface {p0}, Ljava/util/SortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 239
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    if-nez v0, :cond_0

    .line 242
    sget-object v0, Lccsancom/google/common/collect/ImmutableSortedMap;->NATURAL_ORDER:Ljava/util/Comparator;

    .line 244
    :cond_0
    instance-of v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap;

    if-eqz v1, :cond_1

    .line 248
    move-object v1, p0

    check-cast v1, Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 249
    .local v1, "kvMap":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_1

    .line 250
    return-object v1

    .line 253
    .end local v1    # "kvMap":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    :cond_1
    const/4 v1, 0x1

    invoke-interface {p0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method static emptyMap(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 69
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSortedMap;->of()Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 73
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lccsancom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    .line 72
    return-object v0
.end method

.method private static fromEntries(Ljava/util/Comparator;ZLjava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p1, "sameComparator"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Map$Entry<",
            "+TK;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 290
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entries":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Map$Entry<+TK;+TV;>;>;"
    sget-object v0, Lccsancom/google/common/collect/ImmutableSortedMap;->EMPTY_ENTRY_ARRAY:[Ljava/util/Map$Entry;

    invoke-static {p2, v0}, Lccsancom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    check-cast v0, [Ljava/util/Map$Entry;

    .line 291
    .local v0, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    array-length v1, v0

    invoke-static {p0, p1, v0, v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    return-object v1
.end method

.method private static fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 11
    .param p1, "sameComparator"    # Z
    .param p3, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;Z[",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;I)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 299
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p2, "entryArray":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    const/4 v0, 0x0

    packed-switch p3, :pswitch_data_0

    .line 306
    new-array v1, p3, [Ljava/lang/Object;

    .line 307
    .local v1, "keys":[Ljava/lang/Object;
    new-array v2, p3, [Ljava/lang/Object;

    .line 308
    .local v2, "values":[Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 310
    const/4 v0, 0x0

    .local v0, "i":I
    goto :goto_0

    .line 303
    .end local v0    # "i":I
    .end local v1    # "keys":[Ljava/lang/Object;
    .end local v2    # "values":[Ljava/lang/Object;
    :pswitch_0
    aget-object v1, p2, v0

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    aget-object v0, p2, v0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 303
    invoke-static {p0, v1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 301
    :pswitch_1
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 310
    .restart local v0    # "i":I
    .restart local v1    # "keys":[Ljava/lang/Object;
    .restart local v2    # "values":[Ljava/lang/Object;
    :goto_0
    if-ge v0, p3, :cond_0

    .line 311
    aget-object v3, p2, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 312
    .local v3, "key":Ljava/lang/Object;
    aget-object v4, p2, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 313
    .local v4, "value":Ljava/lang/Object;
    invoke-static {v3, v4}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 314
    aput-object v3, v1, v0

    .line 315
    aput-object v4, v2, v0

    .line 310
    .end local v3    # "key":Ljava/lang/Object;
    .end local v4    # "value":Ljava/lang/Object;
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_0
    goto :goto_3

    .line 321
    :cond_1
    new-instance v3, Lccsancom/google/common/collect/ImmutableSortedMap$1;

    invoke-direct {v3, p0}, Lccsancom/google/common/collect/ImmutableSortedMap$1;-><init>(Ljava/util/Comparator;)V

    invoke-static {p2, v0, p3, v3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 331
    aget-object v3, p2, v0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 332
    .local v3, "prevKey":Ljava/lang/Object;, "TK;"
    aput-object v3, v1, v0

    .line 333
    aget-object v4, p2, v0

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v0

    .line 334
    aget-object v4, v1, v0

    aget-object v5, v2, v0

    invoke-static {v4, v5}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 335
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_1
    if-ge v4, p3, :cond_3

    .line 336
    aget-object v5, p2, v4

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    .line 337
    .local v5, "key":Ljava/lang/Object;, "TK;"
    aget-object v6, p2, v4

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 338
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v5, v6}, Lccsancom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 339
    aput-object v5, v1, v4

    .line 340
    aput-object v6, v2, v4

    .line 341
    nop

    .line 342
    invoke-interface {p0, v3, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v7

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    add-int/lit8 v8, v4, -0x1

    aget-object v8, p2, v8

    aget-object v9, p2, v4

    .line 341
    const-string v10, "key"

    invoke-static {v7, v10, v8, v9}, Lccsancom/google/common/collect/ImmutableSortedMap;->checkNoConflict(ZLjava/lang/String;Ljava/util/Map$Entry;Ljava/util/Map$Entry;)V

    .line 343
    move-object v3, v5

    .line 335
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 346
    .end local v3    # "prevKey":Ljava/lang/Object;, "TK;"
    .end local v4    # "i":I
    :cond_3
    :goto_3
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap;

    new-instance v3, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    .line 347
    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 348
    invoke-static {v2}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    .line 346
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSubMap(II)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 667
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 668
    return-object p0

    .line 669
    :cond_0
    if-ne p1, p2, :cond_1

    .line 670
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0

    .line 672
    :cond_1
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    .line 673
    invoke-virtual {v1, p1, p2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;->getSubSet(II)Lccsancom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v2, p1, p2}, Lccsancom/google/common/collect/ImmutableList;->subList(II)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    .line 672
    return-object v0
.end method

.method public static naturalOrder()Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 357
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 82
    sget-object v0, Lccsancom/google/common/collect/ImmutableSortedMap;->NATURAL_EMPTY_MAP:Lccsancom/google/common/collect/ImmutableSortedMap;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 87
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 106
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 118
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 130
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/util/Map$Entry;

    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6, p7}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;Ljava/lang/Comparable;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">(TK;TV;TK;TV;TK;TV;TK;TV;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    .local p0, "k1":Ljava/lang/Comparable;, "TK;"
    .local p1, "v1":Ljava/lang/Object;, "TV;"
    .local p2, "k2":Ljava/lang/Comparable;, "TK;"
    .local p3, "v2":Ljava/lang/Object;, "TV;"
    .local p4, "k3":Ljava/lang/Comparable;, "TK;"
    .local p5, "v3":Ljava/lang/Object;, "TV;"
    .local p6, "k4":Ljava/lang/Comparable;, "TK;"
    .local p7, "v4":Ljava/lang/Object;, "TV;"
    .local p8, "k5":Ljava/lang/Comparable;, "TK;"
    .local p9, "v5":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/util/Map$Entry;

    .line 143
    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2, p3}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p4, p5}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {p6, p7}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {p8, p9}, Lccsancom/google/common/collect/ImmutableSortedMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 142
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->ofEntries([Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method private static of(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;TK;TV;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 92
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    .local p1, "k1":Ljava/lang/Object;, "TK;"
    .local p2, "v1":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap;

    new-instance v1, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    .line 93
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Comparator;

    invoke-direct {v1, v2, v3}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 94
    invoke-static {p2}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;)V

    .line 92
    return-object v0
.end method

.method private static varargs ofEntries([Ljava/util/Map$Entry;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    .local p0, "entries":[Ljava/util/Map$Entry;, "[Ljava/util/Map$Entry<TK;TV;>;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {v0, v2, p0, v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->fromEntries(Ljava/util/Comparator;Z[Ljava/util/Map$Entry;I)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TK;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 369
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TK;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Lccsancom/google/common/collect/ImmutableSortedMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "*>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableSortedMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 377
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;

    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableSortedMap$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 800
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public ceilingKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 805
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TK;>;"
        }
    .end annotation

    .line 653
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method createEntrySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 618
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedMap$1EntrySet;-><init>(Lccsancom/google/common/collect/ImmutableSortedMap;)V

    :goto_0
    return-object v0
.end method

.method createKeySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 629
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method createValues()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public descendingKeySet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 878
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->descendingKeySet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingMap()Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 858
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->descendingMap:Lccsancom/google/common/collect/ImmutableSortedMap;

    .line 859
    .local v0, "result":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    if-nez v0, :cond_1

    .line 860
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->emptyMap(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v1

    move-object v0, v1

    return-object v1

    .line 863
    :cond_0
    new-instance v1, Lccsancom/google/common/collect/ImmutableSortedMap;

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    .line 865
    invoke-virtual {v2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v3}, Lccsancom/google/common/collect/ImmutableList;->reverse()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v3

    invoke-direct {v1, v2, v3, p0}, Lccsancom/google/common/collect/ImmutableSortedMap;-><init>(Lccsancom/google/common/collect/RegularImmutableSortedSet;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableSortedMap;)V

    move-object v0, v1

    .line 863
    return-object v1

    .line 868
    :cond_1
    return-object v0
.end method

.method public bridge synthetic descendingMap()Ljava/util/NavigableMap;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->descendingMap()Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 580
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableSortedMapFauxverideShim;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 820
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public firstKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 658
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 790
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public floorKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 795
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->floorEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 568
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/RegularImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 569
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public headMap(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 688
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public headMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 704
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "toKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;->headIndex(Ljava/lang/Object;Z)I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->getSubMap(II)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 810
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->firstEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public higherKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 815
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->higherEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 574
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/RegularImmutableSortedSet;->isPartialView()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->isPartialView()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic keySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public keySet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 825
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    :goto_0
    return-object v0
.end method

.method public lastKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 663
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 780
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->lastEntry()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public lowerKey(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TK;"
        }
    .end annotation

    .line 785
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->lowerEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Maps;->keyOrNull(Ljava/util/Map$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public navigableKeySet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TK;>;"
        }
    .end annotation

    .line 873
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic navigableKeySet()Ljava/util/NavigableSet;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->navigableKeySet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirstEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 838
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLastEntry()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 563
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->size()I

    move-result v0

    return v0
.end method

.method public subMap(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TK;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 719
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p2, "toKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;ZTK;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 738
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    .local p3, "toKey":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    nop

    .line 741
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 740
    :goto_0
    const-string v1, "expected fromKey <= toKey but %s > %s"

    invoke-static {v0, v1, p1, p3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p0, p3, p4}, Lccsancom/google/common/collect/ImmutableSortedMap;->headMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public tailMap(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 759
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public tailMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;
    .locals 2
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 775
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    .local p1, "fromKey":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->keySet:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;->tailIndex(Ljava/lang/Object;Z)I

    move-result v0

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->size()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lccsancom/google/common/collect/ImmutableSortedMap;->getSubMap(II)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;Z)Ljava/util/NavigableMap;
    .locals 0

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;
    .locals 0

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedMap;->tailMap(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedMap;

    move-result-object p1

    return-object p1
.end method

.method public values()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 638
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedMap;->valueList:Lccsancom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedMap;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 1

    .line 906
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedMap;, "Lccsancom/google/common/collect/ImmutableSortedMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedMap$SerializedForm;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedMap$SerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableSortedMap;)V

    return-object v0
.end method
