.class public final Lccsancom/google/common/collect/Tables;
.super Ljava/lang/Object;
.source "Tables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/Tables$UnmodifiableRowSortedMap;,
        Lccsancom/google/common/collect/Tables$UnmodifiableTable;,
        Lccsancom/google/common/collect/Tables$TransformedTable;,
        Lccsancom/google/common/collect/Tables$TransposeTable;,
        Lccsancom/google/common/collect/Tables$AbstractCell;,
        Lccsancom/google/common/collect/Tables$ImmutableCell;
    }
.end annotation


# static fields
.field private static final UNMODIFIABLE_WRAPPER:Lccsancom/google/common/base/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Function<",
            "+",
            "Ljava/util/Map<",
            "**>;+",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 587
    new-instance v0, Lccsancom/google/common/collect/Tables$1;

    invoke-direct {v0}, Lccsancom/google/common/collect/Tables$1;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/Tables;->UNMODIFIABLE_WRAPPER:Lccsancom/google/common/base/Function;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lccsancom/google/common/base/Function;
    .locals 1

    .line 49
    invoke-static {}, Lccsancom/google/common/collect/Tables;->unmodifiableWrapper()Lccsancom/google/common/base/Function;

    move-result-object v0

    return-object v0
.end method

.method static equalsImpl(Lccsancom/google/common/collect/Table;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table<",
            "***>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 629
    .local p0, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<***>;"
    if-ne p1, p0, :cond_0

    .line 630
    const/4 v0, 0x1

    return v0

    .line 631
    :cond_0
    instance-of v0, p1, Lccsancom/google/common/collect/Table;

    if-eqz v0, :cond_1

    .line 632
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Table;

    .line 633
    .local v0, "that":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<***>;"
    invoke-interface {p0}, Lccsancom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lccsancom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 635
    .end local v0    # "that":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<***>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/Table$Cell;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p1    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
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

    .line 63
    .local p0, "rowKey":Ljava/lang/Object;, "TR;"
    .local p1, "columnKey":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/collect/Tables$ImmutableCell;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/google/common/collect/Tables$ImmutableCell;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static newCustomTable(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)Lccsancom/google/common/collect/Table;
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
            "Ljava/util/Map<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;",
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Ljava/util/Map<",
            "TC;TV;>;>;)",
            "Lccsancom/google/common/collect/Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 291
    .local p0, "backingMap":Ljava/util/Map;, "Ljava/util/Map<TR;Ljava/util/Map<TC;TV;>;>;"
    .local p1, "factory":Lccsancom/google/common/base/Supplier;, "Lccsancom/google/common/base/Supplier<+Ljava/util/Map<TC;TV;>;>;"
    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 292
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    new-instance v0, Lccsancom/google/common/collect/StandardTable;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/StandardTable;-><init>(Ljava/util/Map;Lccsancom/google/common/base/Supplier;)V

    return-object v0
.end method

.method public static synchronizedTable(Lccsancom/google/common/collect/Table;)Lccsancom/google/common/collect/Table;
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
            "TR;TC;TV;>;)",
            "Lccsancom/google/common/collect/Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 625
    .local p0, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<TR;TC;TV;>;"
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Synchronized;->table(Lccsancom/google/common/collect/Table;Ljava/lang/Object;)Lccsancom/google/common/collect/Table;

    move-result-object v0

    return-object v0
.end method

.method public static transformValues(Lccsancom/google/common/collect/Table;Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/Table;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "C:",
            "Ljava/lang/Object;",
            "V1:",
            "Ljava/lang/Object;",
            "V2:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/collect/Table<",
            "TR;TC;TV1;>;",
            "Lccsancom/google/common/base/Function<",
            "-TV1;TV2;>;)",
            "Lccsancom/google/common/collect/Table<",
            "TR;TC;TV2;>;"
        }
    .end annotation

    .line 321
    .local p0, "fromTable":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<TR;TC;TV1;>;"
    .local p1, "function":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<-TV1;TV2;>;"
    new-instance v0, Lccsancom/google/common/collect/Tables$TransformedTable;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/Tables$TransformedTable;-><init>(Lccsancom/google/common/collect/Table;Lccsancom/google/common/base/Function;)V

    return-object v0
.end method

.method public static transpose(Lccsancom/google/common/collect/Table;)Lccsancom/google/common/collect/Table;
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
            "TR;TC;TV;>;)",
            "Lccsancom/google/common/collect/Table<",
            "TC;TR;TV;>;"
        }
    .end annotation

    .line 137
    .local p0, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<TR;TC;TV;>;"
    instance-of v0, p0, Lccsancom/google/common/collect/Tables$TransposeTable;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lccsancom/google/common/collect/Tables$TransposeTable;

    iget-object v0, v0, Lccsancom/google/common/collect/Tables$TransposeTable;->original:Lccsancom/google/common/collect/Table;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/collect/Tables$TransposeTable;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Tables$TransposeTable;-><init>(Lccsancom/google/common/collect/Table;)V

    :goto_0
    return-object v0
.end method

.method public static unmodifiableRowSortedTable(Lccsancom/google/common/collect/RowSortedTable;)Lccsancom/google/common/collect/RowSortedTable;
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
            "Lccsancom/google/common/collect/RowSortedTable<",
            "TR;+TC;+TV;>;)",
            "Lccsancom/google/common/collect/RowSortedTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 553
    .local p0, "table":Lccsancom/google/common/collect/RowSortedTable;, "Lccsancom/google/common/collect/RowSortedTable<TR;+TC;+TV;>;"
    new-instance v0, Lccsancom/google/common/collect/Tables$UnmodifiableRowSortedMap;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Tables$UnmodifiableRowSortedMap;-><init>(Lccsancom/google/common/collect/RowSortedTable;)V

    return-object v0
.end method

.method public static unmodifiableTable(Lccsancom/google/common/collect/Table;)Lccsancom/google/common/collect/Table;
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
            "Lccsancom/google/common/collect/Table<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 451
    .local p0, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<+TR;+TC;+TV;>;"
    new-instance v0, Lccsancom/google/common/collect/Tables$UnmodifiableTable;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/Tables$UnmodifiableTable;-><init>(Lccsancom/google/common/collect/Table;)V

    return-object v0
.end method

.method private static unmodifiableWrapper()Lccsancom/google/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/base/Function<",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 584
    sget-object v0, Lccsancom/google/common/collect/Tables;->UNMODIFIABLE_WRAPPER:Lccsancom/google/common/base/Function;

    return-object v0
.end method
