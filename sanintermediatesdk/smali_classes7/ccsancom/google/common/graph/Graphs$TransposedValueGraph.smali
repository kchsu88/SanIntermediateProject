.class Lccsancom/google/common/graph/Graphs$TransposedValueGraph;
.super Lccsancom/google/common/graph/ForwardingValueGraph;
.source "Graphs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Graphs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TransposedValueGraph"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/ForwardingValueGraph<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field private final graph:Lccsancom/google/common/graph/ValueGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/ValueGraph;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;)V"
        }
    .end annotation

    .line 321
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/ForwardingValueGraph;-><init>()V

    .line 322
    iput-object p1, p0, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lccsancom/google/common/graph/ValueGraph;

    .line 323
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/common/graph/Graphs$TransposedValueGraph;)Lccsancom/google/common/graph/ValueGraph;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/graph/Graphs$TransposedValueGraph;

    .line 318
    iget-object v0, p0, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lccsancom/google/common/graph/ValueGraph;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lccsancom/google/common/graph/ValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->graph:Lccsancom/google/common/graph/ValueGraph;

    return-object v0
.end method

.method public edgeValueOrDefault(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
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

    .line 369
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->transpose(Lccsancom/google/common/graph/EndpointPair;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lccsancom/google/common/graph/ValueGraph;->edgeValueOrDefault(Lccsancom/google/common/graph/EndpointPair;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 363
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    .local p3, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1, p3}, Lccsancom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 357
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "endpoints":Lccsancom/google/common/graph/EndpointPair;, "Lccsancom/google/common/graph/EndpointPair<TN;>;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->transpose(Lccsancom/google/common/graph/EndpointPair;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/google/common/graph/ValueGraph;->hasEdgeConnecting(Lccsancom/google/common/graph/EndpointPair;)Z

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

    .line 352
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "nodeU":Ljava/lang/Object;, "TN;"
    .local p2, "nodeV":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lccsancom/google/common/graph/ValueGraph;->hasEdgeConnecting(Ljava/lang/Object;Ljava/lang/Object;)Z

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

    .line 342
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->outDegree(Ljava/lang/Object;)I

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

    .line 347
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->inDegree(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic predecessors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 318
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 332
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic successors(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 0

    .line 318
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->successors(Ljava/lang/Object;)Ljava/util/Set;

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

    .line 337
    .local p0, "this":Lccsancom/google/common/graph/Graphs$TransposedValueGraph;, "Lccsancom/google/common/graph/Graphs$TransposedValueGraph<TN;TV;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-virtual {p0}, Lccsancom/google/common/graph/Graphs$TransposedValueGraph;->delegate()Lccsancom/google/common/graph/ValueGraph;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/ValueGraph;->predecessors(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
