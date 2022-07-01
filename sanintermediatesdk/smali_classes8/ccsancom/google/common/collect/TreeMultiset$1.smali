.class Lccsancom/google/common/collect/TreeMultiset$1;
.super Lccsancom/google/common/collect/Multisets$AbstractEntry;
.source "TreeMultiset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/TreeMultiset;->wrapEntry(Lccsancom/google/common/collect/TreeMultiset$AvlNode;)Lccsancom/google/common/collect/Multiset$Entry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Multisets$AbstractEntry<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/TreeMultiset;

.field final synthetic val$baseEntry:Lccsancom/google/common/collect/TreeMultiset$AvlNode;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/TreeMultiset;Lccsancom/google/common/collect/TreeMultiset$AvlNode;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/TreeMultiset;

    .line 362
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$1;, "Lccsancom/google/common/collect/TreeMultiset$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/TreeMultiset$1;->this$0:Lccsancom/google/common/collect/TreeMultiset;

    iput-object p2, p0, Lccsancom/google/common/collect/TreeMultiset$1;->val$baseEntry:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    invoke-direct {p0}, Lccsancom/google/common/collect/Multisets$AbstractEntry;-><init>()V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 370
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$1;, "Lccsancom/google/common/collect/TreeMultiset$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$1;->val$baseEntry:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeMultiset$AvlNode;->getCount()I

    move-result v0

    .line 371
    .local v0, "result":I
    if-nez v0, :cond_0

    .line 372
    iget-object v1, p0, Lccsancom/google/common/collect/TreeMultiset$1;->this$0:Lccsancom/google/common/collect/TreeMultiset;

    invoke-virtual {p0}, Lccsancom/google/common/collect/TreeMultiset$1;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/google/common/collect/TreeMultiset;->count(Ljava/lang/Object;)I

    move-result v1

    return v1

    .line 374
    :cond_0
    return v0
.end method

.method public getElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 365
    .local p0, "this":Lccsancom/google/common/collect/TreeMultiset$1;, "Lccsancom/google/common/collect/TreeMultiset$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/TreeMultiset$1;->val$baseEntry:Lccsancom/google/common/collect/TreeMultiset$AvlNode;

    invoke-virtual {v0}, Lccsancom/google/common/collect/TreeMultiset$AvlNode;->getElement()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
