.class Lccsancom/google/common/collect/Sets$DescendingSet;
.super Lccsancom/google/common/collect/ForwardingNavigableSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DescendingSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ForwardingNavigableSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final forward:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/NavigableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 1844
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "forward":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ForwardingNavigableSet;-><init>()V

    .line 1845
    iput-object p1, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    .line 1846
    return-void
.end method

.method private static reverse(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;
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

    .line 1937
    .local p0, "forward":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Ordering;->from(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 1865
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public comparator()Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-TE;>;"
        }
    .end annotation

    .line 1927
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->comparator()Ljava/util/Comparator;

    move-result-object v0

    .line 1928
    .local v0, "forwardComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TE;>;"
    if-nez v0, :cond_0

    .line 1929
    invoke-static {}, Lccsancom/google/common/collect/Ordering;->natural()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/Ordering;->reverse()Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    return-object v1

    .line 1931
    :cond_0
    invoke-static {v0}, Lccsancom/google/common/collect/Sets$DescendingSet;->reverse(Ljava/util/Comparator;)Lccsancom/google/common/collect/Ordering;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 1840
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Collection;
    .locals 1

    .line 1840
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1850
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/Set;
    .locals 1

    .line 1840
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/util/SortedSet;
    .locals 1

    .line 1840
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$DescendingSet;->delegate()Ljava/util/NavigableSet;

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

    .line 1890
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1885
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public first()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1942
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->last()Ljava/lang/Object;

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

    .line 1860
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1906
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1911
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Sets$DescendingSet;->standardHeadSet(Ljava/lang/Object;)Ljava/util/SortedSet;

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

    .line 1870
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 1952
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

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

    .line 1947
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->first()Ljava/lang/Object;

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

    .line 1855
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1875
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

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

    .line 1880
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1896
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p3, p4, p1, p2}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1901
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/Sets$DescendingSet;->standardSubSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 1916
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$DescendingSet;->forward:Ljava/util/NavigableSet;

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 1921
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Sets$DescendingSet;->standardTailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 1957
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$DescendingSet;->standardToArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 1962
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/Sets$DescendingSet;->standardToArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1967
    .local p0, "this":Lccsancom/google/common/collect/Sets$DescendingSet;, "Lccsancom/google/common/collect/Sets$DescendingSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$DescendingSet;->standardToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
