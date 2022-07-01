.class Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;
.super Lccsancom/google/common/collect/SortedMultisets$ElementSet;
.source "SortedMultisets.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/SortedMultisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "NavigableElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/SortedMultisets$ElementSet<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/SortedMultiset;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;)V"
        }
    .end annotation

    .line 95
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "multiset":Lccsancom/google/common/collect/SortedMultiset;, "Lccsancom/google/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;-><init>(Lccsancom/google/common/collect/SortedMultiset;)V

    .line 96
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->firstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$100(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 120
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;

    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/collect/SortedMultiset;->descendingMultiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lccsancom/google/common/collect/SortedMultiset;)V

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->lastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$100(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 150
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;

    .line 151
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lccsancom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lccsancom/google/common/collect/SortedMultiset;)V

    .line 150
    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/BoundType;->OPEN:Lccsancom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->firstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$100(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

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

    .line 100
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/BoundType;->OPEN:Lccsancom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->lastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$100(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->pollFirstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$100(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->pollLastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$100(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 4
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;

    .line 142
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    .line 144
    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v2

    .line 145
    invoke-static {p4}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v3

    .line 143
    invoke-interface {v1, p1, v2, p3, v3}, Lccsancom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lccsancom/google/common/collect/SortedMultiset;)V

    .line 141
    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 3
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;, "Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    new-instance v0, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;

    .line 157
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-static {p2}, Lccsancom/google/common/collect/BoundType;->forBoolean(Z)Lccsancom/google/common/collect/BoundType;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lccsancom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/SortedMultisets$NavigableElementSet;-><init>(Lccsancom/google/common/collect/SortedMultiset;)V

    .line 156
    return-object v0
.end method
