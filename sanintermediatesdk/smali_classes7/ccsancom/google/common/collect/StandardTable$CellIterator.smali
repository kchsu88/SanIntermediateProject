.class Lccsancom/google/common/collect/StandardTable$CellIterator;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/StandardTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lccsancom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;>;"
    }
.end annotation


# instance fields
.field columnIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TC;TV;>;>;"
        }
    .end annotation
.end field

.field rowEntry:Ljava/util/Map$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final rowIterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TR;",
            "Ljava/util/Map<",
            "TC;TV;>;>;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/StandardTable;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/StandardTable;)V
    .locals 0

    .line 234
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$CellIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iget-object p1, p1, Lccsancom/google/common/collect/StandardTable;->backingMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    .line 237
    invoke-static {}, Lccsancom/google/common/collect/Iterators;->emptyModifiableIterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/StandardTable;Lccsancom/google/common/collect/StandardTable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/StandardTable;
    .param p2, "x1"    # Lccsancom/google/common/collect/StandardTable$1;

    .line 234
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$CellIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/StandardTable$CellIterator;-><init>(Lccsancom/google/common/collect/StandardTable;)V

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 241
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$CellIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public next()Lccsancom/google/common/collect/Table$Cell;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;"
        }
    .end annotation

    .line 246
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$CellIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iput-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowEntry:Ljava/util/Map$Entry;

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    .line 250
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 251
    .local v0, "columnEntry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TC;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowEntry:Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lccsancom/google/common/collect/Tables;->immutableCell(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/Table$Cell;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 234
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$CellIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/StandardTable$CellIterator;->next()Lccsancom/google/common/collect/Table$Cell;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 256
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$CellIterator;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.CellIterator;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->columnIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 257
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowEntry:Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowIterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/google/common/collect/StandardTable$CellIterator;->rowEntry:Ljava/util/Map$Entry;

    .line 261
    :cond_0
    return-void
.end method
