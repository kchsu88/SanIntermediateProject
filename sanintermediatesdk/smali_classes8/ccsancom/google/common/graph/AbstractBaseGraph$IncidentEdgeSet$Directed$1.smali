.class Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;
.super Ljava/lang/Object;
.source "AbstractBaseGraph.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TN;",
        "Lccsancom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    .line 189
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;"
    iput-object p1, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;->this$0:Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 192
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;"
    .local p1, "predecessor":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;->this$0:Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;

    iget-object v0, v0, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed;->node:Ljava/lang/Object;

    invoke-static {p1, v0}, Lccsancom/google/common/graph/EndpointPair;->ordered(Ljava/lang/Object;Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 189
    .local p0, "this":Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;, "Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/AbstractBaseGraph$IncidentEdgeSet$Directed$1;->apply(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
