.class Lccsancom/google/common/collect/Tables$TransposeTable;
.super Lccsancom/google/common/collect/AbstractTable;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Tables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposeTable"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/AbstractTable<",
        "TC;TR;TV;>;"
    }
.end annotation


# static fields
.field private static final TRANSPOSE_CELL:Lccsancom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Function<",
            "Lccsancom/google/common/collect/Table$Cell<",
            "***>;",
            "Lccsancom/google/common/collect/Table$Cell<",
            "***>;>;"
        }
    .end annotation
.end field


# instance fields
.field final original:Lccsancom/google/common/collect/Table;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/Table<",
            "TR;TC;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lccsancom/google/common/collect/Tables$TransposeTable$1;

    invoke-direct {v0}, Lccsancom/google/common/collect/Tables$TransposeTable$1;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lccsancom/google/common/base/Function;

    return-void
.end method

.method constructor <init>(Lccsancom/google/common/collect/Table;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table<",
            "TR;TC;TV;>;)V"
        }
    .end annotation

    .line 145
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "original":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<TR;TC;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractTable;-><init>()V

    .line 146
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/Table;

    iput-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    .line 147
    return-void
.end method


# virtual methods
.method cellIterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TC;TR;TV;>;>;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sget-object v1, Lccsancom/google/common/collect/Tables$TransposeTable;->TRANSPOSE_CELL:Lccsancom/google/common/base/Function;

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 151
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->clear()V

    .line 152
    return-void
.end method

.method public column(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 156
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "columnKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Table;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public columnKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TR;>;"
        }
    .end annotation

    .line 161
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->rowKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public columnMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->rowMap()Ljava/util/Map;

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

    .line 171
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/collect/Table;->contains(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsColumn(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 176
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Table;->containsRow(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsRow(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 181
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Table;->containsColumn(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 186
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Table;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/collect/Table;->get(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;TR;TV;)TV;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TC;"
    .local p2, "columnKey":Ljava/lang/Object;, "TR;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p2, p1, p3}, Lccsancom/google/common/collect/Table;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lccsancom/google/common/collect/Table;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table<",
            "+TC;+TR;+TV;>;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<+TC;+TR;+TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-static {p1}, Lccsancom/google/common/collect/Tables;->transpose(Lccsancom/google/common/collect/Table;)Lccsancom/google/common/collect/Table;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/collect/Table;->putAll(Lccsancom/google/common/collect/Table;)V

    .line 202
    return-void
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "rowKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "columnKey"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/collect/Table;->remove(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public row(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TC;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0, p1}, Lccsancom/google/common/collect/Table;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public rowKeySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TC;>;"
        }
    .end annotation

    .line 216
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public rowMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;"
        }
    .end annotation

    .line 221
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->columnMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 226
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 231
    .local p0, "this":Lccsancom/google/common/collect/Tables$TransposeTable;, "Lccsancom/google/common/collect/Tables$TransposeTable<TC;TR;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
