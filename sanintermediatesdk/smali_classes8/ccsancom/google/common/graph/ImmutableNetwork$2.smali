.class final Lccsancom/google/common/graph/ImmutableNetwork$2;
.super Ljava/lang/Object;
.source "ImmutableNetwork.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/graph/ImmutableNetwork;->targetNodeFn(Lccsancom/google/common/graph/Network;)Lccsancom/google/common/base/Function;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TE;TN;>;"
    }
.end annotation


# instance fields
.field final synthetic val$network:Lccsancom/google/common/graph/Network;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Network;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lccsancom/google/common/graph/ImmutableNetwork$2;->val$network:Lccsancom/google/common/graph/Network;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TN;"
        }
    .end annotation

    .line 128
    .local p1, "edge":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lccsancom/google/common/graph/ImmutableNetwork$2;->val$network:Lccsancom/google/common/graph/Network;

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/Network;->incidentNodes(Ljava/lang/Object;)Lccsancom/google/common/graph/EndpointPair;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/graph/EndpointPair;->target()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
