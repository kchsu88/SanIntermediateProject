.class public final Lccsancom/google/common/graph/Graphs;
.super Ljava/lang/Object;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/graph/Graphs$NodeVisitState;,
        Lccsancom/google/common/graph/Graphs$TransposedNetwork;,
        Lccsancom/google/common/graph/Graphs$TransposedValueGraph;,
        Lccsancom/google/common/graph/Graphs$TransposedGraph;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static canTraverseWithoutReusingEdge(Lccsancom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "nextNode"    # Ljava/lang/Object;
    .param p2, "previousNode"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/Graph<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 132
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<*>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p2, p1}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 133
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method static checkNonNegative(I)I
    .locals 2
    .param p0, "value"    # I

    .line 580
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 581
    return p0
.end method

.method static checkNonNegative(J)J
    .locals 3
    .param p0, "value"    # J

    .line 586
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is non-negative."

    invoke-static {v0, v1, p0, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 587
    return-wide p0
.end method

.method static checkPositive(I)I
    .locals 2
    .param p0, "value"    # I

    .line 592
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 593
    return p0
.end method

.method static checkPositive(J)J
    .locals 3
    .param p0, "value"    # J

    .line 598
    const-wide/16 v0, 0x0

    cmp-long v2, p0, v0

    if-lez v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not true that %s is positive."

    invoke-static {v0, v1, p0, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 599
    return-wide p0
.end method

.method public static copyOf(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/MutableGraph;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;)",
            "Lccsancom/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 537
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lccsancom/google/common/graph/GraphBuilder;->from(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;->expectedNodeCount(I)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/GraphBuilder;->build()Lccsancom/google/common/graph/MutableGraph;

    move-result-object v0

    .line 538
    .local v0, "copy":Lccsancom/google/common/graph/MutableGraph;, "Lccsancom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 539
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lccsancom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    .line 540
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 541
    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/graph/EndpointPair;

    .line 542
    .local v2, "edge":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v2}, Lccsancom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lccsancom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Lccsancom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 543
    .end local v2    # "edge":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 544
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lccsancom/google/common/graph/Network;)Lccsancom/google/common/graph/MutableNetwork;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lccsancom/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 563
    .local p0, "network":Lccsancom/google/common/graph/Network;, "Lccsancom/google/common/graph/Network<TN;TE;>;"
    nop

    .line 564
    invoke-static {p0}, Lccsancom/google/common/graph/NetworkBuilder;->from(Lccsancom/google/common/graph/Network;)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 565
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;->expectedNodeCount(I)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 566
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;->expectedEdgeCount(I)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 567
    invoke-virtual {v0}, Lccsancom/google/common/graph/NetworkBuilder;->build()Lccsancom/google/common/graph/MutableNetwork;

    move-result-object v0

    .line 568
    .local v0, "copy":Lccsancom/google/common/graph/MutableNetwork;, "Lccsancom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 569
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lccsancom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 570
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 571
    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 572
    .local v2, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v2}, Lccsancom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v3

    .line 573
    .local v3, "endpointPair":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {v3}, Lccsancom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3}, Lccsancom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v4, v5, v2}, Lccsancom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 574
    .end local v2    # "edge":Ljava/lang/Object;, "TE;"
    .end local v3    # "endpointPair":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 575
    :cond_1
    return-object v0
.end method

.method public static copyOf(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/MutableValueGraph;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lccsancom/google/common/graph/MutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 549
    .local p0, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    nop

    .line 550
    invoke-static {p0}, Lccsancom/google/common/graph/ValueGraphBuilder;->from(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/ValueGraphBuilder;->expectedNodeCount(I)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/ValueGraphBuilder;->build()Lccsancom/google/common/graph/MutableValueGraph;

    move-result-object v0

    .line 551
    .local v0, "copy":Lccsancom/google/common/graph/MutableValueGraph;, "Lccsancom/google/common/graph/MutableValueGraph<TN;TV;>;"
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

    .line 552
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lccsancom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    .line 553
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 554
    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/common/graph/EndpointPair;

    .line 555
    .local v2, "edge":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    nop

    .line 556
    invoke-virtual {v2}, Lccsancom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2}, Lccsancom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2}, Lccsancom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2}, Lccsancom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {p0, v5, v6, v7}, Lccsancom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 555
    invoke-interface {v0, v3, v4, v5}, Lccsancom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    .end local v2    # "edge":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    goto :goto_1

    .line 558
    :cond_1
    return-object v0
.end method

.method public static hasCycle(Lccsancom/google/common/graph/Graph;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;)Z"
        }
    .end annotation

    .line 59
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 60
    .local v0, "numEdges":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 63
    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->isDirected()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 64
    return v3

    .line 67
    :cond_1
    nop

    .line 68
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-static {v2}, Lccsancom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v2

    .line 69
    .local v2, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lccsancom/google/common/graph/Graphs$NodeVisitState;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 70
    .local v5, "node":Ljava/lang/Object;, "TN;"
    const/4 v6, 0x0

    invoke-static {p0, v2, v5, v6}, Lccsancom/google/common/graph/Graphs;->subgraphHasCycle(Lccsancom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    return v3

    .line 73
    .end local v5    # "node":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_0

    .line 74
    :cond_3
    return v1
.end method

.method public static hasCycle(Lccsancom/google/common/graph/Network;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/Network<",
            "**>;)Z"
        }
    .end annotation

    .line 87
    .local p0, "network":Lccsancom/google/common/graph/Network;, "Lccsancom/google/common/graph/Network<**>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->edges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->asGraph()Lccsancom/google/common/graph/Graph;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/graph/Graph;->edges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 90
    const/4 v0, 0x1

    return v0

    .line 92
    :cond_0
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->asGraph()Lccsancom/google/common/graph/Graph;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/graph/Graphs;->hasCycle(Lccsancom/google/common/graph/Graph;)Z

    move-result v0

    return v0
.end method

.method public static inducedSubgraph(Lccsancom/google/common/graph/Graph;Ljava/lang/Iterable;)Lccsancom/google/common/graph/MutableGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lccsancom/google/common/graph/MutableGraph<",
            "TN;>;"
        }
    .end annotation

    .line 462
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 464
    invoke-static {p0}, Lccsancom/google/common/graph/GraphBuilder;->from(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;->expectedNodeCount(I)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/GraphBuilder;->build()Lccsancom/google/common/graph/MutableGraph;

    move-result-object v0

    goto :goto_0

    .line 465
    :cond_0
    invoke-static {p0}, Lccsancom/google/common/graph/GraphBuilder;->from(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/GraphBuilder;->build()Lccsancom/google/common/graph/MutableGraph;

    move-result-object v0

    :goto_0
    nop

    .line 466
    .local v0, "subgraph":Lccsancom/google/common/graph/MutableGraph;, "Lccsancom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 467
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lccsancom/google/common/graph/MutableGraph;->addNode(Ljava/lang/Object;)Z

    .line 468
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 469
    :cond_1
    invoke-interface {v0}, Lccsancom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 470
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lccsancom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 471
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lccsancom/google/common/graph/MutableGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 472
    invoke-interface {v0, v2, v4}, Lccsancom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 474
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_3

    .line 475
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_3
    goto :goto_2

    .line 476
    :cond_4
    return-object v0
.end method

.method public static inducedSubgraph(Lccsancom/google/common/graph/Network;Ljava/lang/Iterable;)Lccsancom/google/common/graph/MutableNetwork;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lccsancom/google/common/graph/MutableNetwork<",
            "TN;TE;>;"
        }
    .end annotation

    .line 517
    .local p0, "network":Lccsancom/google/common/graph/Network;, "Lccsancom/google/common/graph/Network<TN;TE;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 519
    invoke-static {p0}, Lccsancom/google/common/graph/NetworkBuilder;->from(Lccsancom/google/common/graph/Network;)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;->expectedNodeCount(I)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/NetworkBuilder;->build()Lccsancom/google/common/graph/MutableNetwork;

    move-result-object v0

    goto :goto_0

    .line 520
    :cond_0
    invoke-static {p0}, Lccsancom/google/common/graph/NetworkBuilder;->from(Lccsancom/google/common/graph/Network;)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/NetworkBuilder;->build()Lccsancom/google/common/graph/MutableNetwork;

    move-result-object v0

    :goto_0
    nop

    .line 521
    .local v0, "subgraph":Lccsancom/google/common/graph/MutableNetwork;, "Lccsancom/google/common/graph/MutableNetwork<TN;TE;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 522
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lccsancom/google/common/graph/MutableNetwork;->addNode(Ljava/lang/Object;)Z

    .line 523
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 524
    :cond_1
    invoke-interface {v0}, Lccsancom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 525
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lccsancom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 526
    .local v4, "edge":Ljava/lang/Object;, "TE;"
    invoke-interface {p0, v4}, Lccsancom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v5

    invoke-virtual {v5, v2}, Lccsancom/google/common/graph/EndpointPair;->adjacentNode(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 527
    .local v5, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lccsancom/google/common/graph/MutableNetwork;->nodes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 528
    invoke-interface {v0, v2, v5, v4}, Lccsancom/google/common/graph/MutableNetwork;->addEdge(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 530
    .end local v4    # "edge":Ljava/lang/Object;, "TE;"
    .end local v5    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_3

    .line 531
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_3
    goto :goto_2

    .line 532
    :cond_4
    return-object v0
.end method

.method public static inducedSubgraph(Lccsancom/google/common/graph/ValueGraph;Ljava/lang/Iterable;)Lccsancom/google/common/graph/MutableValueGraph;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Lccsancom/google/common/graph/MutableValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 489
    .local p0, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    .local p1, "nodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 491
    invoke-static {p0}, Lccsancom/google/common/graph/ValueGraphBuilder;->from(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/ValueGraphBuilder;->expectedNodeCount(I)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/ValueGraphBuilder;->build()Lccsancom/google/common/graph/MutableValueGraph;

    move-result-object v0

    goto :goto_0

    .line 492
    :cond_0
    invoke-static {p0}, Lccsancom/google/common/graph/ValueGraphBuilder;->from(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/ValueGraphBuilder;->build()Lccsancom/google/common/graph/MutableValueGraph;

    move-result-object v0

    :goto_0
    nop

    .line 493
    .local v0, "subgraph":Lccsancom/google/common/graph/MutableValueGraph;, "Lccsancom/google/common/graph/MutableValueGraph<TN;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 494
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2}, Lccsancom/google/common/graph/MutableValueGraph;->addNode(Ljava/lang/Object;)Z

    .line 495
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 496
    :cond_1
    invoke-interface {v0}, Lccsancom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 497
    .restart local v2    # "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lccsancom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 498
    .local v4, "successorNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0}, Lccsancom/google/common/graph/MutableValueGraph;->nodes()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 499
    const/4 v5, 0x0

    .line 500
    invoke-interface {p0, v2, v4, v5}, Lccsancom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 499
    invoke-interface {v0, v2, v4, v5}, Lccsancom/google/common/graph/MutableValueGraph;->putEdgeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    .end local v4    # "successorNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_3

    .line 503
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_3
    goto :goto_2

    .line 504
    :cond_4
    return-object v0
.end method

.method public static reachableNodes(Lccsancom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;TN;)",
            "Ljava/util/Set<",
            "TN;>;"
        }
    .end annotation

    .line 195
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "Node %s is not an element of this graph."

    invoke-static {v0, v1, p1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 196
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 197
    .local v0, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    new-instance v1, Ljava/util/ArrayDeque;

    invoke-direct {v1}, Ljava/util/ArrayDeque;-><init>()V

    .line 198
    .local v1, "queuedNodes":Ljava/util/Queue;, "Ljava/util/Queue<TN;>;"
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 199
    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 201
    :goto_0
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 202
    invoke-interface {v1}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    .line 203
    .local v2, "currentNode":Ljava/lang/Object;, "TN;"
    invoke-interface {p0, v2}, Lccsancom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 204
    .local v4, "successor":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 205
    invoke-interface {v1, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 207
    .end local v4    # "successor":Ljava/lang/Object;, "TN;"
    :cond_0
    goto :goto_1

    .line 208
    .end local v2    # "currentNode":Ljava/lang/Object;, "TN;"
    :cond_1
    goto :goto_0

    .line 209
    :cond_2
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    return-object v2
.end method

.method private static subgraphHasCycle(Lccsancom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p3    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Lccsancom/google/common/graph/Graphs$NodeVisitState;",
            ">;TN;TN;)Z"
        }
    .end annotation

    .line 105
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    .local p1, "visitedNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Lccsancom/google/common/graph/Graphs$NodeVisitState;>;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    .local p3, "previousNode":Ljava/lang/Object;, "TN;"
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/graph/Graphs$NodeVisitState;

    .line 106
    .local v0, "state":Lccsancom/google/common/graph/Graphs$NodeVisitState;
    sget-object v1, Lccsancom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lccsancom/google/common/graph/Graphs$NodeVisitState;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 107
    return v2

    .line 109
    :cond_0
    sget-object v1, Lccsancom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lccsancom/google/common/graph/Graphs$NodeVisitState;

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    return v3

    .line 113
    :cond_1
    sget-object v1, Lccsancom/google/common/graph/Graphs$NodeVisitState;->PENDING:Lccsancom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-interface {p0, p2}, Lccsancom/google/common/graph/Graph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 115
    .local v4, "nextNode":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v4, p3}, Lccsancom/google/common/graph/Graphs;->canTraverseWithoutReusingEdge(Lccsancom/google/common/graph/Graph;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 116
    invoke-static {p0, p1, v4, p2}, Lccsancom/google/common/graph/Graphs;->subgraphHasCycle(Lccsancom/google/common/graph/Graph;Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    return v3

    .line 119
    .end local v4    # "nextNode":Ljava/lang/Object;, "TN;"
    :cond_2
    goto :goto_0

    .line 120
    :cond_3
    sget-object v1, Lccsancom/google/common/graph/Graphs$NodeVisitState;->COMPLETE:Lccsancom/google/common/graph/Graphs$NodeVisitState;

    invoke-interface {p1, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    return v2
.end method

.method public static transitiveClosure(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/Graph;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;)",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 151
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    invoke-static {p0}, Lccsancom/google/common/graph/GraphBuilder;->from(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/GraphBuilder;->build()Lccsancom/google/common/graph/MutableGraph;

    move-result-object v0

    .line 155
    .local v0, "transitiveClosure":Lccsancom/google/common/graph/MutableGraph;, "Lccsancom/google/common/graph/MutableGraph<TN;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 157
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 158
    .local v2, "node":Ljava/lang/Object;, "TN;"
    invoke-static {p0, v2}, Lccsancom/google/common/graph/Graphs;->reachableNodes(Lccsancom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 159
    .local v4, "reachableNode":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v2, v4}, Lccsancom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    .end local v4    # "reachableNode":Ljava/lang/Object;, "TN;"
    goto :goto_1

    .line 161
    .end local v2    # "node":Ljava/lang/Object;, "TN;"
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_5

    .line 165
    :cond_2
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 166
    .local v1, "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodes()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 167
    .local v3, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {v1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 168
    invoke-static {p0, v3}, Lccsancom/google/common/graph/Graphs;->reachableNodes(Lccsancom/google/common/graph/Graph;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    .line 169
    .local v4, "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-interface {v1, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 170
    const/4 v5, 0x1

    .line 171
    .local v5, "pairwiseMatch":I
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 172
    .local v7, "nodeU":Ljava/lang/Object;, "TN;"
    add-int/lit8 v8, v5, 0x1

    .end local v5    # "pairwiseMatch":I
    .local v8, "pairwiseMatch":I
    invoke-static {v4, v5}, Lccsancom/google/common/collect/Iterables;->limit(Ljava/lang/Iterable;I)Ljava/lang/Iterable;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .line 173
    .local v9, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-interface {v0, v7, v9}, Lccsancom/google/common/graph/MutableGraph;->putEdge(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 174
    .end local v9    # "nodeV":Ljava/lang/Object;, "TN;"
    goto :goto_4

    .line 175
    .end local v7    # "nodeU":Ljava/lang/Object;, "TN;"
    :cond_3
    move v5, v8

    goto :goto_3

    .line 177
    .end local v3    # "node":Ljava/lang/Object;, "TN;"
    .end local v4    # "reachableNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    .end local v8    # "pairwiseMatch":I
    :cond_4
    goto :goto_2

    .line 180
    .end local v1    # "visitedNodes":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    :cond_5
    :goto_5
    return-object v0
.end method

.method static transpose(Lccsancom/google/common/graph/EndpointPair;)Lccsancom/google/common/graph/EndpointPair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 265
    .local p0, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {p0}, Lccsancom/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/google/common/graph/EndpointPair;->source()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0

    .line 268
    :cond_0
    return-object p0
.end method

.method public static transpose(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/Graph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;)",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;"
        }
    .end annotation

    .line 221
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    return-object p0

    .line 225
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/graph/Graphs$TransposedGraph;

    if-eqz v0, :cond_1

    .line 226
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/graph/Graphs$TransposedGraph;

    invoke-static {v0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;->access$000(Lccsancom/google/common/graph/Graphs$TransposedGraph;)Lccsancom/google/common/graph/Graph;

    move-result-object v0

    return-object v0

    .line 229
    :cond_1
    new-instance v0, Lccsancom/google/common/graph/Graphs$TransposedGraph;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/Graphs$TransposedGraph;-><init>(Lccsancom/google/common/graph/Graph;)V

    return-object v0
.end method

.method public static transpose(Lccsancom/google/common/graph/Network;)Lccsancom/google/common/graph/Network;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation

    .line 253
    .local p0, "network":Lccsancom/google/common/graph/Network;, "Lccsancom/google/common/graph/Network<TN;TE;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    return-object p0

    .line 257
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/graph/Graphs$TransposedNetwork;

    if-eqz v0, :cond_1

    .line 258
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/graph/Graphs$TransposedNetwork;

    invoke-static {v0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->access$200(Lccsancom/google/common/graph/Graphs$TransposedNetwork;)Lccsancom/google/common/graph/Network;

    move-result-object v0

    return-object v0

    .line 261
    :cond_1
    new-instance v0, Lccsancom/google/common/graph/Graphs$TransposedNetwork;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;-><init>(Lccsancom/google/common/graph/Network;)V

    return-object v0
.end method

.method public static transpose(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/ValueGraph;
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
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 237
    .local p0, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v0

    if-nez v0, :cond_0

    .line 238
    return-object p0

    .line 241
    :cond_0
    instance-of v0, p0, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;

    if-eqz v0, :cond_1

    .line 242
    move-object v0, p0

    check-cast v0, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;

    invoke-static {v0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->access$100(Lccsancom/google/common/graph/Graphs$TransposedValueGraph;)Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    return-object v0

    .line 245
    :cond_1
    new-instance v0, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;-><init>(Lccsancom/google/common/graph/ValueGraph;)V

    return-object v0
.end method
