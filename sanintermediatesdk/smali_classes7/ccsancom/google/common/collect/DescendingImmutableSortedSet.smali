.class final Lccsancom/google/common/collect/DescendingImmutableSortedSet;
.super Lccsancom/google/common/collect/ImmutableSortedSet;
.source "DescendingImmutableSortedSet.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableSortedSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final forward:Lccsancom/google/common/collect/ImmutableSortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableSortedSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 32
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "forward":Lccsancom/google/common/collect/ImmutableSortedSet;, "Lccsancom/google/common/collect/ImmutableSortedSet<TE;>;"
    invoke-virtual {p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/google/common/collect/ImmutableSortedSet;-><init>(Ljava/util/Comparator;)V

    .line 33
    iput-object p1, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    .line 34
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 97
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 38
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createDescendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 82
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 76
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic descendingIterator()Ljava/util/Iterator;
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    return-object v0
.end method

.method public bridge synthetic descendingSet()Ljava/util/NavigableSet;
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 92
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method headSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->tailSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 102
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method indexOf(Ljava/lang/Object;)I
    .locals 2
    .param p1, "target"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 107
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 108
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 109
    return v0

    .line 111
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v0

    return v1
.end method

.method isPartialView()Z
    .locals 1

    .line 117
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 48
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 27
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 87
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableSortedSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 43
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->size()I

    move-result v0

    return v0
.end method

.method subSetImpl(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
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

    .line 59
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p3, p4, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method

.method tailSetImpl(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Lccsancom/google/common/collect/ImmutableSortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lccsancom/google/common/collect/DescendingImmutableSortedSet;, "Lccsancom/google/common/collect/DescendingImmutableSortedSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/DescendingImmutableSortedSet;->forward:Lccsancom/google/common/collect/ImmutableSortedSet;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/collect/ImmutableSortedSet;->headSet(Ljava/lang/Object;Z)Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSortedSet;->descendingSet()Lccsancom/google/common/collect/ImmutableSortedSet;

    move-result-object v0

    return-object v0
.end method
