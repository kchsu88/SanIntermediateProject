.class public abstract Lccsancom/google/common/collect/TreeTraverser;
.super Ljava/lang/Object;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/TreeTraverser$BreadthFirstIterator;,
        Lccsancom/google/common/collect/TreeTraverser$PostOrderIterator;,
        Lccsancom/google/common/collect/TreeTraverser$PostOrderNode;,
        Lccsancom/google/common/collect/TreeTraverser$PreOrderIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser;, "Lccsancom/google/common/collect/TreeTraverser<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static using(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/TreeTraverser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/base/Function<",
            "TT;+",
            "Ljava/lang/Iterable<",
            "TT;>;>;)",
            "Lccsancom/google/common/collect/TreeTraverser<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 91
    .local p0, "nodeToChildrenFunction":Lccsancom/google/common/base/Function;, "Lccsancom/google/common/base/Function<TT;+Ljava/lang/Iterable<TT;>;>;"
    invoke-static {p0}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    new-instance v0, Lccsancom/google/common/collect/TreeTraverser$1;

    invoke-direct {v0, p0}, Lccsancom/google/common/collect/TreeTraverser$1;-><init>(Lccsancom/google/common/base/Function;)V

    return-object v0
.end method


# virtual methods
.method public final breadthFirstTraversal(Ljava/lang/Object;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 231
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser;, "Lccsancom/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    new-instance v0, Lccsancom/google/common/collect/TreeTraverser$4;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/TreeTraverser$4;-><init>(Lccsancom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public abstract children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation
.end method

.method postOrderIterator(Ljava/lang/Object;)Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser;, "Lccsancom/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/google/common/collect/TreeTraverser$PostOrderIterator;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/TreeTraverser$PostOrderIterator;-><init>(Lccsancom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final postOrderTraversal(Ljava/lang/Object;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 168
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser;, "Lccsancom/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    new-instance v0, Lccsancom/google/common/collect/TreeTraverser$3;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/TreeTraverser$3;-><init>(Lccsancom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method preOrderIterator(Ljava/lang/Object;)Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TT;>;"
        }
    .end annotation

    .line 125
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser;, "Lccsancom/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    new-instance v0, Lccsancom/google/common/collect/TreeTraverser$PreOrderIterator;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/TreeTraverser$PreOrderIterator;-><init>(Lccsancom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final preOrderTraversal(Ljava/lang/Object;)Lccsancom/google/common/collect/FluentIterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lccsancom/google/common/collect/FluentIterable<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 115
    .local p0, "this":Lccsancom/google/common/collect/TreeTraverser;, "Lccsancom/google/common/collect/TreeTraverser<TT;>;"
    .local p1, "root":Ljava/lang/Object;, "TT;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Lccsancom/google/common/collect/TreeTraverser$2;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/collect/TreeTraverser$2;-><init>(Lccsancom/google/common/collect/TreeTraverser;Ljava/lang/Object;)V

    return-object v0
.end method
