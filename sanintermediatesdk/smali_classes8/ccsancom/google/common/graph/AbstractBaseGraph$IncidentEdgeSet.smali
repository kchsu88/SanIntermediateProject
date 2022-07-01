.class abstract Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
.super Ljava/util/AbstractSet;
.source "AbstractBaseGraph.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/AbstractBaseGraph;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "IncidentEdgeSet"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;,
        Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractSet<",
        "Lccsancom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field protected final graph:Lccsancom/google/common/graph/BaseGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/graph/BaseGraph<",
            "TN;>;"
        }
    .end annotation
.end field

.field protected final node:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TN;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/BaseGraph<",
            "TN;>;TN;)V"
        }
    .end annotation

    .line 167
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<TN;>;"
    .local p1, "graph":Lccsancom/google/common/graph/BaseGraph;, "Lccsancom/google/common/graph/BaseGraph<TN;>;"
    .local p2, "node":Ljava/lang/Object;, "TN;"
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 168
    iput-object p1, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;->graph:Lccsancom/google/common/graph/BaseGraph;

    .line 169
    iput-object p2, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;->node:Ljava/lang/Object;

    .line 170
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;Lccsancom/google/common/graph/AbstractBaseGraph$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/graph/BaseGraph;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lccsancom/google/common/graph/AbstractBaseGraph$1;

    .line 159
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<TN;>;"
    invoke-direct {p0, p1, p2}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;-><init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;)V

    return-void
.end method

.method public static of(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;)Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/graph/BaseGraph<",
            "TN;>;TN;)",
            "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<",
            "TN;>;"
        }
    .end annotation

    .line 164
    .local p0, "graph":Lccsancom/google/common/graph/BaseGraph;, "Lccsancom/google/common/graph/BaseGraph<TN;>;"
    .local p1, "node":Ljava/lang/Object;, "TN;"
    invoke-interface {p0}, Lccsancom/google/common/graph/BaseGraph;->isDirected()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    invoke-direct {v0, p0, p1, v1}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;-><init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;Lccsancom/google/common/graph/AbstractBaseGraph$1;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;

    invoke-direct {v0, p0, p1, v1}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Undirected;-><init>(Lccsancom/google/common/graph/BaseGraph;Ljava/lang/Object;Lccsancom/google/common/graph/AbstractBaseGraph$1;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 174
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet<TN;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
