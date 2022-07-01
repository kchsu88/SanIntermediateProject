.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
.super Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyDummyValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;",
        "Lccsancom/google/common/collect/MapMaker$Dummy;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
        "TK;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V
    .locals 0
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
            "TK;>;>;II)V"
        }
    .end annotation

    .line 2100
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;Lccsancom/google/common/collect/MapMaker$Dummy;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<TK;>;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    .line 2101
    return-void
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2093
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;",
            "Lccsancom/google/common/collect/MapMaker$Dummy;",
            "*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 2111
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    .local p1, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;Lccsancom/google/common/collect/MapMaker$Dummy;*>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueEntry;

    return-object v0
.end method

.method bridge synthetic self()Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2093
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;->self()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 2105
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyDummyValueSegment<TK;>;"
    return-object p0
.end method
