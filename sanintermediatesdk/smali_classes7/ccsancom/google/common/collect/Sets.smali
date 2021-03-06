.class public final Lccsancom/google/common/collect/Sets;
.super Ljava/lang/Object;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/Sets$DescendingSet;,
        Lccsancom/google/common/collect/Sets$UnmodifiableNavigableSet;,
        Lccsancom/google/common/collect/Sets$PowerSet;,
        Lccsancom/google/common/collect/Sets$SubSet;,
        Lccsancom/google/common/collect/Sets$CartesianSet;,
        Lccsancom/google/common/collect/Sets$FilteredNavigableSet;,
        Lccsancom/google/common/collect/Sets$FilteredSortedSet;,
        Lccsancom/google/common/collect/Sets$FilteredSet;,
        Lccsancom/google/common/collect/Sets$SetView;,
        Lccsancom/google/common/collect/Sets$ImprovedAbstractSet;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cartesianProduct(Ljava/util/List;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Set<",
            "+TB;>;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .line 1234
    .local p0, "sets":Ljava/util/List;, "Ljava/util/List<+Ljava/util/Set<+TB;>;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Sets$CartesianSet;->create(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static varargs cartesianProduct([Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/util/Set<",
            "+TB;>;)",
            "Ljava/util/Set<",
            "Ljava/util/List<",
            "TB;>;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 1291
    .local p0, "sets":[Ljava/util/Set;, "[Ljava/util/Set<+TB;>;"
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Sets;->cartesianProduct(Ljava/util/List;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static combinations(Ljava/util/Set;I)Ljava/util/Set;
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;I)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1535
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    .line 1536
    .local v0, "index":Lccsancom/google/common/collect/ImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap<TE;Ljava/lang/Integer;>;"
    const-string v1, "size"

    invoke-static {p1, v1}, Lccsancom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 1537
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v2

    const-string v3, "size (%s) must be <= set.size() (%s)"

    invoke-static {v1, v3, p1, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;II)V

    .line 1538
    if-nez p1, :cond_1

    .line 1539
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 1540
    :cond_1
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    if-ne p1, v1, :cond_2

    .line 1541
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 1543
    :cond_2
    new-instance v1, Lccsancom/google/common/collect/Sets$5;

    invoke-direct {v1, p1, v0}, Lccsancom/google/common/collect/Sets$5;-><init>(ILccsancom/google/common/collect/ImmutableMap;)V

    return-object v1
.end method

.method public static complementOf(Ljava/util/Collection;)Ljava/util/EnumSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 459
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    .line 460
    move-object v0, p0

    check-cast v0, Ljava/util/EnumSet;

    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    return-object v0

    .line 462
    :cond_0
    nop

    .line 463
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 462
    const-string v1, "collection is empty; use the other version of this method"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 464
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Enum;

    invoke-virtual {v0}, Ljava/lang/Enum;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 465
    .local v0, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0, v0}, Lccsancom/google/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v1

    return-object v1
.end method

.method public static complementOf(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 480
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    instance-of v0, p0, Ljava/util/EnumSet;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljava/util/EnumSet;

    .line 482
    invoke-static {v0}, Ljava/util/EnumSet;->complementOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_0

    .line 483
    :cond_0
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Sets;->makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 481
    :goto_0
    return-object v0
.end method

.method public static difference(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lccsancom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 813
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const-string v0, "set1"

    invoke-static {p0, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 814
    const-string v0, "set2"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    new-instance v0, Lccsancom/google/common/collect/Sets$3;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Sets$3;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method static equalsImpl(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1645
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1646
    return v0

    .line 1648
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1649
    move-object v1, p1

    check-cast v1, Ljava/util/Set;

    .line 1652
    .local v1, "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    if-ne v3, v4, :cond_1

    invoke-interface {p0, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1653
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 1654
    .local v0, "ignored":Ljava/lang/RuntimeException;
    :goto_1
    return v2

    .line 1657
    .end local v0    # "ignored":Ljava/lang/RuntimeException;
    .end local v1    # "o":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_2
    return v2
.end method

.method public static filter(Ljava/util/NavigableSet;Lccsancom/google/common/base/Predicate;)Ljava/util/NavigableSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1033
    .local p0, "unfiltered":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 1036
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/Sets$FilteredSet;

    .line 1037
    .local v0, "filtered":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v1, v0, Lccsancom/google/common/collect/Sets$FilteredSet;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v1, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    .line 1038
    .local v1, "combinedPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<TE;>;"
    new-instance v2, Lccsancom/google/common/collect/Sets$FilteredNavigableSet;

    iget-object v3, v0, Lccsancom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast v3, Ljava/util/NavigableSet;

    invoke-direct {v2, v3, v1}, Lccsancom/google/common/collect/Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lccsancom/google/common/base/Predicate;)V

    return-object v2

    .line 1041
    .end local v0    # "filtered":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    .end local v1    # "combinedPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<TE;>;"
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Sets$FilteredNavigableSet;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/NavigableSet;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/Sets$FilteredNavigableSet;-><init>(Ljava/util/NavigableSet;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 955
    .local p0, "unfiltered":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Ljava/util/SortedSet;

    if-eqz v0, :cond_0

    .line 956
    move-object v0, p0

    check-cast v0, Ljava/util/SortedSet;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Sets;->filter(Ljava/util/SortedSet;Lccsancom/google/common/base/Predicate;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0

    .line 958
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_1

    .line 961
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/Sets$FilteredSet;

    .line 962
    .local v0, "filtered":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v1, v0, Lccsancom/google/common/collect/Sets$FilteredSet;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v1, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    .line 963
    .local v1, "combinedPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<TE;>;"
    new-instance v2, Lccsancom/google/common/collect/Sets$FilteredSet;

    iget-object v3, v0, Lccsancom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast v3, Ljava/util/Set;

    invoke-direct {v2, v3, v1}, Lccsancom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)V

    return-object v2

    .line 966
    .end local v0    # "filtered":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    .end local v1    # "combinedPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<TE;>;"
    :cond_1
    new-instance v0, Lccsancom/google/common/collect/Sets$FilteredSet;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/Sets$FilteredSet;-><init>(Ljava/util/Set;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method

.method public static filter(Ljava/util/SortedSet;Lccsancom/google/common/base/Predicate;)Ljava/util/SortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 994
    .local p0, "unfiltered":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "predicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TE;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Sets$FilteredSet;

    if-eqz v0, :cond_0

    .line 997
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/Sets$FilteredSet;

    .line 998
    .local v0, "filtered":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    iget-object v1, v0, Lccsancom/google/common/collect/Sets$FilteredSet;->predicate:Lccsancom/google/common/base/Predicate;

    invoke-static {v1, p1}, Lccsancom/google/common/base/Predicates;->and(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    .line 999
    .local v1, "combinedPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<TE;>;"
    new-instance v2, Lccsancom/google/common/collect/Sets$FilteredSortedSet;

    iget-object v3, v0, Lccsancom/google/common/collect/Sets$FilteredSet;->unfiltered:Ljava/util/Collection;

    check-cast v3, Ljava/util/SortedSet;

    invoke-direct {v2, v3, v1}, Lccsancom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lccsancom/google/common/base/Predicate;)V

    return-object v2

    .line 1002
    .end local v0    # "filtered":Lccsancom/google/common/collect/Sets$FilteredSet;, "Lccsancom/google/common/collect/Sets$FilteredSet<TE;>;"
    .end local v1    # "combinedPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<TE;>;"
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Sets$FilteredSortedSet;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/SortedSet;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/base/Predicate;

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/Sets$FilteredSortedSet;-><init>(Ljava/util/SortedSet;Lccsancom/google/common/base/Predicate;)V

    return-object v0
.end method

.method static hashCodeImpl(Ljava/util/Set;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;)I"
        }
    .end annotation

    .line 1633
    .local p0, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const/4 v0, 0x0

    .line 1634
    .local v0, "hashCode":I
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1635
    .local v2, "o":Ljava/lang/Object;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    add-int/2addr v0, v3

    .line 1637
    xor-int/lit8 v3, v0, -0x1

    xor-int/lit8 v0, v3, -0x1

    .line 1639
    .end local v2    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 1640
    :cond_1
    return v0
.end method

.method public static varargs immutableEnumSet(Ljava/lang/Enum;[Ljava/lang/Enum;)Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(TE;[TE;)",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 101
    .local p0, "anElement":Ljava/lang/Enum;, "TE;"
    .local p1, "otherElements":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0, p1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public static immutableEnumSet(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 117
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableEnumSet;

    if-eqz v0, :cond_0

    .line 118
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/ImmutableEnumSet;

    return-object v0

    .line 119
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 120
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 121
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 122
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 124
    :cond_1
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1

    .line 127
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    :cond_2
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 128
    .local v0, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 129
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Enum;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    .line 130
    .local v1, "enumSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {v1, v0}, Lccsancom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 131
    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableEnumSet;->asImmutable(Ljava/util/EnumSet;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v2

    return-object v2

    .line 133
    .end local v1    # "enumSet":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    :cond_3
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    return-object v1
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Ljava/util/Set<",
            "*>;)",
            "Lccsancom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 752
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<*>;"
    const-string v0, "set1"

    invoke-static {p0, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 753
    const-string v0, "set2"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    new-instance v0, Lccsancom/google/common/collect/Sets$2;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Sets$2;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method private static makeComplementByHand(Ljava/util/Collection;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 488
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 489
    .local v0, "result":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-virtual {v0, p0}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 490
    return-object v0
.end method

.method public static newConcurrentHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 256
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newConcurrentHashSet(Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 273
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lccsancom/google/common/collect/Sets;->newConcurrentHashSet()Ljava/util/Set;

    move-result-object v0

    .line 274
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 275
    return-object v0
.end method

.method public static newCopyOnWriteArraySet()Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 424
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    return-object v0
.end method

.method public static newCopyOnWriteArraySet(Ljava/lang/Iterable;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "TE;>;"
        }
    .end annotation

    .line 438
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 440
    invoke-static {p0}, Lccsancom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    .line 441
    :cond_0
    invoke-static {p0}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    nop

    .line 442
    .local v0, "elementsCollection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public static newEnumSet(Ljava/lang/Iterable;Ljava/lang/Class;)Ljava/util/EnumSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Class<",
            "TE;>;)",
            "Ljava/util/EnumSet<",
            "TE;>;"
        }
    .end annotation

    .line 145
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "elementType":Ljava/lang/Class;, "Ljava/lang/Class<TE;>;"
    invoke-static {p1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 146
    .local v0, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 147
    return-object v0
.end method

.method public static newHashSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 165
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0
.end method

.method public static newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 206
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    .line 207
    invoke-static {p0}, Lccsancom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Sets;->newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;

    move-result-object v0

    .line 206
    :goto_0
    return-object v0
.end method

.method public static newHashSet(Ljava/util/Iterator;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 224
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lccsancom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v0

    .line 225
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 226
    return-object v0
.end method

.method public static varargs newHashSet([Ljava/lang/Object;)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 182
    .local p0, "elements":[Ljava/lang/Object;, "[TE;"
    array-length v0, p0

    invoke-static {v0}, Lccsancom/google/common/collect/Sets;->newHashSetWithExpectedSize(I)Ljava/util/HashSet;

    move-result-object v0

    .line 183
    .local v0, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 184
    return-object v0
.end method

.method public static newHashSetWithExpectedSize(I)Ljava/util/HashSet;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/HashSet<",
            "TE;>;"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lccsancom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    return-object v0
.end method

.method public static newIdentityHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 410
    invoke-static {}, Lccsancom/google/common/collect/Maps;->newIdentityHashMap()Ljava/util/IdentityHashMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newLinkedHashSet()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    return-object v0
.end method

.method public static newLinkedHashSet(Ljava/lang/Iterable;)Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 311
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 312
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lccsancom/google/common/collect/Collections2;->cast(Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(Ljava/util/Collection;)V

    return-object v0

    .line 314
    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v0

    .line 315
    .local v0, "set":Ljava/util/LinkedHashSet;, "Ljava/util/LinkedHashSet<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 316
    return-object v0
.end method

.method public static newLinkedHashSetWithExpectedSize(I)Ljava/util/LinkedHashSet;
    .locals 2
    .param p0, "expectedSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/LinkedHashSet<",
            "TE;>;"
        }
    .end annotation

    .line 332
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-static {p0}, Lccsancom/google/common/collect/Maps;->capacity(I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    return-object v0
.end method

.method public static newSetFromMap(Ljava/util/Map;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 524
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Boolean;>;"
    invoke-static {p0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static newTreeSet()Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">()",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 350
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    return-object v0
.end method

.method public static newTreeSet(Ljava/lang/Iterable;)Ljava/util/TreeSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 375
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lccsancom/google/common/collect/Sets;->newTreeSet()Ljava/util/TreeSet;

    move-result-object v0

    .line 376
    .local v0, "set":Ljava/util/TreeSet;, "Ljava/util/TreeSet<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 377
    return-object v0
.end method

.method public static newTreeSet(Ljava/util/Comparator;)Ljava/util/TreeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Ljava/util/TreeSet<",
            "TE;>;"
        }
    .end annotation

    .line 397
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    new-instance v0, Ljava/util/TreeSet;

    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static powerSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1399
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/Sets$PowerSet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Sets$PowerSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 1822
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1823
    instance-of v0, p1, Lccsancom/google/common/collect/Multiset;

    if-eqz v0, :cond_0

    .line 1824
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Multiset;

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset;->elementSet()Ljava/util/Set;

    move-result-object p1

    .line 1833
    :cond_0
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1834
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1}, Lccsancom/google/common/collect/Iterators;->removeAll(Ljava/util/Iterator;Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 1836
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method static removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "*>;",
            "Ljava/util/Iterator<",
            "*>;)Z"
        }
    .end annotation

    .line 1814
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 1815
    .local v0, "changed":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1816
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1818
    :cond_0
    return v0
.end method

.method public static subSet(Ljava/util/NavigableSet;Lccsancom/google/common/collect/Range;)Ljava/util/NavigableSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;>(",
            "Ljava/util/NavigableSet<",
            "TK;>;",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)",
            "Ljava/util/NavigableSet<",
            "TK;>;"
        }
    .end annotation

    .line 1991
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TK;>;"
    .local p1, "range":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1992
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v3

    if-eq v0, v3, :cond_1

    .line 1993
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1994
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1995
    nop

    .line 1996
    invoke-interface {p0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v3

    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1995
    :goto_0
    const-string v3, "set is using a custom comparator which is inconsistent with the natural ordering."

    invoke-static {v0, v3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1999
    :cond_1
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2000
    nop

    .line 2001
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    .line 2002
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->lowerBoundType()Lccsancom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 2003
    :goto_1
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v4

    .line 2004
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->upperBoundType()Lccsancom/google/common/collect/BoundType;

    move-result-object v5

    sget-object v6, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    .line 2000
    :goto_2
    invoke-interface {p0, v0, v3, v4, v1}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    .line 2005
    :cond_4
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasLowerBound()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2006
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->lowerEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->lowerBoundType()Lccsancom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_5

    goto :goto_3

    :cond_5
    const/4 v1, 0x0

    :goto_3
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    .line 2007
    :cond_6
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->hasUpperBound()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2008
    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->upperEndpoint()Ljava/lang/Comparable;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/google/common/collect/Range;->upperBoundType()Lccsancom/google/common/collect/BoundType;

    move-result-object v3

    sget-object v4, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    if-ne v3, v4, :cond_7

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    :goto_4
    invoke-interface {p0, v0, v1}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0

    .line 2010
    :cond_8
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public static symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 871
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    const-string v0, "set1"

    invoke-static {p0, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    const-string v0, "set2"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    new-instance v0, Lccsancom/google/common/collect/Sets$4;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Sets$4;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static synchronizedNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1809
    .local p0, "navigableSet":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Synchronized;->navigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/Sets$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 663
    .local p0, "set1":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "set2":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    const-string v0, "set1"

    invoke-static {p0, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    const-string v0, "set2"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 666
    new-instance v0, Lccsancom/google/common/collect/Sets$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Sets$1;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public static unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1674
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableCollection;

    if-nez v0, :cond_1

    instance-of v0, p0, Lccsancom/google/common/collect/Sets$UnmodifiableNavigableSet;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1677
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Sets$UnmodifiableNavigableSet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Sets$UnmodifiableNavigableSet;-><init>(Ljava/util/NavigableSet;)V

    return-object v0

    .line 1675
    :cond_1
    :goto_0
    return-object p0
.end method
