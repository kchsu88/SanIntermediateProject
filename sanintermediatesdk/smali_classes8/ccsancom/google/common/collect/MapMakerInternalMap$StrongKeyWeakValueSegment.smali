.class final Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
.super Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongKeyWeakValueSegment"
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
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private final queueForValues:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
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
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2037
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    .line 2030
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    .line 2038
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    .line 2028
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2028
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2053
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    return-object v0
.end method

.method getValueReferenceQueueForTesting()Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation

    .line 2047
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method public getWeakValueReferenceForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2059
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->getValueReference()Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v0

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 2088
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2089
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 2083
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->drainValueReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2084
    return-void
.end method

.method public newWeakValueReferenceForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Ljava/lang/Object;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;TV;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 2065
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;

    iget-object v1, p0, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->queueForValues:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v2

    invoke-direct {v0, v1, p2, v2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReferenceImpl;-><init>(Ljava/lang/ref/ReferenceQueue;Ljava/lang/Object;Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)V

    return-object v0
.end method

.method bridge synthetic self()Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2028
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->self()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2042
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    return-object p0
.end method

.method public setWeakValueReferenceForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<",
            "TK;TV;+",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;>;)V"
        }
    .end annotation

    .line 2072
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment<TK;TV;>;"
    .local p1, "e":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    .local p2, "valueReference":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;+Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;

    move-result-object v0

    .line 2074
    .local v0, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;"
    move-object v1, p2

    .line 2076
    .local v1, "newValueReference":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    invoke-static {v0}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$600(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    move-result-object v2

    .line 2077
    .local v2, "previous":Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry<TK;TV;>;>;"
    invoke-static {v0, v1}, Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;->access$602(Lccsancom/google/common/collect/MapMakerInternalMap$StrongKeyWeakValueEntry;Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;

    .line 2078
    invoke-interface {v2}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakValueReference;->clear()V

    .line 2079
    return-void
.end method
