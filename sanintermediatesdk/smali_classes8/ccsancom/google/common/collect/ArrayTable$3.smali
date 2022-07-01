.class Lccsancom/google/common/collect/ArrayTable$3;
.super Lccsancom/google/common/collect/AbstractIndexedListIterator;
.source "ArrayTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ArrayTable;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractIndexedListIterator<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ArrayTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ArrayTable;I)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ArrayTable;
    .param p2, "size"    # I

    .line 753
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$3;, "Lccsancom/google/common/collect/ArrayTable$3;"
    iput-object p1, p0, Lccsancom/google/common/collect/ArrayTable$3;->this$0:Lccsancom/google/common/collect/ArrayTable;

    invoke-direct {p0, p2}, Lccsancom/google/common/collect/AbstractIndexedListIterator;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 756
    .local p0, "this":Lccsancom/google/common/collect/ArrayTable$3;, "Lccsancom/google/common/collect/ArrayTable$3;"
    iget-object v0, p0, Lccsancom/google/common/collect/ArrayTable$3;->this$0:Lccsancom/google/common/collect/ArrayTable;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/ArrayTable;->access$800(Lccsancom/google/common/collect/ArrayTable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
