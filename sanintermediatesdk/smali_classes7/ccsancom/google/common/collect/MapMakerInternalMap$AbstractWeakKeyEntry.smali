.class abstract Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;
.super Ljava/lang/ref/WeakReference;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractWeakKeyEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E::",
        "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;>",
        "Ljava/lang/ref/WeakReference<",
        "TK;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
        "TK;TV;TE;>;"
    }
.end annotation


# instance fields
.field final hash:I

.field final next:Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V
    .locals 0
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;TK;ITE;)V"
        }
    .end annotation

    .line 653
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    .local p1, "queue":Ljava/lang/ref/ReferenceQueue;, "Ljava/lang/ref/ReferenceQueue<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "TE;"
    invoke-direct {p0, p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    .line 654
    iput p3, p0, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    .line 655
    iput-object p4, p0, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;

    .line 656
    return-void
.end method


# virtual methods
.method public getHash()I
    .locals 1

    .line 665
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    iget v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->hash:I

    return v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .line 660
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getNext()Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 670
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry<TK;TV;TE;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$AbstractWeakKeyEntry;->next:Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;

    return-object v0
.end method
