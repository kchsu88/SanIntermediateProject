.class abstract Lccsancom/google/common/collect/Multisets$EntrySet;
.super Lccsancom/google/common/collect/Sets$ImprovedAbstractSet;
.source "Multisets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/Sets$ImprovedAbstractSet<",
        "Lccsancom/google/common/collect/Multiset$Entry<",
        "TE;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 996
    .local p0, "this":Lccsancom/google/common/collect/Multisets$EntrySet;, "Lccsancom/google/common/collect/Multisets$EntrySet<TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/Sets$ImprovedAbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1036
    .local p0, "this":Lccsancom/google/common/collect/Multisets$EntrySet;, "Lccsancom/google/common/collect/Multisets$EntrySet<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$EntrySet;->multiset()Lccsancom/google/common/collect/Multiset;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset;->clear()V

    .line 1037
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1001
    .local p0, "this":Lccsancom/google/common/collect/Multisets$EntrySet;, "Lccsancom/google/common/collect/Multisets$EntrySet<TE;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1006
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Multiset$Entry;

    .line 1007
    .local v0, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 1008
    return v1

    .line 1010
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$EntrySet;->multiset()Lccsancom/google/common/collect/Multiset;

    move-result-object v2

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Lccsancom/google/common/collect/Multiset;->count(Ljava/lang/Object;)I

    move-result v2

    .line 1011
    .local v2, "count":I
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    .line 1013
    .end local v0    # "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "count":I
    :cond_2
    return v1
.end method

.method abstract multiset()Lccsancom/google/common/collect/Multiset;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Multiset<",
            "TE;>;"
        }
    .end annotation
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 1020
    .local p0, "this":Lccsancom/google/common/collect/Multisets$EntrySet;, "Lccsancom/google/common/collect/Multisets$EntrySet<TE;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1021
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Multiset$Entry;

    .line 1022
    .local v0, "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v2

    .line 1023
    .local v2, "element":Ljava/lang/Object;
    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    .line 1024
    .local v3, "entryCount":I
    if-eqz v3, :cond_0

    .line 1027
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$EntrySet;->multiset()Lccsancom/google/common/collect/Multiset;

    move-result-object v4

    .line 1028
    .local v4, "multiset":Lccsancom/google/common/collect/Multiset;, "Lccsancom/google/common/collect/Multiset<Ljava/lang/Object;>;"
    invoke-interface {v4, v2, v3, v1}, Lccsancom/google/common/collect/Multiset;->setCount(Ljava/lang/Object;II)Z

    move-result v1

    return v1

    .line 1031
    .end local v0    # "entry":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    .end local v2    # "element":Ljava/lang/Object;
    .end local v3    # "entryCount":I
    .end local v4    # "multiset":Lccsancom/google/common/collect/Multiset;, "Lccsancom/google/common/collect/Multiset<Ljava/lang/Object;>;"
    :cond_0
    return v1
.end method
