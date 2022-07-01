.class public abstract Lccsancom/google/common/collect/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/Ordering$IncomparableValueException;,
        Lccsancom/google/common/collect/Ordering$ArbitraryOrdering;,
        Lccsancom/google/common/collect/Ordering$ArbitraryOrderingHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final LEFT_IS_GREATER:I = 0x1

.field static final RIGHT_IS_GREATER:I = -0x1


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 388
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allEqual()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 279
    sget-object v0, Lccsancom/google/common/collect/AllEqualOrdering;->INSTANCE:Lccsancom/google/common/collect/AllEqualOrdering;

    return-object v0
.end method

.method public static arbitrary()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 312
    sget-object v0, Lccsancom/google/common/collect/Ordering$ArbitraryOrderingHolder;->ARBITRARY_ORDERING:Lccsancom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static compound(Ljava/lang/Iterable;)Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/Comparator<",
            "-TT;>;>;)",
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 492
    .local p0, "comparators":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/Comparator<-TT;>;>;"
    new-instance v0, Lccsancom/google/common/collect/CompoundOrdering;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/CompoundOrdering;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs explicit(Ljava/lang/Object;[Ljava/lang/Object;)Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;[TT;)",
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 243
    .local p0, "leastValue":Ljava/lang/Object;, "TT;"
    .local p1, "remainingValuesInOrder":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/Lists;->asList(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Ordering;->explicit(Ljava/util/List;)Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public static explicit(Ljava/util/List;)Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)",
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 217
    .local p0, "valuesInOrder":Ljava/util/List;, "Ljava/util/List<TT;>;"
    new-instance v0, Lccsancom/google/common/collect/ExplicitOrdering;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ExplicitOrdering;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static from(Lccsancom/google/common/collect/Ordering;)Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;)",
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 192
    .local p0, "ordering":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Ordering;

    return-object v0
.end method

.method public static from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Lccsancom/google/common/collect/Ordering<",
            "TT;>;"
        }
    .end annotation

    .line 179
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Ordering;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/Ordering;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/collect/ComparatorOrdering;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V

    :goto_0
    return-object v0
.end method

.method public static natural()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/lang/Comparable;",
            ">()",
            "Lccsancom/google/common/collect/Ordering<",
            "TC;>;"
        }
    .end annotation

    .line 159
    sget-object v0, Lccsancom/google/common/collect/NaturalOrdering;->INSTANCE:Lccsancom/google/common/collect/NaturalOrdering;

    return-object v0
.end method

.method public static usingToString()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Ordering<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 292
    sget-object v0, Lccsancom/google/common/collect/UsingToStringOrdering;->INSTANCE:Lccsancom/google/common/collect/UsingToStringOrdering;

    return-object v0
.end method


# virtual methods
.method public binarySearch(Ljava/util/List;Ljava/lang/Object;)I
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;TT;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 925
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "sortedList":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p2, "key":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p2, p0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)I"
        }
    .end annotation
.end method

.method public compound(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:TT;>(",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Lccsancom/google/common/collect/Ordering<",
            "TU;>;"
        }
    .end annotation

    .line 468
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "secondaryComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    new-instance v0, Lccsancom/google/common/collect/CompoundOrdering;

    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/collect/CompoundOrdering;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public greatestOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 801
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/Ordering;->leastOf(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public greatestOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 1
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public immutableSortedCopy(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Lccsancom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 864
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p0, p1}, Lccsancom/google/common/collect/ImmutableList;->sortedCopyOf(Ljava/util/Comparator;Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public isOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 877
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 878
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 879
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 880
    .local v1, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 881
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 882
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v2}, Lccsancom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_0

    .line 883
    const/4 v3, 0x0

    return v3

    .line 885
    :cond_0
    move-object v1, v2

    .line 886
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 888
    .end local v1    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public isStrictlyOrdered(Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 901
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 902
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 903
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 904
    .local v1, "prev":Ljava/lang/Object;, "TT;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 905
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 906
    .local v2, "next":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, v1, v2}, Lccsancom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 907
    const/4 v3, 0x0

    return v3

    .line 909
    :cond_0
    move-object v1, v2

    .line 910
    .end local v2    # "next":Ljava/lang/Object;, "TT;"
    goto :goto_0

    .line 912
    .end local v1    # "prev":Ljava/lang/Object;, "TT;"
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public leastOf(Ljava/lang/Iterable;I)Ljava/util/List;
    .locals 7
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 725
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 726
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    .line 727
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    int-to-long v1, v1

    const-wide/16 v3, 0x2

    int-to-long v5, p2

    mul-long v5, v5, v3

    cmp-long v3, v1, v5

    if-gtz v3, :cond_1

    .line 733
    invoke-interface {v0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 734
    .local v1, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 735
    array-length v2, v1

    if-le v2, p2, :cond_0

    .line 736
    invoke-static {v1, p2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    .line 738
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 741
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .end local v1    # "array":[Ljava/lang/Object;, "[TE;"
    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lccsancom/google/common/collect/Ordering;->leastOf(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public leastOf(Ljava/util/Iterator;I)Ljava/util/List;
    .locals 2
    .param p2, "k"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;I)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 761
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v0, "k"

    invoke-static {p2, v0}, Lccsancom/google/common/collect/CollectPreconditions;->checkNonnegative(ILjava/lang/String;)I

    .line 764
    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 766
    :cond_0
    const v0, 0x3fffffff    # 1.9999999f

    if-lt p2, v0, :cond_2

    .line 768
    invoke-static {p1}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 769
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 770
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, p2, :cond_1

    .line 771
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 773
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 774
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 776
    .end local v0    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    :cond_2
    invoke-static {p2, p0}, Lccsancom/google/common/collect/TopKSelector;->least(ILjava/util/Comparator;)Lccsancom/google/common/collect/TopKSelector;

    move-result-object v0

    .line 777
    .local v0, "selector":Lccsancom/google/common/collect/TopKSelector;, "Lccsancom/google/common/collect/TopKSelector<TE;>;"
    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/TopKSelector;->offerAll(Ljava/util/Iterator;)V

    .line 778
    invoke-virtual {v0}, Lccsancom/google/common/collect/TopKSelector;->topK()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 765
    .end local v0    # "selector":Lccsancom/google/common/collect/TopKSelector;, "Lccsancom/google/common/collect/TopKSelector<TE;>;"
    :cond_3
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public lexicographical()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lccsancom/google/common/collect/Ordering<",
            "Ljava/lang/Iterable<",
            "TS;>;>;"
        }
    .end annotation

    .line 522
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lccsancom/google/common/collect/LexicographicalOrdering;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/LexicographicalOrdering;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method public max(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 662
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/Ordering;->max(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .line 681
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public varargs max(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .line 699
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lccsancom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    .local v0, "maxSoFar":Ljava/lang/Object;, "TE;"
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 702
    .local v3, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, v3}, Lccsancom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 701
    .end local v3    # "r":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 705
    :cond_0
    return-object v0
.end method

.method public max(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 639
    .local v0, "maxSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 640
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/collect/Ordering;->max(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 643
    :cond_0
    return-object v0
.end method

.method public min(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 574
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/Ordering;->min(Ljava/util/Iterator;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;)TE;"
        }
    .end annotation

    .line 593
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Ordering;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    return-object v0
.end method

.method public varargs min(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(TE;TE;TE;[TE;)TE;"
        }
    .end annotation

    .line 611
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "a":Ljava/lang/Object;, "TE;"
    .local p2, "b":Ljava/lang/Object;, "TE;"
    .local p3, "c":Ljava/lang/Object;, "TE;"
    .local p4, "rest":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Lccsancom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    .local v0, "minSoFar":Ljava/lang/Object;, "TE;"
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p4, v2

    .line 614
    .local v3, "r":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v0, v3}, Lccsancom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 613
    .end local v3    # "r":Ljava/lang/Object;, "TE;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 617
    :cond_0
    return-object v0
.end method

.method public min(Ljava/util/Iterator;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/util/Iterator<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 551
    .local v0, "minSoFar":Ljava/lang/Object;, "TE;"
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 552
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/google/common/collect/Ordering;->min(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 555
    :cond_0
    return-object v0
.end method

.method public nullsFirst()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lccsancom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 415
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lccsancom/google/common/collect/NullsFirstOrdering;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/NullsFirstOrdering;-><init>(Lccsancom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public nullsLast()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lccsancom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lccsancom/google/common/collect/NullsLastOrdering;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/NullsLastOrdering;-><init>(Lccsancom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method onKeys()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T2:TT;>()",
            "Lccsancom/google/common/collect/Ordering<",
            "Ljava/util/Map$Entry<",
            "TT2;*>;>;"
        }
    .end annotation

    .line 450
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    invoke-static {}, Lccsancom/google/common/collect/Maps;->keyFunction()Lccsancom/google/common/base/Function;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/Ordering;->onResultOf(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method

.method public onResultOf(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "TF;+TT;>;)",
            "Lccsancom/google/common/collect/Ordering<",
            "TF;>;"
        }
    .end annotation

    .line 446
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<TF;+TT;>;"
    new-instance v0, Lccsancom/google/common/collect/ByFunctionOrdering;

    invoke-direct {v0, p1, p0}, Lccsancom/google/common/collect/ByFunctionOrdering;-><init>(Lccsancom/google/common/base/Function;Lccsancom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public reverse()Lccsancom/google/common/collect/Ordering;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:TT;>()",
            "Lccsancom/google/common/collect/Ordering<",
            "TS;>;"
        }
    .end annotation

    .line 402
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    new-instance v0, Lccsancom/google/common/collect/ReverseOrdering;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ReverseOrdering;-><init>(Lccsancom/google/common/collect/Ordering;)V

    return-object v0
.end method

.method public sortedCopy(Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:TT;>(",
            "Ljava/lang/Iterable<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 842
    .local p0, "this":Lccsancom/google/common/collect/Ordering;, "Lccsancom/google/common/collect/Ordering<TT;>;"
    .local p1, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    invoke-static {p1}, Lccsancom/google/common/collect/Iterables;->toArray(Ljava/lang/Iterable;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 843
    .local v0, "array":[Ljava/lang/Object;, "[TE;"
    invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 844
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method
