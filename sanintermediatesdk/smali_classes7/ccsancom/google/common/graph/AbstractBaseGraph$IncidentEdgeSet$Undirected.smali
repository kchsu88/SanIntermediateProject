.class final Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;
.super Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Undirected"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/BaseGraph<",
            "TN;>;TN;)V"
        }
    .end annotation

    .line 233
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected<TN;>;"
    .local p1, "graph":Lccsancom/google/common/graph/BaseGraph;, "Lccsancom/google/common/graph/BaseGraph<TN;>;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;-><init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;Lccsancom/google/common/graph/AbstractBaseGraph$1;)V

    .line 234
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;Lccsancom/google/common/graph/AbstractBaseGraph$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/graph/BaseGraph;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lccsancom/google/common/graph/AbstractBaseGraph$1;

    .line 231
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected<TN;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;-><init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 256
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected<TN;>;"
    instance-of v0, p1, Lccsancom/google/common/graph/EndpointPair;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 257
    return v1

    .line 260
    :cond_0
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/graph/EndpointPair;

    .line 261
    .local v0, "endpointPair":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<*>;"
    invoke-virtual {v0}, Lccsancom/google/common/graph/EndpointPair;->isOrdered()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 262
    return v1

    .line 264
    :cond_1
    iget-object v2, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->graph:Lccsancom/google/common/graph/BaseGraph;

    iget-object v3, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-interface {v2, v3}, Lccsancom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    .line 265
    .local v2, "adjacent":Ljava/util/Set;, "Ljava/util/Set<TN;>;"
    invoke-virtual {v0}, Lccsancom/google/common/graph/EndpointPair;->nodeU()Ljava/lang/Object;

    move-result-object v3

    .line 266
    .local v3, "nodeU":Ljava/lang/Object;
    invoke-virtual {v0}, Lccsancom/google/common/graph/EndpointPair;->nodeV()Ljava/lang/Object;

    move-result-object v4

    .line 268
    .local v4, "nodeV":Ljava/lang/Object;
    iget-object v5, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :cond_2
    iget-object v5, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    .line 269
    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v1, 0x1

    .line 268
    :cond_4
    return v1
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;>;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected<TN;>;"
    iget-object v0, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->graph:Lccsancom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    .line 240
    invoke-interface {v0, v1}, Lccsancom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;

    invoke-direct {v1, p0}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected$1;-><init>(Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;)V

    .line 239
    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->transform(Ljava/util/Iterator;Lccsancom/google/common/base/Function;)Ljava/util/Iterator;

    move-result-object v0

    .line 238
    invoke-static {v0}, Lccsancom/google/common/collect/Iterators;->unmodifiableIterator(Ljava/util/Iterator;)Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 231
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 251
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected<TN;>;"
    iget-object v0, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->graph:Lccsancom/google/common/graph/BaseGraph;

    iget-object v1, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;->node:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lccsancom/google/common/graph/BaseGraph;->adjacentNodes(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    return v0
.end method
