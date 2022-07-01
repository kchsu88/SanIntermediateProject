.class abstract Lccsancom/google/common/graph/ForwardingValueGraph;
.super Lccsancom/google/common/graph/AbstractValueGraph;
.source "ForwardingValueGraph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/AbstractValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/AbstractValueGraph;-><init>()V

    return-void
.end method


# virtual methods
.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public degree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 79
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lccsancom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end method

.method protected edgeCount()J
    .locals 2

    .line 44
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public edgeValueOrDefault(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 111
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/graph/ValueGraph;->edgeValueOrDefault(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TV;)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 105
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsancom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)Z"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z

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

    .line 94
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 84
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDirected()Z
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public nodeOrder()Lccsancom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/ValueGraph;->nodeOrder()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public nodes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 35
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 29
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/ForwardingValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 69
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 29
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/ForwardingValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 74
    .local p0, "this":Lccsancom/google/common/graph/ForwardingValueGraph;, "Lccsancom/google/common/graph/ForwardingValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
