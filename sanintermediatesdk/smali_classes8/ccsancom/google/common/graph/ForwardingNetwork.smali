.class abstract Lccsancom/google/common/graph/ForwardingNetwork;
.super Lccsancom/google/common/graph/AbstractNetwork;
.source "ForwardingNetwork.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/AbstractNetwork<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/AbstractNetwork;-><init>()V

    return-void
.end method


# virtual methods
.method public adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->adjacentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public allowsParallelEdges()Z
    .locals 1

    .line 49
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v0

    return v0
.end method

.method public allowsSelfLoops()Z
    .locals 1

    .line 54
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/Network;->allowsSelfLoops()Z

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

    .line 109
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->degree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method protected abstract delegate()Lccsancom/google/common/graph/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation
.end method

.method public edgeConnectingOrNull(Lccsancom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)TE;"
        }
    .end annotation

    .line 139
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->edgeConnectingOrNull(Lccsancom/google/common/graph/EndpointPair;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)TE;"
        }
    .end annotation

    .line 134
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/graph/Network;->edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgeOrder()Lccsancom/google/common/graph/ElementOrder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/ElementOrder<",
            "TE;>;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/Network;->edgeOrder()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public edges()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Lccsancom/google/common/graph/EndpointPair;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->edgesConnecting(Lccsancom/google/common/graph/EndpointPair;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

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

    .line 149
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z

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

    .line 144
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/graph/Network;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 114
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public inEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->incidentEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public isDirected()Z
    .locals 1

    .line 44
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/Network;->isDirected()Z

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
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/Network;->nodeOrder()Lccsancom/google/common/graph/ElementOrder;

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

    .line 34
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/graph/Network;->nodes()Ljava/util/Set;

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

    .line 119
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->outDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public outEdges(Ljava/lang/Object;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 94
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 28
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/ForwardingNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 74
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 28
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/ForwardingNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 79
    .local p0, "this":Lccsancom/google/common/graph/ForwardingNetwork;, "Lccsancom/google/common/graph/ForwardingNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ForwardingNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
