.class final Lccsancom/google/common/collect/MapMakerInternalMap$CleanupMapTask;
.super Ljava/lang/Object;
.source "MapMakerInternalMap.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/collect/MapMakerInternalMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CleanupMapTask"
.end annotation


# instance fields
.field final mapReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "****>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/google/common/collect/MapMakerInternalMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/collect/MapMakerInternalMap<",
            "****>;)V"
        }
    .end annotation

    .line 2268
    .local p1, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<****>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2269
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    .line 2270
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 2274
    iget-object v0, p0, Lccsancom/google/common/collect/MapMakerInternalMap$CleanupMapTask;->mapReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/collect/MapMakerInternalMap;

    .line 2275
    .local v0, "map":Lccsancom/google/common/collect/MapMakerInternalMap;, "Lccsancom/google/common/collect/MapMakerInternalMap<****>;"
    if-eqz v0, :cond_1

    .line 2279
    iget-object v1, v0, Lccsancom/google/common/collect/MapMakerInternalMap;->segments:[Lccsancom/google/common/collect/MapMakerInternalMap$Segment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 2280
    .local v4, "segment":Lccsancom/google/common/collect/MapMakerInternalMap$Segment;, "Lccsancom/google/common/collect/MapMakerInternalMap$Segment<****>;"
    invoke-virtual {v4}, Lccsancom/google/common/collect/MapMakerInternalMap$Segment;->runCleanup()V

    .line 2279
    .end local v4    # "segment":Lccsancom/google/common/collect/MapMakerInternalMap$Segment;, "Lccsancom/google/common/collect/MapMakerInternalMap$Segment<****>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2282
    :cond_0
    return-void

    .line 2276
    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    invoke-direct {v1}, Ljava/util/concurrent/CancellationException;-><init>()V

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
