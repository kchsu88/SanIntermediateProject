.class public abstract Lccsancom/google/common/collect/ForwardingSortedMultiset;
.super Lccsancom/google/common/collect/ForwardingMultiset;
.source "ForwardingSortedMultiset.java"

# interfaces
.implements Lccsancom/google/common/collect/SortedMultiset;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ForwardingSortedMultiset$StandardDescendingMultiset;,
        Lccsancom/google/common/collect/ForwardingSortedMultiset$StandardElementSet;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingMultiset<",
        "TE;>;",
        "Lccsancom/google/common/collect/SortedMultiset<",
        "TE;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 50
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public comparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Lccsancom/google/common/collect/Multiset;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected abstract delegate()Lccsancom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 45
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public firstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->firstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public lastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->lastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->pollFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public pollLastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 177
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->pollLastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method protected standardFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 125
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    const/4 v1, 0x0

    return-object v1

    .line 128
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Multiset$Entry;

    .line 129
    .local v1, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v2

    return-object v2
.end method

.method protected standardLastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 145
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 146
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 147
    const/4 v1, 0x0

    return-object v1

    .line 149
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Multiset$Entry;

    .line 150
    .local v1, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v2

    return-object v2
.end method

.method protected standardPollFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 166
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    const/4 v1, 0x0

    return-object v1

    .line 169
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Multiset$Entry;

    .line 170
    .local v1, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v1

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 172
    return-object v1
.end method

.method protected standardPollLastEntry()Lccsancom/google/common/collect/Multiset$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    .local v0, "entryIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lccsancom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    const/4 v1, 0x0

    return-object v1

    .line 192
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Multiset$Entry;

    .line 193
    .local v1, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v1

    .line 194
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 195
    return-object v1
.end method

.method protected standardSubMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "lowerBoundType"    # Lccsancom/google/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            "TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p3, p4}, Lccsancom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public subMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "lowerBoundType"    # Lccsancom/google/common/collect/BoundType;
    .param p4, "upperBoundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            "TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    .local p3, "upperBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lccsancom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lccsancom/google/common/collect/ForwardingSortedMultiset;, "Lccsancom/google/common/collect/ForwardingSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ForwardingSortedMultiset;->delegate()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method
