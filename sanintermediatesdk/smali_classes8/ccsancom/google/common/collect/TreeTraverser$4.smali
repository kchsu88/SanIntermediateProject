.class Lccsancom/google/common/collect/TreeTraverser$4;
.super Lccsancom/google/common/collect/FluentIterable;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeTraverser;->breadthFirstTraversal(Ljava/lang/Object;)Lccsancom/google/common/collect/FluentIterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/FluentIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/TreeTraverser;

.field final synthetic val$root:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/TreeTraverser;

    .line 232
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser$4;, "Lccsancom/google/common/collect/TreeTraverser$4;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeTraverser$4;->this$0:Lccsancom/google/common/collect/TreeTraverser;

    iput-object p2, p0, Lccsancom/google/common/collect/TreeTraverser$4;->val$root:Ljava/lang/Object;

    invoke-direct {p0}, Lccsancom/google/common/collect/FluentIterable;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 235
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser$4;, "Lccsancom/google/common/collect/TreeTraverser$4;"
    new-instance v0, Lccsancom/google/common/collect/TreeTraverser$BreadthFirstIterator;

    iget-object v1, p0, Lccsancom/google/common/collect/TreeTraverser$4;->this$0:Lccsancom/google/common/collect/TreeTraverser;

    iget-object v2, p0, Lccsancom/google/common/collect/TreeTraverser$4;->val$root:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lccsancom/google/common/collect/TreeTraverser$BreadthFirstIterator;-><init>(Lccsancom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 232
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser$4;, "Lccsancom/google/common/collect/TreeTraverser$4;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeTraverser$4;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method
