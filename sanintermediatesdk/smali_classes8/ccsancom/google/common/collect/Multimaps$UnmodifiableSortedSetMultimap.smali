.class Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;
.super Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap;
.source "Multimaps.java"

# interfaces
.implements Lccsancom/google/common/collect/SortedSetMultimap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Multimaps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UnmodifiableSortedSetMultimap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/SortedSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/SortedSetMultimap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 726
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    .local p1, "delegate":Lccsancom/google/common/collect/SortedSetMultimap;, "Lccsancom/google/common/collect/SortedSetMultimap<TK;TV;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap;-><init>(Lccsancom/google/common/collect/SetMultimap;)V

    .line 727
    return-void
.end method


# virtual methods
.method public bridge synthetic delegate()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic delegate()Lccsancom/google/common/collect/SetMultimap;
    .locals 1

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public delegate()Lccsancom/google/common/collect/SortedSetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedSetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 731
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSetMultimap;->delegate()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/SortedSetMultimap;

    return-object v0
.end method

.method public bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 736
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/SortedSetMultimap;->get(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 741
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 0

    .line 723
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/SortedSet<",
            "TV;>;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public valueComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation

    .line 751
    .local p0, "this":Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;, "Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multimaps$UnmodifiableSortedSetMultimap;->delegate()Lccsancom/google/common/collect/SortedSetMultimap;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedSetMultimap;->valueComparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
