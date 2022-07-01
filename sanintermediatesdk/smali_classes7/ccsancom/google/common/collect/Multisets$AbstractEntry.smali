.class abstract Lccsancom/google/common/collect/Multisets$AbstractEntry;
.super Ljava/lang/Object;
.source "Multisets.java"

# interfaces
.implements Lccsancom/google/common/collect/Multiset$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/Multisets;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/Multiset$Entry<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 793
    .local p0, "this":Lccsancom/google/common/collect/Multisets$AbstractEntry;, "Lccsancom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 800
    .local p0, "this":Lccsancom/google/common/collect/Multisets$AbstractEntry;, "Lccsancom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    instance-of v0, p1, Lccsancom/google/common/collect/Multiset$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 801
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/Multiset$Entry;

    .line 802
    .local v0, "that":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 803
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Lccsancom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lccsancom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 802
    :goto_0
    return v1

    .line 805
    .end local v0    # "that":Lccsancom/google/common/collect/Multiset$Entry;, "Lccsancom/google/common/collect/Multiset$Entry<*>;"
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 814
    .local p0, "this":Lccsancom/google/common/collect/Multisets$AbstractEntry;, "Lccsancom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    .line 815
    .local v0, "e":Ljava/lang/Object;, "TE;"
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 826
    .local p0, "this":Lccsancom/google/common/collect/Multisets$AbstractEntry;, "Lccsancom/google/common/collect/Multisets$AbstractEntry<TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$AbstractEntry;->getElement()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 827
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lccsancom/google/common/collect/Multisets$AbstractEntry;->getCount()I

    move-result v1

    .line 828
    .local v1, "n":I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move-object v2, v0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " x "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    return-object v2
.end method
