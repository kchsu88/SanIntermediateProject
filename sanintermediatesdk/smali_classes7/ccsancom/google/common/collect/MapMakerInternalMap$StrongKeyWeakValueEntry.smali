.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
.super Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueEntry"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry$Helper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry<",
        "TK;TV;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueEntry<",
        "TK;TV;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private volatile valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V
    .locals 1
    .param p2, "hash"    # I
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 482
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractStrongKeyEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    .line 478
    nop

    .line 479
    invoke-static {}, Lccsancom/google/common/collect/MapMakerInternalMap;->unsetWeakValueReference()Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 483
    return-void
.end method

.method static synthetic access$600(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    .line 475
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method

.method static synthetic access$602(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .param p1, "x1"    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 475
    iput-object p1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object p1
.end method


# virtual methods
.method public clearValue()V
    .locals 1

    .line 492
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 493
    return-void
.end method

.method copy(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 503
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p1, "queueForValues":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    .local p2, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    iget-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->key:Ljava/lang/Object;

    iget v2, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->hash:I

    invoke-direct {v0, v1, v2, p2}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)V

    .line 504
    .local v0, "newEntry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v1, p1, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;->copyFor(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 505
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .line 487
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    invoke-interface {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueReference()Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 510
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    return-object v0
.end method

.method setValue(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;)V"
        }
    .end annotation

    .line 496
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    .local p2, "queueForValues":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 497
    .local v0, "previous":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    new-instance v1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    invoke-direct {v1, p2, p1, p0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    iput-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->valueReference:Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 498
    invoke-interface {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 499
    return-void
.end method
