.class Lccsancom/google/common/collect/CompactHashMap$KeySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/CompactHashMap;

    .line 528
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$KeySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iput-object p1, p0, Lccsancom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 557
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$KeySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/CompactHashMap;->clear()V

    .line 558
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 536
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$KeySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/CompactHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TK;>;"
        }
    .end annotation

    .line 552
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$KeySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/CompactHashMap;->keySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 541
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$KeySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-static {v0, p1}, Lccsancom/google/common/collect/CompactHashMap;->access$200(Lccsancom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v0

    .line 542
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 543
    const/4 v1, 0x0

    return v1

    .line 545
    :cond_0
    iget-object v1, p0, Lccsancom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-static {v1, v0}, Lccsancom/google/common/collect/CompactHashMap;->access$000(Lccsancom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 546
    const/4 v1, 0x1

    return v1
.end method

.method public size()I
    .locals 1

    .line 531
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$KeySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.KeySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$KeySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-static {v0}, Lccsancom/google/common/collect/CompactHashMap;->access$100(Lccsancom/google/common/collect/CompactHashMap;)I

    move-result v0

    return v0
.end method
