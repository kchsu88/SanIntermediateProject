.class Lccsancom/google/common/collect/ArrayTable$ColumnMap;
.super Lccsancom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ArrayTable$ArrayMap<",
        "TC;",
        "Ljava/util/Map<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ArrayTable;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/ArrayTable;)V
    .locals 1

    .line 624
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    iput-object p1, p0, Lccsancom/google/common/collect/ArrayTable$ColumnMap;->this$0:Lccsancom/google/common/collect/ArrayTable;

    .line 625
    invoke-static {p1}, Lccsancom/google/common/collect/ArrayTable;->access$600(Lccsancom/google/common/collect/ArrayTable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ArrayTable$1;)V

    .line 626
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/ArrayTable;Lccsancom/google/common/collect/ArrayTable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/ArrayTable;
    .param p2, "x1"    # Lccsancom/google/common/collect/ArrayTable$1;

    .line 623
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/ArrayTable$ColumnMap;-><init>(Lccsancom/google/common/collect/ArrayTable;)V

    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .line 630
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    const-string v0, "Column"

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 622
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ArrayTable$ColumnMap;->getValue(I)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method getValue(I)Ljava/util/Map;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 635
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lccsancom/google/common/collect/ArrayTable$Column;

    iget-object v1, p0, Lccsancom/google/common/collect/ArrayTable$ColumnMap;->this$0:Lccsancom/google/common/collect/ArrayTable;

    invoke-direct {v0, v1, p1}, Lccsancom/google/common/collect/ArrayTable$Column;-><init>(Lccsancom/google/common/collect/ArrayTable;I)V

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 622
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ArrayTable$ColumnMap;->put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;",
            "Ljava/util/Map<",
            "TR;TV;>;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 645
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    .local p1, "key":Ljava/lang/Object;, "TC;"
    .local p2, "value":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method bridge synthetic setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 622
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/collect/ArrayTable$ColumnMap;->setValue(ILjava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method setValue(ILjava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "TR;TV;>;)",
            "Ljava/util/Map<",
            "TR;TV;>;"
        }
    .end annotation

    .line 640
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$ColumnMap;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.ColumnMap;"
    .local p2, "newValue":Ljava/util/Map;, "Ljava/util/Map<TR;TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method