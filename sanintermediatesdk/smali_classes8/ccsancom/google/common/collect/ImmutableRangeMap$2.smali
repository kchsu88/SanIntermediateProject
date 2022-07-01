.class Lccsancom/google/common/collect/ImmutableRangeMap$2;
.super Lccsancom/google/common/collect/ImmutableRangeMap;
.source "ImmutableRangeMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableRangeMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableRangeMap;

.field final synthetic val$outer:Lccsancom/google/common/collect/ImmutableRangeMap;

.field final synthetic val$range:Lccsancom/google/common/collect/Range;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableRangeMap;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/Range;Lccsancom/google/common/collect/ImmutableRangeMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ImmutableRangeMap;

    .line 324
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$2;, "Lccsancom/google/common/collect/ImmutableRangeMap$2;"
    .local p2, "ranges":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<Lccsancom/google/common/collect/Range<TK;>;>;"
    .local p3, "values":Lccsancom/google/common/collect/ImmutableList;, "Lccsancom/google/common/collect/ImmutableList<TV;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$2;->this$0:Lccsancom/google/common/collect/ImmutableRangeMap;

    iput-object p4, p0, Lccsancom/google/common/collect/ImmutableRangeMap$2;->val$range:Lccsancom/google/common/collect/Range;

    iput-object p5, p0, Lccsancom/google/common/collect/ImmutableRangeMap$2;->val$outer:Lccsancom/google/common/collect/ImmutableRangeMap;

    invoke-direct {p0, p2, p3}, Lccsancom/google/common/collect/ImmutableRangeMap;-><init>(Lccsancom/google/common/collect/ImmutableList;Lccsancom/google/common/collect/ImmutableList;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic asDescendingMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 324
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$2;, "Lccsancom/google/common/collect/ImmutableRangeMap$2;"
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asDescendingMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMapOfRanges()Ljava/util/Map;
    .locals 1

    .line 324
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$2;, "Lccsancom/google/common/collect/ImmutableRangeMap$2;"
    invoke-super {p0}, Lccsancom/google/common/collect/ImmutableRangeMap;->asMapOfRanges()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/Range<",
            "TK;>;)",
            "Lccsancom/google/common/collect/ImmutableRangeMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$2;, "Lccsancom/google/common/collect/ImmutableRangeMap$2;"
    .local p1, "subRange":Lccsancom/google/common/collect/Range;, "Lccsancom/google/common/collect/Range<TK;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$2;->val$range:Lccsancom/google/common/collect/Range;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/Range;->isConnected(Lccsancom/google/common/collect/Range;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableRangeMap$2;->val$outer:Lccsancom/google/common/collect/ImmutableRangeMap;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableRangeMap$2;->val$range:Lccsancom/google/common/collect/Range;

    invoke-virtual {p1, v1}, Lccsancom/google/common/collect/Range;->intersection(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/Range;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/ImmutableRangeMap;->subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0

    .line 330
    :cond_0
    invoke-static {}, Lccsancom/google/common/collect/ImmutableRangeMap;->of()Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/RangeMap;
    .locals 0

    .line 324
    .local p0, "this":Lccsancom/google/common/collect/ImmutableRangeMap$2;, "Lccsancom/google/common/collect/ImmutableRangeMap$2;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/ImmutableRangeMap$2;->subRangeMap(Lccsancom/google/common/collect/Range;)Lccsancom/google/common/collect/ImmutableRangeMap;

    move-result-object p1

    return-object p1
.end method
