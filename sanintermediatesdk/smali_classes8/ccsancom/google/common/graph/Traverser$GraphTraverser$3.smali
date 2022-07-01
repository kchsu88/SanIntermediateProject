.class Lccsancom/google/common/graph/Traverser$GraphTraverser$3;
.super Ljava/lang/Object;
.source "Traverser.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/graph/Traverser$GraphTraverser;->depthFirstPostOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TN;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/graph/Traverser$GraphTraverser;

.field final synthetic val$startNodes:Ljava/lang/Iterable;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/graph/Traverser$GraphTraverser;

    .line 386
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser$3;, "Lccsancom/google/common/graph/Traverser$GraphTraverser$3;"
    iput-object p1, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser$3;->this$0:Lccsancom/google/common/graph/Traverser$GraphTraverser;

    iput-object p2, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser$3;->val$startNodes:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TN;>;"
        }
    .end annotation

    .line 389
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser$3;, "Lccsancom/google/common/graph/Traverser$GraphTraverser$3;"
    new-instance v0, Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;

    iget-object v1, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser$3;->this$0:Lccsancom/google/common/graph/Traverser$GraphTraverser;

    iget-object v2, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser$3;->val$startNodes:Ljava/lang/Iterable;

    sget-object v3, Lccsancom/google/common/graph/Traverser$Order;->POSTORDER:Lccsancom/google/common/graph/Traverser$Order;

    invoke-direct {v0, v1, v2, v3}, Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;-><init>(Lccsancom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;Lccsancom/google/common/graph/Traverser$Order;)V

    return-object v0
.end method
