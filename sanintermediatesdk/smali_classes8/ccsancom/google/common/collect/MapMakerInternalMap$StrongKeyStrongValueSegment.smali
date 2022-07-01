.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
.super Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyStrongValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;TV;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
        "TK;TV;>;>;"
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
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2012
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    .line 2013
    return-void
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2004
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2023
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueEntry;

    return-object v0
.end method

.method bridge synthetic self()Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2004
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;->self()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2017
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyStrongValueSegment<TK;TV;>;"
    return-object p0
.end method
