.class Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;
.super Lccsancom/google/common/collect/StandardTable$TableSet;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/StandardTable$ColumnMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ColumnMapEntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/StandardTable<",
        "TR;TC;TV;>.TableSet<",
        "Ljava/util/Map$Entry<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/StandardTable$ColumnMap;)V
    .locals 2
    .param p1, "this$1"    # Lccsancom/google/common/collect/StandardTable$ColumnMap;

    .line 850
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, p1, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lccsancom/google/common/collect/StandardTable$TableSet;-><init>(Lccsancom/google/common/collect/StandardTable;Lccsancom/google/common/collect/StandardTable$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .line 870
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 871
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 872
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v1, v1, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/StandardTable;->containsColumn(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 877
    .local v1, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v2, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    invoke-virtual {v2, v1}, Lccsancom/google/common/collect/StandardTable$ColumnMap;->get(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 880
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "columnKey":Ljava/lang/Object;, "TC;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;",
            "Ljava/util/Map<",
            "TR;TV;>;>;>;"
        }
    .end annotation

    .line 853
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    .line 854
    invoke-virtual {v0}, Lccsancom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;

    invoke-direct {v1, p0}, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet$1;-><init>(Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;)V

    .line 853
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Maps;->asMapEntryIterator(Ljava/util/Set;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 885
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 887
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v1, v1, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/google/common/collect/StandardTable;->access$900(Lccsancom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 888
    const/4 v1, 0x1

    return v1

    .line 890
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 901
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lccsancom/google/common/collect/Sets;->removeAllImpl(Ljava/util/Set;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 907
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 908
    const/4 v0, 0x0

    .line 909
    .local v0, "changed":Z
    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v1, v1, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v1}, Lccsancom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Lists;->newArrayList(Ljava/util/Iterator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 910
    .local v2, "columnKey":Ljava/lang/Object;, "TC;"
    iget-object v3, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v3, v3, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v3, v2}, Lccsancom/google/common/collect/StandardTable;->column(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 911
    iget-object v3, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v3, v3, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-static {v3, v2}, Lccsancom/google/common/collect/StandardTable;->access$900(Lccsancom/google/common/collect/StandardTable;Ljava/lang/Object;)Ljava/util/Map;

    .line 912
    const/4 v0, 0x1

    .line 914
    .end local v2    # "columnKey":Ljava/lang/Object;, "TC;"
    :cond_0
    goto :goto_0

    .line 915
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 865
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.ColumnMap.ColumnMapEntrySet;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$ColumnMap$ColumnMapEntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$ColumnMap;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable$ColumnMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v0}, Lccsancom/google/common/collect/StandardTable;->columnKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
