.class abstract Lccsancom/google/common/graph/AbstractGraphBuilder;
.super Ljava/lang/Object;
.source "AbstractGraphBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field allowsSelfLoops:Z

.field final directed:Z

.field expectedNodeCount:Lccsancom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field nodeOrder:Lccsancom/google/common/graph/ElementOrder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/graph/ElementOrder<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Z)V
    .locals 1
    .param p1, "directed"    # Z

    .line 38
    .local p0, "this":Lccsancom/google/common/graph/AbstractGraphBuilder;, "Lccsancom/google/common/graph/AbstractGraphBuilder<TN;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/graph/AbstractGraphBuilder;->allowsSelfLoops:Z

    .line 29
    invoke-static {}, Lccsancom/google/common/graph/ElementOrder;->insertion()Lccsancom/google/common/graph/ElementOrder;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/AbstractGraphBuilder;->nodeOrder:Lccsancom/google/common/graph/ElementOrder;

    .line 30
    invoke-static {}, Lccsancom/google/common/base/Optional;->absent()Lccsancom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/graph/AbstractGraphBuilder;->expectedNodeCount:Lccsancom/google/common/base/Optional;

    .line 39
    iput-boolean p1, p0, Lccsancom/google/common/graph/AbstractGraphBuilder;->directed:Z

    .line 40
    return-void
.end method
