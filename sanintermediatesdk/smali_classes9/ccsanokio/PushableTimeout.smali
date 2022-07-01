.class final Lccsanokio/PushableTimeout;
.super Lccsanokio/Timeout;
.source "PushableTimeout.java"


# instance fields
.field private originalDeadlineNanoTime:J

.field private originalHasDeadline:Z

.field private originalTimeoutNanos:J

.field private pushed:Lccsanokio/Timeout;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lccsanokio/Timeout;-><init>()V

    return-void
.end method


# virtual methods
.method pop()V
    .locals 4

    .line 48
    iget-object v0, p0, Lccsanokio/PushableTimeout;->pushed:Lccsanokio/Timeout;

    iget-wide v1, p0, Lccsanokio/PushableTimeout;->originalTimeoutNanos:J

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Lccsanokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsanokio/Timeout;

    .line 50
    iget-boolean v0, p0, Lccsanokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lccsanokio/PushableTimeout;->pushed:Lccsanokio/Timeout;

    iget-wide v1, p0, Lccsanokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-virtual {v0, v1, v2}, Lccsanokio/Timeout;->deadlineNanoTime(J)Lccsanokio/Timeout;

    goto :goto_0

    .line 53
    :cond_0
    iget-object v0, p0, Lccsanokio/PushableTimeout;->pushed:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->clearDeadline()Lccsanokio/Timeout;

    .line 55
    :goto_0
    return-void
.end method

.method push(Lccsanokio/Timeout;)V
    .locals 4
    .param p1, "pushed"    # Lccsanokio/Timeout;

    .line 33
    iput-object p1, p0, Lccsanokio/PushableTimeout;->pushed:Lccsanokio/Timeout;

    .line 34
    invoke-virtual {p1}, Lccsanokio/Timeout;->hasDeadline()Z

    move-result v0

    iput-boolean v0, p0, Lccsanokio/PushableTimeout;->originalHasDeadline:Z

    .line 35
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lccsanokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    iput-wide v0, p0, Lccsanokio/PushableTimeout;->originalDeadlineNanoTime:J

    .line 36
    invoke-virtual {p1}, Lccsanokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lccsanokio/PushableTimeout;->originalTimeoutNanos:J

    .line 38
    invoke-virtual {p0}, Lccsanokio/PushableTimeout;->timeoutNanos()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lccsanokio/PushableTimeout;->minTimeout(JJ)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Lccsanokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsanokio/Timeout;

    .line 40
    iget-boolean v0, p0, Lccsanokio/PushableTimeout;->originalHasDeadline:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsanokio/PushableTimeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 41
    invoke-virtual {p0}, Lccsanokio/PushableTimeout;->deadlineNanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lccsanokio/PushableTimeout;->originalDeadlineNanoTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lccsanokio/Timeout;->deadlineNanoTime(J)Lccsanokio/Timeout;

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0}, Lccsanokio/PushableTimeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p0}, Lccsanokio/PushableTimeout;->deadlineNanoTime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lccsanokio/Timeout;->deadlineNanoTime(J)Lccsanokio/Timeout;

    .line 45
    :cond_2
    :goto_1
    return-void
.end method
