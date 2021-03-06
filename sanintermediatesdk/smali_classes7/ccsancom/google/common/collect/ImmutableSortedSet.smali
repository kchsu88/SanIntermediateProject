.class public abstract Lccsancom/google/common/collect/ImmutableSortedSet;
.super Lccsancom/google/common/collect/ImmutableSortedSetFauxverideShim;
.source "ImmutableSortedSet.java"

# interfaces
.implements Ljava/util/NavigableSet;
.implements Lccsancom/google/common/collect/SortedIterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableSortedSet$SerializedForm;,
        Lccsancom/google/common/collect/ImmutableSortedSet$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableSortedSetFauxverideShim<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;",
        "Lccsancom/google/common/collect/SortedIterable<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final transient comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation
.end field

.field transient descendingSet:Lccsancom/google/common/collect/ImmutableSortedSet;
    .annotation runtime Lccsancom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Comparator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TE;>;)V"
        }
    .end annotation

    .line 513
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableSortedSetFauxverideShim;-><init>()V

    .line 514
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    .line 515
    return-void
.end method

.method static varargs construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;I[TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 341
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p2, "contents":[Ljava/lang/Object;, "[TE;"
    if-nez p1, :cond_0

    .line 342
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lccsancom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v0

    return-object v0

    .line 344
    :cond_0
    invoke-static {p2, p1}, Lccsancom/google/common/collect/ObjectArrays;->checkElementsNotNull([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 345
    const/4 v0, 0x0

    invoke-static {p2, v0, p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 346
    const/4 v0, 0x1

    .line 347
    .local v0, "uniques":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_2

    .line 348
    aget-object v2, p2, v1

    .line 349
    .local v2, "cur":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v0, -0x1

    aget-object v3, p2, v3

    .line 350
    .local v3, "prev":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v2, v3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    if-eqz v4, :cond_1

    .line 351
    add-int/lit8 v4, v0, 0x1

    .end local v0    # "uniques":I
    .local v4, "uniques":I
    aput-object v2, p2, v0

    move v0, v4

    .line 347
    .end local v2    # "cur":Ljava/lang/Object;, "TE;"
    .end local v3    # "prev":Ljava/lang/Object;, "TE;"
    .end local v4    # "uniques":I
    .restart local v0    # "uniques":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 354
    .end local v1    # "i":I
    :cond_2
    const/4 v1, 0x0

    invoke-static {p2, v0, p1, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 355
    array-length v1, p2

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_3

    .line 358
    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 360
    :cond_3
    new-instance v1, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    .line 361
    invoke-static {p2, v0}, Lccsancom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;I)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    .line 360
    return-object v1
.end method

.method public static copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 189
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    .line 190
    .local v0, "naturalOrder":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 221
    .local p0, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    .line 222
    .local v0, "naturalOrder":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 269
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    invoke-static {p0, p1}, Lccsancom/google/common/collect/SortedIterables;->hasSameComparator(Ljava/util/Comparator;Ljava/lang/Iterable;)Z

    move-result v0

    .line 272
    .local v0, "hasSameComparator":Z
    if-eqz v0, :cond_0

    instance-of v1, p1, Lccsancom/google/common/collect/ImmutableSortedSet;

    if-eqz v1, :cond_0

    .line 274
    move-object v1, p1

    check-cast v1, Lccsancom/google/common/collect/ImmutableSortedSet;

    .line 275
    .local v1, "original":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    return-object v1

    .line 280
    .end local v1    # "original":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    :cond_0
    invoke-static {p1}, Lccsancom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 281
    .local v1, "array":[Ljava/lang/Object;, "[TE;"
    array-length v2, v1

    invoke-static {p0, v2, v1}, Lccsancom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v2

    return-object v2
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 301
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 253
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    .local p1, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;->addAll(Ljava/util/Iterator;)Lccsancom/google/common/collect/ImmutableSortedSet$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;->build()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Ljava/util/Iterator;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 240
    .local p0, "elements":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    .line 241
    .local v0, "naturalOrder":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->copyOf(Ljava/util/Comparator;Ljava/util/Iterator;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static copyOf([Ljava/lang/Comparable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>([TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 161
    .local p0, "elements":[Ljava/lang/Comparable;, "[TE;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    array-length v1, p0

    invoke-virtual {p0}, [Ljava/lang/Comparable;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static copyOfSorted(Ljava/util/SortedSet;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 319
    .local p0, "sortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/SortedIterables;->comparator(Ljava/util/SortedSet;)Ljava/util/Comparator;

    move-result-object v0

    .line 320
    .local v0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 321
    .local v1, "list":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<TE;>;"
    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 322
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->emptySet(Ljava/util/Comparator;)Lccsancom/google/common/collect/RegularImmutableSortedSet;

    move-result-object v2

    return-object v2

    .line 324
    :cond_0
    new-instance v2, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-direct {v2, v1, v0}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v2
.end method

.method static emptySet(Ljava/util/Comparator;)Lccsancom/google/common/collect/RegularImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;)",
            "Lccsancom/google/common/collect/RegularImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 62
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    sget-object v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    return-object v0

    .line 65
    :cond_0
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {}, Lccsancom/google/common/collect/ImmutableList;->of()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static naturalOrder()Lccsancom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lccsancom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 391
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 71
    sget-object v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;->NATURAL_EMPTY_SET:Lccsancom/google/common/collect/RegularImmutableSortedSet;

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 76
    .local p0, "element":Ljava/lang/Comparable;, "TE;"
    new-instance v0, Lccsancom/google/common/collect/RegularImmutableSortedSet;

    invoke-static {p0}, Lccsancom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/RegularImmutableSortedSet;-><init>(Lccsancom/google/common/collect/ImmutableList;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 88
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 100
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 112
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 125
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    const/4 v1, 0x5

    new-array v2, v1, [Ljava/lang/Comparable;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    const/4 v3, 0x3

    aput-object p3, v2, v3

    const/4 v3, 0x4

    aput-object p4, v2, v3

    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of(Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;Ljava/lang/Comparable;[Ljava/lang/Comparable;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "-TE;>;>(TE;TE;TE;TE;TE;TE;[TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 139
    .local p0, "e1":Ljava/lang/Comparable;, "TE;"
    .local p1, "e2":Ljava/lang/Comparable;, "TE;"
    .local p2, "e3":Ljava/lang/Comparable;, "TE;"
    .local p3, "e4":Ljava/lang/Comparable;, "TE;"
    .local p4, "e5":Ljava/lang/Comparable;, "TE;"
    .local p5, "e6":Ljava/lang/Comparable;, "TE;"
    .local p6, "remaining":[Ljava/lang/Comparable;, "[TE;"
    array-length v0, p6

    const/4 v1, 0x6

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Comparable;

    .line 140
    .local v0, "contents":[Ljava/lang/Comparable;
    const/4 v2, 0x0

    aput-object p0, v0, v2

    .line 141
    const/4 v3, 0x1

    aput-object p1, v0, v3

    .line 142
    const/4 v3, 0x2

    aput-object p2, v0, v3

    .line 143
    const/4 v3, 0x3

    aput-object p3, v0, v3

    .line 144
    const/4 v3, 0x4

    aput-object p4, v0, v3

    .line 145
    const/4 v3, 0x5

    aput-object p5, v0, v3

    .line 146
    array-length v3, p6

    invoke-static {p6, v2, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 147
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    array-length v2, v0

    move-object v3, v0

    check-cast v3, [Ljava/lang/Comparable;

    invoke-static {v1, v2, v3}, Lccsancom/google/common/collect/ImmutableSortedSet;->construct(Ljava/util/Comparator;I[Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    return-object v1
.end method

.method public static orderedBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TE;>;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 373
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "unused"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 736
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "Use SerializedForm"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static reverseOrder()Lccsancom/google/common/collect/ImmutableSortedSet$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E::",
            "Ljava/lang/Comparable<",
            "*>;>()",
            "Lccsancom/google/common/collect/ImmutableSortedSet$Builder<",
            "TE;>;"
        }
    .end annotation

    .line 381
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableSortedSet$Builder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 507
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<*>;"
    move-object v0, p0

    .line 508
    .local v0, "unsafeComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 631
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 524
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    return-object v0
.end method

.method abstract createDescendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public abstract descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 690
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet:Lccsancom/google/common/collect/ImmutableSortedSet;

    .line 691
    .local v0, "result":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    if-nez v0, :cond_0

    .line 692
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->createDescendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet:Lccsancom/google/common/collect/ImmutableSortedSet;

    move-object v0, v1

    .line 693
    iput-object p0, v0, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet:Lccsancom/google/common/collect/ImmutableSortedSet;

    .line 695
    :cond_0
    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 643
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 542
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->headSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract headSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 638
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterables;->getFirst(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract indexOf(Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
.end method

.method public abstract iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public last()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 648
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/UnmodifiableIterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 617
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->getNext(Ljava/util/Iterator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 663
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 678
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 566
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, p2, v1}, Lccsancom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 574
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 576
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-interface {v0, p1, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 577
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/ImmutableSortedSet;->subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method public tailSet(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 592
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 599
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->tailSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 0

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 0

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object p1

    return-object p1
.end method

.method abstract tailSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end method

.method unsafeCompare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    .line 499
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-static {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->unsafeCompare(Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    .line 741
    .local p0, "this":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableSortedSet$SerializedForm;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableSortedSet;->comparator:Ljava/util/Comparator;

    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableSortedSet;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/ImmutableSortedSet$SerializedForm;-><init>(Ljava/util/Comparator;[Ljava/lang/Object;)V

    return-object v0
.end method
