.class Lccsancom/google/common/cache/LocalCache;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"

# interfaces
.implements Ljava/util/concurrent/ConcurrentMap;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;,
        Lccsancom/google/common/cache/LocalCache$LocalManualCache;,
        Lccsancom/google/common/cache/LocalCache$LoadingSerializationProxy;,
        Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;,
        Lccsancom/google/common/cache/LocalCache$EntrySet;,
        Lccsancom/google/common/cache/LocalCache$Values;,
        Lccsancom/google/common/cache/LocalCache$KeySet;,
        Lccsancom/google/common/cache/LocalCache$AbstractCacheSet;,
        Lccsancom/google/common/cache/LocalCache$EntryIterator;,
        Lccsancom/google/common/cache/LocalCache$WriteThroughEntry;,
        Lccsancom/google/common/cache/LocalCache$ValueIterator;,
        Lccsancom/google/common/cache/LocalCache$KeyIterator;,
        Lccsancom/google/common/cache/LocalCache$HashIterator;,
        Lccsancom/google/common/cache/LocalCache$AccessQueue;,
        Lccsancom/google/common/cache/LocalCache$WriteQueue;,
        Lccsancom/google/common/cache/LocalCache$LoadingValueReference;,
        Lccsancom/google/common/cache/LocalCache$Segment;,
        Lccsancom/google/common/cache/LocalCache$WeightedStrongValueReference;,
        Lccsancom/google/common/cache/LocalCache$WeightedSoftValueReference;,
        Lccsancom/google/common/cache/LocalCache$WeightedWeakValueReference;,
        Lccsancom/google/common/cache/LocalCache$StrongValueReference;,
        Lccsancom/google/common/cache/LocalCache$SoftValueReference;,
        Lccsancom/google/common/cache/LocalCache$WeakValueReference;,
        Lccsancom/google/common/cache/LocalCache$WeakAccessWriteEntry;,
        Lccsancom/google/common/cache/LocalCache$WeakWriteEntry;,
        Lccsancom/google/common/cache/LocalCache$WeakAccessEntry;,
        Lccsancom/google/common/cache/LocalCache$WeakEntry;,
        Lccsancom/google/common/cache/LocalCache$StrongAccessWriteEntry;,
        Lccsancom/google/common/cache/LocalCache$StrongWriteEntry;,
        Lccsancom/google/common/cache/LocalCache$StrongAccessEntry;,
        Lccsancom/google/common/cache/LocalCache$StrongEntry;,
        Lccsancom/google/common/cache/LocalCache$AbstractReferenceEntry;,
        Lccsancom/google/common/cache/LocalCache$NullEntry;,
        Lccsancom/google/common/cache/LocalCache$ValueReference;,
        Lccsancom/google/common/cache/LocalCache$EntryFactory;,
        Lccsancom/google/common/cache/LocalCache$Strength;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/util/concurrent/ConcurrentMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field static final CONTAINS_VALUE_RETRIES:I = 0x3

.field static final DISCARDING_QUEUE:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "*>;"
        }
    .end annotation
.end field

.field static final DRAIN_MAX:I = 0x10

.field static final DRAIN_THRESHOLD:I = 0x3f

.field static final MAXIMUM_CAPACITY:I = 0x40000000

.field static final MAX_SEGMENTS:I = 0x10000

.field static final UNSET:Lccsancom/google/common/cache/LocalCache$ValueReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field static final logger:Ljava/util/logging/Logger;


# instance fields
.field final concurrencyLevel:I

.field final defaultLoader:Lccsancom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field final entryFactory:Lccsancom/google/common/cache/LocalCache$EntryFactory;

.field entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

.field final keyEquivalence:Lccsancom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

.field final maxWeight:J

.field final refreshNanos:J

.field final removalListener:Lccsancom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/RemovalListener<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final removalNotificationQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lccsancom/google/common/cache/RemovalNotification<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field final segmentMask:I

.field final segmentShift:I

.field final segments:[Lccsancom/google/common/cache/LocalCache$Segment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lccsancom/google/common/base/Ticker;

.field final valueEquivalence:Lccsancom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

.field values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final weigher:Lccsancom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    const-class v0, Lccsancom/google/common/cache/LocalCache;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    .line 676
    new-instance v0, Lccsancom/google/common/cache/LocalCache$1;

    invoke-direct {v0}, Lccsancom/google/common/cache/LocalCache$1;-><init>()V

    sput-object v0, Lccsancom/google/common/cache/LocalCache;->UNSET:Lccsancom/google/common/cache/LocalCache$ValueReference;

    .line 893
    new-instance v0, Lccsancom/google/common/cache/LocalCache$2;

    invoke-direct {v0}, Lccsancom/google/common/cache/LocalCache$2;-><init>()V

    sput-object v0, Lccsancom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-void
.end method

.method constructor <init>(Lccsancom/google/common/cache/CacheBuilder;Lccsancom/google/common/cache/CacheLoader;)V
    .locals 18
    .param p2    # Lccsancom/google/common/cache/CacheLoader;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "-TK;-TV;>;",
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 236
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "builder":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<-TK;-TV;>;"
    .local p2, "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractMap;-><init>()V

    .line 237
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getConcurrencyLevel()I

    move-result v1

    const/high16 v2, 0x10000

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lccsancom/google/common/cache/LocalCache;->concurrencyLevel:I

    .line 239
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getKeyStrength()Lccsancom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/common/cache/LocalCache;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 240
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getValueStrength()Lccsancom/google/common/cache/LocalCache$Strength;

    move-result-object v2

    iput-object v2, v0, Lccsancom/google/common/cache/LocalCache;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 242
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getKeyEquivalence()Lccsancom/google/common/base/Equivalence;

    move-result-object v2

    iput-object v2, v0, Lccsancom/google/common/cache/LocalCache;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 243
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getValueEquivalence()Lccsancom/google/common/base/Equivalence;

    move-result-object v2

    iput-object v2, v0, Lccsancom/google/common/cache/LocalCache;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 245
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getMaximumWeight()J

    move-result-wide v2

    iput-wide v2, v0, Lccsancom/google/common/cache/LocalCache;->maxWeight:J

    .line 246
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getWeigher()Lccsancom/google/common/cache/Weigher;

    move-result-object v4

    iput-object v4, v0, Lccsancom/google/common/cache/LocalCache;->weigher:Lccsancom/google/common/cache/Weigher;

    .line 247
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getExpireAfterAccessNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lccsancom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    .line 248
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getExpireAfterWriteNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lccsancom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    .line 249
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getRefreshNanos()J

    move-result-wide v4

    iput-wide v4, v0, Lccsancom/google/common/cache/LocalCache;->refreshNanos:J

    .line 251
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getRemovalListener()Lccsancom/google/common/cache/RemovalListener;

    move-result-object v4

    iput-object v4, v0, Lccsancom/google/common/cache/LocalCache;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    .line 252
    sget-object v5, Lccsancom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lccsancom/google/common/cache/CacheBuilder$NullListener;

    if-ne v4, v5, :cond_0

    .line 254
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->discardingQueue()Ljava/util/Queue;

    move-result-object v4

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v4}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    :goto_0
    iput-object v4, v0, Lccsancom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    .line 257
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/common/cache/LocalCache;->recordsTime()Z

    move-result v4

    move-object/from16 v5, p1

    invoke-virtual {v5, v4}, Lccsancom/google/common/cache/CacheBuilder;->getTicker(Z)Lccsancom/google/common/base/Ticker;

    move-result-object v4

    iput-object v4, v0, Lccsancom/google/common/cache/LocalCache;->ticker:Lccsancom/google/common/base/Ticker;

    .line 258
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/common/cache/LocalCache;->usesAccessEntries()Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lccsancom/google/common/cache/LocalCache;->usesWriteEntries()Z

    move-result v6

    invoke-static {v1, v4, v6}, Lccsancom/google/common/cache/LocalCache$EntryFactory;->getFactory(Lccsancom/google/common/cache/LocalCache$Strength;ZZ)Lccsancom/google/common/cache/LocalCache$EntryFactory;

    move-result-object v1

    iput-object v1, v0, Lccsancom/google/common/cache/LocalCache;->entryFactory:Lccsancom/google/common/cache/LocalCache$EntryFactory;

    .line 259
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lccsancom/google/common/base/Supplier;

    move-result-object v1

    invoke-interface {v1}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    iput-object v1, v0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    .line 260
    move-object/from16 v1, p2

    iput-object v1, v0, Lccsancom/google/common/cache/LocalCache;->defaultLoader:Lccsancom/google/common/cache/CacheLoader;

    .line 262
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getInitialCapacity()I

    move-result v4

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 263
    .local v4, "initialCapacity":I
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual/range {p0 .. p0}, Lccsancom/google/common/cache/LocalCache;->customWeigher()Z

    move-result v6

    if-nez v6, :cond_1

    .line 264
    int-to-long v6, v4

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    long-to-int v4, v2

    .line 272
    :cond_1
    const/4 v2, 0x0

    .line 273
    .local v2, "segmentShift":I
    const/4 v3, 0x1

    .line 274
    .local v3, "segmentCount":I
    :goto_1
    iget v6, v0, Lccsancom/google/common/cache/LocalCache;->concurrencyLevel:I

    if-ge v3, v6, :cond_3

    invoke-virtual/range {p0 .. p0}, Lccsancom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v6

    if-eqz v6, :cond_2

    mul-int/lit8 v6, v3, 0x14

    int-to-long v6, v6

    iget-wide v8, v0, Lccsancom/google/common/cache/LocalCache;->maxWeight:J

    cmp-long v10, v6, v8

    if-gtz v10, :cond_3

    .line 275
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 276
    shl-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 278
    :cond_3
    rsub-int/lit8 v6, v2, 0x20

    iput v6, v0, Lccsancom/google/common/cache/LocalCache;->segmentShift:I

    .line 279
    add-int/lit8 v6, v3, -0x1

    iput v6, v0, Lccsancom/google/common/cache/LocalCache;->segmentMask:I

    .line 281
    invoke-virtual {v0, v3}, Lccsancom/google/common/cache/LocalCache;->newSegmentArray(I)[Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v6

    iput-object v6, v0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    .line 283
    div-int v6, v4, v3

    .line 284
    .local v6, "segmentCapacity":I
    mul-int v7, v6, v3

    if-ge v7, v4, :cond_4

    .line 285
    add-int/lit8 v6, v6, 0x1

    .line 288
    :cond_4
    const/4 v7, 0x1

    .line 289
    .local v7, "segmentSize":I
    :goto_2
    if-ge v7, v6, :cond_5

    .line 290
    shl-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 293
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lccsancom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v8

    if-eqz v8, :cond_8

    .line 295
    iget-wide v8, v0, Lccsancom/google/common/cache/LocalCache;->maxWeight:J

    int-to-long v10, v3

    div-long v10, v8, v10

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    .line 296
    .local v10, "maxSegmentWeight":J
    int-to-long v14, v3

    rem-long/2addr v8, v14

    .line 297
    .local v8, "remainder":J
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_3
    iget-object v15, v0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    array-length v12, v15

    if-ge v14, v12, :cond_7

    .line 298
    int-to-long v12, v14

    cmp-long v17, v12, v8

    if-nez v17, :cond_6

    .line 299
    const-wide/16 v12, 0x1

    sub-long/2addr v10, v12

    goto :goto_4

    .line 298
    :cond_6
    const-wide/16 v12, 0x1

    .line 301
    :goto_4
    nop

    .line 302
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lccsancom/google/common/base/Supplier;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v12, v16

    check-cast v12, Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v7, v10, v11, v12}, Lccsancom/google/common/cache/LocalCache;->createSegment(IJLccsancom/google/common/cache/AbstractCache$StatsCounter;)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v12

    aput-object v12, v15, v14

    .line 297
    add-int/lit8 v14, v14, 0x1

    const-wide/16 v12, 0x1

    goto :goto_3

    .line 304
    .end local v8    # "remainder":J
    .end local v10    # "maxSegmentWeight":J
    .end local v14    # "i":I
    :cond_7
    goto :goto_6

    .line 305
    :cond_8
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_5
    iget-object v9, v0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    array-length v10, v9

    if-ge v8, v10, :cond_9

    .line 306
    const-wide/16 v10, -0x1

    .line 307
    invoke-virtual/range {p1 .. p1}, Lccsancom/google/common/cache/CacheBuilder;->getStatsCounterSupplier()Lccsancom/google/common/base/Supplier;

    move-result-object v12

    invoke-interface {v12}, Lccsancom/google/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-virtual {v0, v7, v10, v11, v12}, Lccsancom/google/common/cache/LocalCache;->createSegment(IJLccsancom/google/common/cache/AbstractCache$StatsCounter;)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v10

    aput-object v10, v9, v8

    .line 305
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 310
    .end local v8    # "i":I
    :cond_9
    :goto_6
    return-void
.end method

.method static synthetic access$200(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Ljava/util/Collection;

    .line 99
    invoke-static {p0}, Lccsancom/google/common/cache/LocalCache;->toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static connectAccessOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1775
    .local p0, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lccsancom/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1776
    invoke-interface {p1, p0}, Lccsancom/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1777
    return-void
.end method

.method static connectWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1788
    .local p0, "previous":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p1, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, p1}, Lccsancom/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1789
    invoke-interface {p1, p0}, Lccsancom/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1790
    return-void
.end method

.method static discardingQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Queue<",
            "TE;>;"
        }
    .end annotation

    .line 924
    sget-object v0, Lccsancom/google/common/cache/LocalCache;->DISCARDING_QUEUE:Ljava/util/Queue;

    return-object v0
.end method

.method static nullEntry()Lccsancom/google/common/cache/ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 890
    sget-object v0, Lccsancom/google/common/cache/LocalCache$NullEntry;->INSTANCE:Lccsancom/google/common/cache/LocalCache$NullEntry;

    return-object v0
.end method

.method static nullifyAccessOrder(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1781
    .local p0, "nulled":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1782
    .local v0, "nullEntry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lccsancom/google/common/cache/ReferenceEntry;->setNextInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1783
    invoke-interface {p0, v0}, Lccsancom/google/common/cache/ReferenceEntry;->setPreviousInAccessQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1784
    return-void
.end method

.method static nullifyWriteOrder(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1794
    .local p0, "nulled":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {}, Lccsancom/google/common/cache/LocalCache;->nullEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1795
    .local v0, "nullEntry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p0, v0}, Lccsancom/google/common/cache/ReferenceEntry;->setNextInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1796
    invoke-interface {p0, v0}, Lccsancom/google/common/cache/ReferenceEntry;->setPreviousInWriteQueue(Lccsancom/google/common/cache/ReferenceEntry;)V

    .line 1797
    return-void
.end method

.method static rehash(I)I
    .locals 2
    .param p0, "h"    # I

    .line 1652
    shl-int/lit8 v0, p0, 0xf

    xor-int/lit16 v0, v0, -0x3283

    add-int/2addr p0, v0

    .line 1653
    ushr-int/lit8 v0, p0, 0xa

    xor-int/2addr p0, v0

    .line 1654
    shl-int/lit8 v0, p0, 0x3

    add-int/2addr p0, v0

    .line 1655
    ushr-int/lit8 v0, p0, 0x6

    xor-int/2addr p0, v0

    .line 1656
    shl-int/lit8 v0, p0, 0x2

    shl-int/lit8 v1, p0, 0xe

    add-int/2addr v0, v1

    add-int/2addr p0, v0

    .line 1657
    ushr-int/lit8 v0, p0, 0x10

    xor-int/2addr v0, p0

    return v0
.end method

.method private static toArrayList(Ljava/util/Collection;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/ArrayList<",
            "TE;>;"
        }
    .end annotation

    .line 4404
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4405
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/collect/Iterators;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    .line 4406
    return-object v0
.end method

.method static unset()Lccsancom/google/common/cache/LocalCache$ValueReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 723
    sget-object v0, Lccsancom/google/common/cache/LocalCache;->UNSET:Lccsancom/google/common/cache/LocalCache$ValueReference;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 4

    .line 3786
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 3787
    .local v3, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<**>;"
    invoke-virtual {v3}, Lccsancom/google/common/cache/LocalCache$Segment;->cleanUp()V

    .line 3786
    .end local v3    # "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<**>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3789
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 4

    .line 4139
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 4140
    .local v3, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v3}, Lccsancom/google/common/cache/LocalCache$Segment;->clear()V

    .line 4139
    .end local v3    # "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4142
    :cond_0
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 4030
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4031
    const/4 v0, 0x0

    return v0

    .line 4033
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4034
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/cache/LocalCache$Segment;->containsKey(Ljava/lang/Object;I)Z

    move-result v1

    return v1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 20
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 4040
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 4041
    return v2

    .line 4049
    :cond_0
    iget-object v3, v0, Lccsancom/google/common/cache/LocalCache;->ticker:Lccsancom/google/common/base/Ticker;

    invoke-virtual {v3}, Lccsancom/google/common/base/Ticker;->read()J

    move-result-wide v3

    .line 4050
    .local v3, "now":J
    iget-object v5, v0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    .line 4051
    .local v5, "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v6, -0x1

    .line 4052
    .local v6, "last":J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    const/4 v9, 0x3

    if-ge v8, v9, :cond_7

    .line 4053
    const-wide/16 v9, 0x0

    .line 4054
    .local v9, "sum":J
    array-length v11, v5

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_5

    aget-object v13, v5, v12

    .line 4056
    .local v13, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    iget v14, v13, Lccsancom/google/common/cache/LocalCache$Segment;->count:I

    .line 4058
    .local v14, "unused":I
    iget-object v15, v13, Lccsancom/google/common/cache/LocalCache$Segment;->table:Ljava/util/concurrent/atomic/AtomicReferenceArray;

    .line 4059
    .local v15, "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    const/16 v16, 0x0

    move/from16 v2, v16

    .local v2, "j":I
    :goto_2
    move-object/from16 v16, v5

    .end local v5    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .local v16, "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v15}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 4060
    invoke-virtual {v15, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lccsancom/google/common/cache/ReferenceEntry;

    .local v5, "e":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    :goto_3
    if-eqz v5, :cond_3

    .line 4061
    move/from16 v17, v11

    invoke-virtual {v13, v5, v3, v4}, Lccsancom/google/common/cache/LocalCache$Segment;->getLiveValue(Lccsancom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v11

    .line 4062
    .local v11, "v":Ljava/lang/Object;, "TV;"
    if-eqz v11, :cond_1

    move-wide/from16 v18, v3

    .end local v3    # "now":J
    .local v18, "now":J
    iget-object v3, v0, Lccsancom/google/common/cache/LocalCache;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    invoke-virtual {v3, v1, v11}, Lccsancom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4063
    const/4 v3, 0x1

    return v3

    .line 4062
    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_1
    move-wide/from16 v18, v3

    .line 4060
    .end local v3    # "now":J
    .end local v11    # "v":Ljava/lang/Object;, "TV;"
    .restart local v18    # "now":J
    :cond_2
    invoke-interface {v5}, Lccsancom/google/common/cache/ReferenceEntry;->getNext()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v5

    move/from16 v11, v17

    move-wide/from16 v3, v18

    goto :goto_3

    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_3
    move-wide/from16 v18, v3

    move/from16 v17, v11

    .line 4059
    .end local v3    # "now":J
    .end local v5    # "e":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .restart local v18    # "now":J
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v5, v16

    goto :goto_2

    .end local v18    # "now":J
    .restart local v3    # "now":J
    :cond_4
    move-wide/from16 v18, v3

    move/from16 v17, v11

    .line 4067
    .end local v2    # "j":I
    .end local v3    # "now":J
    .restart local v18    # "now":J
    iget v2, v13, Lccsancom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v2, v2

    add-long/2addr v9, v2

    .line 4054
    .end local v13    # "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v14    # "unused":I
    .end local v15    # "table":Ljava/util/concurrent/atomic/AtomicReferenceArray;, "Ljava/util/concurrent/atomic/AtomicReferenceArray<Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;>;"
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_1

    .line 4069
    .end local v16    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v18    # "now":J
    .restart local v3    # "now":J
    .local v5, "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_5
    move-wide/from16 v18, v3

    move-object/from16 v16, v5

    .end local v3    # "now":J
    .end local v5    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v16    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v18    # "now":J
    cmp-long v2, v9, v6

    if-nez v2, :cond_6

    .line 4070
    goto :goto_4

    .line 4072
    :cond_6
    move-wide v6, v9

    .line 4052
    .end local v9    # "sum":J
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v5, v16

    move-wide/from16 v3, v18

    const/4 v2, 0x0

    goto :goto_0

    .end local v16    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v18    # "now":J
    .restart local v3    # "now":J
    .restart local v5    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    :cond_7
    move-wide/from16 v18, v3

    move-object/from16 v16, v5

    .line 4074
    .end local v3    # "now":J
    .end local v5    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .end local v8    # "i":I
    .restart local v16    # "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    .restart local v18    # "now":J
    :goto_4
    const/4 v2, 0x0

    return v2
.end method

.method copyEntry(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1680
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "original":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "newNext":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1681
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lccsancom/google/common/cache/LocalCache$Segment;->copyEntry(Lccsancom/google/common/cache/ReferenceEntry;Lccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method createSegment(IJLccsancom/google/common/cache/AbstractCache$StatsCounter;)Lccsancom/google/common/cache/LocalCache$Segment;
    .locals 7
    .param p1, "initialCapacity"    # I
    .param p2, "maxSegmentWeight"    # J
    .param p4, "statsCounter"    # Lccsancom/google/common/cache/AbstractCache$StatsCounter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJ",
            "Lccsancom/google/common/cache/AbstractCache$StatsCounter;",
            ")",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1732
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    new-instance v6, Lccsancom/google/common/cache/LocalCache$Segment;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-wide v3, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lccsancom/google/common/cache/LocalCache$Segment;-><init>(Lccsancom/google/common/cache/LocalCache;IJLccsancom/google/common/cache/AbstractCache$StatsCounter;)V

    return-object v6
.end method

.method customWeigher()Z
    .locals 2

    .line 317
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->weigher:Lccsancom/google/common/cache/Weigher;

    sget-object v1, Lccsancom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lccsancom/google/common/cache/CacheBuilder$OneWeigher;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4175
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    .line 4176
    .local v0, "es":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/common/cache/LocalCache$EntrySet;

    invoke-direct {v1, p0, p0}, Lccsancom/google/common/cache/LocalCache$EntrySet;-><init>(Lccsancom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v1, p0, Lccsancom/google/common/cache/LocalCache;->entrySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method evictsBySize()Z
    .locals 5

    .line 313
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache;->maxWeight:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expires()Z
    .locals 1

    .line 321
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method expiresAfterAccess()Z
    .locals 5

    .line 329
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method expiresAfterWrite()Z
    .locals 5

    .line 325
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3842
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 3843
    const/4 v0, 0x0

    return-object v0

    .line 3845
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3846
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method get(Ljava/lang/Object;Lccsancom/google/common/cache/CacheLoader;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3850
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3851
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lccsancom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;ILccsancom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method getAll(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TK;>;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3901
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    const/4 v0, 0x0

    .line 3902
    .local v0, "hits":I
    const/4 v1, 0x0

    .line 3904
    .local v1, "misses":I
    invoke-static {}, Lccsancom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3905
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {}, Lccsancom/google/common/collect/Sets;->newLinkedHashSet()Ljava/util/LinkedHashSet;

    move-result-object v3

    .line 3906
    .local v3, "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 3907
    .local v5, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v5}, Lccsancom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 3908
    .local v6, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3909
    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3910
    if-nez v6, :cond_0

    .line 3911
    add-int/lit8 v1, v1, 0x1

    .line 3912
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3914
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 3917
    .end local v5    # "key":Ljava/lang/Object;, "TK;"
    .end local v6    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    :goto_1
    goto :goto_0

    .line 3920
    :cond_2
    :try_start_0
    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_5

    .line 3922
    :try_start_1
    iget-object v4, p0, Lccsancom/google/common/cache/LocalCache;->defaultLoader:Lccsancom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v3, v4}, Lccsancom/google/common/cache/LocalCache;->loadAll(Ljava/util/Set;Lccsancom/google/common/cache/CacheLoader;)Ljava/util/Map;

    move-result-object v4

    .line 3923
    .local v4, "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3924
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 3925
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v7, :cond_3

    .line 3928
    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3929
    nop

    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    goto :goto_2

    .line 3926
    .restart local v6    # "key":Ljava/lang/Object;, "TK;"
    .restart local v7    # "value":Ljava/lang/Object;, "TV;"
    :cond_3
    new-instance v5, Lccsancom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadAll failed to return a value for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v8}, Lccsancom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    .end local v0    # "hits":I
    .end local v1    # "misses":I
    .end local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v3    # "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .end local p1    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    throw v5
    :try_end_1
    .catch Lccsancom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3936
    .end local v4    # "newEntries":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    .restart local v0    # "hits":I
    .restart local v1    # "misses":I
    .restart local v2    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .restart local v3    # "keysToLoad":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    .restart local p1    # "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TK;>;"
    :cond_4
    goto :goto_4

    .line 3930
    :catch_0
    move-exception v4

    .line 3932
    .local v4, "e":Lccsancom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :try_start_2
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 3933
    .restart local v6    # "key":Ljava/lang/Object;, "TK;"
    add-int/lit8 v1, v1, -0x1

    .line 3934
    iget-object v7, p0, Lccsancom/google/common/cache/LocalCache;->defaultLoader:Lccsancom/google/common/cache/CacheLoader;

    invoke-virtual {p0, v6, v7}, Lccsancom/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lccsancom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v2, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3935
    nop

    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    goto :goto_3

    .line 3938
    .end local v4    # "e":Lccsancom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    :cond_5
    :goto_4
    invoke-static {v2}, Lccsancom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3940
    iget-object v5, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v0}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3941
    iget-object v5, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v1}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3938
    return-object v4

    .line 3940
    :catchall_0
    move-exception v4

    iget-object v5, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v0}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3941
    iget-object v5, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v5, v1}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3942
    goto :goto_6

    :goto_5
    throw v4

    :goto_6
    goto :goto_5
.end method

.method getAllPresent(Ljava/lang/Iterable;)Lccsancom/google/common/collect/ImmutableMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lccsancom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 3879
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    const/4 v0, 0x0

    .line 3880
    .local v0, "hits":I
    const/4 v1, 0x0

    .line 3882
    .local v1, "misses":I
    invoke-static {}, Lccsancom/google/common/collect/Maps;->newLinkedHashMap()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 3883
    .local v2, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 3884
    .local v4, "key":Ljava/lang/Object;
    invoke-virtual {p0, v4}, Lccsancom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 3885
    .local v5, "value":Ljava/lang/Object;, "TV;"
    if-nez v5, :cond_0

    .line 3886
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3890
    :cond_0
    move-object v6, v4

    .line 3891
    .local v6, "castKey":Ljava/lang/Object;, "TK;"
    invoke-interface {v2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3892
    add-int/lit8 v0, v0, 0x1

    .line 3894
    .end local v4    # "key":Ljava/lang/Object;
    .end local v5    # "value":Ljava/lang/Object;, "TV;"
    .end local v6    # "castKey":Ljava/lang/Object;, "TK;"
    :goto_1
    goto :goto_0

    .line 3895
    :cond_1
    iget-object v3, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v0}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3896
    iget-object v3, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v1}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    .line 3897
    invoke-static {v2}, Lccsancom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lccsancom/google/common/collect/ImmutableMap;

    move-result-object v3

    return-object v3
.end method

.method getEntry(Ljava/lang/Object;)Lccsancom/google/common/cache/ReferenceEntry;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4015
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4016
    const/4 v0, 0x0

    return-object v0

    .line 4018
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4019
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/cache/LocalCache$Segment;->getEntry(Ljava/lang/Object;I)Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1

    return-object v1
.end method

.method public getIfPresent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
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

    .line 3856
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 3857
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/cache/LocalCache$Segment;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    .line 3858
    .local v1, "value":Ljava/lang/Object;, "TV;"
    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3859
    iget-object v3, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v2}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordMisses(I)V

    goto :goto_0

    .line 3861
    :cond_0
    iget-object v3, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    invoke-interface {v3, v2}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordHits(I)V

    .line 3863
    :goto_0
    return-object v1
.end method

.method getLiveValue(Lccsancom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;
    .locals 3
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 1743
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1744
    return-object v1

    .line 1746
    :cond_0
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getValueReference()Lccsancom/google/common/cache/LocalCache$ValueReference;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/google/common/cache/LocalCache$ValueReference;->get()Ljava/lang/Object;

    move-result-object v0

    .line 1747
    .local v0, "value":Ljava/lang/Object;, "TV;"
    if-nez v0, :cond_1

    .line 1748
    return-object v1

    .line 1751
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache;->isExpired(Lccsancom/google/common/cache/ReferenceEntry;J)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1752
    return-object v1

    .line 1754
    :cond_2
    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3870
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p2, "defaultValue":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 3871
    .local v0, "result":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method getOrLoad(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 3875
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->defaultLoader:Lccsancom/google/common/cache/CacheLoader;

    invoke-virtual {p0, p1, v0}, Lccsancom/google/common/cache/LocalCache;->get(Ljava/lang/Object;Lccsancom/google/common/cache/CacheLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method hash(Ljava/lang/Object;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 1695
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    invoke-virtual {v0, p1}, Lccsancom/google/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 1696
    .local v0, "h":I
    invoke-static {v0}, Lccsancom/google/common/cache/LocalCache;->rehash(I)I

    move-result v1

    return v1
.end method

.method invalidateAll(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;)V"
        }
    .end annotation

    .line 4146
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4147
    .local v1, "key":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lccsancom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4148
    .end local v1    # "key":Ljava/lang/Object;
    goto :goto_0

    .line 4149
    :cond_0
    return-void
.end method

.method public isEmpty()Z
    .locals 9

    .line 3802
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    const-wide/16 v0, 0x0

    .line 3803
    .local v0, "sum":J
    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    .line 3804
    .local v2, "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    const/4 v5, 0x0

    if-ge v3, v4, :cond_1

    .line 3805
    aget-object v4, v2, v3

    iget v4, v4, Lccsancom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v4, :cond_0

    .line 3806
    return v5

    .line 3808
    :cond_0
    aget-object v4, v2, v3

    iget v4, v4, Lccsancom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v4, v4

    add-long/2addr v0, v4

    .line 3804
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3811
    .end local v3    # "i":I
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v6, v0, v3

    if-eqz v6, :cond_4

    .line 3812
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    array-length v7, v2

    if-ge v6, v7, :cond_3

    .line 3813
    aget-object v7, v2, v6

    iget v7, v7, Lccsancom/google/common/cache/LocalCache$Segment;->count:I

    if-eqz v7, :cond_2

    .line 3814
    return v5

    .line 3816
    :cond_2
    aget-object v7, v2, v6

    iget v7, v7, Lccsancom/google/common/cache/LocalCache$Segment;->modCount:I

    int-to-long v7, v7

    sub-long/2addr v0, v7

    .line 3812
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 3818
    .end local v6    # "i":I
    :cond_3
    cmp-long v6, v0, v3

    if-eqz v6, :cond_4

    .line 3819
    return v5

    .line 3822
    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method isExpired(Lccsancom/google/common/cache/ReferenceEntry;J)Z
    .locals 6
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1761
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1762
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getAccessTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lccsancom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    .line 1763
    return v1

    .line 1765
    :cond_0
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getWriteTime()J

    move-result-wide v2

    sub-long v2, p2, v2

    iget-wide v4, p0, Lccsancom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    cmp-long v0, v2, v4

    if-ltz v0, :cond_1

    .line 1766
    return v1

    .line 1768
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method isLive(Lccsancom/google/common/cache/ReferenceEntry;J)Z
    .locals 1
    .param p2, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;J)Z"
        }
    .end annotation

    .line 1716
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache$Segment;->getLiveValue(Lccsancom/google/common/cache/ReferenceEntry;J)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 4156
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    .line 4157
    .local v0, "ks":Ljava/util/Set;, "Ljava/util/Set<TK;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/common/cache/LocalCache$KeySet;

    invoke-direct {v1, p0, p0}, Lccsancom/google/common/cache/LocalCache$KeySet;-><init>(Lccsancom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v1, p0, Lccsancom/google/common/cache/LocalCache;->keySet:Ljava/util/Set;

    :goto_0
    return-object v1
.end method

.method loadAll(Ljava/util/Set;Lccsancom/google/common/cache/CacheLoader;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "+TK;>;",
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation

    .line 3952
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .local p2, "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3953
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3954
    invoke-static {}, Lccsancom/google/common/base/Stopwatch;->createStarted()Lccsancom/google/common/base/Stopwatch;

    move-result-object v0

    .line 3956
    .local v0, "stopwatch":Lccsancom/google/common/base/Stopwatch;
    const/4 v1, 0x0

    .line 3959
    .local v1, "success":Z
    :try_start_0
    invoke-virtual {p2, p1}, Lccsancom/google/common/cache/CacheLoader;->loadAll(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v2
    :try_end_0
    .catch Lccsancom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3960
    .local v2, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v3, v2

    .line 3961
    .local v3, "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    const/4 v1, 0x1

    .line 3975
    .end local v2    # "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    if-nez v1, :cond_0

    .line 3976
    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lccsancom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3980
    :cond_0
    if-eqz v3, :cond_5

    .line 3985
    invoke-virtual {v0}, Lccsancom/google/common/base/Stopwatch;->stop()Lccsancom/google/common/base/Stopwatch;

    .line 3987
    const/4 v2, 0x0

    .line 3988
    .local v2, "nullsPresent":Z
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 3989
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 3990
    .local v6, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 3991
    .local v7, "value":Ljava/lang/Object;, "TV;"
    if-eqz v6, :cond_2

    if-nez v7, :cond_1

    goto :goto_1

    .line 3995
    :cond_1
    invoke-virtual {p0, v6, v7}, Lccsancom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 3993
    :cond_2
    :goto_1
    const/4 v2, 0x1

    .line 3997
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v6    # "key":Ljava/lang/Object;, "TK;"
    .end local v7    # "value":Ljava/lang/Object;, "TV;"
    :goto_2
    goto :goto_0

    .line 3999
    :cond_3
    if-nez v2, :cond_4

    .line 4005
    iget-object v4, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5}, Lccsancom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordLoadSuccess(J)V

    .line 4006
    return-object v3

    .line 4000
    :cond_4
    iget-object v4, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v5}, Lccsancom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 4001
    new-instance v4, Lccsancom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " returned null keys or values from loadAll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lccsancom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3981
    .end local v2    # "nullsPresent":Z
    :cond_5
    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lccsancom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3982
    new-instance v2, Lccsancom/google/common/cache/CacheLoader$InvalidCacheLoadException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " returned null map from loadAll"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lccsancom/google/common/cache/CacheLoader$InvalidCacheLoadException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3975
    .end local v3    # "result":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    :catchall_0
    move-exception v2

    goto :goto_3

    .line 3972
    :catch_0
    move-exception v2

    .line 3973
    .local v2, "e":Ljava/lang/Error;
    :try_start_1
    new-instance v3, Lccsancom/google/common/util/concurrent/ExecutionError;

    invoke-direct {v3, v2}, Lccsancom/google/common/util/concurrent/ExecutionError;-><init>(Ljava/lang/Error;)V

    .end local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3970
    .end local v2    # "e":Ljava/lang/Error;
    .restart local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_1
    move-exception v2

    .line 3971
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3968
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_2
    move-exception v2

    .line 3969
    .local v2, "e":Ljava/lang/RuntimeException;
    new-instance v3, Lccsancom/google/common/util/concurrent/UncheckedExecutionException;

    invoke-direct {v3, v2}, Lccsancom/google/common/util/concurrent/UncheckedExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3965
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_3
    move-exception v2

    .line 3966
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->interrupt()V

    .line 3967
    new-instance v3, Ljava/util/concurrent/ExecutionException;

    invoke-direct {v3, v2}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v3

    .line 3962
    .end local v2    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    :catch_4
    move-exception v2

    .line 3963
    .local v2, "e":Lccsancom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    const/4 v1, 0x1

    .line 3964
    nop

    .end local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .end local v1    # "success":Z
    .end local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .end local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3975
    .end local v2    # "e":Lccsancom/google/common/cache/CacheLoader$UnsupportedLoadingOperationException;
    .restart local v0    # "stopwatch":Lccsancom/google/common/base/Stopwatch;
    .restart local v1    # "success":Z
    .restart local p1    # "keys":Ljava/util/Set;, "Ljava/util/Set<+TK;>;"
    .restart local p2    # "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    :goto_3
    if-nez v1, :cond_6

    .line 3976
    iget-object v3, p0, Lccsancom/google/common/cache/LocalCache;->globalStatsCounter:Lccsancom/google/common/cache/AbstractCache$StatsCounter;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v4}, Lccsancom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Lccsancom/google/common/cache/AbstractCache$StatsCounter;->recordLoadException(J)V

    .line 3978
    :cond_6
    goto :goto_5

    :goto_4
    throw v2

    :goto_5
    goto :goto_4
.end method

.method longSize()J
    .locals 6

    .line 3826
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    .line 3827
    .local v0, "segments":[Lccsancom/google/common/cache/LocalCache$Segment;, "[Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    const-wide/16 v1, 0x0

    .line 3828
    .local v1, "sum":J
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 3829
    const/4 v4, 0x0

    aget-object v5, v0, v3

    iget v5, v5, Lccsancom/google/common/cache/LocalCache$Segment;->count:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v1, v4

    .line 3828
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3831
    .end local v3    # "i":I
    :cond_0
    return-wide v1
.end method

.method newEntry(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lccsancom/google/common/cache/ReferenceEntry;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1665
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-virtual {p0, p2}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v0

    .line 1666
    .local v0, "segment":Lccsancom/google/common/cache/LocalCache$Segment;, "Lccsancom/google/common/cache/LocalCache$Segment<TK;TV;>;"
    invoke-virtual {v0}, Lccsancom/google/common/cache/LocalCache$Segment;->lock()V

    .line 1668
    :try_start_0
    invoke-virtual {v0, p1, p2, p3}, Lccsancom/google/common/cache/LocalCache$Segment;->newEntry(Ljava/lang/Object;ILccsancom/google/common/cache/ReferenceEntry;)Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1670
    invoke-virtual {v0}, Lccsancom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 1668
    return-object v1

    .line 1670
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lccsancom/google/common/cache/LocalCache$Segment;->unlock()V

    .line 1671
    throw v1
.end method

.method final newSegmentArray(I)[Lccsancom/google/common/cache/LocalCache$Segment;
    .locals 1
    .param p1, "ssize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1817
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    new-array v0, p1, [Lccsancom/google/common/cache/LocalCache$Segment;

    return-object v0
.end method

.method newValueReference(Lccsancom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lccsancom/google/common/cache/LocalCache$ValueReference;
    .locals 4
    .param p3, "weight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;TV;I)",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1690
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1691
    .local v0, "hash":I
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, p1, v3, p3}, Lccsancom/google/common/cache/LocalCache$Strength;->referenceValue(Lccsancom/google/common/cache/LocalCache$Segment;Lccsancom/google/common/cache/ReferenceEntry;Ljava/lang/Object;I)Lccsancom/google/common/cache/LocalCache$ValueReference;

    move-result-object v1

    return-object v1
.end method

.method processPendingNotifications()V
    .locals 5

    .line 1806
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    :goto_0
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->removalNotificationQueue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/RemovalNotification;

    move-object v1, v0

    .local v1, "notification":Lccsancom/google/common/cache/RemovalNotification;, "Lccsancom/google/common/cache/RemovalNotification<TK;TV;>;"
    if-eqz v0, :cond_0

    .line 1808
    :try_start_0
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    invoke-interface {v0, v1}, Lccsancom/google/common/cache/RemovalListener;->onRemoval(Lccsancom/google/common/cache/RemovalNotification;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1809
    :catchall_0
    move-exception v0

    .line 1810
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v2, Lccsancom/google/common/cache/LocalCache;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v4, "Exception thrown by removal listener"

    invoke-virtual {v2, v3, v4, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1811
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 1813
    :cond_0
    return-void
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4079
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4080
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4081
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4082
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, p2, v2}, Lccsancom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 4095
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4096
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lccsancom/google/common/cache/LocalCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4097
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    goto :goto_0

    .line 4098
    :cond_0
    return-void
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4087
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4088
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4089
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4090
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, p2, v2}, Lccsancom/google/common/cache/LocalCache$Segment;->put(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method reclaimKey(Lccsancom/google/common/cache/ReferenceEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/ReferenceEntry<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1706
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v0

    .line 1707
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/cache/LocalCache$Segment;->reclaimKey(Lccsancom/google/common/cache/ReferenceEntry;I)Z

    .line 1708
    return-void
.end method

.method reclaimValue(Lccsancom/google/common/cache/LocalCache$ValueReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache$ValueReference<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 1700
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "valueReference":Lccsancom/google/common/cache/LocalCache$ValueReference;, "Lccsancom/google/common/cache/LocalCache$ValueReference<TK;TV;>;"
    invoke-interface {p1}, Lccsancom/google/common/cache/LocalCache$ValueReference;->getEntry()Lccsancom/google/common/cache/ReferenceEntry;

    move-result-object v0

    .line 1701
    .local v0, "entry":Lccsancom/google/common/cache/ReferenceEntry;, "Lccsancom/google/common/cache/ReferenceEntry<TK;TV;>;"
    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getHash()I

    move-result v1

    .line 1702
    .local v1, "hash":I
    invoke-virtual {p0, v1}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v2

    invoke-interface {v0}, Lccsancom/google/common/cache/ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, v1, p1}, Lccsancom/google/common/cache/LocalCache$Segment;->reclaimValue(Ljava/lang/Object;ILccsancom/google/common/cache/LocalCache$ValueReference;)Z

    .line 1703
    return-void
.end method

.method recordsAccess()Z
    .locals 1

    .line 349
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    return v0
.end method

.method recordsTime()Z
    .locals 1

    .line 353
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method recordsWrite()Z
    .locals 1

    .line 345
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->refreshes()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method refresh(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)V"
        }
    .end annotation

    .line 4023
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4024
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    iget-object v2, p0, Lccsancom/google/common/cache/LocalCache;->defaultLoader:Lccsancom/google/common/cache/CacheLoader;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v0, v2, v3}, Lccsancom/google/common/cache/LocalCache$Segment;->refresh(Ljava/lang/Object;ILccsancom/google/common/cache/CacheLoader;Z)Ljava/lang/Object;

    .line 4025
    return-void
.end method

.method refreshes()Z
    .locals 5

    .line 333
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/LocalCache;->refreshNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 4102
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    if-nez p1, :cond_0

    .line 4103
    const/4 v0, 0x0

    return-object v0

    .line 4105
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4106
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lccsancom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param

    .line 4111
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 4114
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4115
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lccsancom/google/common/cache/LocalCache$Segment;->remove(Ljava/lang/Object;ILjava/lang/Object;)Z

    move-result v1

    return v1

    .line 4112
    .end local v0    # "hash":I
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 4131
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4132
    invoke-static {p2}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4133
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4134
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2}, Lccsancom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .line 4120
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "oldValue":Ljava/lang/Object;, "TV;"
    .local p3, "newValue":Ljava/lang/Object;, "TV;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4121
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4122
    if-nez p2, :cond_0

    .line 4123
    const/4 v0, 0x0

    return v0

    .line 4125
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/google/common/cache/LocalCache;->hash(Ljava/lang/Object;)I

    move-result v0

    .line 4126
    .local v0, "hash":I
    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/LocalCache;->segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;

    move-result-object v1

    invoke-virtual {v1, p1, v0, p2, p3}, Lccsancom/google/common/cache/LocalCache$Segment;->replace(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method segmentFor(I)Lccsancom/google/common/cache/LocalCache$Segment;
    .locals 3
    .param p1, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/cache/LocalCache$Segment<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1727
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->segments:[Lccsancom/google/common/cache/LocalCache$Segment;

    iget v1, p0, Lccsancom/google/common/cache/LocalCache;->segmentShift:I

    ushr-int v1, p1, v1

    iget v2, p0, Lccsancom/google/common/cache/LocalCache;->segmentMask:I

    and-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 2

    .line 3836
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->longSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lccsancom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method

.method usesAccessEntries()Z
    .locals 1

    .line 361
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->usesAccessQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->recordsAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesAccessQueue()Z
    .locals 1

    .line 337
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterAccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->evictsBySize()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesKeyReferences()Z
    .locals 2

    .line 365
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lccsancom/google/common/cache/LocalCache$Strength;->STRONG:Lccsancom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesValueReferences()Z
    .locals 2

    .line 369
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lccsancom/google/common/cache/LocalCache$Strength;->STRONG:Lccsancom/google/common/cache/LocalCache$Strength;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method usesWriteEntries()Z
    .locals 1

    .line 357
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->usesWriteQueue()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->recordsWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method usesWriteQueue()Z
    .locals 1

    .line 341
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache;->expiresAfterWrite()Z

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 4165
    .local p0, "this":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    .line 4166
    .local v0, "vs":Ljava/util/Collection;, "Ljava/util/Collection<TV;>;"
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Lccsancom/google/common/cache/LocalCache$Values;

    invoke-direct {v1, p0, p0}, Lccsancom/google/common/cache/LocalCache$Values;-><init>(Lccsancom/google/common/cache/LocalCache;Ljava/util/concurrent/ConcurrentMap;)V

    iput-object v1, p0, Lccsancom/google/common/cache/LocalCache;->values:Ljava/util/Collection;

    :goto_0
    return-object v1
.end method
