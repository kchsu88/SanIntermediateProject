.class abstract Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.super Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "ImmutableArrayMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final size:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "size"    # I

    .line 87
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;-><init>()V

    .line 88
    iput p1, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    .line 89
    return-void
.end method

.method private isFull()Z
    .locals 2

    .line 95
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    invoke-virtual {p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method createKeySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 107
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->isFull()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;->createKeySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 123
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap$1;-><init>(Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 118
    .local v0, "keyIndex":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->getValue(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method getKey(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->keyToIndex()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method abstract getValue(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end method

.method abstract keyToIndex()Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public size()I
    .locals 1

    .line 112
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;, "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;->size:I

    return v0
.end method
