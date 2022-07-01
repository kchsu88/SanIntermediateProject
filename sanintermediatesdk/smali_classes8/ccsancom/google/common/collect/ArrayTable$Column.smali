.class Lccsancom/google/common/collect/ArrayTable$Column;
.super Lccsancom/google/common/collect/ArrayTable$ArrayMap;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ArrayTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ArrayTable$ArrayMap<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final columnIndex:I

.field final synthetic this$0:Lccsancom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ArrayTable;I)V
    .locals 1
    .param p2, "columnIndex"    # I

    .line 582
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Column;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iput-object p1, p0, Lccsancom/google/common/collect/ArrayTable$Column;->this$0:Lccsancom/google/common/collect/ArrayTable;

    .line 583
    invoke-static {p1}, Lccsancom/google/common/collect/ArrayTable;->access$300(Lccsancom/google/common/collect/ArrayTable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/google/common/collect/ArrayTable$ArrayMap;-><init>(Lccsancom/google/common/collect/ImmutableMap;Lccsancom/google/common/collect/ArrayTable$1;)V

    .line 584
    iput p2, p0, Lccsancom/google/common/collect/ArrayTable$Column;->columnIndex:I

    .line 585
    return-void
.end method


# virtual methods
.method getKeyRole()Ljava/lang/String;
    .locals 1

    .line 589
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Column;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    const-string v0, "Row"

    return-object v0
.end method

.method getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Column;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lccsancom/google/common/collect/ArrayTable$Column;->this$0:Lccsancom/google/common/collect/ArrayTable;

    iget v1, p0, Lccsancom/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-virtual {v0, p1, v1}, Lccsancom/google/common/collect/ArrayTable;->at(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method setValue(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .line 599
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$Column;, "Lccsancom/google/common/collect/ArrayTable<TR;TC;TV;>.Column;"
    .local p2, "newValue":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/collect/ArrayTable$Column;->this$0:Lccsancom/google/common/collect/ArrayTable;

    iget v1, p0, Lccsancom/google/common/collect/ArrayTable$Column;->columnIndex:I

    invoke-virtual {v0, p1, v1, p2}, Lccsancom/google/common/collect/ArrayTable;->set(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
