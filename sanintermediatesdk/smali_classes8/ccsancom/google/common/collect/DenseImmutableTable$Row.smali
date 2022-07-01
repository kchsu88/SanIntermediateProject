.class final Lccsancom/google/common/collect/DenseImmutableTable$Row;
.super Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;
.source "DenseImmutableTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/DenseImmutableTable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Row"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap<",
        "TC;TV;>;"
    }
.end annotation


# instance fields
.field private final rowIndex:I

.field final synthetic this$0:Lccsancom/google/common/collect/DenseImmutableTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/DenseImmutableTable;I)V
    .locals 0
    .param p2, "rowIndex"    # I

    .line 144
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Row;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    iput-object p1, p0, Lccsancom/google/common/collect/DenseImmutableTable$Row;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    .line 145
    invoke-static {p1}, Lccsancom/google/common/collect/DenseImmutableTable;->access$200(Lccsancom/google/common/collect/DenseImmutableTable;)[I

    move-result-object p1

    aget p1, p1, p2

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/DenseImmutableTable$ImmutableArrayMap;-><init>(I)V

    .line 146
    iput p2, p0, Lccsancom/google/common/collect/DenseImmutableTable$Row;->rowIndex:I

    .line 147
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

    .line 156
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Row;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$Row;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lccsancom/google/common/collect/DenseImmutableTable;->access$400(Lccsancom/google/common/collect/DenseImmutableTable;)[[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lccsancom/google/common/collect/DenseImmutableTable$Row;->rowIndex:I

    aget-object v0, v0, v1

    aget-object v0, v0, p1

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 161
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Row;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    const/4 v0, 0x1

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

    .line 151
    .local p0, "this":Lccsancom/google/common/collect/DenseImmutableTable$Row;, "Lccsancom/google/common/collect/DenseImmutableTable<TR;TC;TV;>.Row;"
    iget-object v0, p0, Lccsancom/google/common/collect/DenseImmutableTable$Row;->this$0:Lccsancom/google/common/collect/DenseImmutableTable;

    invoke-static {v0}, Lccsancom/google/common/collect/DenseImmutableTable;->access$300(Lccsancom/google/common/collect/DenseImmutableTable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method
