.class Lccsancom/google/common/cache/LocalCache$LocalManualCache;
.super Ljava/lang/Object;
.source "LocalCache.java"

# interfaces
.implements Lccsancom/google/common/cache/Cache;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalManualCache"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lccsancom/google/common/cache/Cache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final localCache:Lccsancom/google/common/cache/LocalCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LocalCache<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsancom/google/common/cache/CacheBuilder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 4695
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "builder":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<-TK;-TV;>;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lccsancom/google/common/cache/LocalCache;-><init>(Lccsancom/google/common/cache/CacheBuilder;Lccsancom/google/common/cache/CacheLoader;)V

    invoke-direct {p0, v0}, Lccsancom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lccsancom/google/common/cache/LocalCache;)V

    .line 4696
    return-void
.end method

.method private constructor <init>(Lccsancom/google/common/cache/LocalCache;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4698
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "localCache":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4699
    iput-object p1, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    .line 4700
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/google/common/cache/LocalCache;Lccsancom/google/common/cache/LocalCache$1;)V
    .locals 0
    .param p1, "x0"    # Lccsancom/google/common/cache/LocalCache;
    .param p2, "x1"    # Lccsancom/google/common/cache/LocalCache$1;

    .line 4691
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    invoke-direct {p0, p1}, Lccsancom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lccsancom/google/common/cache/LocalCache;)V

    return-void
.end method


# virtual methods
.method public asMap()Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4761
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    return-object v0
.end method

.method public cleanUp()V
    .locals 1

    .line 4776
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lccsancom/google/common/cache/LocalCache;->cleanUp()V

    .line 4777
    return-void
.end method

.method public get(Ljava/lang/Object;Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/concurrent/Callable<",
            "+TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 4712
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "valueLoader":Ljava/util/concurrent/Callable;, "Ljava/util/concurrent/Callable<+TV;>;"
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4713
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    new-instance v1, Lccsancom/google/common/cache/LocalCache$LocalManualCache$1;

    invoke-direct {v1, p0, p2}, Lccsancom/google/common/cache/LocalCache$LocalManualCache$1;-><init>(Lccsancom/google/common/cache/LocalCache$LocalManualCache;Ljava/util/concurrent/Callable;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lccsancom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAllPresent(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4725
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->getAllPresent(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 4707
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public invalidate(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 4740
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4741
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4742
    return-void
.end method

.method public invalidateAll()V
    .locals 1

    .line 4751
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lccsancom/google/common/cache/LocalCache;->clear()V

    .line 4752
    return-void
.end method

.method public invalidateAll(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 4746
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->invalidateAll(Ljava/lang/Iterable;)V

    .line 4747
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 4730
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1, p2}, Lccsancom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4731
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4735
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0, p1}, Lccsancom/google/common/cache/LocalCache;->putAll(Ljava/util/Map;)V

    .line 4736
    return-void
.end method

.method public size()J
    .locals 2

    .line 4756
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Lccsancom/google/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public stats()Lccsancom/google/common/cache/CacheStats;
    .locals 6

    .line 4766
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;

    invoke-direct {v0}, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;-><init>()V

    .line 4767
    .local v0, "aggregator":Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    iget-object v1, v1, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lccsancom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 4768
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    iget-object v1, v1, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 4769
    .local v4, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget-object v5, v4, Lccsancom/google/common/cache/LocalCache$Segment;->statsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v5}, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->incrementBy(Lccsancom/google/common/cache/AbstractCache$StatsCounter;)V

    .line 4768
    .end local v4    # "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4771
    :cond_0
    invoke-virtual {v0}, Lccsancom/google/common/cache/AbstractCache$SimpleStatsCounter;->snapshot()Lccsancom/google/common/cache/CacheStats;

    move-result-object v1

    return-object v1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 4784
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$LocalManualCache;, "Lccsancom/google/common/cache/LocalCache$LocalManualCache<TK;TV;>;"
    new-instance v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;->localCache:Lccsancom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lccsancom/google/common/cache/LocalCache;)V

    return-object v0
.end method
