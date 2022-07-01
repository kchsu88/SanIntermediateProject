.class final Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;
.super Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MapViewOfValuesAsSingletonSets"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap<",
        "TK;",
        "Lccsancom/google/common/collect/ImmutableSet<",
        "TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableMap;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/ImmutableMap;)V
    .locals 0

    .line 614
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMap$IteratorBasedImmutableMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ImmutableMap$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/ImmutableMap;
    .param p2, "x1"    # Lccsancom/google/common/collect/ImmutableMap$1;

    .line 614
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;-><init>(Lccsancom/google/common/collect/ImmutableMap;)V

    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 629
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
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

    .line 624
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Ljava/util/Map$Entry<",
            "TK;",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TV;>;>;>;"
        }
    .end annotation

    .line 656
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    .line 657
    .local v0, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    new-instance v1, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;

    invoke-direct {v1, p0, v0}, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets$1;-><init>(Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;Ljava/util/Iterator;)V

    return-object v1
.end method

.method public get(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TV;>;"
        }
    .end annotation

    .line 634
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 635
    .local v0, "outerValue":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 613
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->get(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    .line 646
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v0

    return v0
.end method

.method isHashCodeFast()Z
    .locals 1

    .line 651
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->isHashCodeFast()Z

    move-result v0

    return v0
.end method

.method isPartialView()Z
    .locals 1

    .line 640
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->isPartialView()Z

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    .line 619
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;, "Lccsancom/google/common/collect/ImmutableMap<TK;TV;>.MapViewOfValuesAsSingletonSets;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMap$MapViewOfValuesAsSingletonSets;->this$0:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    return v0
.end method
