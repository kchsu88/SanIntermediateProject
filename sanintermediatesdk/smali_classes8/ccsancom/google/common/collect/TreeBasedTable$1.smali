.class Lccsancom/google/common/collect/TreeBasedTable$1;
.super Ljava/lang/Object;
.source "TreeBasedTable.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeBasedTable;->createColumnKeyIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "Ljava/util/Map<",
        "TC;TV;>;",
        "Ljava/util/Iterator<",
        "TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/TreeBasedTable;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeBasedTable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/TreeBasedTable;

    .line 321
    .local p0, "this":Lccsancom/google/common/collect/TreeBasedTable$1;, "Lccsancom/google/common/collect/TreeBasedTable$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeBasedTable$1;->this$0:Lccsancom/google/common/collect/TreeBasedTable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 321
    .local p0, "this":Lccsancom/google/common/collect/TreeBasedTable$1;, "Lccsancom/google/common/collect/TreeBasedTable$1;"
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/TreeBasedTable$1;->apply(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TC;TV;>;)",
            "Ljava/util/Iterator<",
            "TC;>;"
        }
    .end annotation

    .line 324
    .local p0, "this":Lccsancom/google/common/collect/TreeBasedTable$1;, "Lccsancom/google/common/collect/TreeBasedTable$1;"
    .local p1, "input":Ljava/util/Map;, "Ljava/util/Map<TC;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
