.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
.super Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$StrongValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<",
        "TK;",
        "Lccsancom/google/common/collect/MapMaker$Dummy;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongValueEntry<",
        "TK;",
        "Lccsancom/google/common/collect/MapMaker$Dummy;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)V"
        }
    .end annotation

    .line 680
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 681
    return-void
.end method


# virtual methods
.method copy(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 692
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p1, "queueForKeys":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v1

    iget v2, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->hash:I

    invoke-direct {v0, p1, v1, v2, p2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V

    return-object v0
.end method

.method public getValue()Lccsancom/google/common/collect/MapMaker$Dummy;
    .locals 1

    .line 685
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMaker$Dummy;->VALUE:Lccsancom/google/common/collect/MapMaker$Dummy;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .locals 1

    .line 675
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getValue()Lccsancom/google/common/collect/MapMaker$Dummy;

    move-result-object v0

    return-object v0
.end method

.method setValue(Lccsancom/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p1, "value"    # Lccsancom/google/common/collect/MapMaker$Dummy;

    .line 688
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    return-void
.end method
