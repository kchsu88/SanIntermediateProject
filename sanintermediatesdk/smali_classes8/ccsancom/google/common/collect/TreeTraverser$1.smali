.class final Lccsancom/google/common/collect/TreeTraverser$1;
.super Lccsancom/google/common/collect/TreeTraverser;
.source "TreeTraverser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeTraverser;->using(Lccsancom/google/common/base/Function;)Lccsancom/google/common/collect/TreeTraverser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TreeTraverser<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic val$nodeToChildrenFunction:Lccsancom/google/common/base/Function;


# direct methods
.method constructor <init>(Lccsancom/google/common/base/Function;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lccsancom/google/common/collect/TreeTraverser$1;->val$nodeToChildrenFunction:Lccsancom/google/common/base/Function;

    invoke-direct {p0}, Lccsancom/google/common/collect/TreeTraverser;-><init>()V

    return-void
.end method


# virtual methods
.method public children(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 95
    .local p1, "root":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeTraverser$1;->val$nodeToChildrenFunction:Lccsancom/google/common/base/Function;

    invoke-interface {v0, p1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    return-object v0
.end method
