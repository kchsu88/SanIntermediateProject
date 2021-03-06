.class final Lccsancom/google/common/collect/Sets$PowerSet;
.super Ljava/util/AbstractSet;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Sets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PowerSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Ljava/util/Set<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final inputSet:Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;)V"
        }
    .end annotation

    .line 1449
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    .local p1, "input":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 1450
    nop

    .line 1451
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    .line 1450
    const-string v2, "Too many elements to create power set: %s > 30"

    invoke-static {v0, v2, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 1452
    invoke-static {p1}, Lccsancom/google/common/collect/Maps;->indexMap(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    .line 1453
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1477
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v0, p1, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 1478
    move-object v0, p1

    check-cast v0, Ljava/util/Set;

    .line 1479
    .local v0, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    iget-object v1, p0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/google/common/collect/ImmutableSet;->containsAll(Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 1481
    .end local v0    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1486
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Sets$PowerSet;

    if-eqz v0, :cond_0

    .line 1487
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Sets$PowerSet;

    .line 1488
    .local v0, "that":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<*>;"
    iget-object v1, p0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    iget-object v2, v0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1490
    .end local v0    # "that":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<*>;"
    :cond_0
    invoke-super {p0, p1}, Ljava/util/AbstractSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 1500
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->hashCode()I

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    shl-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 1462
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Set<",
            "TE;>;>;"
        }
    .end annotation

    .line 1467
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Lccsancom/google/common/collect/Sets$PowerSet$1;

    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$PowerSet;->size()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lccsancom/google/common/collect/Sets$PowerSet$1;-><init>(Lccsancom/google/common/collect/Sets$PowerSet;I)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 1457
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->size()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1505
    .local p0, "this":Lccsancom/google/common/collect/Sets$PowerSet;, "Lccsancom/google/common/collect/Sets$PowerSet<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "powerSet("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/google/common/collect/Sets$PowerSet;->inputSet:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
