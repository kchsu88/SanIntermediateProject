.class Lccsancom/google/common/collect/SortedMultisets$ElementSet;
.super Lccsancom/google/common/collect/Multisets$ElementSet;
.source "SortedMultisets.java"

# interfaces
.implements Ljava/util/SortedSet;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/SortedMultisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ElementSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Multisets$ElementSet<",
        "TE;>;",
        "Ljava/util/SortedSet<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final multiset:Lccsancom/google/common/collect/SortedMultiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation
.end field


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

    .line 46
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    .local p1, "multiset":Lccsancom/google/common/collect/SortedMultiset;, "Lccsancom/google/common/collect/SortedMultiset<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/Multisets$ElementSet;-><init>()V

    .line 47
    iput-object p1, p0, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset:Lccsancom/google/common/collect/SortedMultiset;

    .line 48
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

    .line 62
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->comparator()Ljava/util/Comparator;

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

    .line 82
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->firstEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$000(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/BoundType;->OPEN:Lccsancom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/collect/SortedMultiset;->headMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

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

    .line 57
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/Multisets;->elementIterator(Ljava/util/Iterator;)Ljava/util/Iterator;

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

    .line 87
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->lastEntry()Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/SortedMultisets;->access$000(Lccsancom/google/common/collect/Multiset$Entry;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic multiset()Lccsancom/google/common/collect/Multiset;
    .locals 1

    .line 43
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    return-object v0
.end method

.method final multiset()Lccsancom/google/common/collect/SortedMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/SortedMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 52
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset:Lccsancom/google/common/collect/SortedMultiset;

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 67
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p2, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    sget-object v2, Lccsancom/google/common/collect/BoundType;->OPEN:Lccsancom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1, p2, v2}, Lccsancom/google/common/collect/SortedMultiset;->subMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lccsancom/google/common/collect/SortedMultisets$ElementSet;, "Lccsancom/google/common/collect/SortedMultisets$ElementSet<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/SortedMultisets$ElementSet;->multiset()Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/BoundType;->CLOSED:Lccsancom/google/common/collect/BoundType;

    invoke-interface {v0, p1, v1}, Lccsancom/google/common/collect/SortedMultiset;->tailMultiset(Ljava/lang/Object;Lccsancom/google/common/collect/BoundType;)Lccsancom/google/common/collect/SortedMultiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/SortedMultiset;->elementSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
