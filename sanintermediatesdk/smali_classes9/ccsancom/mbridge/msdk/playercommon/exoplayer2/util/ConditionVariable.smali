.class public final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;
.super Ljava/lang/Object;
.source "ConditionVariable.java"


# instance fields
.field private isOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized block()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 57
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v0, :cond_0

    .line 58
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 60
    :cond_0
    monitor-exit p0

    return-void

    .line 56
    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized block(J)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    .line 70
    :try_start_0
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 71
    add-long/2addr p1, v0

    .line 72
    :goto_0
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->isOpen:Z

    if-nez v2, :cond_0

    cmp-long v3, v0, p1

    if-gez v3, :cond_0

    .line 73
    sub-long v0, p1, v0

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 74
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 76
    :cond_0
    monitor-exit p0

    return v2

    .line 69
    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized close()Z
    .locals 2

    monitor-enter p0

    .line 46
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 47
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    monitor-exit p0

    return v0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized open()Z
    .locals 1

    monitor-enter p0

    .line 32
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->isOpen:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 33
    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 35
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/ConditionVariable;->isOpen:Z

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    monitor-exit p0

    return v0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
