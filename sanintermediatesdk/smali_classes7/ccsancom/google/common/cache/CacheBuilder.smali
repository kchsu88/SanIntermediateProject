.class public final Lccsancom/google/common/cache/CacheBuilder;
.super Ljava/lang/Object;
.source "CacheBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/cache/CacheBuilder$OneWeigher;,
        Lccsancom/google/common/cache/CacheBuilder$NullListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final CACHE_STATS_COUNTER:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "Lccsancom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CONCURRENCY_LEVEL:I = 0x4

.field private static final DEFAULT_EXPIRATION_NANOS:I = 0x0

.field private static final DEFAULT_INITIAL_CAPACITY:I = 0x10

.field private static final DEFAULT_REFRESH_NANOS:I = 0x0

.field static final EMPTY_STATS:Lccsancom/google/common/cache/CacheStats;

.field static final NULL_STATS_COUNTER:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Lccsancom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field static final NULL_TICKER:Lccsancom/google/common/base/Ticker;

.field static final UNSET_INT:I = -0x1

.field private static final logger:Ljava/util/logging/Logger;


# instance fields
.field concurrencyLevel:I

.field expireAfterAccessNanos:J

.field expireAfterWriteNanos:J

.field initialCapacity:I

.field keyEquivalence:Lccsancom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field maximumSize:J

.field maximumWeight:J

.field refreshNanos:J

.field removalListener:Lccsancom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field statsCounterSupplier:Lccsancom/google/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Lccsancom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation
.end field

.field strictParsing:Z

.field ticker:Lccsancom/google/common/base/Ticker;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field valueEquivalence:Lccsancom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field weigher:Lccsancom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/Weigher<",
            "-TK;-TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 166
    new-instance v0, Lccsancom/google/common/cache/CacheBuilder$1;

    invoke-direct {v0}, Lccsancom/google/common/cache/CacheBuilder$1;-><init>()V

    .line 167
    invoke-static {v0}, Lccsancom/google/common/base/Suppliers;->ofInstance(Ljava/lang/Object;)Lccsancom/google/common/base/Supplier;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lccsancom/google/common/base/Supplier;

    .line 191
    new-instance v0, Lccsancom/google/common/cache/CacheStats;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v13}, Lccsancom/google/common/cache/CacheStats;-><init>(JJJJJJ)V

    sput-object v0, Lccsancom/google/common/cache/CacheBuilder;->EMPTY_STATS:Lccsancom/google/common/cache/CacheStats;

    .line 193
    new-instance v0, Lccsancom/google/common/cache/CacheBuilder$2;

    invoke-direct {v0}, Lccsancom/google/common/cache/CacheBuilder$2;-><init>()V

    sput-object v0, Lccsancom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lccsancom/google/common/base/Supplier;

    .line 217
    new-instance v0, Lccsancom/google/common/cache/CacheBuilder$3;

    invoke-direct {v0}, Lccsancom/google/common/cache/CacheBuilder$3;-><init>()V

    sput-object v0, Lccsancom/google/common/cache/CacheBuilder;->NULL_TICKER:Lccsancom/google/common/base/Ticker;

    .line 225
    const-class v0, Lccsancom/google/common/cache/CacheBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lccsancom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 257
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 231
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 232
    iput v0, p0, Lccsancom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 233
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 234
    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 240
    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 243
    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 246
    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 255
    sget-object v0, Lccsancom/google/common/cache/CacheBuilder;->NULL_STATS_COUNTER:Lccsancom/google/common/base/Supplier;

    iput-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lccsancom/google/common/base/Supplier;

    .line 257
    return-void
.end method

.method private checkNonLoadingCache()V
    .locals 5

    .line 870
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "refreshAfterWrite requires a LoadingCache"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 871
    return-void
.end method

.method private checkWeightWithWeigher()V
    .locals 7

    .line 874
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->weigher:Lccsancom/google/common/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    if-nez v0, :cond_1

    .line 875
    iget-wide v5, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v0, "maximumWeight requires weigher"

    invoke-static {v1, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    .line 877
    :cond_1
    iget-boolean v0, p0, Lccsancom/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_3

    .line 878
    iget-wide v5, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v0, v5, v3

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher requires maximumWeight"

    invoke-static {v1, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    goto :goto_2

    .line 880
    :cond_3
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_4

    .line 881
    sget-object v0, Lccsancom/google/common/cache/CacheBuilder;->logger:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v2, "ignoring weigher specified without maximumWeight"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 885
    :cond_4
    :goto_2
    return-void
.end method

.method public static from(Lccsancom/google/common/cache/CacheBuilderSpec;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .param p0, "spec"    # Lccsancom/google/common/cache/CacheBuilderSpec;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/CacheBuilderSpec;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 277
    invoke-virtual {p0}, Lccsancom/google/common/cache/CacheBuilderSpec;->toCacheBuilder()Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheBuilder;->lenientParsing()Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static from(Ljava/lang/String;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .param p0, "spec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 289
    invoke-static {p0}, Lccsancom/google/common/cache/CacheBuilderSpec;->parse(Ljava/lang/String;)Lccsancom/google/common/cache/CacheBuilderSpec;

    move-result-object v0

    invoke-static {v0}, Lccsancom/google/common/cache/CacheBuilder;->from(Lccsancom/google/common/cache/CacheBuilderSpec;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static newBuilder()Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 267
    new-instance v0, Lccsancom/google/common/cache/CacheBuilder;

    invoke-direct {v0}, Lccsancom/google/common/cache/CacheBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public build()Lccsancom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lccsancom/google/common/cache/Cache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 864
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 865
    invoke-direct {p0}, Lccsancom/google/common/cache/CacheBuilder;->checkNonLoadingCache()V

    .line 866
    new-instance v0, Lccsancom/google/common/cache/LocalCache$LocalManualCache;

    invoke-direct {v0, p0}, Lccsancom/google/common/cache/LocalCache$LocalManualCache;-><init>(Lccsancom/google/common/cache/CacheBuilder;)V

    return-object v0
.end method

.method public build(Lccsancom/google/common/cache/CacheLoader;)Lccsancom/google/common/cache/LoadingCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK1;TV1;>;)",
            "Lccsancom/google/common/cache/LoadingCache<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 847
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK1;TV1;>;"
    invoke-direct {p0}, Lccsancom/google/common/cache/CacheBuilder;->checkWeightWithWeigher()V

    .line 848
    new-instance v0, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;

    invoke-direct {v0, p0, p1}, Lccsancom/google/common/cache/LocalCache$LocalLoadingCache;-><init>(Lccsancom/google/common/cache/CacheBuilder;Lccsancom/google/common/cache/CacheLoader;)V

    return-object v0
.end method

.method public concurrencyLevel(I)Lccsancom/google/common/cache/CacheBuilder;
    .locals 5
    .param p1, "concurrencyLevel"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 400
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "concurrency level was already set to %s"

    invoke-static {v3, v4, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 404
    if-lez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 405
    iput p1, p0, Lccsancom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    .line 406
    return-object p0
.end method

.method public expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 7
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 693
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterAccess was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 697
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v2, v0, p1, p2, p3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 698
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    .line 699
    return-object p0
.end method

.method public expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 7
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 656
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "expireAfterWrite was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 660
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration cannot be negative: %s %s"

    invoke-static {v2, v0, p1, p2, p3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 661
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    .line 662
    return-object p0
.end method

.method getConcurrencyLevel()I
    .locals 2

    .line 410
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x4

    :cond_0
    return v0
.end method

.method getExpireAfterAccessNanos()J
    .locals 5

    .line 703
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method getExpireAfterWriteNanos()J
    .locals 5

    .line 666
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method getInitialCapacity()I
    .locals 2

    .line 365
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x10

    :cond_0
    return v0
.end method

.method getKeyEquivalence()Lccsancom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 319
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lccsancom/google/common/cache/CacheBuilder;->getKeyStrength()Lccsancom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lccsancom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Equivalence;

    return-object v0
.end method

.method getKeyStrength()Lccsancom/google/common/cache/LocalCache$Strength;
    .locals 2

    .line 575
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lccsancom/google/common/cache/LocalCache$Strength;->STRONG:Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getMaximumWeight()J
    .locals 5

    .line 535
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 538
    :cond_0
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->weigher:Lccsancom/google/common/cache/Weigher;

    if-nez v0, :cond_1

    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumSize:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    :goto_0
    return-wide v0

    .line 536
    :cond_2
    :goto_1
    return-wide v2
.end method

.method getRefreshNanos()J
    .locals 5

    .line 745
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->refreshNanos:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-wide/16 v0, 0x0

    :cond_0
    return-wide v0
.end method

.method getRemovalListener()Lccsancom/google/common/cache/RemovalListener;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lccsancom/google/common/cache/RemovalListener<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 807
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    sget-object v1, Lccsancom/google/common/cache/CacheBuilder$NullListener;->INSTANCE:Lccsancom/google/common/cache/CacheBuilder$NullListener;

    .line 808
    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/RemovalListener;

    .line 807
    return-object v0
.end method

.method getStatsCounterSupplier()Lccsancom/google/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Supplier<",
            "+",
            "Lccsancom/google/common/cache/AbstractCache$StatsCounter;",
            ">;"
        }
    .end annotation

    .line 830
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lccsancom/google/common/base/Supplier;

    return-object v0
.end method

.method getTicker(Z)Lccsancom/google/common/base/Ticker;
    .locals 1
    .param p1, "recordsTime"    # Z

    .line 765
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->ticker:Lccsancom/google/common/base/Ticker;

    if-eqz v0, :cond_0

    .line 766
    return-object v0

    .line 768
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lccsancom/google/common/base/Ticker;->systemTicker()Lccsancom/google/common/base/Ticker;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/google/common/cache/CacheBuilder;->NULL_TICKER:Lccsancom/google/common/base/Ticker;

    :goto_0
    return-object v0
.end method

.method getValueEquivalence()Lccsancom/google/common/base/Equivalence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 340
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    invoke-virtual {p0}, Lccsancom/google/common/cache/CacheBuilder;->getValueStrength()Lccsancom/google/common/cache/LocalCache$Strength;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/google/common/cache/LocalCache$Strength;->defaultEquivalence()Lccsancom/google/common/base/Equivalence;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Equivalence;

    return-object v0
.end method

.method getValueStrength()Lccsancom/google/common/cache/LocalCache$Strength;
    .locals 2

    .line 632
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    sget-object v1, Lccsancom/google/common/cache/LocalCache$Strength;->STRONG:Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/LocalCache$Strength;

    return-object v0
.end method

.method getWeigher()Lccsancom/google/common/cache/Weigher;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>()",
            "Lccsancom/google/common/cache/Weigher<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 544
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->weigher:Lccsancom/google/common/cache/Weigher;

    sget-object v1, Lccsancom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lccsancom/google/common/cache/CacheBuilder$OneWeigher;

    invoke-static {v0, v1}, Lccsancom/google/common/base/MoreObjects;->firstNonNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/Weigher;

    return-object v0
.end method

.method public initialCapacity(I)Lccsancom/google/common/cache/CacheBuilder;
    .locals 5
    .param p1, "initialCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 355
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget v0, p0, Lccsancom/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    const-string v4, "initial capacity was already set to %s"

    invoke-static {v3, v4, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;I)V

    .line 359
    if-ltz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    invoke-static {v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 360
    iput p1, p0, Lccsancom/google/common/cache/CacheBuilder;->initialCapacity:I

    .line 361
    return-object p0
.end method

.method isRecordingStats()Z
    .locals 2

    .line 826
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lccsancom/google/common/base/Supplier;

    sget-object v1, Lccsancom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lccsancom/google/common/base/Supplier;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method keyEquivalence(Lccsancom/google/common/base/Equivalence;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 313
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "equivalence":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "key equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 314
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Equivalence;

    iput-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 315
    return-object p0
.end method

.method lenientParsing()Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 299
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 300
    return-object p0
.end method

.method public maximumSize(J)Lccsancom/google/common/cache/CacheBuilder;
    .locals 8
    .param p1, "maximumSize"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum size was already set to %s"

    invoke-static {v6, v7, v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 437
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum weight was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 441
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->weigher:Lccsancom/google/common/cache/Weigher;

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    const-string v1, "maximum size can not be combined with weigher"

    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 442
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v4, 0x0

    :goto_3
    const-string v0, "maximum size must not be negative"

    invoke-static {v4, v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 443
    iput-wide p1, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumSize:J

    .line 444
    return-object p0
.end method

.method public maximumWeight(J)Lccsancom/google/common/cache/CacheBuilder;
    .locals 8
    .param p1, "maximumWeight"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 476
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    cmp-long v6, v0, v2

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    :goto_0
    const-string v7, "maximum weight was already set to %s"

    invoke-static {v6, v7, v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 480
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumSize:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v3, "maximum size was already set to %s"

    invoke-static {v2, v3, v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 482
    iput-wide p1, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    .line 483
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_2

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-string v0, "maximum weight must not be negative"

    invoke-static {v4, v0}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 484
    return-object p0
.end method

.method public recordStats()Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/cache/CacheBuilder;->CACHE_STATS_COUNTER:Lccsancom/google/common/base/Supplier;

    iput-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->statsCounterSupplier:Lccsancom/google/common/base/Supplier;

    .line 822
    return-object p0
.end method

.method public refreshAfterWrite(JLjava/util/concurrent/TimeUnit;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 7
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 737
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-static {p3}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 738
    iget-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->refreshNanos:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    const-string v5, "refresh was already set to %s ns"

    invoke-static {v4, v5, v0, v1}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 739
    const-wide/16 v0, 0x0

    cmp-long v4, p1, v0

    if-lez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "duration must be positive: %s %s"

    invoke-static {v2, v0, p1, p2, p3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;JLjava/lang/Object;)V

    .line 740
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/google/common/cache/CacheBuilder;->refreshNanos:J

    .line 741
    return-object p0
.end method

.method public removalListener(Lccsancom/google/common/cache/RemovalListener;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 2
    .annotation runtime Lccsancom/google/errorprone/annotations/CheckReturnValue;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lccsancom/google/common/cache/RemovalListener<",
            "-TK1;-TV1;>;)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 795
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "listener":Lccsancom/google/common/cache/RemovalListener;, "Lccsancom/google/common/cache/RemovalListener<-TK1;-TV1;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 799
    move-object v0, p0

    .line 800
    .local v0, "me":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/cache/RemovalListener;

    iput-object v1, v0, Lccsancom/google/common/cache/CacheBuilder;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    .line 801
    return-object v0
.end method

.method setKeyStrength(Lccsancom/google/common/cache/LocalCache$Strength;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 3
    .param p1, "strength"    # Lccsancom/google/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Key strength was already set to %s"

    invoke-static {v1, v2, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 570
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 571
    return-object p0
.end method

.method setValueStrength(Lccsancom/google/common/cache/LocalCache$Strength;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 3
    .param p1, "strength"    # Lccsancom/google/common/cache/LocalCache$Strength;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache$Strength;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 626
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Value strength was already set to %s"

    invoke-static {v1, v2, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 627
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/cache/LocalCache$Strength;

    iput-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 628
    return-object p0
.end method

.method public softValues()Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 622
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/cache/LocalCache$Strength;->SOFT:Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/CacheBuilder;->setValueStrength(Lccsancom/google/common/cache/LocalCache$Strength;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public ticker(Lccsancom/google/common/base/Ticker;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .param p1, "ticker"    # Lccsancom/google/common/base/Ticker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Ticker;",
            ")",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 759
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->ticker:Lccsancom/google/common/base/Ticker;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 760
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Ticker;

    iput-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->ticker:Lccsancom/google/common/base/Ticker;

    .line 761
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 893
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-static {p0}, Lccsancom/google/common/base/MoreObjects;->toStringHelper(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    .line 894
    .local v0, "s":Lccsancom/google/common/base/MoreObjects$ToStringHelper;
    iget v1, p0, Lccsancom/google/common/cache/CacheBuilder;->initialCapacity:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 895
    const-string v3, "initialCapacity"

    invoke-virtual {v0, v3, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 897
    :cond_0
    iget v1, p0, Lccsancom/google/common/cache/CacheBuilder;->concurrencyLevel:I

    if-eq v1, v2, :cond_1

    .line 898
    const-string v2, "concurrencyLevel"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;I)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 900
    :cond_1
    iget-wide v1, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 901
    const-string v5, "maximumSize"

    invoke-virtual {v0, v5, v1, v2}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 903
    :cond_2
    iget-wide v1, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 904
    const-string v5, "maximumWeight"

    invoke-virtual {v0, v5, v1, v2}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;J)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 906
    :cond_3
    iget-wide v1, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    const-string v5, "ns"

    cmp-long v6, v1, v3

    if-eqz v6, :cond_4

    .line 907
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWriteNanos:J

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterWrite"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 909
    :cond_4
    iget-wide v1, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    cmp-long v6, v1, v3

    if-eqz v6, :cond_5

    .line 910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccessNanos:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "expireAfterAccess"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 912
    :cond_5
    iget-object v1, p0, Lccsancom/google/common/cache/CacheBuilder;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_6

    .line 913
    invoke-virtual {v1}, Lccsancom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "keyStrength"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 915
    :cond_6
    iget-object v1, p0, Lccsancom/google/common/cache/CacheBuilder;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    if-eqz v1, :cond_7

    .line 916
    invoke-virtual {v1}, Lccsancom/google/common/cache/LocalCache$Strength;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/google/common/base/Ascii;->toLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "valueStrength"

    invoke-virtual {v0, v2, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->add(Ljava/lang/String;Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 918
    :cond_7
    iget-object v1, p0, Lccsancom/google/common/cache/CacheBuilder;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    if-eqz v1, :cond_8

    .line 919
    const-string v1, "keyEquivalence"

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 921
    :cond_8
    iget-object v1, p0, Lccsancom/google/common/cache/CacheBuilder;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    if-eqz v1, :cond_9

    .line 922
    const-string v1, "valueEquivalence"

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 924
    :cond_9
    iget-object v1, p0, Lccsancom/google/common/cache/CacheBuilder;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    if-eqz v1, :cond_a

    .line 925
    const-string v1, "removalListener"

    invoke-virtual {v0, v1}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->addValue(Ljava/lang/Object;)Lccsancom/google/common/base/MoreObjects$ToStringHelper;

    .line 927
    :cond_a
    invoke-virtual {v0}, Lccsancom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method valueEquivalence(Lccsancom/google/common/base/Equivalence;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 333
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "equivalence":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    if-nez v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "value equivalence was already set to %s"

    invoke-static {v1, v2, v0}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 335
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/base/Equivalence;

    iput-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 336
    return-object p0
.end method

.method public weakKeys()Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 565
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/cache/LocalCache$Strength;->WEAK:Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/CacheBuilder;->setKeyStrength(Lccsancom/google/common/cache/LocalCache$Strength;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weakValues()Lccsancom/google/common/cache/CacheBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 597
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    sget-object v0, Lccsancom/google/common/cache/LocalCache$Strength;->WEAK:Lccsancom/google/common/cache/LocalCache$Strength;

    invoke-virtual {p0, v0}, Lccsancom/google/common/cache/CacheBuilder;->setValueStrength(Lccsancom/google/common/cache/LocalCache$Strength;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    return-object v0
.end method

.method public weigher(Lccsancom/google/common/cache/Weigher;)Lccsancom/google/common/cache/CacheBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K1:TK;V1:TV;>(",
            "Lccsancom/google/common/cache/Weigher<",
            "-TK1;-TV1;>;)",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK1;TV1;>;"
        }
    .end annotation

    .line 519
    .local p0, "this":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    .local p1, "weigher":Lccsancom/google/common/cache/Weigher;, "Lccsancom/google/common/cache/Weigher<-TK1;-TV1;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/CacheBuilder;->weigher:Lccsancom/google/common/cache/Weigher;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lccsancom/google/common/base/Preconditions;->checkState(Z)V

    .line 520
    iget-boolean v0, p0, Lccsancom/google/common/cache/CacheBuilder;->strictParsing:Z

    if-eqz v0, :cond_2

    .line 521
    iget-wide v3, p0, Lccsancom/google/common/cache/CacheBuilder;->maximumSize:J

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v0, "weigher can not be combined with maximum size"

    invoke-static {v1, v0, v3, v4}, Lccsancom/google/common/base/Preconditions;->checkState(ZLjava/lang/String;J)V

    .line 529
    :cond_2
    move-object v0, p0

    .line 530
    .local v0, "me":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK1;TV1;>;"
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/common/cache/Weigher;

    iput-object v1, v0, Lccsancom/google/common/cache/CacheBuilder;->weigher:Lccsancom/google/common/cache/Weigher;

    .line 531
    return-object v0
.end method
