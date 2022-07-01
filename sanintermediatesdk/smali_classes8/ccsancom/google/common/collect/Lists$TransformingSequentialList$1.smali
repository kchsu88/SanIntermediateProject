.class Lccsancom/google/common/collect/Lists$TransformingSequentialList$1;
.super Lccsancom/google/common/collect/TransformedListIterator;
.source "Lists.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Lists$TransformingSequentialList;->listIterator(I)Ljava/util/ListIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/TransformedListIterator<",
        "TF;TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/Lists$TransformingSequentialList;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/Lists$TransformingSequentialList;Ljava/util/ListIterator;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/Lists$TransformingSequentialList;

    .line 557
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingSequentialList$1;, "Lccsancom/google/common/collect/Lists$TransformingSequentialList$1;"
    .local p2, "backingIterator":Ljava/util/ListIterator;, "Ljava/util/ListIterator<+TF;>;"
    iput-object p1, p0, Lccsancom/google/common/collect/Lists$TransformingSequentialList$1;->this$0:Lccsancom/google/common/collect/Lists$TransformingSequentialList;

    invoke-direct {p0, p2}, Lccsancom/google/common/collect/TransformedListIterator;-><init>(Ljava/util/ListIterator;)V

    return-void
.end method


# virtual methods
.method transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TF;)TT;"
        }
    .end annotation

    .line 560
    .local p0, "this":Lccsancom/google/common/collect/Lists$TransformingSequentialList$1;, "Lccsancom/google/common/collect/Lists$TransformingSequentialList$1;"
    .local p1, "from":Ljava/lang/Object;, "TF;"
    iget-object v0, p0, Lccsancom/google/common/collect/Lists$TransformingSequentialList$1;->this$0:Lccsancom/google/common/collect/Lists$TransformingSequentialList;

    iget-object v0, v0, Lccsancom/google/common/collect/Lists$TransformingSequentialList;->function:Lccsancom/google/common/base/Function;

    invoke-interface {v0, p1}, Lccsancom/google/common/base/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
