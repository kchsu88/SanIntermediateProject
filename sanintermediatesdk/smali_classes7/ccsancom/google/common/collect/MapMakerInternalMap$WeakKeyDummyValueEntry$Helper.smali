.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Helper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper<",
        "TK;",
        "Lccsancom/google/common/collect/MapMaker$Dummy;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 702
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 699
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<",
            "TK;>;"
        }
    .end annotation

    .line 706
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 699
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 1
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 732
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    .local p3, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    invoke-virtual {p2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 734
    const/4 v0, 0x0

    return-object v0

    .line 736
    :cond_0
    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$200(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;->copy(Ljava/lang/ref/ReferenceQueue;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 711
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->WEAK:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 699
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p4, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 2
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 749
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    invoke-static {p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->access$200(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;

    move-result-object v1

    invoke-direct {v0, v1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 699
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lccsancom/google/common/collect/MapMaker$Dummy;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;>;II)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 724
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;Lccsancom/google/common/collect/MapMaker$Dummy;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 699
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;->setValue(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lccsancom/google/common/collect/MapMaker$Dummy;)V

    return-void
.end method

.method public setValue(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;Lccsancom/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p3, "value"    # Lccsancom/google/common/collect/MapMaker$Dummy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMaker$Dummy;",
            ")V"
        }
    .end annotation

    .line 741
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;"
    return-void
.end method

.method public valueStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 716
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
