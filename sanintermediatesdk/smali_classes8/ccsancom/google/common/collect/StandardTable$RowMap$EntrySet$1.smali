.class Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;
.super Ljava/lang/Object;
.source "StandardTable.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TR;",
        "Ljava/util/Map<",
        "TC;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;)V
    .locals 0
    .param p1, "this$2"    # Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;

    .line 769
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;, "Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 769
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;, "Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;->apply(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/util/Map<",
            "TC;TV;>;"
        }
    .end annotation

    .line 772
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;, "Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;"
    .local p1, "rowKey":Ljava/lang/Object;, "TR;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet$1;->this$2:Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable$RowMap$EntrySet;->this$1:Lccsancom/google/common/collect/StandardTable$RowMap;

    iget-object v0, v0, Lccsancom/google/common/collect/StandardTable$RowMap;->this$0:Lccsancom/google/common/collect/StandardTable;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/StandardTable;->row(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
