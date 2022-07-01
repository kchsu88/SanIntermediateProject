.class public Lccsancom/google/common/collect/HashMultiset;
.super Lccsancom/google/common/collect/AbstractMapBasedMultiset;
.source "HashMultiset.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractMapBasedMultiset<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "distinctElements"    # I

    .line 62
    .local p0, "this":Lccsancom/google/common/collect/HashMultiset;, "Lccsancom/google/common/collect/HashMultiset<TE;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;-><init>(I)V

    .line 63
    return-void
.end method

.method public static create()Lccsancom/google/common/collect/HashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/HashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 34
    const/4 v0, 0x3

    invoke-static {v0}, Lccsancom/google/common/collect/HashMultiset;->create(I)Lccsancom/google/common/collect/HashMultiset;

    move-result-object v0

    return-object v0
.end method

.method public static create(I)Lccsancom/google/common/collect/HashMultiset;
    .locals 1
    .param p0, "distinctElements"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lccsancom/google/common/collect/HashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 45
    new-instance v0, Lccsancom/google/common/collect/HashMultiset;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/HashMultiset;-><init>(I)V

    return-object v0
.end method

.method public static create(Ljava/lang/Iterable;)Lccsancom/google/common/collect/HashMultiset;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lccsancom/google/common/collect/HashMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 56
    .local p0, "elements":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    invoke-static {p0}, Lccsancom/google/common/collect/Multisets;->inferDistinctElements(Ljava/lang/Iterable;)I

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/collect/HashMultiset;->create(I)Lccsancom/google/common/collect/HashMultiset;

    move-result-object v0

    .line 57
    .local v0, "multiset":Lccsancom/google/common/collect/HashMultiset;, "Lccsancom/google/common/collect/HashMultiset<TE;>;"
    invoke-static {v0, p0}, Lccsancom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 58
    return-object v0
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 29
    .local p0, "this":Lccsancom/google/common/collect/HashMultiset;, "Lccsancom/google/common/collect/HashMultiset<TE;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 29
    .local p0, "this":Lccsancom/google/common/collect/HashMultiset;, "Lccsancom/google/common/collect/HashMultiset<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->elementSet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 29
    .local p0, "this":Lccsancom/google/common/collect/HashMultiset;, "Lccsancom/google/common/collect/HashMultiset<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method init(I)V
    .locals 1
    .param p1, "distinctElements"    # I

    .line 67
    .local p0, "this":Lccsancom/google/common/collect/HashMultiset;, "Lccsancom/google/common/collect/HashMultiset<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/ObjectCountHashMap;

    invoke-direct {v0, p1}, Lccsancom/google/common/collect/ObjectCountHashMap;-><init>(I)V

    iput-object v0, p0, Lccsancom/google/common/collect/HashMultiset;->backingMap:Lccsancom/google/common/collect/ObjectCountHashMap;

    .line 68
    return-void
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 29
    .local p0, "this":Lccsancom/google/common/collect/HashMultiset;, "Lccsancom/google/common/collect/HashMultiset<TE;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractMapBasedMultiset;->isEmpty()Z

    move-result v0

    return v0
.end method
