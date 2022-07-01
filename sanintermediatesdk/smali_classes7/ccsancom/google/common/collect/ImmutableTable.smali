.class public abstract Lccsancom/google/common/collect/ImmutableTable;
.super Lccsancom/google/common/collect/AbstractTable;
.source "ImmutableTable.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/ImmutableTable$SerializedForm;,
        Lccsancom/google/common/collect/ImmutableTable$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractTable<",
        "TR;TC;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 220
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractTable;-><init>()V

    return-void
.end method

.method public static builder()Lccsancom/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableTable$Builder<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 94
    new-instance v0, Lccsancom/google/common/collect/ImmutableTable$Builder;

    invoke-direct {v0}, Lccsancom/google/common/collect/ImmutableTable$Builder;-><init>()V

    return-object v0
.end method

.method static cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/Table$Cell;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 102
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    nop

    .line 103
    const-string v0, "rowKey"

    invoke-static {p0, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 104
    const-string v1, "columnKey"

    invoke-static {p1, v1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 105
    const-string v2, "value"

    invoke-static {p2, v2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 102
    invoke-static {v0, v1, v2}, Lccsancom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public static copyOf(Lccsancom/google/common/collect/Table;)Lccsancom/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 71
    .local p0, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<+TR;+TC;+TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/ImmutableTable;

    if-eqz v0, :cond_0

    .line 73
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/ImmutableTable;

    .line 74
    .local v0, "parameterizedTable":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    return-object v0

    .line 76
    .end local v0    # "parameterizedTable":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/collect/ImmutableTable;->copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableTable;

    move-result-object v0

    return-object v0
.end method

.method private static copyOf(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableTable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Lccsancom/google/common/collect/Table$Cell<",
            "+TR;+TC;+TV;>;>;)",
            "Lccsancom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 82
    .local p0, "cells":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lccsancom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;>;"
    invoke-static {}, Lccsancom/google/common/collect/ImmutableTable;->builder()Lccsancom/google/common/collect/ImmutableTable$Builder;

    move-result-object v0

    .line 83
    .local v0, "builder":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Table$Cell;

    .line 84
    .local v2, "cell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-virtual {v0, v2}, Lccsancom/google/common/collect/ImmutableTable$Builder;->put(Lccsancom/google/common/collect/Table$Cell;)Lccsancom/google/common/collect/ImmutableTable$Builder;

    .line 85
    .end local v2    # "cell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableTable$Builder;->build()Lccsancom/google/common/collect/ImmutableTable;

    move-result-object v1

    return-object v1
.end method

.method public static of()Lccsancom/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 48
    sget-object v0, Lccsancom/google/common/collect/SparseImmutableTable;->EMPTY:Lccsancom/google/common/collect/ImmutableTable;

    return-object v0
.end method

.method public static of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableTable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TR;TC;TV;)",
            "Lccsancom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 53
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/collect/SingletonImmutableTable;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/google/common/collect/SingletonImmutableTable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method final cellIterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 232
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method bridge synthetic cellIterator()Ljava/util/Iterator;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->cellIterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public cellSet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractTable;->cellSet()Ljava/util/Set;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableSet;

    return-object v0
.end method

.method public bridge synthetic cellSet()Ljava/util/Set;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->cellSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public final clear()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 319
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public column(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    .line 255
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    const-string v0, "columnKey"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    nop

    .line 257
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->columnMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableMap;

    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableTable;->column(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public columnKeySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TC;>;"
        }
    .end annotation

    .line 262
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->columnMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic columnKeySet()Ljava/util/Set;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->columnKeySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract columnMap()Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic columnMap()Ljava/util/Map;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->columnMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public contains(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 302
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ImmutableTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic containsColumn(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractTable;->containsColumn(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic containsRow(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractTable;->containsRow(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 307
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method abstract createCellSet()Lccsancom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end method

.method bridge synthetic createCellSet()Ljava/util/Set;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->createCellSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method abstract createSerializedForm()Lccsancom/google/common/collect/ImmutableTable$SerializedForm;
.end method

.method abstract createValues()Lccsancom/google/common/collect/ImmutableCollection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation
.end method

.method bridge synthetic createValues()Ljava/util/Collection;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->createValues()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/collect/AbstractTable;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/collect/AbstractTable;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hashCode()I
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractTable;->hashCode()I

    move-result v0

    return v0
.end method

.method public bridge synthetic isEmpty()Z
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractTable;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 332
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final putAll(Lccsancom/google/common/collect/Table;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 344
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<+TR;+TC;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public final remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
    .param p2, "columnKey"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 357
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public row(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TC;TV;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    const-string v0, "rowKey"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    nop

    .line 283
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->rowMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableMap;

    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->of()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    .line 282
    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method public bridge synthetic row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableTable;->row(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method public rowKeySet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TR;>;"
        }
    .end annotation

    .line 288
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->rowMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic rowKeySet()Ljava/util/Set;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->rowKeySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public abstract rowMap()Lccsancom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation
.end method

.method public bridge synthetic rowMap()Ljava/util/Map;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->rowMap()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic toString()Ljava/lang/String;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractTable;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lccsancom/google/common/collect/ImmutableCollection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableCollection<",
            "TV;>;"
        }
    .end annotation

    .line 237
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/collect/AbstractTable;->values()Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/ImmutableCollection;

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    .line 42
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->values()Lccsancom/google/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

.method final valuesIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 245
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "should never be called"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method final writeReplace()Ljava/lang/Object;
    .locals 1

    .line 419
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable;, "Lccsancom/google/common/collect/ImmutableTable<TR;TC;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableTable;->createSerializedForm()Lccsancom/google/common/collect/ImmutableTable$SerializedForm;

    move-result-object v0

    return-object v0
.end method
