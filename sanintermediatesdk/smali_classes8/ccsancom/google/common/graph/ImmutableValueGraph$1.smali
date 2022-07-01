.class final Lccsancom/google/common/graph/ImmutableValueGraph$1;
.super Ljava/lang/Object;
.source "ImmutableValueGraph.java"

# interfaces
.implements Lccsancom/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/graph/ImmutableValueGraph;->connectionsOf(Lccsancom/google/common/graph/ValueGraph;Ljava/lang/Object;)Lccsancom/google/common/graph/GraphConnections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/google/common/base/Function<",
        "TN;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic val$graph:Lccsancom/google/common/graph/ValueGraph;

.field final synthetic val$node:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/ValueGraph;Ljava/lang/Object;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lccsancom/google/common/graph/ImmutableValueGraph$1;->val$graph:Lccsancom/google/common/graph/ValueGraph;

    iput-object p2, p0, Lccsancom/google/common/graph/ImmutableValueGraph$1;->val$node:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TV;"
        }
    .end annotation

    .line 90
    .local p1, "successorNode":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lccsancom/google/common/graph/ImmutableValueGraph$1;->val$graph:Lccsancom/google/common/graph/ValueGraph;

    iget-object v1, p0, Lccsancom/google/common/graph/ImmutableValueGraph$1;->val$node:Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lccsancom/google/common/graph/ValueGraph;->edgeValueOrDefault(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
