.class Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;
.super Lccsancom/google/common/collect/Maps$KeySet;
.source "TreeRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Maps$KeySet<",
        "Lccsancom/google/common/collect/Range<",
        "TK;>;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Ljava/util/Map;)V
    .locals 0
    .param p1, "this$2"    # Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    .line 608
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lccsancom/google/common/collect/Range<TK;>;TV;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;->this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    invoke-direct {p0, p2}, Lccsancom/google/common/collect/Maps$KeySet;-><init>(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 611
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;->this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 616
    .local p0, "this":Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;, "Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap$1;->this$2:Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;

    invoke-static {p1}, Lccsancom/google/common/base/Predicates;->in(Ljava/util/Collection;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Predicates;->not(Lccsancom/google/common/base/Predicate;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {}, Lccsancom/google/common/collect/Maps;->keyFunction()Lccsancom/google/common/base/Function;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/google/common/base/Predicates;->compose(Lccsancom/google/common/base/Predicate;Lccsancom/google/common/base/Function;)Lccsancom/google/common/base/Predicate;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;->access$400(Lccsancom/google/common/collect/TreeRangeMap$SubRangeMap$SubRangeMapAsMap;Lccsancom/google/common/base/Predicate;)Z

    move-result v0

    return v0
.end method
