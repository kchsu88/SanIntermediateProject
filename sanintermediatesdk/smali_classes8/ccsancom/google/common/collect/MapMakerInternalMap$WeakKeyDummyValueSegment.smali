.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
.super Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyDummyValueSegment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/collect/MapMakerInternalMap$Segment<",
        "TK;",
        "Lccsancom/google/common/collect/MapMaker$Dummy;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
        "TK;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
        "TK;>;>;"
    }
.end annotation


# instance fields
.field private final queueForKeys:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V
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
            "TK;>;>;II)V"
        }
    .end annotation

    .line 2235
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;Lccsancom/google/common/collect/MapMaker$Dummy;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<TK;>;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    .line 2229
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2236
    return-void
.end method

.method static synthetic access$200(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    .line 2227
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2227
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;",
            "Lccsancom/google/common/collect/MapMaker$Dummy;",
            "*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry<",
            "TK;>;"
        }
    .end annotation

    .line 2251
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    .local p1, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;Lccsancom/google/common/collect/MapMaker$Dummy;*>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueEntry;

    return-object v0
.end method

.method getKeyReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TK;>;"
        }
    .end annotation

    .line 2245
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 2261
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2262
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 2256
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2257
    return-void
.end method

.method bridge synthetic self()Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2227
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;->self()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<",
            "TK;>;"
        }
    .end annotation

    .line 2240
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyDummyValueSegment<TK;>;"
    return-object p0
.end method
