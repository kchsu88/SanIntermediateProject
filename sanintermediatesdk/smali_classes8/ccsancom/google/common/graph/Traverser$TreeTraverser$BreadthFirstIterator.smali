.class final Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;
.super Lccsancom/google/common/collect/UnmodifiableIterator;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Traverser$TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BreadthFirstIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/UnmodifiableIterator<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "TN;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/graph/Traverser$TreeTraverser;


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/Traverser$TreeTraverser;Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)V"
        }
    .end annotation

    .line 570
    .local p0, "this":Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.BreadthFirstIterator;"
    .local p2, "roots":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    iput-object p1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->this$0:Lccsancom/google/common/graph/Traverser$TreeTraverser;

    invoke-direct {p0}, Lccsancom/google/common/collect/UnmodifiableIterator;-><init>()V

    .line 568
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    .line 571
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 572
    .local v0, "root":Ljava/lang/Object;, "TN;"
    iget-object v1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 573
    .end local v0    # "root":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 574
    :cond_0
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 578
    .local p0, "this":Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.BreadthFirstIterator;"
    iget-object v0, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation

    .line 583
    .local p0, "this":Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;, "Lccsancom/google/common/graph/Traverser$TreeTraverser<TN;>.BreadthFirstIterator;"
    iget-object v0, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    .line 584
    .local v0, "current":Ljava/lang/Object;, "TN;"
    iget-object v1, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->queue:Ljava/util/Queue;

    iget-object v2, p0, Lccsancom/google/common/graph/Traverser$TreeTraverser$BreadthFirstIterator;->this$0:Lccsancom/google/common/graph/Traverser$TreeTraverser;

    invoke-static {v2}, Lccsancom/google/common/graph/Traverser$TreeTraverser;->access$200(Lccsancom/google/common/graph/Traverser$TreeTraverser;)Lccsancom/google/common/graph/SuccessorsFunction;

    move-result-object v2

    invoke-interface {v2, v0}, Lccsancom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Iterables;->addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z

    .line 585
    return-object v0
.end method
