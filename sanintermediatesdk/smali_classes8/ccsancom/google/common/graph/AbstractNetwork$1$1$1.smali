.class Lccsancom/google/common/graph/AbstractNetwork$1$1$1;
.super Ljava/lang/Object;
.source "AbstractNetwork.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/graph/AbstractNetwork$1$1;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TE;",
        "Lccsancom/google/common/graph/EndpointPair<",
        "TN;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$2:Lccsancom/google/common/graph/AbstractNetwork$1$1;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/AbstractNetwork$1$1;)V
    .locals 0
    .param p1, "this$2"    # Lccsancom/google/common/graph/AbstractNetwork$1$1;

    .line 74
    .local p0, "this":Lccsancom/google/common/graph/AbstractNetwork$1$1$1;, "Lccsancom/google/common/graph/AbstractNetwork$1$1$1;"
    iput-object p1, p0, Lccsancom/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lccsancom/google/common/graph/AbstractNetwork$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lccsancom/google/common/graph/EndpointPair<",
            "TN;>;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lccsancom/google/common/graph/AbstractNetwork$1$1$1;, "Lccsancom/google/common/graph/AbstractNetwork$1$1$1;"
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/graph/AbstractNetwork$1$1$1;->this$2:Lccsancom/google/common/graph/AbstractNetwork$1$1;

    iget-object v0, v0, Lccsancom/google/common/graph/AbstractNetwork$1$1;->this$1:Lccsancom/google/common/graph/AbstractNetwork$1;

    iget-object v0, v0, Lccsancom/google/common/graph/AbstractNetwork$1;->this$0:Lccsancom/google/common/graph/AbstractNetwork;

    invoke-virtual {v0, p1}, Lccsancom/google/common/graph/AbstractNetwork;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 74
    .local p0, "this":Lccsancom/google/common/graph/AbstractNetwork$1$1$1;, "Lccsancom/google/common/graph/AbstractNetwork$1$1$1;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/graph/AbstractNetwork$1$1$1;->apply(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object p1

    return-object p1
.end method
