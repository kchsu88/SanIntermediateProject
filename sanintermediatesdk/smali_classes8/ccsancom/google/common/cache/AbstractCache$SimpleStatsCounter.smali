.class public final Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lccsancom/google/common/cache/AbstractCache$StatsCounter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/AbstractCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SimpleStatsCounter"
.end annotation


# instance fields
.field private final evictionCount:Lccsancom/google/common/cache/LongAddable;

.field private final hitCount:Lccsancom/google/common/cache/LongAddable;

.field private final loadExceptionCount:Lccsancom/google/common/cache/LongAddable;

.field private final loadSuccessCount:Lccsancom/google/common/cache/LongAddable;

.field private final missCount:Lccsancom/google/common/cache/LongAddable;

.field private final totalLoadTime:Lccsancom/google/common/cache/LongAddable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-static {}, Lccsancom/google/common/cache/LongAddables;->create()Lccsancom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lccsancom/google/common/cache/LongAddable;

    .line 198
    invoke-static {}, Lccsancom/google/common/cache/LongAddables;->create()Lccsancom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lccsancom/google/common/cache/LongAddable;

    .line 199
    invoke-static {}, Lccsancom/google/common/cache/LongAddables;->create()Lccsancom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lccsancom/google/common/cache/LongAddable;

    .line 200
    invoke-static {}, Lccsancom/google/common/cache/LongAddables;->create()Lccsancom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lccsancom/google/common/cache/LongAddable;

    .line 201
    invoke-static {}, Lccsancom/google/common/cache/LongAddables;->create()Lccsancom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lccsancom/google/common/cache/LongAddable;

    .line 202
    invoke-static {}, Lccsancom/google/common/cache/LongAddables;->create()Lccsancom/google/common/cache/LongAddable;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lccsancom/google/common/cache/LongAddable;

    .line 205
    return-void
.end method


# virtual methods
.method public incrementBy(Lccsancom/google/common/cache/AbstractCache$StatsCounter;)V
    .locals 4
    .param p1, "other"    # Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    .line 251
    invoke-interface {p1}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->snapshot()Lccsancom/google/common/cache/CacheStats;

    move-result-object v0

    .line 252
    .local v0, "otherStats":Lccsancom/google/common/cache/CacheStats;
    iget-object v1, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lccsancom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheStats;->hitCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 253
    iget-object v1, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lccsancom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheStats;->missCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 254
    iget-object v1, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lccsancom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheStats;->loadSuccessCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 255
    iget-object v1, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lccsancom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheStats;->loadExceptionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 256
    iget-object v1, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lccsancom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheStats;->totalLoadTime()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 257
    iget-object v1, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lccsancom/google/common/cache/LongAddable;

    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheStats;->evictionCount()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 258
    return-void
.end method

.method public recordEviction()V
    .locals 1

    .line 235
    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lccsancom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->increment()V

    .line 236
    return-void
.end method

.method public recordHits(I)V
    .locals 3
    .param p1, "count"    # I

    .line 210
    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lccsancom/google/common/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 211
    return-void
.end method

.method public recordLoadException(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .line 229
    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lccsancom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->increment()V

    .line 230
    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lccsancom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 231
    return-void
.end method

.method public recordLoadSuccess(J)V
    .locals 1
    .param p1, "loadTime"    # J

    .line 222
    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lccsancom/google/common/cache/LongAddable;

    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->increment()V

    .line 223
    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lccsancom/google/common/cache/LongAddable;

    invoke-interface {v0, p1, p2}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 224
    return-void
.end method

.method public recordMisses(I)V
    .locals 3
    .param p1, "count"    # I

    .line 216
    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lccsancom/google/common/cache/LongAddable;

    int-to-long v1, p1

    invoke-interface {v0, v1, v2}, Lccsancom/google/common/cache/LongAddable;->add(J)V

    .line 217
    return-void
.end method

.method public snapshot()Lccsancom/google/common/cache/CacheStats;
    .locals 14

    .line 240
    new-instance v13, Lccsancom/google/common/cache/CacheStats;

    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->hitCount:Lccsancom/google/common/cache/LongAddable;

    .line 241
    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->sum()J

    move-result-wide v1

    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->missCount:Lccsancom/google/common/cache/LongAddable;

    .line 242
    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->sum()J

    move-result-wide v3

    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadSuccessCount:Lccsancom/google/common/cache/LongAddable;

    .line 243
    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->sum()J

    move-result-wide v5

    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->loadExceptionCount:Lccsancom/google/common/cache/LongAddable;

    .line 244
    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->sum()J

    move-result-wide v7

    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->totalLoadTime:Lccsancom/google/common/cache/LongAddable;

    .line 245
    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->sum()J

    move-result-wide v9

    iget-object v0, p0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->evictionCount:Lccsancom/google/common/cache/LongAddable;

    .line 246
    invoke-interface {v0}, Lccsancom/google/common/cache/LongAddable;->sum()J

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lccsancom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    .line 240
    return-object v13
.end method
