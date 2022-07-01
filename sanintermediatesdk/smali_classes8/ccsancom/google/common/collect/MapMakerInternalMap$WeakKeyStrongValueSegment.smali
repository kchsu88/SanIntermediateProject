.class final Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
.super Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
.source "MapMakerInternalMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WeakKeyStrongValueSegment"
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
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
        "TK;TV;>;",
        "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
        "TK;TV;>;>;"
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
            "TK;TV;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;>;II)V"
        }
    .end annotation

    .line 2125
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<TK;TV;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<TK;TV;>;Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;>;"
    invoke-direct {p0, p1, p2, p3}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;-><init>(Lccsancom/google/common/collect/MapMakerInternalMap;II)V

    .line 2118
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    .line 2126
    return-void
.end method

.method static synthetic access$300(Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;)Ljava/lang/ref/ReferenceQueue;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    .line 2116
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;
    .locals 0

    .line 2116
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

    move-result-object p1

    return-object p1
.end method

.method public castForTesting(Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;)Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<",
            "TK;TV;*>;)",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2141
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry;, "Lccsancom/google/common/collect/MapMakerInternalMap$InternalEntry<TK;TV;*>;"
    move-object v0, p1

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueEntry;

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

    .line 2135
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method maybeClearReferenceQueues()V
    .locals 1

    .line 2151
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->clearReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2152
    return-void
.end method

.method maybeDrainReferenceQueues()V
    .locals 1

    .line 2146
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->queueForKeys:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {p0, v0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->drainKeyReferenceQueue(Ljava/lang/ref/ReferenceQueue;)V

    .line 2147
    return-void
.end method

.method bridge synthetic self()Lccsancom/google/common/collect/MapMakerInternalMap$Segment;
    .locals 1

    .line 2116
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;->self()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;

    move-result-object v0

    return-object v0
.end method

.method self()Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 2130
    .local p0, "this":Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment;, "Lccsancom/google/common/collect/MapMakerInternalMap$WeakKeyStrongValueSegment<TK;TV;>;"
    return-object p0
.end method
