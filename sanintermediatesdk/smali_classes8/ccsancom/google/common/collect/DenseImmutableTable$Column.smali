.class final Lccsancom/google/common/collect/DenseImmutableTable$Column;
.super Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Column"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field private final columnIndex:I

.field final synthetic this$0:Lccsancom/google/common/collect/DenseImmutableTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/DenseImmutableTable;I)V
    .locals 0
    .param p2, "columnIndex"    # I

    .line 168
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Column;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    iput-object p1, p0, Lccsancom/google/common/collect/DenseImmutableTable$Column;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    .line 169
    invoke-static {p1}, Lccsancom/google/common/collect/DenseImmutableTable;->access$500(Lccsancom/google/common/collect/DenseImmutableTable;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 170
    iput p2, p0, Lccsancom/google/common/collect/DenseImmutableTable$Column;->columnIndex:I

    .line 171
    return-void
.end method


# virtual methods
.method getValue(I)Ljava/lang/Object;
    .locals 2
    .param p1, "keyIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 180
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Column;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$Column;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lccsancom/google/common/collect/DenseImmutableTable;->access$400(Lccsancom/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    aget-object v0, v0, p1

    iget v1, p0, Lccsancom/google/common/collect/DenseImmutableTable$Column;->columnIndex:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 185
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Column;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    const/4 v0, 0x1

    return v0
.end method

.method keyToIndex()Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TR;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 175
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Column;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Column;"
    iget-object v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$Column;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lccsancom/google/common/collect/DenseImmutableTable;->access$600(Lccsancom/google/common/collect/DenseImmutableTable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
