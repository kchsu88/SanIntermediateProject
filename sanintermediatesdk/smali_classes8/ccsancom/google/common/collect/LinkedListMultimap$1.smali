.class Lccsancom/google/common/collect/LinkedListMultimap$1;
.super Ljava/util/AbstractSequentialList;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/LinkedListMultimap;->get(Ljava/lang/Object;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/LinkedListMultimap;

.field final synthetic val$key:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/LinkedListMultimap;

    .line 679
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$1;, "Lccsancom/google/common/collect/LinkedListMultimap$1;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedListMultimap$1;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    iput-object p2, p0, Lccsancom/google/common/collect/LinkedListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 688
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$1;, "Lccsancom/google/common/collect/LinkedListMultimap$1;"
    new-instance v0, Lccsancom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;

    iget-object v1, p0, Lccsancom/google/common/collect/LinkedListMultimap$1;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    iget-object v2, p0, Lccsancom/google/common/collect/LinkedListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-direct {v0, v1, v2, p1}, Lccsancom/google/common/collect/LinkedListMultimap$ValueForKeyIterator;-><init>(Lccsancom/google/common/collect/LinkedListMultimap;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 682
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$1;, "Lccsancom/google/common/collect/LinkedListMultimap$1;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$1;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedListMultimap;->access$600(Lccsancom/google/common/collect/LinkedListMultimap;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/collect/LinkedListMultimap$1;->val$key:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/LinkedListMultimap$KeyList;

    .line 683
    .local v0, "keyList":Lccsancom/google/common/collect/LinkedListMultimap$KeyList;, "Lccsancom/google/common/collect/LinkedListMultimap$KeyList<TK;TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget v1, v0, Lccsancom/google/common/collect/LinkedListMultimap$KeyList;->count:I

    :goto_0
    return v1
.end method