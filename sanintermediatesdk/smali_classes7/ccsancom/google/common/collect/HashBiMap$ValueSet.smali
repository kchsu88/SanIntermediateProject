.class final Lccsancom/google/common/collect/HashBiMap$ValueSet;
.super Lccsancom/google/common/collect/HashBiMap$View;
.source "HashBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/HashBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ValueSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/google/common/collect/HashBiMap$View<",
        "TK;TV;TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/google/common/collect/HashBiMap;


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/HashBiMap;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/google/common/collect/HashBiMap;

    .line 770
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$ValueSet;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    iput-object p1, p0, Lccsancom/google/common/collect/HashBiMap$ValueSet;->this$0:Lccsancom/google/common/collect/HashBiMap;

    .line 771
    invoke-direct {p0, p1}, Lccsancom/google/common/collect/HashBiMap$View;-><init>(Lccsancom/google/common/collect/HashBiMap;)V

    .line 772
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 781
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$ValueSet;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$ValueSet;->this$0:Lccsancom/google/common/collect/HashBiMap;

    invoke-virtual {v0, p1}, Lccsancom/google/common/collect/HashBiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method forEntry(I)Ljava/lang/Object;
    .locals 1
    .param p1, "entry"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 776
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$ValueSet;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    iget-object v0, p0, Lccsancom/google/common/collect/HashBiMap$ValueSet;->this$0:Lccsancom/google/common/collect/HashBiMap;

    iget-object v0, v0, Lccsancom/google/common/collect/HashBiMap;->values:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 786
    .local p0, "this":Lccsancom/google/common/collect/HashBiMap$ValueSet;, "Lccsancom/google/common/collect/HashBiMap<TK;TV;>.ValueSet;"
    invoke-static {p1}, Lccsancom/google/common/collect/Hashing;->smearedHash(Ljava/lang/Object;)I

    move-result v0

    .line 787
    .local v0, "oHash":I
    iget-object v1, p0, Lccsancom/google/common/collect/HashBiMap$ValueSet;->this$0:Lccsancom/google/common/collect/HashBiMap;

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/collect/HashBiMap;->findEntryByValue(Ljava/lang/Object;I)I

    move-result v1

    .line 788
    .local v1, "entry":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 789
    iget-object v2, p0, Lccsancom/google/common/collect/HashBiMap$ValueSet;->this$0:Lccsancom/google/common/collect/HashBiMap;

    invoke-virtual {v2, v1, v0}, Lccsancom/google/common/collect/HashBiMap;->removeEntryValueHashKnown(II)V

    .line 790
    const/4 v2, 0x1

    return v2

    .line 792
    :cond_0
    const/4 v2, 0x0

    return v2
.end method
