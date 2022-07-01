.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;
.super Ljava/lang/Object;
.source "LeastRecentlyUsedCacheEvictor.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheEvictor;
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheEvictor;",
        "Ljava/util/Comparator<",
        "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;",
        ">;"
    }
.end annotation


# instance fields
.field private currentSize:J

.field private final leastRecentlyUsed:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;",
            ">;"
        }
    .end annotation
.end field

.field private final maxBytes:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    .line 34
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    .line 35
    return-void
.end method

.method private evictCache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;J)V
    .locals 5

    .line 77
    :goto_0
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    add-long/2addr v0, p2

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->maxBytes:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;

    invoke-interface {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;->removeSpan(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
    :try_end_0
    .catch Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache$CacheException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 82
    :goto_1
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method


# virtual methods
.method public final compare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)I
    .locals 5

    .line 68
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide v2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    sub-long/2addr v0, v2

    .line 69
    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 71
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->compareTo(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p1

    return p1

    .line 73
    :cond_0
    iget-wide v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    iget-wide p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->lastAccessTimestamp:J

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const/4 p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 25
    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;

    check-cast p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;

    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->compare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)I

    move-result p1

    return p1
.end method

.method public final onCacheInitialized()V
    .locals 0

    .line 40
    return-void
.end method

.method public final onSpanAdded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 4

    .line 49
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {v0, p2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 50
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide v2, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->length:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 51
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;J)V

    .line 52
    return-void
.end method

.method public final onSpanRemoved(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 2

    .line 56
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->leastRecentlyUsed:Ljava/util/TreeSet;

    invoke-virtual {p1, p2}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 57
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    iget-wide p1, p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;->length:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->currentSize:J

    .line 58
    return-void
.end method

.method public final onSpanTouched(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanRemoved(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V

    .line 63
    invoke-virtual {p0, p1, p3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->onSpanAdded(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/CacheSpan;)V

    .line 64
    return-void
.end method

.method public final onStartFile(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;Ljava/lang/String;JJ)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p5, p6}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;->evictCache(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/cache/Cache;J)V

    .line 45
    return-void
.end method
