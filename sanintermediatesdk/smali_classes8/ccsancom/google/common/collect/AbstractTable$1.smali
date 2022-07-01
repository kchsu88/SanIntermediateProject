.class Lccsancom/google/common/collect/AbstractTable$1;
.super Lccsancom/google/common/collect/TransformedIterator;
.source "AbstractTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/AbstractTable;->valuesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TransformedIterator<",
        "Lccsancom/google/common/collect/Table$Cell<",
        "TR;TC;TV;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/AbstractTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/AbstractTable;Ljava/util/Iterator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/AbstractTable;

    .line 178
    .local p0, "this":Lccsancom/google/common/collect/AbstractTable$1;, "Lccsancom/google/common/collect/AbstractTable$1;"
    .local p2, "backingIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lccsancom/google/common/collect/Table$Cell<TR;TC;TV;>;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/AbstractTable$1;->this$0:Lccsancom/google/common/collect/AbstractTable;

    invoke-direct {p0, p2}, Lccsancom/google/common/collect/TransformedIterator;-><init>(Ljava/util/Iterator;)V

    return-void
.end method


# virtual methods
.method transform(Lccsancom/google/common/collect/Table$Cell;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Table$Cell<",
            "TR;TC;TV;>;)TV;"
        }
    .end annotation

    .line 181
    .local p0, "this":Lccsancom/google/common/collect/AbstractTable$1;, "Lccsancom/google/common/collect/AbstractTable$1;"
    .local p1, "cell":Lccsancom/google/common/collect/Table$Cell;, "Lccsancom/google/common/collect/Table$Cell<TR;TC;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/collect/Table$Cell;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 178
    .local p0, "this":Lccsancom/google/common/collect/AbstractTable$1;, "Lccsancom/google/common/collect/AbstractTable$1;"
    check-cast p1, Lccsancom/google/common/collect/Table$Cell;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/AbstractTable$1;->transform(Lccsancom/google/common/collect/Table$Cell;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
