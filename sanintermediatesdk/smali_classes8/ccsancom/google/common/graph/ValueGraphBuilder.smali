.class public final Lccsancom/google/common/graph/ValueGraphBuilder;
.super Lccsancom/google/common/graph/AbstractGraphBuilder;
.source "ValueGraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        "V:",
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

    .line 60
    .local p0, "this":Lccsancom/google/common/graph/ValueGraphBuilder;, "Lccsancom/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/graph/AbstractGraphBuilder;-><init>(Z)V

    .line 61
    return-void
.end method

.method private cast()Lccsancom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lccsancom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 124
    .local p0, "this":Lccsancom/google/common/graph/ValueGraphBuilder;, "Lccsancom/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    return-object p0
.end method

.method public static directed()Lccsancom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lccsancom/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method

.method public static from(Lccsancom/google/common/graph/ValueGraph;)Lccsancom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/ValueGraph<",
            "TN;TV;>;)",
            "Lccsancom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 82
    .local p0, "graph":Lccsancom/google/common/graph/ValueGraph;, "Lccsancom/google/common/graph/ValueGraph<TN;TV;>;"
    new-instance v0, Lccsancom/google/common/graph/ValueGraphBuilder;

    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->isDirected()Z

    move-result v1

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    .line 83
    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->allowsSelfLoops()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/ValueGraphBuilder;->allowsSelfLoops(Z)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 84
    invoke-interface {p0}, Lccsancom/google/common/graph/ValueGraph;->nodeOrder()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/google/common/graph/ValueGraphBuilder;->nodeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 82
    return-object v0
.end method

.method public static undirected()Lccsancom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/graph/ValueGraphBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 70
    new-instance v0, Lccsancom/google/common/graph/ValueGraphBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lccsancom/google/common/graph/ValueGraphBuilder;-><init>(Z)V

    return-object v0
.end method


# virtual methods
.method public allowsSelfLoops(Z)Lccsancom/google/common/graph/ValueGraphBuilder;
    .locals 0
    .param p1, "allowsSelfLoops"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lccsancom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lccsancom/google/common/graph/ValueGraphBuilder;, "Lccsancom/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    iput-boolean p1, p0, Lccsancom/google/common/graph/ValueGraphBuilder;->allowsSelfLoops:Z

    .line 94
    return-object p0
.end method

.method public build()Lccsancom/google/common/graph/MutableValueGraph;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;V1:TV;>()",
            "Lccsancom/google/common/graph/MutableValueGraph<",
            "TN1;TV1;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lccsancom/google/common/graph/ValueGraphBuilder;, "Lccsancom/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    new-instance v0, Lccsancom/google/common/graph/ConfigurableMutableValueGraph;

    invoke-direct {v0, p0}, Lccsancom/google/common/graph/ConfigurableMutableValueGraph;-><init>(Lccsancom/google/common/graph/AbstractGraphBuilder;)V

    return-object v0
.end method

.method public expectedNodeCount(I)Lccsancom/google/common/graph/ValueGraphBuilder;
    .locals 1
    .param p1, "expectedNodeCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/graph/ValueGraphBuilder<",
            "TN;TV;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lccsancom/google/common/graph/ValueGraphBuilder;, "Lccsancom/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/graph/Graphs;->checkNonNegative(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/base/Optional;->of(Ljava/lang/Object;)Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/ValueGraphBuilder;->expectedNodeCount:Lccsancom/google/common/base/Optional;

    .line 104
    return-object p0
.end method

.method public nodeOrder(Lccsancom/google/common/graph/ElementOrder;)Lccsancom/google/common/graph/ValueGraphBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N1:TN;>(",
            "Lccsancom/google/common/graph/ElementOrder<",
            "TN1;>;)",
            "Lccsancom/google/common/graph/ValueGraphBuilder<",
            "TN1;TV;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lccsancom/google/common/graph/ValueGraphBuilder;, "Lccsancom/google/common/graph/ValueGraphBuilder<TN;TV;>;"
    .local p1, "nodeOrder":Lccsancom/google/common/graph/ElementOrder;, "Lccsancom/google/common/graph/ElementOrder<TN1;>;"
    invoke-direct {p0}, Lccsancom/google/common/graph/ValueGraphBuilder;->cast()Lccsancom/google/common/graph/ValueGraphBuilder;

    move-result-object v0

    .line 110
    .local v0, "newBuilder":Lccsancom/google/common/graph/ValueGraphBuilder;, "Lccsancom/google/common/graph/ValueGraphBuilder<TN1;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/graph/ElementOrder;

    iput-object v1, v0, Lccsancom/google/common/graph/ValueGraphBuilder;->nodeOrder:Lccsancom/google/common/graph/ElementOrder;

    .line 111
    return-object v0
.end method
