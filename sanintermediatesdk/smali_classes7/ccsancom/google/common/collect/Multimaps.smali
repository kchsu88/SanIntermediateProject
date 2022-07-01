.class public final Lccsancom/google/common/collect/Multimaps;
.super Ljava/lang/Object;
.source "Multimaps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/Multimaps$AsMap;,
        Lccsancom/google/common/collect/Multimaps$Entries;,
        Lccsancom/google/common/collect/Multimaps$Keys;,
        Lccsancom/google/common/collect/Multimaps$TransformedEntriesListMultimap;,
        Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;,
        Lccsancom/google/common/collect/Multimaps$MapMultimap;,
        Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;,
        Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap;,
        Lccsancom/google/common/collect/Multimaps$UnmodifiableListMultimap;,
        Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;,
        Lccsancom/google/common/collect/Multimaps$CustomSortedSetMultimap;,
        Lccsancom/google/common/collect/Multimaps$CustomSetMultimap;,
        Lccsancom/google/common/collect/Multimaps$CustomListMultimap;,
        Lccsancom/google/common/collect/Multimaps$CustomMultimap;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 68
    invoke-static {p0}, Lccsancom/google/common/collect/Multimaps;->unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 68
    invoke-static {p0}, Lccsancom/google/common/collect/Multimaps;->unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lccsancom/google/common/collect/ListMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TV;>;>;"
        }
    .end annotation

    .line 923
    .local p0, "multimap":Lccsancom/google/common/collect/ListMultimap;, "Lccsancom/google/common/collect/ListMultimap<TK;TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/collect/ListMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lccsancom/google/common/collect/Multimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 960
    .local p0, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lccsancom/google/common/collect/SetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Set<",
            "TV;>;>;"
        }
    .end annotation

    .line 936
    .local p0, "multimap":Lccsancom/google/common/collect/SetMultimap;, "Lccsancom/google/common/collect/SetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/collect/SetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static asMap(Lccsancom/google/common/collect/SortedSetMultimap;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/SortedSet<",
            "TV;>;>;"
        }
    .end annotation

    .line 949
    .local p0, "multimap":Lccsancom/google/common/collect/SortedSetMultimap;, "Lccsancom/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/collect/SortedSetMultimap;->asMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static equalsImpl(Lccsancom/google/common/collect/Multimap;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Multimap<",
            "**>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 2068
    .local p0, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<**>;"
    if-ne p1, p0, :cond_0

    .line 2069
    const/4 v0, 0x1

    return v0

    .line 2071
    :cond_0
    instance-of v0, p1, Lccsancom/google/common/collect/Multimap;

    if-eqz v0, :cond_1

    .line 2072
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Multimap;

    .line 2073
    .local v0, "that":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<**>;"
    invoke-interface {p0}, Lccsancom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0}, Lccsancom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 2075
    .end local v0    # "that":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<**>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static filterEntries(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1999
    .local p0, "unfiltered":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "entryPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2000
    instance-of v0, p0, Lccsancom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 2001
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/SetMultimap;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Multimaps;->filterEntries(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0

    .line 2003
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/collect/FilteredMultimap;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FilteredMultimap;

    .line 2004
    invoke-static {v0, p1}, Lccsancom/google/common/collect/Multimaps;->filterFiltered(Lccsancom/google/common/collect/FilteredMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Lccsancom/google/common/collect/FilteredEntryMultimap;

    .line 2005
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Multimap;

    invoke-direct {v0, v1, p1}, Lccsancom/google/common/collect/FilteredEntryMultimap;-><init>(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)V

    .line 2003
    :goto_0
    return-object v0
.end method

.method public static filterEntries(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2035
    .local p0, "unfiltered":Lccsancom/google/common/collect/SetMultimap;, "Lccsancom/google/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2036
    instance-of v0, p0, Lccsancom/google/common/collect/FilteredSetMultimap;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FilteredSetMultimap;

    .line 2037
    invoke-static {v0, p1}, Lccsancom/google/common/collect/Multimaps;->filterFiltered(Lccsancom/google/common/collect/FilteredSetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/collect/FilteredEntrySetMultimap;

    .line 2038
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/SetMultimap;

    invoke-direct {v0, v1, p1}, Lccsancom/google/common/collect/FilteredEntrySetMultimap;-><init>(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)V

    .line 2036
    :goto_0
    return-object v0
.end method

.method private static filterFiltered(Lccsancom/google/common/collect/FilteredMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Multimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/FilteredMultimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2049
    .local p0, "multimap":Lccsancom/google/common/collect/FilteredMultimap;, "Lccsancom/google/common/collect/FilteredMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    nop

    .line 2050
    invoke-interface {p0}, Lccsancom/google/common/collect/FilteredMultimap;->entryPredicate()Lccsancom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v0

    .line 2051
    .local v0, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lccsancom/google/common/collect/FilteredEntryMultimap;

    invoke-interface {p0}, Lccsancom/google/common/collect/FilteredMultimap;->unfiltered()Lccsancom/google/common/collect/Multimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lccsancom/google/common/collect/FilteredEntryMultimap;-><init>(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)V

    return-object v1
.end method

.method private static filterFiltered(Lccsancom/google/common/collect/FilteredSetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/FilteredSetMultimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2062
    .local p0, "multimap":Lccsancom/google/common/collect/FilteredSetMultimap;, "Lccsancom/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    .local p1, "entryPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    nop

    .line 2063
    invoke-interface {p0}, Lccsancom/google/common/collect/FilteredSetMultimap;->entryPredicate()Lccsancom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v0

    .line 2064
    .local v0, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lccsancom/google/common/collect/FilteredEntrySetMultimap;

    invoke-interface {p0}, Lccsancom/google/common/collect/FilteredSetMultimap;->unfiltered()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lccsancom/google/common/collect/FilteredEntrySetMultimap;-><init>(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)V

    return-object v1
.end method

.method public static filterKeys(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/ListMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1899
    .local p0, "unfiltered":Lccsancom/google/common/collect/ListMultimap;, "Lccsancom/google/common/collect/ListMultimap<TK;TV;>;"
    .local p1, "keyPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TK;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/FilteredKeyListMultimap;

    if-eqz v0, :cond_0

    .line 1900
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FilteredKeyListMultimap;

    .line 1901
    .local v0, "prev":Lccsancom/google/common/collect/FilteredKeyListMultimap;, "Lccsancom/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    new-instance v1, Lccsancom/google/common/collect/FilteredKeyListMultimap;

    .line 1902
    invoke-virtual {v0}, Lccsancom/google/common/collect/FilteredKeyListMultimap;->unfiltered()Lccsancom/google/common/collect/ListMultimap;

    move-result-object v2

    iget-object v3, v0, Lccsancom/google/common/collect/FilteredKeyListMultimap;->keyPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v3, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/google/common/collect/FilteredKeyListMultimap;-><init>(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/base/Predicate;)V

    .line 1901
    return-object v1

    .line 1904
    .end local v0    # "prev":Lccsancom/google/common/collect/FilteredKeyListMultimap;, "Lccsancom/google/common/collect/FilteredKeyListMultimap<TK;TV;>;"
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/FilteredKeyListMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/FilteredKeyListMultimap;-><init>(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Multimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1813
    .local p0, "unfiltered":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "keyPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TK;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/SetMultimap;

    if-eqz v0, :cond_0

    .line 1814
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/SetMultimap;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Multimaps;->filterKeys(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0

    .line 1815
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/collect/ListMultimap;

    if-eqz v0, :cond_1

    .line 1816
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/ListMultimap;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Multimaps;->filterKeys(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0

    .line 1817
    :cond_1
    instance-of v0, p0, Lccsancom/google/common/collect/FilteredKeyMultimap;

    if-eqz v0, :cond_2

    .line 1818
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FilteredKeyMultimap;

    .line 1819
    .local v0, "prev":Lccsancom/google/common/collect/FilteredKeyMultimap;, "Lccsancom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    new-instance v1, Lccsancom/google/common/collect/FilteredKeyMultimap;

    iget-object v2, v0, Lccsancom/google/common/collect/FilteredKeyMultimap;->unfiltered:Lccsancom/google/common/collect/Multimap;

    iget-object v3, v0, Lccsancom/google/common/collect/FilteredKeyMultimap;->keyPredicate:Lccsancom/google/common/base/Predicate;

    .line 1820
    invoke-static {v3, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/google/common/collect/FilteredKeyMultimap;-><init>(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)V

    .line 1819
    return-object v1

    .line 1821
    .end local v0    # "prev":Lccsancom/google/common/collect/FilteredKeyMultimap;, "Lccsancom/google/common/collect/FilteredKeyMultimap<TK;TV;>;"
    :cond_2
    instance-of v0, p0, Lccsancom/google/common/collect/FilteredMultimap;

    if-eqz v0, :cond_3

    .line 1822
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FilteredMultimap;

    .line 1823
    .local v0, "prev":Lccsancom/google/common/collect/FilteredMultimap;, "Lccsancom/google/common/collect/FilteredMultimap<TK;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->keyPredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Multimaps;->filterFiltered(Lccsancom/google/common/collect/FilteredMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    return-object v1

    .line 1825
    .end local v0    # "prev":Lccsancom/google/common/collect/FilteredMultimap;, "Lccsancom/google/common/collect/FilteredMultimap<TK;TV;>;"
    :cond_3
    new-instance v0, Lccsancom/google/common/collect/FilteredKeyMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/FilteredKeyMultimap;-><init>(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterKeys(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TK;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1858
    .local p0, "unfiltered":Lccsancom/google/common/collect/SetMultimap;, "Lccsancom/google/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "keyPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TK;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/FilteredKeySetMultimap;

    if-eqz v0, :cond_0

    .line 1859
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FilteredKeySetMultimap;

    .line 1860
    .local v0, "prev":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    new-instance v1, Lccsancom/google/common/collect/FilteredKeySetMultimap;

    .line 1861
    invoke-virtual {v0}, Lccsancom/google/common/collect/FilteredKeySetMultimap;->unfiltered()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v2

    iget-object v3, v0, Lccsancom/google/common/collect/FilteredKeySetMultimap;->keyPredicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v3, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/google/common/collect/FilteredKeySetMultimap;-><init>(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)V

    .line 1860
    return-object v1

    .line 1862
    .end local v0    # "prev":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/collect/FilteredSetMultimap;

    if-eqz v0, :cond_1

    .line 1863
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/FilteredSetMultimap;

    .line 1864
    .local v0, "prev":Lccsancom/google/common/collect/FilteredSetMultimap;, "Lccsancom/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->keyPredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Multimaps;->filterFiltered(Lccsancom/google/common/collect/FilteredSetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v1

    return-object v1

    .line 1866
    .end local v0    # "prev":Lccsancom/google/common/collect/FilteredSetMultimap;, "Lccsancom/google/common/collect/FilteredSetMultimap<TK;TV;>;"
    :cond_1
    new-instance v0, Lccsancom/google/common/collect/FilteredKeySetMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/FilteredKeySetMultimap;-><init>(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filterValues(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TV;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1937
    .local p0, "unfiltered":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    .local p1, "valuePredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->valuePredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Multimaps;->filterEntries(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static filterValues(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TV;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1969
    .local p0, "unfiltered":Lccsancom/google/common/collect/SetMultimap;, "Lccsancom/google/common/collect/SetMultimap<TK;TV;>;"
    .local p1, "valuePredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TV;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->valuePredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Multimaps;->filterEntries(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static forMap(Ljava/util/Map;)Lccsancom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 979
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/Multimaps$MapMultimap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Multimaps$MapMultimap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static index(Ljava/lang/Iterable;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TV;>;",
            "Lccsancom/google/common/base/Function<",
            "-TV;TK;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1520
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TV;>;"
    .local p1, "keyFunction":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TV;TK;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Multimaps;->index(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static index(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ImmutableListMultimap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TV;>;",
            "Lccsancom/google/common/base/Function<",
            "-TV;TK;>;)",
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1561
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<TV;>;"
    .local p1, "keyFunction":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TV;TK;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1562
    invoke-static {}, Lccsancom/google/common/collect/ImmutableListMultimap;->builder()Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    move-result-object v0

    .line 1563
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableListMultimap$Builder;, "Lccsancom/google/common/collect/ImmutableListMultimap$Builder<TK;TV;>;"
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1564
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1565
    .local v1, "value":Ljava/lang/Object;, "TV;"
    invoke-static {v1, p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1566
    invoke-interface {p1, v1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableListMultimap$Builder;

    .line 1567
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 1568
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableListMultimap$Builder;->build()Lccsancom/google/common/collect/ImmutableListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static invertFrom(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/Multimap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;>(",
            "Lccsancom/google/common/collect/Multimap<",
            "+TV;+TK;>;TM;)TM;"
        }
    .end annotation

    .line 468
    .local p0, "source":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<+TV;+TK;>;"
    .local p1, "dest":Lccsancom/google/common/collect/Multimap;, "TM;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    invoke-interface {p0}, Lccsancom/google/common/collect/Multimap;->entries()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 470
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2, v3}, Lccsancom/google/common/collect/Multimap;->put(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 471
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TV;+TK;>;"
    goto :goto_0

    .line 472
    :cond_0
    return-object p1
.end method

.method public static newListMultimap(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Ljava/util/List<",
            "TV;>;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 221
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<+Ljava/util/List<TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/Multimaps$CustomListMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Multimaps$CustomListMultimap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newMultimap(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Ljava/util/Collection<",
            "TV;>;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 109
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<+Ljava/util/Collection<TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/Multimaps$CustomMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Multimaps$CustomMultimap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSetMultimap(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Ljava/util/Set<",
            "TV;>;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 299
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<+Ljava/util/Set<TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/Multimaps$CustomSetMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Multimaps$CustomSetMultimap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static newSortedSetMultimap(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;",
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Ljava/util/SortedSet<",
            "TV;>;>;)",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 399
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;Ljava/util/Collection<TV;>;>;"
    .local p1, "factory":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<+Ljava/util/SortedSet<TV;>;>;"
    new-instance v0, Lccsancom/google/common/collect/Multimaps$CustomSortedSetMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Multimaps$CustomSortedSetMultimap;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static synchronizedListMultimap(Lccsancom/google/common/collect/ListMultimap;)Lccsancom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 845
    .local p0, "multimap":Lccsancom/google/common/collect/ListMultimap;, "Lccsancom/google/common/collect/ListMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Synchronized;->listMultimap(Lccsancom/google/common/collect/ListMultimap;Ljava/lang/Object;)Lccsancom/google/common/collect/ListMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedMultimap(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 508
    .local p0, "multimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Synchronized;->multimap(Lccsancom/google/common/collect/Multimap;Ljava/lang/Object;)Lccsancom/google/common/collect/Multimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSetMultimap(Lccsancom/google/common/collect/SetMultimap;)Lccsancom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 768
    .local p0, "multimap":Lccsancom/google/common/collect/SetMultimap;, "Lccsancom/google/common/collect/SetMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Synchronized;->setMultimap(Lccsancom/google/common/collect/SetMultimap;Ljava/lang/Object;)Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedSetMultimap(Lccsancom/google/common/collect/SortedSetMultimap;)Lccsancom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 814
    .local p0, "multimap":Lccsancom/google/common/collect/SortedSetMultimap;, "Lccsancom/google/common/collect/SortedSetMultimap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Synchronized;->sortedSetMultimap(Lccsancom/google/common/collect/SortedSetMultimap;Ljava/lang/Object;)Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public static transformEntries(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/collect/Maps$EntryTransformer;)Lccsancom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV1;>;",
            "Lccsancom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1333
    .local p0, "fromMap":Lccsancom/google/common/collect/ListMultimap;, "Lccsancom/google/common/collect/ListMultimap<TK;TV1;>;"
    .local p1, "transformer":Lccsancom/google/common/collect/Maps$EntryTransformer;, "Lccsancom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesListMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Multimaps$TransformedEntriesListMultimap;-><init>(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformEntries(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/collect/Maps$EntryTransformer;)Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lccsancom/google/common/collect/Maps$EntryTransformer<",
            "-TK;-TV1;TV2;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1280
    .local p0, "fromMap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV1;>;"
    .local p1, "transformer":Lccsancom/google/common/collect/Maps$EntryTransformer;, "Lccsancom/google/common/collect/Maps$EntryTransformer<-TK;-TV1;TV2;>;"
    new-instance v0, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Multimaps$TransformedEntriesMultimap;-><init>(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/collect/Maps$EntryTransformer;)V

    return-object v0
.end method

.method public static transformValues(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/ListMultimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV1;>;",
            "Lccsancom/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1222
    .local p0, "fromMultimap":Lccsancom/google/common/collect/ListMultimap;, "Lccsancom/google/common/collect/ListMultimap<TK;TV1;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->asEntryTransformer(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1224
    .local v0, "transformer":Lccsancom/google/common/collect/Maps$EntryTransformer;, "Lccsancom/google/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    invoke-static {p0, v0}, Lccsancom/google/common/collect/Multimaps;->transformEntries(Lccsancom/google/common/collect/ListMultimap;Lccsancom/google/common/collect/Maps$EntryTransformer;)Lccsancom/google/common/collect/ListMultimap;

    move-result-object v1

    return-object v1
.end method

.method public static transformValues(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Multimap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV1;>;",
            "Lccsancom/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV2;>;"
        }
    .end annotation

    .line 1175
    .local p0, "fromMultimap":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV1;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TV1;TV2;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->asEntryTransformer(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Maps$EntryTransformer;

    move-result-object v0

    .line 1177
    .local v0, "transformer":Lccsancom/google/common/collect/Maps$EntryTransformer;, "Lccsancom/google/common/collect/Maps$EntryTransformer<TK;TV1;TV2;>;"
    invoke-static {p0, v0}, Lccsancom/google/common/collect/Multimaps;->transformEntries(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/collect/Maps$EntryTransformer;)Lccsancom/google/common/collect/Multimap;

    move-result-object v1

    return-object v1
.end method

.method private static unmodifiableEntries(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 907
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/Map$Entry<TK;TV;>;>;"
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 908
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Lccsancom/google/common/collect/Maps;->unmodifiableEntrySet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 910
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Maps$UnmodifiableEntries;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/Maps$UnmodifiableEntries;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lccsancom/google/common/collect/ImmutableListMultimap;)Lccsancom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ImmutableListMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 875
    .local p0, "delegate":Lccsancom/google/common/collect/ImmutableListMultimap;, "Lccsancom/google/common/collect/ImmutableListMultimap<TK;TV;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ListMultimap;

    return-object v0
.end method

.method public static unmodifiableListMultimap(Lccsancom/google/common/collect/ListMultimap;)Lccsancom/google/common/collect/ListMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/ListMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 860
    .local p0, "delegate":Lccsancom/google/common/collect/ListMultimap;, "Lccsancom/google/common/collect/ListMultimap<TK;TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableListMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableListMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 863
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Multimaps$UnmodifiableListMultimap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableListMultimap;-><init>(Lccsancom/google/common/collect/ListMultimap;)V

    return-object v0

    .line 861
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableMultimap(Lccsancom/google/common/collect/ImmutableMultimap;)Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ImmutableMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 537
    .local p0, "delegate":Lccsancom/google/common/collect/ImmutableMultimap;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multimap;

    return-object v0
.end method

.method public static unmodifiableMultimap(Lccsancom/google/common/collect/Multimap;)Lccsancom/google/common/collect/Multimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/Multimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 523
    .local p0, "delegate":Lccsancom/google/common/collect/Multimap;, "Lccsancom/google/common/collect/Multimap<TK;TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 526
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableMultimap;-><init>(Lccsancom/google/common/collect/Multimap;)V

    return-object v0

    .line 524
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSetMultimap(Lccsancom/google/common/collect/ImmutableSetMultimap;)Lccsancom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/ImmutableSetMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 798
    .local p0, "delegate":Lccsancom/google/common/collect/ImmutableSetMultimap;, "Lccsancom/google/common/collect/ImmutableSetMultimap<TK;TV;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/SetMultimap;

    return-object v0
.end method

.method public static unmodifiableSetMultimap(Lccsancom/google/common/collect/SetMultimap;)Lccsancom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 783
    .local p0, "delegate":Lccsancom/google/common/collect/SetMultimap;, "Lccsancom/google/common/collect/SetMultimap<TK;TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap;

    if-nez v0, :cond_1

    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableSetMultimap;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 786
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lccsancom/google/common/collect/SetMultimap;)V

    return-object v0

    .line 784
    :cond_1
    :goto_0
    return-object p0
.end method

.method public static unmodifiableSortedSetMultimap(Lccsancom/google/common/collect/SortedSetMultimap;)Lccsancom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 830
    .local p0, "delegate":Lccsancom/google/common/collect/SortedSetMultimap;, "Lccsancom/google/common/collect/SortedSetMultimap<TK;TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    if-eqz v0, :cond_0

    .line 831
    return-object p0

    .line 833
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;-><init>(Lccsancom/google/common/collect/SortedSetMultimap;)V

    return-object v0
.end method

.method private static unmodifiableValueCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 887
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 888
    move-object v0, p0

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0

    .line 889
    :cond_0
    instance-of v0, p0, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 890
    move-object v0, p0

    check-cast v0, Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 891
    :cond_1
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 892
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 894
    :cond_2
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
