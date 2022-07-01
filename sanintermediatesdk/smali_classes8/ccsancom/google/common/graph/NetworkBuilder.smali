.class public final Lccsancom/google/common/graph/NetworkBuilder;
.super Lccsancom/google/common/graph/AbstractGraphBuilder;
.source "NetworkBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# instance fields
.field allowsParallelEdges:Z

.field edgeOrder:Lccsancom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/graph/ElementOrder<",
            "-TE;>;"
        }
    .end annotation
.end field

.field expectedEdgeCount:Lccsancom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Z)V
    .locals 1
    .param p1, "directed"    # Z

    .line 65
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 59
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/graph/NetworkBuilder;->allowsParallelEdges:Z

    .line 60
    invoke-static {}, Lccsancom/google/common/graph/ElementOrder;->insertion()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/NetworkBuilder;->edgeOrder:Lccsancom/google/common/graph/ElementOrder;

    .line 61
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/NetworkBuilder;->expectedEdgeCount:Lccsancom/google/common/base/Optional;

    .line 66
    return-void
.end method

.method private cast()Lccsancom/google/common/graph/NetworkBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN1;TE1;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    return-object p0
.end method

.method public static directed()Lccsancom/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lccsancom/google/common/graph/NetworkBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lccsancom/google/common/graph/Network;)Lccsancom/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Network<",
            "TN;TE;>;)",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 87
    .local p0, "network":Lccsancom/google/common/graph/Network;, "Lccsancom/google/common/graph/Network<TN;TE;>;"
    new-instance v0, Lccsancom/google/common/graph/NetworkBuilder;

    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;-><init>(Z)V

    .line 88
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->allowsParallelEdges()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;->allowsParallelEdges(Z)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 89
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;->allowsSelfLoops(Z)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 90
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->nodeOrder()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;->nodeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 91
    invoke-interface {p0}, Lccsancom/google/common/graph/Network;->edgeOrder()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;->edgeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 87
    return-object v0
.end method

.method public static undirected()Lccsancom/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Lccsancom/google/common/graph/NetworkBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/NetworkBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsParallelEdges(Z)Lccsancom/google/common/graph/NetworkBuilder;
    .locals 0
    .param p1, "allowsParallelEdges"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    iput-boolean p1, p0, Lccsancom/google/common/graph/NetworkBuilder;->allowsParallelEdges:Z

    .line 100
    return-object p0
.end method

.method public allowsSelfLoops(Z)Lccsancom/google/common/graph/NetworkBuilder;
    .locals 0
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    iput-boolean p1, p0, Lccsancom/google/common/graph/NetworkBuilder;->allowsSelfLoops:Z

    .line 110
    return-object p0
.end method

.method public build()Lccsancom/google/common/graph/MutableNetwork;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;E1:TE;>()",
            "Lccsancom/google/common/graph/MutableNetwork<",
            "TN1;TE1;>;"
        }
    .end annotation

    .line 149
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    new-instance v0, Lccsancom/google/common/graph/ConfigurableMutableNetwork;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/ConfigurableMutableNetwork;-><init>(Lccsancom/google/common/graph/NetworkBuilder;)V

    return-object v0
.end method

.method public edgeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E1:TE;>(",
            "Lccsancom/google/common/graph/ElementOrder<",
            "TE1;>;)",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN;TE1;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    .local p1, "edgeOrder":Lccsancom/google/common/graph/ElementOrder;, "Lccsancom/google/common/graph/ElementOrder<TE1;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/NetworkBuilder;->cast()Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 143
    .local v0, "newBuilder":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE1;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lccsancom/google/common/graph/NetworkBuilder;->edgeOrder:Lccsancom/google/common/graph/ElementOrder;

    .line 144
    return-object v0
.end method

.method public expectedEdgeCount(I)Lccsancom/google/common/graph/NetworkBuilder;
    .locals 1
    .param p1, "expectedEdgeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 129
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/NetworkBuilder;->expectedEdgeCount:Lccsancom/google/common/base/Optional;

    .line 130
    return-object p0
.end method

.method public expectedNodeCount(I)Lccsancom/google/common/graph/NetworkBuilder;
    .locals 1
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN;TE;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/NetworkBuilder;->expectedNodeCount:Lccsancom/google/common/base/Optional;

    .line 120
    return-object p0
.end method

.method public nodeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/NetworkBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lccsancom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lccsancom/google/common/graph/NetworkBuilder<",
            "TN1;TE;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN;TE;>;"
    .local p1, "nodeOrder":Lccsancom/google/common/graph/ElementOrder;, "Lccsancom/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/NetworkBuilder;->cast()Lccsancom/google/common/graph/NetworkBuilder;

    move-result-object v0

    .line 136
    .local v0, "newBuilder":Lccsancom/google/common/graph/NetworkBuilder;, "Lccsancom/google/common/graph/NetworkBuilder<TN1;TE;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lccsancom/google/common/graph/NetworkBuilder;->nodeOrder:Lccsancom/google/common/graph/ElementOrder;

    .line 137
    return-object v0
.end method
