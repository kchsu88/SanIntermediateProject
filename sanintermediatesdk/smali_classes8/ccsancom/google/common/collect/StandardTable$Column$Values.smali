.class Lccsancom/google/common/collect/StandardTable$Column$Values;
.super Lccsancom/google/common/collect/Maps$Values;
.source "StandardTable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/StandardTable$Column;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Values"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$Values<",
        "TR;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lccsancom/google/common/collect/StandardTable$Column;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/StandardTable$Column;)V
    .locals 0

    .line 571
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$Values;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    iput-object p1, p0, Lccsancom/google/common/collect/StandardTable$Column$Values;->this$1:Lccsancom/google/common/collect/StandardTable$Column;

    .line 572
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 573
    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 577
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$Values;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    if-eqz p1, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$Column$Values;->this$1:Lccsancom/google/common/collect/StandardTable$Column;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->equalTo(Ljava/lang/Object;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->valuePredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 582
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$Values;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$Column$Values;->this$1:Lccsancom/google/common/collect/StandardTable$Column;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->valuePredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 587
    .local p0, "this":Lccsancom/google/common/collect/StandardTable$Column$Values;, "Lccsancom/google/common/collect/StandardTable<TR;TC;TV;>.Column.Values;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/StandardTable$Column$Values;->this$1:Lccsancom/google/common/collect/StandardTable$Column;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/Maps;->valuePredicateOnEntries(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/StandardTable$Column;->removeFromColumnIf(Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method