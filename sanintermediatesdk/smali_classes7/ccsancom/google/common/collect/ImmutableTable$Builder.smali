.class public final Lccsancom/google/common/collect/ImmutableTable$Builder;
.super Ljava/lang/Object;
.source "ImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
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
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final cells:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;>;"
        }
    .end annotation
.end field

.field private columnComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TC;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private rowComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TR;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 143
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {}, Lccsancom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    .line 143
    return-void
.end method


# virtual methods
.method public build()Lccsancom/google/common/collect/ImmutableTable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableTable<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 208
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 209
    .local v0, "size":I
    packed-switch v0, :pswitch_data_0

    .line 215
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->rowComparator:Ljava/util/Comparator;

    iget-object v3, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->columnComparator:Ljava/util/Comparator;

    invoke-static {v1, v2, v3}, Lccsancom/google/common/collect/RegularImmutableTable;->forCells(Ljava/util/List;Ljava/util/Comparator;Ljava/util/Comparator;)Lccsancom/google/common/collect/RegularImmutableTable;

    move-result-object v1

    return-object v1

    .line 213
    :pswitch_0
    new-instance v1, Lccsancom/google/common/collect/SingletonImmutableTable;

    iget-object v2, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-static {v2}, Lccsancom/google/common/collect/Iterables;->getOnlyElement(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/collect/Table$Cell;

    invoke-direct {v1, v2}, Lccsancom/google/common/collect/SingletonImmutableTable;-><init>(Lccsancom/google/common/collect/Table$Cell;)V

    return-object v1

    .line 211
    :pswitch_1
    invoke-static {}, Lccsancom/google/common/collect/ImmutableTable;->of()Lccsancom/google/common/collect/ImmutableTable;

    move-result-object v1

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public orderColumnsBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TC;>;)",
            "Lccsancom/google/common/collect/ImmutableTable$Builder<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 155
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "columnComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TC;>;"
    const-string v0, "columnComparator"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->columnComparator:Ljava/util/Comparator;

    .line 156
    return-object p0
.end method

.method public orderRowsBy(Ljava/util/Comparator;)Lccsancom/google/common/collect/ImmutableTable$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TR;>;)",
            "Lccsancom/google/common/collect/ImmutableTable$Builder<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "rowComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TR;>;"
    const-string v0, "rowComparator"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Comparator;

    iput-object v0, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->rowComparator:Ljava/util/Comparator;

    .line 149
    return-object p0
.end method

.method public put(Lccsancom/google/common/collect/Table$Cell;)Lccsancom/google/common/collect/ImmutableTable$Builder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table$Cell<",
            "+TR;+TC;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableTable$Builder<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "cell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Tables$ImmutableCell;

    if-eqz v0, :cond_0

    .line 176
    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "row"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "column"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "value"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    move-object v0, p1

    .line 181
    .local v0, "immutableCell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    .end local v0    # "immutableCell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    goto :goto_0

    .line 183
    :cond_0
    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getRowKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getColumnKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/google/common/collect/ImmutableTable$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableTable$Builder;

    .line 185
    :goto_0
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableTable$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;TC;TV;)",
            "Lccsancom/google/common/collect/ImmutableTable$Builder<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    .local p2, "columnKey":Ljava/lang/Object;, "TC;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableTable$Builder;->cells:Ljava/util/List;

    invoke-static {p1, p2, p3}, Lccsancom/google/common/collect/ImmutableTable;->cellOf(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/Table$Cell;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-object p0
.end method

.method public putAll(Lccsancom/google/common/collect/Table;)Lccsancom/google/common/collect/ImmutableTable$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table<",
            "+TR;+TC;+TV;>;)",
            "Lccsancom/google/common/collect/ImmutableTable$Builder<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 196
    .local p0, "this":Lccsancom/google/common/collect/ImmutableTable$Builder;, "Lccsancom/google/common/collect/ImmutableTable$Builder<TR;TC;TV;>;"
    .local p1, "table":Lccsancom/google/common/collect/Table;, "Lccsancom/google/common/collect/Table<+TR;+TC;+TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/collect/Table;->cellSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/collect/Table$Cell;

    .line 197
    .local v1, "cell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    invoke-virtual {p0, v1}, Lccsancom/google/common/collect/ImmutableTable$Builder;->put(Lccsancom/google/common/collect/Table$Cell;)Lccsancom/google/common/collect/ImmutableTable$Builder;

    .line 198
    .end local v1    # "cell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<+TR;+TC;+TV;>;"
    goto :goto_0

    .line 199
    :cond_0
    return-object p0
.end method
