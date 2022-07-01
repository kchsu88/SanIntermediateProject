.class public final Lccsancom/google/common/graph/ImmutableValueGraph;
.super Lccsancom/google/common/graph/ConfigurableValueGraph;
.source "ImmutableValueGraph.java"


# annotations
.annotation runtime Lccsancom/google/errorprone/annotations/Immutable;
    containerOf = {
        "N",
        "V"
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/ConfigurableValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lccsancom/google/common/graph/ValueGraph;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 47
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    .local p1, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/graph/ValueGraphBuilder;->from(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/graph/ImmutableValueGraph;->getNodeConnections(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-interface {p1}, Lccsancom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v0, v1, v2, v3}, Lccsancom/google/common/graph/ConfigurableValueGraph;-><init>(Lccsancom/google/common/graph/AbstractGraphBuilder;Ljava/util/Map;J)V

    .line 48
    return-void
.end method

.method private static connectionsOf(Lccsancom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lccsancom/google/common/graph/GraphConnections;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;TN;)",
            "Lccsancom/google/common/graph/GraphConnections<",
            "TN;TV;>;"
        }
    .end annotation

    .line 86
    .local p0, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    new-instance v0, Lccsancom/google/common/graph/ImmutableValueGraph$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/graph/ImmutableValueGraph$1;-><init>(Lccsancom/google/common/graph/ValueGraph;Ljava/lang/Object;)V

    .line 93
    .local v0, "successorNodeToValueFn":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<TN;TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-interface {p0, p1}, Lccsancom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, p1}, Lccsancom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {v2, v0}, Lccsancom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lccsancom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lccsancom/google/common/graph/DirectedGraphConnections;->ofImmutable(Ljava/util/Set;Ljava/util/Map;)Lccsancom/google/common/graph/DirectedGraphConnections;

    move-result-object v1

    goto :goto_0

    .line 97
    :cond_0
    invoke-interface {p0, p1}, Lccsancom/google/common/graph/ValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1, v0}, Lccsancom/google/common/collect/Maps;->asMap(Ljava/util/Set;Lccsancom/google/common/base/Function;)Ljava/util/Map;

    move-result-object v1

    .line 96
    invoke-static {v1}, Lccsancom/google/common/graph/UndirectedGraphConnections;->ofImmutable(Ljava/util/Map;)Lccsancom/google/common/graph/UndirectedGraphConnections;

    move-result-object v1

    .line 93
    :goto_0
    return-object v1
.end method

.method public static copyOf(Lccsancom/google/common/graph/ImmutableValueGraph;)Lccsancom/google/common/graph/ImmutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;)",
            "Lccsancom/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 64
    .local p0, "graph":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/graph/ImmutableValueGraph;

    return-object v0
.end method

.method public static copyOf(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/ImmutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lccsancom/google/common/graph/ImmutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 52
    .local p0, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    instance-of v0, p0, Lccsancom/google/common/graph/ImmutableValueGraph;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lccsancom/google/common/graph/ImmutableValueGraph;

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/graph/ImmutableValueGraph;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/ImmutableValueGraph;-><init>(Lccsancom/google/common/graph/ValueGraph;)V

    :goto_0
    return-object v0
.end method

.method private static getNodeConnections(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TN;",
            "Lccsancom/google/common/graph/GraphConnections<",
            "TN;TV;>;>;"
        }
    .end annotation

    .line 77
    .local p0, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-static {}, Lccsancom/google/common/collect/ImmutableMap;->builder()Lccsancom/google/common/collect/ImmutableMap$Builder;

    move-result-object v0

    .line 78
    .local v0, "nodeConnections":Lccsancom/google/common/collect/ImmutableMap$Builder;, "Lccsancom/google/common/collect/ImmutableMap$Builder<TN;Lccsancom/google/common/graph/GraphConnections<TN;TV;>;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 79
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lccsancom/google/common/graph/ImmutableValueGraph;->connectionsOf(Lccsancom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lccsancom/google/common/graph/GraphConnections;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsancom/google/common/collect/ImmutableMap$Builder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableMap$Builder;

    .line 80
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 81
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap$Builder;->build()Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/graph/ConfigurableValueGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic allowsSelfLoops()Z
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/graph/ConfigurableValueGraph;->allowsSelfLoops()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic asGraph()Lccsancom/google/common/graph/Graph;
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/ImmutableValueGraph;->asGraph()Lccsancom/google/common/graph/ImmutableGraph;

    move-result-object v0

    return-object v0
.end method

.method public asGraph()Lccsancom/google/common/graph/ImmutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/ImmutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 69
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    new-instance v0, Lccsancom/google/common/graph/ImmutableGraph;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/ImmutableGraph;-><init>(Lccsancom/google/common/graph/BaseGraph;)V

    return-object v0
.end method

.method public bridge synthetic edgeValueOrDefault(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/graph/ConfigurableValueGraph;->edgeValueOrDefault(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2, p3}, Lccsancom/google/common/graph/ConfigurableValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/graph/ConfigurableValueGraph;->hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1, p2}, Lccsancom/google/common/graph/ConfigurableValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic isDirected()Z
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/graph/ConfigurableValueGraph;->isDirected()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic nodeOrder()Lccsancom/google/common/graph/ElementOrder;
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/graph/ConfigurableValueGraph;->nodeOrder()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic nodes()Ljava/util/Set;
    .locals 1

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0}, Lccsancom/google/common/graph/ConfigurableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/graph/ConfigurableValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/util/Set;
    .locals 0

    .line 41
    .local p0, "this":Lccsancom/google/common/graph/ImmutableValueGraph;, "Lccsancom/google/common/graph/ImmutableValueGraph<TN;TV;>;"
    invoke-super {p0, p1}, Lccsancom/google/common/graph/ConfigurableValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method
