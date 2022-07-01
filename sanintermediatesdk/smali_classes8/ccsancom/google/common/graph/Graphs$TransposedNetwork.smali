.class Lccsancom/google/common/graph/Graphs$TransposedNetwork;
.super Lccsancom/google/common/graph/ForwardingNetwork;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedNetwork"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/ForwardingNetwork<",
        "TN;TE;>;"
    }
.end annotation


# instance fields
.field private final network:Lccsancom/google/common/graph/Network;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;)V"
        }
    .end annotation

    .line 376
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "network":Lccsancom/google/common/graph/Network;, "Lccsancom/google/common/graph/Network<TN;TE;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/ForwardingNetwork;-><init>()V

    .line 377
    iput-object p1, p0, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->network:Lccsancom/google/common/graph/Network;

    .line 378
    return-void
.end method

.method static synthetic access$200(Lccsancom/google/common/graph/Graphs$TransposedNetwork;)Lccsancom/google/common/graph/Network;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/graph/Graphs$TransposedNetwork;

    .line 373
    iget-object v0, p0, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->network:Lccsancom/google/common/graph/Network;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lccsancom/google/common/graph/Network;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;"
        }
    .end annotation

    .line 382
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    iget-object v0, p0, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->network:Lccsancom/google/common/graph/Network;

    return-object v0
.end method

.method public edgeConnectingOrNull(Lccsancom/google/common/graph/EndpointPair;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)TE;"
        }
    .end annotation

    .line 438
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->transpose(Lccsancom/google/common/graph/EndpointPair;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/graph/Network;->edgeConnectingOrNull(Lccsancom/google/common/graph/EndpointPair;)Ljava/lang/Object;

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

    .line 433
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/graph/Network;->edgeConnectingOrNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public edgesConnecting(Lccsancom/google/common/graph/EndpointPair;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 428
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->transpose(Lccsancom/google/common/graph/EndpointPair;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/graph/Network;->edgesConnecting(Lccsancom/google/common/graph/EndpointPair;)Ljava/util/Set;

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

    .line 423
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/graph/Network;->edgesConnecting(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

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

    .line 448
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->transpose(Lccsancom/google/common/graph/EndpointPair;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/graph/Network;->hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z

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

    .line 443
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/graph/Network;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 397
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->outDegree(Ljava/lang/Object;)I

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

    .line 407
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->outEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 417
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    .line 418
    .local v0, "endpointPair":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    iget-object v1, p0, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->network:Lccsancom/google/common/graph/Network;

    invoke-virtual {v0}, Lccsancom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0}, Lccsancom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lccsancom/google/common/graph/EndpointPair;->of(Lccsancom/google/common/graph/Network;Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v1

    return-object v1
.end method

.method public outDegree(Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)I"
        }
    .end annotation

    .line 402
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->inDegree(Ljava/lang/Object;)I

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

    .line 412
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->inEdges(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 373
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 387
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 373
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 392
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedNetwork;, "Lccsancom/google/common/graph/Graphs$TransposedNetwork<TN;TE;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedNetwork;->delegate()Lccsancom/google/common/graph/Network;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
