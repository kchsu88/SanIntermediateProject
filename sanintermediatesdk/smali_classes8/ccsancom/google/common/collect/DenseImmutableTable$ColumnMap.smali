.class final Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;
.super Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ColumnMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<",
        "TC;",
        "Lccsancom/google/common/collect/ImmutableMap<",
        "TR;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/DenseImmutableTable;


# direct methods
.method private constructor <init>(Lccsancom/google/common/collect/DenseImmutableTable;)V
    .locals 0

    .line 213
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    iput-object p1, p0, Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    .line 214
    invoke-static {p1}, Lccsancom/google/common/collect/DenseImmutableTable;->access$500(Lccsancom/google/common/collect/DenseImmutableTable;)[I

    move-result-object p1

    array-length p1, p1

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 215
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/collect/DenseImmutableTable;Lccsancom/google/common/collect/DenseImmutableTable$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/collect/DenseImmutableTable;
    .param p2, "x1"    # Lccsancom/google/common/collect/DenseImmutableTable$1;

    .line 212
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;-><init>(Lccsancom/google/common/collect/DenseImmutableTable;)V

    return-void
.end method


# virtual methods
.method getValue(I)Lccsancom/google/common/collect/ImmutableMap;
    .locals 2
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TR;TV;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    new-instance v0, Lccsancom/google/common/collect/DenseImmutableTable$Column;

    iget-object v1, p0, Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    invoke-direct {v0, v1, p1}, Lccsancom/google/common/collect/DenseImmutableTable$Column;-><init>(Lccsancom/google/common/collect/DenseImmutableTable;I)V

    return-object v0
.end method

.method bridge synthetic getValue(I)Ljava/lang/Object;
    .locals 0

    .line 211
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;->getValue(I)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object p1

    return-object p1
.end method

.method isPartialView()Z
    .locals 1

    .line 229
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    const/4 v0, 0x0

    return v0
.end method

.method keyToIndex()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TC;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.ColumnMap;"
    iget-object v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$ColumnMap;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lccsancom/google/common/collect/DenseImmutableTable;->access$300(Lccsancom/google/common/collect/DenseImmutableTable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method