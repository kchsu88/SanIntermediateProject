.class Lccsancom/google/common/collect/CompactHashMap$EntrySetView;
.super Ljava/util/AbstractSet;
.source "CompactHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/CompactHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EntrySetView"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/CompactHashMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/CompactHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/CompactHashMap;

    .line 583
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$EntrySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iput-object p1, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 592
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$EntrySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/CompactHashMap;->clear()V

    .line 593
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 602
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$EntrySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 603
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 604
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/common/collect/CompactHashMap;->access$200(Lccsancom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v2

    .line 605
    .local v2, "index":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    iget-object v3, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    iget-object v3, v3, Lccsancom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v3, v3, v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    .line 607
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v2    # "index":I
    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 597
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$EntrySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/CompactHashMap;->entrySetIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 612
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$EntrySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-eqz v0, :cond_0

    .line 613
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 614
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lccsancom/google/common/collect/CompactHashMap;->access$200(Lccsancom/google/common/collect/CompactHashMap;Ljava/lang/Object;)I

    move-result v1

    .line 615
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v2, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    iget-object v2, v2, Lccsancom/google/common/collect/CompactHashMap;->values:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-static {v2, v1}, Lccsancom/google/common/collect/CompactHashMap;->access$000(Lccsancom/google/common/collect/CompactHashMap;I)Ljava/lang/Object;

    .line 617
    const/4 v2, 0x1

    return v2

    .line 620
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v1    # "index":I
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 587
    .local p0, "this":Lccsancom/google/common/collect/CompactHashMap$EntrySetView;, "Lccsancom/google/common/collect/CompactHashMap<TK;TV;>.EntrySetView;"
    iget-object v0, p0, Lccsancom/google/common/collect/CompactHashMap$EntrySetView;->this$0:Lccsancom/google/common/collect/CompactHashMap;

    invoke-static {v0}, Lccsancom/google/common/collect/CompactHashMap;->access$100(Lccsancom/google/common/collect/CompactHashMap;)I

    move-result v0

    return v0
.end method
