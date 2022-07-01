.class final enum Lccsancom/google/common/collect/TreeMultiset$Aggregate$2;
.super Lccsancom/google/common/collect/TreeMultiset$Aggregate;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/TreeMultiset$Aggregate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 141
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/google/common/collect/TreeMultiset$Aggregate;-><init>(Ljava/lang/String;ILccsancom/google/common/collect/TreeMultiset$1;)V

    return-void
.end method


# virtual methods
.method nodeAggregate(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)I"
        }
    .end annotation

    .line 144
    .local p1, "node":Lccsancom/google/common/collect/TreeMultiset$AvlNode;, "Lccsancom/google/common/collect/TreeMultiset$AvlNode<*>;"
    const/4 v0, 0x1

    return v0
.end method

.method treeAggregate(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)J
    .locals 2
    .param p1    # Lccsancom/google/common/collect/TreeMultiset$AvlNode;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/TreeMultiset$AvlNode<",
            "*>;)J"
        }
    .end annotation

    .line 149
    .local p1, "root":Lccsancom/google/common/collect/TreeMultiset$AvlNode;, "Lccsancom/google/common/collect/TreeMultiset$AvlNode<*>;"
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lccsancom/google/common/collect/TreeMultiset$AvlNode;->access$400(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)I

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0
.end method
