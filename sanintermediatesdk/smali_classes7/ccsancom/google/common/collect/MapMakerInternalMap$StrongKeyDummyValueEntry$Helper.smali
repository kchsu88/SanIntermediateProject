.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntryHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
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
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 597
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    invoke-direct {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;-><init>()V

    sput-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static instance()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<",
            "TK;>;"
        }
    .end annotation

    .line 601
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->INSTANCE:Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic copy(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 1
    .param p3    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 628
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    .local p3, "newNext":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    invoke-virtual {p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;->copy(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object v0

    return-object v0
.end method

.method public keyStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 606
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method

.method public bridge synthetic newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p4, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-virtual {p0, p1, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public newEntry(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 1
    .param p3, "hash"    # I
    .param p4    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;TK;I",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 641
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p2, "key":Ljava/lang/Object;, "TK;"
    .local p4, "next":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    invoke-direct {v0, p2, p3, p4}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;-><init>(Ljava/lang/Object;ILccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;)V

    return-object v0
.end method

.method public bridge synthetic newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 0

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    move-result-object p1

    return-object p1
.end method

.method public newSegment(Lccsancom/google/common/collect/MapMakerInternalMap;II)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
    .locals 1
    .param p2, "initialCapacity"    # I
    .param p3, "maxSegmentSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "TK;",
            "Lccsancom/google/common/collect/MapMaker$Dummy;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;>;II)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;Lccsancom/google/common/collect/MapMaker$Dummy;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;>;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    invoke-direct {v0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    return-object v0
.end method

.method public bridge synthetic setValue(Lccsancom/google/common/collect/MapMakerInternalMap$Segment;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)V
    .locals 0

    .line 594
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    check-cast p1, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    check-cast p2, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    check-cast p3, Lccsancom/google/common/collect/MapMaker$Dummy;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;->setValue(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lccsancom/google/common/collect/MapMaker$Dummy;)V

    return-void
.end method

.method public setValue(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;Lccsancom/google/common/collect/MapMaker$Dummy;)V
    .locals 0
    .param p3, "value"    # Lccsancom/google/common/collect/MapMaker$Dummy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;",
            "Lccsancom/google/common/collect/MapMaker$Dummy;",
            ")V"
        }
    .end annotation

    .line 633
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    .local p1, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p2, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;"
    return-void
.end method

.method public valueStrength()Lccsancom/google/common/collect/MapMakerInternalMap$Strength;
    .locals 1

    .line 611
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry$Helper<TK;>;"
    sget-object v0, Lccsancom/google/common/collect/MapMakerInternalMap$Strength;->STRONG:Lccsancom/google/common/collect/MapMakerInternalMap$Strength;

    return-object v0
.end method
