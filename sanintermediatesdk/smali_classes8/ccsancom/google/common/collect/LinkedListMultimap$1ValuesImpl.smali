.class Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;
.super Ljava/util/AbstractSequentialList;
.source "LinkedListMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/LinkedListMultimap;->createValues()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ValuesImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSequentialList<",
        "TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/LinkedListMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/LinkedListMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/LinkedListMultimap;

    .line 741
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;, "Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;"
    iput-object p1, p0, Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    invoke-direct {p0}, Ljava/util/AbstractSequentialList;-><init>()V

    return-void
.end method


# virtual methods
.method public listIterator(I)Ljava/util/ListIterator;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TV;>;"
        }
    .end annotation

    .line 749
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;, "Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;"
    new-instance v0, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;

    iget-object v1, p0, Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    invoke-direct {v0, v1, p1}, Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;-><init>(Lccsancom/google/common/collect/LinkedListMultimap;I)V

    .line 750
    .local v0, "nodeItr":Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;, "Lccsancom/google/common/collect/LinkedListMultimap<TK;TV;>.NodeIterator;"
    new-instance v1, Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;

    invoke-direct {v1, p0, v0, v0}, Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl$1;-><init>(Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;Ljava/util/ListIterator;Lccsancom/google/common/collect/LinkedListMultimap$NodeIterator;)V

    return-object v1
.end method

.method public size()I
    .locals 1

    .line 744
    .local p0, "this":Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;, "Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;"
    iget-object v0, p0, Lccsancom/google/common/collect/LinkedListMultimap$1ValuesImpl;->this$0:Lccsancom/google/common/collect/LinkedListMultimap;

    invoke-static {v0}, Lccsancom/google/common/collect/LinkedListMultimap;->access$900(Lccsancom/google/common/collect/LinkedListMultimap;)I

    move-result v0

    return v0
.end method