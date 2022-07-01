.class final Lccsancom/google/common/collect/FilteredKeySetMultimap;
.super Lccsancom/google/common/collect/FilteredKeyMultimap;
.source "FilteredKeySetMultimap.java"

# interfaces
.implements Lccsancom/google/common/collect/FilteredSetMultimap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/FilteredKeySetMultimap$EntrySet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/FilteredKeyMultimap<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/FilteredSetMultimap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/SetMultimap;Lccsancom/google/common/base/Predicate;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;",
            "Lccsancom/google/common/base/Predicate<",
            "-TK;>;)V"
        }
    .end annotation

    .line 35
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    .local p1, "unfiltered":Lccsancom/google/common/collect/SetMultimap;, "Lccsancom/google/common/collect/SetMultimap<TK;TV;>;"
    .local p2, "keyPredicate":Lccsancom/google/common/base/Predicate;, "Lccsancom/google/common/base/Predicate<-TK;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/collect/FilteredKeyMultimap;-><init>(Lccsancom/google/common/collect/Multimap;Lccsancom/google/common/base/Predicate;)V

    .line 36
    return-void
.end method


# virtual methods
.method bridge synthetic createEntries()Ljava/util/Collection;
    .locals 1

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/FilteredKeySetMultimap;->createEntries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method createEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/FilteredKeySetMultimap$EntrySet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/FilteredKeySetMultimap$EntrySet;-><init>(Lccsancom/google/common/collect/FilteredKeySetMultimap;)V

    return-object v0
.end method

.method public bridge synthetic entries()Ljava/util/Collection;
    .locals 1

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/FilteredKeySetMultimap;->entries()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 60
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/FilteredKeyMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/FilteredKeySetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 45
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/FilteredKeyMultimap;->get(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic removeAll(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/FilteredKeySetMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public removeAll(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 50
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/FilteredKeyMultimap;->removeAll(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 0

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/FilteredKeySetMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/lang/Iterable<",
            "+TV;>;)",
            "Ljava/util/Set<",
            "TV;>;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/FilteredKeyMultimap;->replaceValues(Ljava/lang/Object;Ljava/lang/Iterable;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public bridge synthetic unfiltered()Lccsancom/google/common/collect/Multimap;
    .locals 1

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/FilteredKeySetMultimap;->unfiltered()Lccsancom/google/common/collect/SetMultimap;

    move-result-object v0

    return-object v0
.end method

.method public unfiltered()Lccsancom/google/common/collect/SetMultimap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SetMultimap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lccsancom/google/common/collect/FilteredKeySetMultimap;, "Lccsancom/google/common/collect/FilteredKeySetMultimap<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/FilteredKeySetMultimap;->unfiltered:Lccsancom/google/common/collect/Multimap;

    check-cast v0, Lccsancom/google/common/collect/SetMultimap;

    return-object v0
.end method
