.class Lccsancom/google/common/collect/ImmutableMultimap$Keys;
.super Lccsancom/google/common/collect/ImmutableMultiset;
.source "ImmutableMultimap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Keys"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/ImmutableMultiset<",
        "TK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/ImmutableMultimap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/ImmutableMultimap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/ImmutableMultimap;

    .line 600
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iput-object p1, p0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-direct {p0}, Lccsancom/google/common/collect/ImmutableMultiset;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 603
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMultimap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 608
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 609
    .local v0, "values":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    :goto_0
    return v1
.end method

.method public elementSet()Lccsancom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 614
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->keySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 598
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->elementSet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lccsancom/google/common/collect/Multiset$Entry;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/collect/Multiset$Entry<",
            "TK;>;"
        }
    .end annotation

    .line 624
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    iget-object v0, v0, Lccsancom/google/common/collect/ImmutableMultimap;->map:Lccsancom/google/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMap;->entrySet()Lccsancom/google/common/collect/ImmutableSet;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableSet;->asList()Lccsancom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 625
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;+Ljava/util/Collection<TV;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-static {v1, v2}, Lccsancom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lccsancom/google/common/collect/Multiset$Entry;

    move-result-object v1

    return-object v1
.end method

.method isPartialView()Z
    .locals 1

    .line 630
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    const/4 v0, 0x1

    return v0
.end method

.method public size()I
    .locals 1

    .line 619
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    iget-object v0, p0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-virtual {v0}, Lccsancom/google/common/collect/ImmutableMultimap;->size()I

    move-result v0

    return v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 636
    .local p0, "this":Lccsancom/google/common/collect/ImmutableMultimap$Keys;, "Lccsancom/google/common/collect/ImmutableMultimap<TK;TV;>.Keys;"
    new-instance v0, Lccsancom/google/common/collect/ImmutableMultimap$KeysSerializedForm;

    iget-object v1, p0, Lccsancom/google/common/collect/ImmutableMultimap$Keys;->this$0:Lccsancom/google/common/collect/ImmutableMultimap;

    invoke-direct {v0, v1}, Lccsancom/google/common/collect/ImmutableMultimap$KeysSerializedForm;-><init>(Lccsancom/google/common/collect/ImmutableMultimap;)V

    return-object v0
.end method
