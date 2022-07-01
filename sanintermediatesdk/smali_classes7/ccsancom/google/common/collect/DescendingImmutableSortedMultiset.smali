.class final Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;
.super Lccsancom/google/common/collect/ImmutableSortedMultiset;
.source "DescendingImmutableSortedMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableSortedMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final transient forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableSortedMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 30
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    .local p1, "forward":Lccsancom/google/common/collect/ImmutableSortedMultiset;, "Lccsancom/google/common/collect/ImmutableSortedMultiset<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;-><init>()V

    .line 31
    iput-object p1, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    .line 32
    return-void
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 36
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->count(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public descendingMultiset()Lccsancom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 66
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    return-object v0
.end method

.method public bridge synthetic descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;
    .locals 1

    .line 25
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1

    .line 25
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->elementSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public elementSet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->elementSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/NavigableSet;
    .locals 1

    .line 25
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->elementSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 25
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->elementSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/SortedSet;
    .locals 1

    .line 25
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->elementSet()Lccsancom/google/common/collect/ImmutableSortedSet;

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

    .line 41
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->lastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lccsancom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableList;->reverse()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Multiset$Entry;

    return-object v0
.end method

.method public headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    .local p1, "upperBound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 0

    .line 25
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    .line 81
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->isPartialView()Z

    move-result v0

    return v0
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

    .line 46
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->firstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 51
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->size()I

    move-result v0

    return v0
.end method

.method public tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/ImmutableSortedMultiset;
    .locals 1
    .param p2, "boundType"    # Lccsancom/google/common/collect/BoundType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;",
            "Lccsancom/google/common/collect/BoundType;",
            ")",
            "Lccsancom/google/common/collect/ImmutableSortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    .local p1, "lowerBound":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->forward:Lccsancom/google/common/collect/ImmutableSortedMultiset;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/ImmutableSortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;
    .locals 0

    .line 25
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;, "Lccsancom/google/common/collect/DescendingImmutableSortedMultiset<TE;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/DescendingImmutableSortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/ImmutableSortedMultiset;

    move-result-object p1

    return-object p1
.end method
