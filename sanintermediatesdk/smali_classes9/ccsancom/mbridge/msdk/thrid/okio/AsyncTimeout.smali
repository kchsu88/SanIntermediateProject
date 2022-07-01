.class public Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
.super Lccsancom/mbridge/msdk/thrid/okio/Timeout;
.source "AsyncTimeout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static final IDLE_TIMEOUT_MILLIS:J

.field private static final IDLE_TIMEOUT_NANOS:J

.field private static final TIMEOUT_WRITE_SIZE:I = 0x10000

.field static head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 50
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3c

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    .line 51
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    sput-wide v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lccsancom/mbridge/msdk/thrid/okio/Timeout;-><init>()V

    return-void
.end method

.method static awaitTimeout()Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 342
    const-class v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    sget-object v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iget-object v1, v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 345
    .local v1, "node":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 346
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 347
    .local v3, "startNanos":J
    sget-wide v5, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_MILLIS:J

    invoke-virtual {v0, v5, v6}, Ljava/lang/Object;->wait(J)V

    .line 348
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iget-object v0, v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    sget-wide v7, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->IDLE_TIMEOUT_NANOS:J

    cmp-long v0, v5, v7

    if-ltz v0, :cond_0

    sget-object v2, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    :cond_0
    return-object v2

    .line 353
    .end local v3    # "startNanos":J
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 356
    .local v3, "waitNanos":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_2

    .line 359
    const-wide/32 v5, 0xf4240

    div-long v7, v3, v5

    .line 360
    .local v7, "waitMillis":J
    mul-long v5, v5, v7

    sub-long/2addr v3, v5

    .line 361
    long-to-int v5, v3

    invoke-virtual {v0, v7, v8, v5}, Ljava/lang/Object;->wait(JI)V

    .line 362
    return-object v2

    .line 366
    .end local v7    # "waitMillis":J
    :cond_2
    sget-object v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iget-object v5, v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object v5, v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 367
    iput-object v2, v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 368
    return-object v1
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;)Z
    .locals 3
    .param p0, "node"    # Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    const-class v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    monitor-enter v0

    .line 128
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .local v1, "prev":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    :goto_0
    if-eqz v1, :cond_1

    .line 129
    iget-object v2, v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-ne v2, p0, :cond_0

    .line 130
    iget-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object v2, v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 131
    const/4 v2, 0x0

    iput-object v2, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    .line 128
    :cond_0
    move-object v1, v2

    goto :goto_0

    .line 137
    .end local v1    # "prev":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    :cond_1
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 127
    .end local p0    # "node":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw p0

    :goto_2
    goto :goto_1
.end method

.method private remainingNanos(J)J
    .locals 2
    .param p1, "now"    # J

    .line 145
    iget-wide v0, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;JZ)V
    .locals 9
    .param p0, "node"    # Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .param p1, "timeoutNanos"    # J
    .param p3, "hasDeadline"    # Z

    const-class v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    monitor-enter v0

    .line 86
    :try_start_0
    sget-object v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-nez v1, :cond_0

    .line 87
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;-><init>()V

    sput-object v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 88
    new-instance v1, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;

    invoke-direct {v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$Watchdog;->start()V

    .line 91
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 92
    .local v1, "now":J
    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    if-eqz p3, :cond_1

    .line 95
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v1

    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    add-long/2addr v3, v1

    iput-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 96
    :cond_1
    cmp-long v5, p1, v3

    if-eqz v5, :cond_2

    .line 97
    add-long v3, v1, p1

    iput-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 98
    :cond_2
    if-eqz p3, :cond_6

    .line 99
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v3

    iput-wide v3, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutAt:J

    .line 105
    :goto_0
    invoke-direct {p0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v3

    .line 106
    .local v3, "remainingNanos":J
    sget-object v5, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 107
    .local v5, "prev":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    :goto_1
    iget-object v6, v5, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-eqz v6, :cond_4

    invoke-direct {v6, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    cmp-long v8, v3, v6

    if-gez v8, :cond_3

    goto :goto_2

    .line 106
    :cond_3
    iget-object v6, v5, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    move-object v5, v6

    goto :goto_1

    .line 108
    :cond_4
    :goto_2
    iget-object v6, v5, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    iput-object v6, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 109
    iput-object p0, v5, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->next:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    .line 110
    sget-object v6, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->head:Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;

    if-ne v5, v6, :cond_5

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    .end local v5    # "prev":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    :cond_5
    monitor-exit v0

    return-void

    .line 101
    .end local v3    # "remainingNanos":J
    :cond_6
    :try_start_1
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    .end local v1    # "now":J
    .end local p0    # "node":Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;
    .end local p1    # "timeoutNanos":J
    .end local p3    # "hasDeadline":Z
    :catchall_0
    move-exception p0

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p0

    :goto_4
    goto :goto_3
.end method


# virtual methods
.method public final enter()V
    .locals 6

    .line 73
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    if-nez v0, :cond_1

    .line 74
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 75
    .local v0, "timeoutNanos":J
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    .line 76
    .local v2, "hasDeadline":Z
    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_0

    if-nez v2, :cond_0

    .line 77
    return-void

    .line 79
    :cond_0
    const/4 v3, 0x1

    iput-boolean v3, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    .line 80
    invoke-static {p0, v0, v1, v2}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->scheduleTimeout(Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;JZ)V

    .line 81
    return-void

    .line 73
    .end local v0    # "timeoutNanos":J
    .end local v2    # "hasDeadline":Z
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .param p1, "cause"    # Ljava/io/IOException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 285
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    return-object v0
.end method

.method final exit(Z)V
    .locals 2
    .param p1, "throwOnTimeout"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->exit()Z

    move-result v0

    .line 275
    .local v0, "timedOut":Z
    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 276
    :cond_1
    :goto_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    .line 120
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 121
    :cond_0
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->inQueue:Z

    .line 122
    invoke-static {p0}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;->cancelScheduledTimeout(Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;)Z

    move-result v0

    return v0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2
    .param p1, "cause"    # Ljava/io/IOException;

    .line 294
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "e":Ljava/io/InterruptedIOException;
    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 298
    :cond_0
    return-object v0
.end method

.method public final sink(Lccsancom/mbridge/msdk/thrid/okio/Sink;)Lccsancom/mbridge/msdk/thrid/okio/Sink;
    .locals 1
    .param p1, "sink"    # Lccsancom/mbridge/msdk/thrid/okio/Sink;

    .line 160
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$1;-><init>(Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;Lccsancom/mbridge/msdk/thrid/okio/Sink;)V

    return-object v0
.end method

.method public final source(Lccsancom/mbridge/msdk/thrid/okio/Source;)Lccsancom/mbridge/msdk/thrid/okio/Source;
    .locals 1
    .param p1, "source"    # Lccsancom/mbridge/msdk/thrid/okio/Source;

    .line 232
    new-instance v0, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout$2;-><init>(Lccsancom/mbridge/msdk/thrid/okio/AsyncTimeout;Lccsancom/mbridge/msdk/thrid/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    .line 153
    return-void
.end method
