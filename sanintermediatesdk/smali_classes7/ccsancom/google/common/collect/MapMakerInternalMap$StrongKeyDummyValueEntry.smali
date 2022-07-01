.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
.super Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyDummyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<",
        "TK;",
        "Lccsancom/google/common/collect/MapMaker$Dummy;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lccsancom/google/common/collect/MapMaker$Dummy;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)V
    .locals 0
    .param p2, "hash"    # I
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)V"
        }
    .end annotation

    .line 576
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 577
    return-void
.end method


# virtual methods
.method copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 587
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    .local p1, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    iget-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->hash:I

    invoke-direct {v0, v1, v2, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)V

    return-object v0
.end method

.method public getValue()Lccsancom/google/common/collect/MapMaker$Dummy;
    .locals 1

    .line 581
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMaker$Dummy;->VALUE:Lccsancom/google/common/collect/MapMaker$Dummy;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 572
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->getValue()Lccsancom/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lccsancom/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p1, "value"    # Lccsancom/google/common/collect/MapMaker$Dummy;

    .line 584
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    return-void
.end method
