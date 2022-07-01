.class abstract Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;
.super Lccsancom/google/common/collect/ImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IteratorBasedImmutableMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/ImmutableMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 408
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMap;-><init>()V

    return-void
.end method


# virtual methods
.method createEntrySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 430
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap$1EntrySetImpl;-><init>(Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;)V

    return-object v0
.end method

.method createKeySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 413
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMapKeySet;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMapKeySet;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method createValues()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMapValues;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/ImmutableMapValues;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-object v0
.end method

.method abstract entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    .line 408
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    .line 408
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 408
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;, "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<TK;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableMap;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method
