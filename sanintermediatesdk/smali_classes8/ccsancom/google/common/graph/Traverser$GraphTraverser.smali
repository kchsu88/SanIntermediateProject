.class final Lccsancom/google/common/graph/Traverser$GraphTraverser;
.super Lccsancom/google/common/graph/Traverser;
.source "Traverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/graph/Traverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GraphTraverser"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/graph/Traverser$GraphTraverser$DepthFirstIterator;,
        Lccsancom/google/common/graph/Traverser$GraphTraverser$BreadthFirstIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/graph/Traverser<",
        "TN;>;"
    }
.end annotation


# instance fields
.field private final graph:Lccsancom/google/common/graph/SuccessorsFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/graph/SuccessorsFunction<",
            "TN;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/graph/SuccessorsFunction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/graph/SuccessorsFunction<",
            "TN;>;)V"
        }
    .end annotation

    .line 321
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "graph":Lccsancom/google/common/graph/SuccessorsFunction;, "Lccsancom/google/common/graph/SuccessorsFunction<TN;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lccsancom/google/common/graph/Traverser;-><init>(Lccsancom/google/common/graph/Traverser$1;)V

    .line 322
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/graph/SuccessorsFunction;

    iput-object v0, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser;->graph:Lccsancom/google/common/graph/SuccessorsFunction;

    .line 323
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/common/graph/Traverser$GraphTraverser;)Lccsancom/google/common/graph/SuccessorsFunction;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/graph/Traverser$GraphTraverser;

    .line 318
    iget-object v0, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser;->graph:Lccsancom/google/common/graph/SuccessorsFunction;

    return-object v0
.end method

.method private checkThatNodeIsInGraph(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)V"
        }
    .end annotation

    .line 398
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    iget-object v0, p0, Lccsancom/google/common/graph/Traverser$GraphTraverser;->graph:Lccsancom/google/common/graph/SuccessorsFunction;

    invoke-interface {v0, p1}, Lccsancom/google/common/graph/SuccessorsFunction;->successors(Ljava/lang/Object;)Ljava/lang/Iterable;

    .line 399
    return-void
.end method


# virtual methods
.method public breadthFirst(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-static {p1}, Lccsancom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 337
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 338
    .local v1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-direct {p0, v1}, Lccsancom/google/common/graph/Traverser$GraphTraverser;->checkThatNodeIsInGraph(Ljava/lang/Object;)V

    .line 339
    .end local v1    # "startNode":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 340
    :cond_1
    new-instance v0, Lccsancom/google/common/graph/Traverser$GraphTraverser$1;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/graph/Traverser$GraphTraverser$1;-><init>(Lccsancom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public breadthFirst(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 327
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/graph/Traverser$GraphTraverser;->breadthFirst(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public depthFirstPostOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    invoke-static {p1}, Lccsancom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 384
    .local v1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-direct {p0, v1}, Lccsancom/google/common/graph/Traverser$GraphTraverser;->checkThatNodeIsInGraph(Ljava/lang/Object;)V

    .line 385
    .end local v1    # "startNode":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 386
    :cond_1
    new-instance v0, Lccsancom/google/common/graph/Traverser$GraphTraverser$3;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/graph/Traverser$GraphTraverser$3;-><init>(Lccsancom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public depthFirstPostOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 373
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/graph/Traverser$GraphTraverser;->depthFirstPostOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method

.method public depthFirstPreOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TN;>;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 356
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNodes":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TN;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    invoke-static {p1}, Lccsancom/google/common/collect/Iterables;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 358
    invoke-static {}, Lccsancom/google/common/collect/ImmutableSet;->of()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0

    .line 360
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 361
    .local v1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-direct {p0, v1}, Lccsancom/google/common/graph/Traverser$GraphTraverser;->checkThatNodeIsInGraph(Ljava/lang/Object;)V

    .line 362
    .end local v1    # "startNode":Ljava/lang/Object;, "TN;"
    goto :goto_0

    .line 363
    :cond_1
    new-instance v0, Lccsancom/google/common/graph/Traverser$GraphTraverser$2;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/graph/Traverser$GraphTraverser$2;-><init>(Lccsancom/google/common/graph/Traverser$GraphTraverser;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public depthFirstPreOrder(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)",
            "Ljava/lang/Iterable<",
            "TN;>;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lccsancom/google/common/graph/Traverser$GraphTraverser;, "Lccsancom/google/common/graph/Traverser$GraphTraverser<TN;>;"
    .local p1, "startNode":Ljava/lang/Object;, "TN;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    invoke-static {p1}, Lccsancom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/graph/Traverser$GraphTraverser;->depthFirstPreOrder(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object v0

    return-object v0
.end method
