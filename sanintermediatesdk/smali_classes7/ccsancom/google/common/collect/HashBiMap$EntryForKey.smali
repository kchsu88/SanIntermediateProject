.class final Lccsancom/google/common/collect/HashBiMap$EntryForKey;
.super Lccsancom/google/common/collect/AbstractMapEntry;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntryForKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/AbstractMapEntry<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field index:I

.field final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final synthetic this$0:Lccsancom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/HashBiMap;I)V
    .locals 1
    .param p1, "this$0"    # Lccsancom/google/common/collect/HashBiMap;
    .param p2, "index"    # I

    .line 854
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForKey;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.EntryForKey;"
    iput-object p1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    invoke-direct {p0}, Lccsancom/google/common/collect/AbstractMapEntry;-><init>()V

    .line 855
    iget-object v0, p1, Lccsancom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    aget-object v0, v0, p2

    iput-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    .line 856
    iput p2, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    .line 857
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 867
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForKey;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.EntryForKey;"
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 873
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForKey;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.EntryForKey;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->updateIndex()V

    .line 874
    iget v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lccsancom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    aget-object v0, v0, v1

    :goto_0
    return-object v0
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .line 879
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForKey;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.EntryForKey;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->updateIndex()V

    .line 880
    iget v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 881
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lccsancom/google/common/collect/HashBiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 883
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lccsancom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    aget-object v0, v0, v1

    .line 884
    .local v0, "oldValue":Ljava/lang/Object;, "TV;"
    invoke-static {v0, p1}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 885
    return-object p1

    .line 887
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget v2, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lccsancom/google/common/collect/HashBiMap;->access$200(Lccsancom/google/common/collect/HashBiMap;ILjava/lang/Object;Z)V

    .line 888
    return-object v0
.end method

.method updateIndex()V
    .locals 2

    .line 860
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$EntryForKey;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.EntryForKey;"
    iget v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget v1, v1, Lccsancom/google/common/collect/HashBiMap;->size:I

    if-gt v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lccsancom/google/common/collect/HashBiMap;->keys:[Ljava/lang/Object;

    iget v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-static {v0, v1}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lccsancom/google/common/collect/HashBiMap;->findEntryByKey(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lccsancom/google/common/collect/HashBiMap$EntryForKey;->index:I

    .line 863
    :cond_1
    return-void
.end method
