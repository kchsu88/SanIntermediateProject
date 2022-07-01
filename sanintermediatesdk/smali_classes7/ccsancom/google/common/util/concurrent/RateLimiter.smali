.class public abstract Lccsancom/google/common/util/concurrent/RateLimiter;
.super Ljava/lang/Object;
.source "RateLimiter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;
    }
.end annotation


# instance fields
.field private volatile mutexDoNotUseDirectly:Ljava/lang/Object;
    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/MonotonicNonNullDecl;
    .end annotation
.end field

.field private final stopwatch:Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;


# direct methods
.method constructor <init>(Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)V
    .locals 1
    .param p1, "stopwatch"    # Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->stopwatch:Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 204
    return-void
.end method

.method private canAcquire(JJ)Z
    .locals 3
    .param p1, "nowMicros"    # J
    .param p3, "timeoutMicros"    # J

    .line 362
    invoke-virtual {p0, p1, p2}, Lccsancom/google/common/util/concurrent/RateLimiter;->queryEarliestAvailable(J)J

    move-result-wide v0

    sub-long/2addr v0, p3

    cmp-long v2, v0, p1

    if-gtz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static checkPermits(I)V
    .locals 2
    .param p0, "permits"    # I

    .line 430
    if-lez p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Requested permits (%s) must be positive"

    invoke-static {v0, v1, p0}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 431
    return-void
.end method

.method public static create(D)Lccsancom/google/common/util/concurrent/RateLimiter;
    .locals 1
    .param p0, "permitsPerSecond"    # D

    .line 128
    invoke-static {}, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->createFromSystemTimer()Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lccsancom/google/common/util/concurrent/RateLimiter;->create(DLccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lccsancom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method public static create(DJLjava/util/concurrent/TimeUnit;)Lccsancom/google/common/util/concurrent/RateLimiter;
    .locals 10
    .param p0, "permitsPerSecond"    # D
    .param p2, "warmupPeriod"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 163
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "warmupPeriod must not be negative: %s"

    invoke-static {v0, v1, p2, p3}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;J)V

    .line 164
    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    .line 165
    invoke-static {}, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->createFromSystemTimer()Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    move-result-object v9

    .line 164
    move-wide v2, p0

    move-wide v4, p2

    move-object v6, p4

    invoke-static/range {v2 .. v9}, Lccsancom/google/common/util/concurrent/RateLimiter;->create(DJLjava/util/concurrent/TimeUnit;DLccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lccsancom/google/common/util/concurrent/RateLimiter;

    move-result-object v0

    return-object v0
.end method

.method static create(DJLjava/util/concurrent/TimeUnit;DLccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lccsancom/google/common/util/concurrent/RateLimiter;
    .locals 8
    .param p0, "permitsPerSecond"    # D
    .param p2, "warmupPeriod"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "coldFactor"    # D
    .param p7, "stopwatch"    # Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 175
    new-instance v7, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;

    move-object v0, v7

    move-object v1, p7

    move-wide v2, p2

    move-object v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothWarmingUp;-><init>(Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;JLjava/util/concurrent/TimeUnit;D)V

    .line 176
    .local v0, "rateLimiter":Lccsancom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p0, p1}, Lccsancom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 177
    return-object v0
.end method

.method static create(DLccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;)Lccsancom/google/common/util/concurrent/RateLimiter;
    .locals 3
    .param p0, "permitsPerSecond"    # D
    .param p2, "stopwatch"    # Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    .line 133
    new-instance v0, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, p2, v1, v2}, Lccsancom/google/common/util/concurrent/SmoothRateLimiter$SmoothBursty;-><init>(Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;D)V

    .line 134
    .local v0, "rateLimiter":Lccsancom/google/common/util/concurrent/RateLimiter;
    invoke-virtual {v0, p0, p1}, Lccsancom/google/common/util/concurrent/RateLimiter;->setRate(D)V

    .line 135
    return-object v0
.end method

.method private mutex()Ljava/lang/Object;
    .locals 2

    .line 190
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    .line 191
    .local v0, "mutex":Ljava/lang/Object;
    if-nez v0, :cond_1

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    move-object v0, v1

    .line 194
    if-nez v0, :cond_0

    .line 195
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    move-object v0, v1

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->mutexDoNotUseDirectly:Ljava/lang/Object;

    .line 197
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 199
    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public acquire()D
    .locals 2

    .line 259
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/RateLimiter;->acquire(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public acquire(I)D
    .locals 7
    .param p1, "permits"    # I

    .line 273
    invoke-virtual {p0, p1}, Lccsancom/google/common/util/concurrent/RateLimiter;->reserve(I)J

    move-result-wide v0

    .line 274
    .local v0, "microsToWait":J
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->stopwatch:Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v2, v0, v1}, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->sleepMicrosUninterruptibly(J)V

    .line 275
    long-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0x1

    invoke-virtual {v4, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v4

    long-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v2, v4

    return-wide v2
.end method

.method abstract doGetRate()D
.end method

.method abstract doSetRate(DJ)V
.end method

.method public final getRate()D
    .locals 3

    .line 241
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 242
    :try_start_0
    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/RateLimiter;->doGetRate()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 243
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method abstract queryEarliestAvailable(J)J
.end method

.method final reserve(I)J
    .locals 3
    .param p1, "permits"    # I

    .line 285
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 286
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->stopwatch:Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Lccsancom/google/common/util/concurrent/RateLimiter;->reserveAndGetWaitLength(IJ)J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    .line 288
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method final reserveAndGetWaitLength(IJ)J
    .locals 6
    .param p1, "permits"    # I
    .param p2, "nowMicros"    # J

    .line 371
    invoke-virtual {p0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/RateLimiter;->reserveEarliestAvailable(IJ)J

    move-result-wide v0

    .line 372
    .local v0, "momentAvailable":J
    sub-long v2, v0, p2

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    return-wide v2
.end method

.method abstract reserveEarliestAvailable(IJ)J
.end method

.method public final setRate(D)V
    .locals 3
    .param p1, "permitsPerSecond"    # D

    .line 225
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_0

    .line 226
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "rate must be positive"

    .line 225
    invoke-static {v0, v1}, Lccsancom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 227
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 228
    :try_start_0
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->stopwatch:Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v1}, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v1

    invoke-virtual {p0, p1, p2, v1, v2}, Lccsancom/google/common/util/concurrent/RateLimiter;->doSetRate(DJ)V

    .line 229
    monitor-exit v0

    .line 230
    return-void

    .line 229
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 394
    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lccsancom/google/common/util/concurrent/RateLimiter;->getRate()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RateLimiter[stableRate=%3.1fqps]"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryAcquire()Z
    .locals 4

    .line 331
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Lccsancom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(I)Z
    .locals 3
    .param p1, "permits"    # I

    .line 318
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v1, v2, v0}, Lccsancom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method

.method public tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z
    .locals 7
    .param p1, "permits"    # I
    .param p2, "timeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 346
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMicros(J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 347
    .local v0, "timeoutMicros":J
    invoke-static {p1}, Lccsancom/google/common/util/concurrent/RateLimiter;->checkPermits(I)V

    .line 349
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/RateLimiter;->mutex()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 350
    :try_start_0
    iget-object v3, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->stopwatch:Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v3}, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->readMicros()J

    move-result-wide v3

    .line 351
    .local v3, "nowMicros":J
    invoke-direct {p0, v3, v4, v0, v1}, Lccsancom/google/common/util/concurrent/RateLimiter;->canAcquire(JJ)Z

    move-result v5

    if-nez v5, :cond_0

    .line 352
    const/4 v5, 0x0

    monitor-exit v2

    return v5

    .line 354
    :cond_0
    invoke-virtual {p0, p1, v3, v4}, Lccsancom/google/common/util/concurrent/RateLimiter;->reserveAndGetWaitLength(IJ)J

    move-result-wide v5

    move-wide v3, v5

    .line 356
    .local v3, "microsToWait":J
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    iget-object v2, p0, Lccsancom/google/common/util/concurrent/RateLimiter;->stopwatch:Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;

    invoke-virtual {v2, v3, v4}, Lccsancom/google/common/util/concurrent/RateLimiter$SleepingStopwatch;->sleepMicrosUninterruptibly(J)V

    .line 358
    const/4 v2, 0x1

    return v2

    .line 356
    .end local v3    # "microsToWait":J
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public tryAcquire(JLjava/util/concurrent/TimeUnit;)Z
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 304
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1, p2, p3}, Lccsancom/google/common/util/concurrent/RateLimiter;->tryAcquire(IJLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    return v0
.end method
