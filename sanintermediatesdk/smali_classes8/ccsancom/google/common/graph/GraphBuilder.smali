.class public final Lccsancom/google/common/graph/GraphBuilder;
.super Lccsancom/google/common/graph/AbstractGraphBuilder;
.source "GraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/AbstractGraphBuilder<",
        "TN;>;"
    }
.end annotation


# direct methods
.method private constructor <init>(Z)V
    .locals 0
    .param p1, "directed"    # Z

    .line 56
    .local p0, "this":Lccsancom/google/common/graph/GraphBuilder;, "Lccsancom/google/common/graph/GraphBuilder<TN;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 57
    return-void
.end method

.method private cast()Lccsancom/google/common/graph/GraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lccsancom/google/common/graph/GraphBuilder<",
            "TN1;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lccsancom/google/common/graph/GraphBuilder;, "Lccsancom/google/common/graph/GraphBuilder<TN;>;"
    return-object p0
.end method

.method public static directed()Lccsancom/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/GraphBuilder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lccsancom/google/common/graph/GraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lccsancom/google/common/graph/Graph;)Lccsancom/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/Graph<",
            "TN;>;)",
            "Lccsancom/google/common/graph/GraphBuilder<",
            "TN;>;"
        }
    .end annotation

    .line 77
    .local p0, "graph":Lccsancom/google/common/graph/Graph;, "Lccsancom/google/common/graph/Graph<TN;>;"
    new-instance v0, Lccsancom/google/common/graph/GraphBuilder;

    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;-><init>(Z)V

    .line 78
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;->allowsSelfLoops(Z)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 79
    invoke-interface {p0}, Lccsancom/google/common/graph/Graph;->nodeOrder()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;->nodeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public static undirected()Lccsancom/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/GraphBuilder<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 66
    new-instance v0, Lccsancom/google/common/graph/GraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/GraphBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lccsancom/google/common/graph/GraphBuilder;
    .locals 0
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/google/common/graph/GraphBuilder<",
            "TN;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lccsancom/google/common/graph/GraphBuilder;, "Lccsancom/google/common/graph/GraphBuilder<TN;>;"
    iput-boolean p1, p0, Lccsancom/google/common/graph/GraphBuilder;->allowsSelfLoops:Z

    .line 89
    return-object p0
.end method

.method public build()Lccsancom/google/common/graph/MutableGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>()",
            "Lccsancom/google/common/graph/MutableGraph<",
            "TN1;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lccsancom/google/common/graph/GraphBuilder;, "Lccsancom/google/common/graph/GraphBuilder<TN;>;"
    new-instance v0, Lccsancom/google/common/graph/ConfigurableMutableGraph;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/ConfigurableMutableGraph;-><init>(Lccsancom/google/common/graph/AbstractGraphBuilder;)V

    return-object v0
.end method

.method public expectedNodeCount(I)Lccsancom/google/common/graph/GraphBuilder;
    .locals 1
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/graph/GraphBuilder<",
            "TN;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lccsancom/google/common/graph/GraphBuilder;, "Lccsancom/google/common/graph/GraphBuilder<TN;>;"
    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/GraphBuilder;->expectedNodeCount:Lccsancom/google/common/base/Optional;

    .line 99
    return-object p0
.end method

.method public nodeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/GraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lccsancom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lccsancom/google/common/graph/GraphBuilder<",
            "TN1;>;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lccsancom/google/common/graph/GraphBuilder;, "Lccsancom/google/common/graph/GraphBuilder<TN;>;"
    .local p1, "nodeOrder":Lccsancom/google/common/graph/ElementOrder;, "Lccsancom/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/GraphBuilder;->cast()Lccsancom/google/common/graph/GraphBuilder;

    move-result-object v0

    .line 105
    .local v0, "newBuilder":Lccsancom/google/common/graph/GraphBuilder;, "Lccsancom/google/common/graph/GraphBuilder<TN1;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lccsancom/google/common/graph/GraphBuilder;->nodeOrder:Lccsancom/google/common/graph/ElementOrder;

    .line 106
    return-object v0
.end method
