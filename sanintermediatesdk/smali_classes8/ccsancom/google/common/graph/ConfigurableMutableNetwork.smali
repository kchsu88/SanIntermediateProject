.class final Lccsancom/google/common/graph/ConfigurableMutableNetwork;
.super Lccsancom/google/common/graph/ConfigurableNetwork;
.source "ConfigurableMutableNetwork.java"

# interfaces
.implements Lccsancom/google/common/graph/MutableNetwork;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/ConfigurableNetwork<",
        "TN;TE;>;",
        "Lccsancom/google/common/graph/MutableNetwork<",
        "TN;TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/NetworkBuilder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "-TN;-TE;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "builder":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<-TN;-TE;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/graph/ConfigurableNetwork;-><init>(Lccsancom/google/common/graph/NetworkBuilder;)V

    .line 48
    return-void
.end method

.method private addNodeInternal(Ljava/lang/Object;)Lccsancom/google/common/graph/NetworkConnections;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lccsancom/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-direct {p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->newConnections()Lccsancom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 71
    .local v0, "connections":Lccsancom/google/common/graph/NetworkConnections;, "Lccsancom/google/common/graph/NetworkConnections<TN;TE;>;"
    iget-object v1, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 72
    return-object v0
.end method

.method private newConnections()Lccsancom/google/common/graph/NetworkConnections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/NetworkConnections<",
            "TN;TE;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->isDirected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    invoke-virtual {p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    invoke-static {}, Lccsancom/google/common/graph/DirectedMultiNetworkConnections;->of()Lccsancom/google/common/graph/DirectedMultiNetworkConnections;

    move-result-object v0

    goto :goto_0

    .line 168
    :cond_0
    invoke-static {}, Lccsancom/google/common/graph/DirectedNetworkConnections;->of()Lccsancom/google/common/graph/DirectedNetworkConnections;

    move-result-object v0

    goto :goto_0

    .line 169
    :cond_1
    invoke-virtual {p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    invoke-static {}, Lccsancom/google/common/graph/UndirectedMultiNetworkConnections;->of()Lccsancom/google/common/graph/UndirectedMultiNetworkConnections;

    move-result-object v0

    goto :goto_0

    .line 171
    :cond_2
    invoke-static {}, Lccsancom/google/common/graph/UndirectedNetworkConnections;->of()Lccsancom/google/common/graph/UndirectedNetworkConnections;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0
.end method


# virtual methods
.method public addEdge(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;TE;)Z"
        }
    .end annotation

    .line 122
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    .local p2, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->validateEndpoints(Lccsancom/google/common/graph/EndpointPair;)V

    .line 123
    invoke-virtual {p1}, Lccsancom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p2}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;TN;TE;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "edge":Ljava/lang/Object;, "TE;"
    const-string v0, "nodeU"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    const-string v0, "nodeV"

    invoke-static {p2, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    const-string v0, "edge"

    invoke-static {p3, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-virtual {p0, p3}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->containsEdge(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {p0, p3}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 84
    .local v0, "existingIncidentNodes":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-static {p0, p1, p2}, Lccsancom/google/common/graph/EndpointPair;->of(Lccsancom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v2

    .line 85
    .local v2, "newIncidentNodes":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    nop

    .line 86
    invoke-virtual {v0, v2}, Lccsancom/google/common/graph/EndpointPair;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 85
    const-string v4, "Edge %s already exists between the following nodes: %s, so it cannot be reused to connect the following nodes: %s."

    invoke-static {v3, v4, p3, v0, v2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 91
    return v1

    .line 93
    .end local v0    # "existingIncidentNodes":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    .end local v2    # "newIncidentNodes":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/graph/NetworkConnections;

    .line 94
    .local v0, "connectionsU":Lccsancom/google/common/graph/NetworkConnections;, "Lccsancom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->allowsParallelEdges()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_3

    .line 95
    if-eqz v0, :cond_1

    .line 96
    invoke-interface {v0}, Lccsancom/google/common/graph/NetworkConnections;->successors()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 95
    :cond_2
    const-string v2, "Nodes %s and %s are already connected by a different edge. To construct a graph that allows parallel edges, call allowsParallelEdges(true) on the Builder."

    invoke-static {v1, v2, p1, p2}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 102
    .local v1, "isSelfLoop":Z
    invoke-virtual {p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v2

    if-nez v2, :cond_4

    .line 103
    xor-int/lit8 v2, v1, 0x1

    const-string v4, "Cannot add self-loop edge on node %s, as self-loops are not allowed. To construct a graph that allows self-loops, call allowsSelfLoops(true) on the Builder."

    invoke-static {v2, v4, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 106
    :cond_4
    if-nez v0, :cond_5

    .line 107
    invoke-direct {p0, p1}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lccsancom/google/common/graph/NetworkConnections;

    move-result-object v0

    .line 109
    :cond_5
    invoke-interface {v0, p3, p2}, Lccsancom/google/common/graph/NetworkConnections;->addOutEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v2, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v2, p2}, Lccsancom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/graph/NetworkConnections;

    .line 111
    .local v2, "connectionsV":Lccsancom/google/common/graph/NetworkConnections;, "Lccsancom/google/common/graph/NetworkConnections<TN;TE;>;"
    if-nez v2, :cond_6

    .line 112
    invoke-direct {p0, p2}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lccsancom/google/common/graph/NetworkConnections;

    move-result-object v2

    .line 114
    :cond_6
    invoke-interface {v2, p3, p1, v1}, Lccsancom/google/common/graph/NetworkConnections;->addInEdge(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 115
    iget-object v4, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, p3, p1}, Lccsancom/google/common/graph/MapIteratorCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return v3
.end method

.method public addNode(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 53
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const-string v0, "node"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->containsNode(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 v0, 0x0

    return v0

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->addNodeInternal(Ljava/lang/Object;)Lccsancom/google/common/graph/NetworkConnections;

    .line 60
    const/4 v0, 0x1

    return v0
.end method

.method public removeEdge(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 148
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    const-string v0, "edge"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v0, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "nodeU":Ljava/lang/Object;, "TN;"
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 152
    return v1

    .line 155
    :cond_0
    iget-object v2, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v2, v0}, Lccsancom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/graph/NetworkConnections;

    .line 156
    .local v2, "connectionsU":Lccsancom/google/common/graph/NetworkConnections;, "Lccsancom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-interface {v2, p1}, Lccsancom/google/common/graph/NetworkConnections;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 157
    .local v3, "nodeV":Ljava/lang/Object;, "TN;"
    iget-object v4, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v4, v3}, Lccsancom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/google/common/graph/NetworkConnections;

    .line 158
    .local v4, "connectionsV":Lccsancom/google/common/graph/NetworkConnections;, "Lccsancom/google/common/graph/NetworkConnections<TN;TE;>;"
    invoke-interface {v2, p1}, Lccsancom/google/common/graph/NetworkConnections;->removeOutEdge(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    invoke-virtual {p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->allowsSelfLoops()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-interface {v4, p1, v1}, Lccsancom/google/common/graph/NetworkConnections;->removeInEdge(Ljava/lang/Object;Z)Ljava/lang/Object;

    .line 160
    iget-object v1, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->edgeToReferenceNode:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1}, Lccsancom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return v6
.end method

.method public removeNode(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 129
    .local p0, "this":Lccsancom/google/common/graph/ConfigurableMutableNetwork;, "Lccsancom/google/common/graph/ConfigurableMutableNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    const-string v0, "node"

    invoke-static {p1, v0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/graph/MapIteratorCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/graph/NetworkConnections;

    .line 132
    .local v0, "connections":Lccsancom/google/common/graph/NetworkConnections;, "Lccsancom/google/common/graph/NetworkConnections<TN;TE;>;"
    if-nez v0, :cond_0

    .line 133
    const/4 v1, 0x0

    return v1

    .line 138
    :cond_0
    invoke-interface {v0}, Lccsancom/google/common/graph/NetworkConnections;->incidentEdges()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/collect/ImmutableList;->copyOf(Ljava/util/Collection;)Lccsancom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/collect/ImmutableList;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 139
    .local v2, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v2}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->removeEdge(Ljava/lang/Object;)Z

    .line 140
    .end local v2    # "edge":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 141
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;->nodeConnections:Lccsancom/google/common/graph/MapIteratorCache;

    invoke-virtual {v1, p1}, Lccsancom/google/common/graph/MapIteratorCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const/4 v1, 0x1

    return v1
.end method
