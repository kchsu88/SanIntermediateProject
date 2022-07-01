.class Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;
.super Lccsancom/google/common/cache/ForwardingCache;
.source "LocalCache.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ManualSerializationProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/cache/ForwardingCache<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field final concurrencyLevel:I

.field transient delegate:Lccsancom/google/common/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field final expireAfterAccessNanos:J

.field final expireAfterWriteNanos:J

.field final keyEquivalence:Lccsancom/google/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

.field final loader:Lccsancom/google/common/cache/CacheLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;"
        }
    .end annotation
.end field

.field final maxWeight:J

.field final removalListener:Lccsancom/google/common/cache/RemovalListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;"
        }
    .end annotation
.end field

.field final ticker:Lccsancom/google/common/base/Ticker;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

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

.field final weigher:Lccsancom/google/common/cache/Weigher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/cache/Weigher<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/cache/LocalCache$Strength;Lccsancom/google/common/cache/LocalCache$Strength;Lccsancom/google/common/base/Equivalence;Lccsancom/google/common/base/Equivalence;JJJLccsancom/google/common/cache/Weigher;ILccsancom/google/common/cache/RemovalListener;Lccsancom/google/common/base/Ticker;Lccsancom/google/common/cache/CacheLoader;)V
    .locals 16
    .param p1, "keyStrength"    # Lccsancom/google/common/cache/LocalCache$Strength;
    .param p2, "valueStrength"    # Lccsancom/google/common/cache/LocalCache$Strength;
    .param p5, "expireAfterWriteNanos"    # J
    .param p7, "expireAfterAccessNanos"    # J
    .param p9, "maxWeight"    # J
    .param p12, "concurrencyLevel"    # I
    .param p14, "ticker"    # Lccsancom/google/common/base/Ticker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache$Strength;",
            "Lccsancom/google/common/cache/LocalCache$Strength;",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;",
            "Lccsancom/google/common/base/Equivalence<",
            "Ljava/lang/Object;",
            ">;JJJ",
            "Lccsancom/google/common/cache/Weigher<",
            "TK;TV;>;I",
            "Lccsancom/google/common/cache/RemovalListener<",
            "-TK;-TV;>;",
            "Lccsancom/google/common/base/Ticker;",
            "Lccsancom/google/common/cache/CacheLoader<",
            "-TK;TV;>;)V"
        }
    .end annotation

    .line 4574
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    .local p3, "keyEquivalence":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p4, "valueEquivalence":Lccsancom/google/common/base/Equivalence;, "Lccsancom/google/common/base/Equivalence<Ljava/lang/Object;>;"
    .local p11, "weigher":Lccsancom/google/common/cache/Weigher;, "Lccsancom/google/common/cache/Weigher<TK;TV;>;"
    .local p13, "removalListener":Lccsancom/google/common/cache/RemovalListener;, "Lccsancom/google/common/cache/RemovalListener<-TK;-TV;>;"
    .local p15, "loader":Lccsancom/google/common/cache/CacheLoader;, "Lccsancom/google/common/cache/CacheLoader<-TK;TV;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p14

    invoke-direct/range {p0 .. p0}, Lccsancom/google/common/cache/ForwardingCache;-><init>()V

    .line 4575
    move-object/from16 v2, p1

    iput-object v2, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 4576
    move-object/from16 v3, p2

    iput-object v3, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 4577
    move-object/from16 v4, p3

    iput-object v4, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 4578
    move-object/from16 v5, p4

    iput-object v5, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 4579
    move-wide/from16 v6, p5

    iput-wide v6, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    .line 4580
    move-wide/from16 v8, p7

    iput-wide v8, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    .line 4581
    move-wide/from16 v10, p9

    iput-wide v10, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    .line 4582
    move-object/from16 v12, p11

    iput-object v12, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lccsancom/google/common/cache/Weigher;

    .line 4583
    move/from16 v13, p12

    iput v13, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4584
    move-object/from16 v14, p13

    iput-object v14, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    .line 4585
    invoke-static {}, Lccsancom/google/common/base/Ticker;->systemTicker()Lccsancom/google/common/base/Ticker;

    move-result-object v15

    if-eq v1, v15, :cond_1

    sget-object v15, Lccsancom/google/common/cache/CacheBuilder;->NULL_TICKER:Lccsancom/google/common/base/Ticker;

    if-ne v1, v15, :cond_0

    goto :goto_0

    :cond_0
    move-object v15, v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v15, 0x0

    :goto_1
    iput-object v15, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lccsancom/google/common/base/Ticker;

    .line 4586
    move-object/from16 v15, p15

    iput-object v15, v0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->loader:Lccsancom/google/common/cache/CacheLoader;

    .line 4587
    return-void
.end method

.method constructor <init>(Lccsancom/google/common/cache/LocalCache;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/cache/LocalCache<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 4547
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    .local p1, "cache":Lccsancom/google/common/cache/LocalCache;, "Lccsancom/google/common/cache/LocalCache<TK;TV;>;"
    move-object/from16 v0, p1

    iget-object v2, v0, Lccsancom/google/common/cache/LocalCache;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    iget-object v3, v0, Lccsancom/google/common/cache/LocalCache;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    iget-object v4, v0, Lccsancom/google/common/cache/LocalCache;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    iget-object v5, v0, Lccsancom/google/common/cache/LocalCache;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    iget-wide v6, v0, Lccsancom/google/common/cache/LocalCache;->expireAfterWriteNanos:J

    iget-wide v8, v0, Lccsancom/google/common/cache/LocalCache;->expireAfterAccessNanos:J

    iget-wide v10, v0, Lccsancom/google/common/cache/LocalCache;->maxWeight:J

    iget-object v12, v0, Lccsancom/google/common/cache/LocalCache;->weigher:Lccsancom/google/common/cache/Weigher;

    iget v13, v0, Lccsancom/google/common/cache/LocalCache;->concurrencyLevel:I

    iget-object v14, v0, Lccsancom/google/common/cache/LocalCache;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    iget-object v15, v0, Lccsancom/google/common/cache/LocalCache;->ticker:Lccsancom/google/common/base/Ticker;

    iget-object v1, v0, Lccsancom/google/common/cache/LocalCache;->defaultLoader:Lccsancom/google/common/cache/CacheLoader;

    move-object/from16 v16, v1

    move-object/from16 v1, p0

    invoke-direct/range {v1 .. v16}, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;-><init>(Lccsancom/google/common/cache/LocalCache$Strength;Lccsancom/google/common/cache/LocalCache$Strength;Lccsancom/google/common/base/Equivalence;Lccsancom/google/common/base/Equivalence;JJJLccsancom/google/common/cache/Weigher;ILccsancom/google/common/cache/RemovalListener;Lccsancom/google/common/base/Ticker;Lccsancom/google/common/cache/CacheLoader;)V

    .line 4560
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 2
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 4622
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 4623
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->recreateCacheBuilder()Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4624
    .local v0, "builder":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    invoke-virtual {v0}, Lccsancom/google/common/cache/CacheBuilder;->build()Lccsancom/google/common/cache/Cache;

    move-result-object v1

    iput-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lccsancom/google/common/cache/Cache;

    .line 4625
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 4628
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lccsancom/google/common/cache/Cache;

    return-object v0
.end method


# virtual methods
.method protected delegate()Lccsancom/google/common/cache/Cache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/Cache<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4633
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    iget-object v0, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate:Lccsancom/google/common/cache/Cache;

    return-object v0
.end method

.method protected bridge synthetic delegate()Ljava/lang/Object;
    .locals 1

    .line 4527
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-virtual {p0}, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->delegate()Lccsancom/google/common/cache/Cache;

    move-result-object v0

    return-object v0
.end method

.method recreateCacheBuilder()Lccsancom/google/common/cache/CacheBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lccsancom/google/common/cache/CacheBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 4591
    .local p0, "this":Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;, "Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy<TK;TV;>;"
    invoke-static {}, Lccsancom/google/common/cache/CacheBuilder;->newBuilder()Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->keyStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 4592
    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->setKeyStrength(Lccsancom/google/common/cache/LocalCache$Strength;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->valueStrength:Lccsancom/google/common/cache/LocalCache$Strength;

    .line 4593
    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->setValueStrength(Lccsancom/google/common/cache/LocalCache$Strength;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->keyEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 4594
    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->keyEquivalence(Lccsancom/google/common/base/Equivalence;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->valueEquivalence:Lccsancom/google/common/base/Equivalence;

    .line 4595
    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->valueEquivalence(Lccsancom/google/common/base/Equivalence;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->concurrencyLevel:I

    .line 4596
    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->concurrencyLevel(I)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->removalListener:Lccsancom/google/common/cache/RemovalListener;

    .line 4597
    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->removalListener(Lccsancom/google/common/cache/RemovalListener;)Lccsancom/google/common/cache/CacheBuilder;

    move-result-object v0

    .line 4598
    .local v0, "builder":Lccsancom/google/common/cache/CacheBuilder;, "Lccsancom/google/common/cache/CacheBuilder<TK;TV;>;"
    const/4 v1, 0x0

    iput-boolean v1, v0, Lccsancom/google/common/cache/CacheBuilder;->strictParsing:Z

    .line 4599
    iget-wide v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterWriteNanos:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    .line 4600
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v5}, Lccsancom/google/common/cache/CacheBuilder;->expireAfterWrite(JLjava/util/concurrent/TimeUnit;)Lccsancom/google/common/cache/CacheBuilder;

    .line 4602
    :cond_0
    iget-wide v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->expireAfterAccessNanos:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 4603
    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/google/common/cache/CacheBuilder;->expireAfterAccess(JLjava/util/concurrent/TimeUnit;)Lccsancom/google/common/cache/CacheBuilder;

    .line 4605
    :cond_1
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lccsancom/google/common/cache/Weigher;

    sget-object v2, Lccsancom/google/common/cache/CacheBuilder$OneWeigher;->INSTANCE:Lccsancom/google/common/cache/CacheBuilder$OneWeigher;

    const-wide/16 v3, -0x1

    if-eq v1, v2, :cond_2

    .line 4606
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->weigher:Lccsancom/google/common/cache/Weigher;

    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->weigher(Lccsancom/google/common/cache/Weigher;)Lccsancom/google/common/cache/CacheBuilder;

    .line 4607
    iget-wide v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 4608
    invoke-virtual {v0, v1, v2}, Lccsancom/google/common/cache/CacheBuilder;->maximumWeight(J)Lccsancom/google/common/cache/CacheBuilder;

    goto :goto_0

    .line 4611
    :cond_2
    iget-wide v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->maxWeight:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 4612
    invoke-virtual {v0, v1, v2}, Lccsancom/google/common/cache/CacheBuilder;->maximumSize(J)Lccsancom/google/common/cache/CacheBuilder;

    .line 4615
    :cond_3
    :goto_0
    iget-object v1, p0, Lccsancom/google/common/cache/LocalCache$ManualSerializationProxy;->ticker:Lccsancom/google/common/base/Ticker;

    if-eqz v1, :cond_4

    .line 4616
    invoke-virtual {v0, v1}, Lccsancom/google/common/cache/CacheBuilder;->ticker(Lccsancom/google/common/base/Ticker;)Lccsancom/google/common/cache/CacheBuilder;

    .line 4618
    :cond_4
    return-object v0
.end method
