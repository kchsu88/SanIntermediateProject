.class final Lccsancom/google/common/collect/Sets$4;
.super Lccsancom/google/common/collect/Sets$SetView;
.source "Sets.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/google/common/collect/Sets;->symmetricDifference(Ljava/util/Set;Ljava/util/Set;)Lccsancom/google/common/collect/Sets$SetView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/Sets$SetView<",
        "TE;>;"
    }
.end annotation


# instance fields
.field final synthetic val$set1:Ljava/util/Set;

.field final synthetic val$set2:Ljava/util/Set;


# direct methods
.method constructor <init>(Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 874
    iput-object p1, p0, Lccsancom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    iput-object p2, p0, Lccsancom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/google/common/collect/Sets$SetView;-><init>(Lccsancom/google/common/collect/Sets$1;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;

    .line 922
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lccsancom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 917
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    iget-object v1, p0, Lccsancom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Lccsancom/google/common/collect/UnmodifiableIterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 877
    iget-object v0, p0, Lccsancom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 878
    .local v0, "itr1":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 879
    .local v1, "itr2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TE;>;"
    new-instance v2, Lccsancom/google/common/collect/Sets$4$1;

    invoke-direct {v2, p0, v0, v1}, Lccsancom/google/common/collect/Sets$4$1;-><init>(Lccsancom/google/common/collect/Sets$4;Ljava/util/Iterator;Ljava/util/Iterator;)V

    return-object v2
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 874
    invoke-virtual {p0}, Lccsancom/google/common/collect/Sets$4;->iterator()Lccsancom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 4

    .line 901
    const/4 v0, 0x0

    .line 902
    .local v0, "size":I
    iget-object v1, p0, Lccsancom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 903
    .local v2, "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lccsancom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 904
    add-int/lit8 v0, v0, 0x1

    .line 906
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 907
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/collect/Sets$4;->val$set2:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 908
    .restart local v2    # "e":Ljava/lang/Object;, "TE;"
    iget-object v3, p0, Lccsancom/google/common/collect/Sets$4;->val$set1:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 909
    add-int/lit8 v0, v0, 0x1

    .line 911
    .end local v2    # "e":Ljava/lang/Object;, "TE;"
    :cond_2
    goto :goto_1

    .line 912
    :cond_3
    return v0
.end method