.class Lccsancom/google/common/graph/Graphs$TransposedGraph;
.super Lccsancom/google/common/graph/ForwardingGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/ForwardingGraph<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final graph:Lccsancom/google/common/graph/Graph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Graph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;)V"
        }
    .end annotation

    .line 276
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/ForwardingGraph;-><init>()V

    .line 277
    iput-object p1, p0, Lccsancom/google/common/graph/Graphs$TransposedGraph;->graph:Lccsancom/google/common/graph/Graph;

    .line 278
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/graph/Graphs$TransposedGraph;)Lccsancom/google/common/graph/Graph;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/graph/Graphs$TransposedGraph;

    .line 273
    iget-object v0, p0, Lccsancom/google/common/graph/Graphs$TransposedGraph;->graph:Lccsancom/google/common/graph/Graph;

    return-object v0
.end method


# virtual methods
.method protected bridge synthetic delegate()Lccsancom/google/common/graph/BaseGraph;
    .locals 1

    .line 273
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->delegate()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    return-object v0
.end method

.method protected delegate()Lccsancom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    iget-object v0, p0, Lccsancom/google/common/graph/Graphs$TransposedGraph;->graph:Lccsancom/google/common/graph/Graph;

    return-object v0
.end method

.method public hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 312
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->delegate()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->transpose(Lccsancom/google/common/graph/EndpointPair;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/graph/Graph;->hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z

    move-result v0

    return v0
.end method

.method public hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)Z"
        }
    .end annotation

    .line 307
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->delegate()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/graph/Graph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public inDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 297
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->delegate()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Graph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 302
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->delegate()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Graph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 273
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 287
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->delegate()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 273
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedGraph;, "Lccsancom/google/common/graph/Graphs$TransposedGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->delegate()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Graph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
