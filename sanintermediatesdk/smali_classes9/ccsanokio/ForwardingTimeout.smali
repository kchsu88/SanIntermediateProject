.class public Lccsanokio/ForwardingTimeout;
.super Lccsanokio/Timeout;
.source "ForwardingTimeout.java"


# instance fields
.field private delegate:Lccsanokio/Timeout;


# direct methods
.method public constructor <init>(Lccsanokio/Timeout;)V
    .locals 2
    .param p1, "delegate"    # Lccsanokio/Timeout;

    .line 25
    invoke-direct {p0}, Lccsanokio/Timeout;-><init>()V

    .line 26
    if-eqz p1, :cond_0

    .line 27
    iput-object p1, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    .line 28
    return-void

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public clearDeadline()Lccsanokio/Timeout;
    .locals 1

    .line 66
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->clearDeadline()Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public clearTimeout()Lccsanokio/Timeout;
    .locals 1

    .line 62
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->clearTimeout()Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public deadlineNanoTime()J
    .locals 2

    .line 54
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->deadlineNanoTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public deadlineNanoTime(J)Lccsanokio/Timeout;
    .locals 1
    .param p1, "deadlineNanoTime"    # J

    .line 58
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0, p1, p2}, Lccsanokio/Timeout;->deadlineNanoTime(J)Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public final delegate()Lccsanokio/Timeout;
    .locals 1

    .line 32
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    return-object v0
.end method

.method public hasDeadline()Z
    .locals 1

    .line 50
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->hasDeadline()Z

    move-result v0

    return v0
.end method

.method public final setDelegate(Lccsanokio/Timeout;)Lccsanokio/ForwardingTimeout;
    .locals 2
    .param p1, "delegate"    # Lccsanokio/Timeout;

    .line 36
    if-eqz p1, :cond_0

    .line 37
    iput-object p1, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    .line 38
    return-object p0

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public throwIfReached()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->throwIfReached()V

    .line 71
    return-void
.end method

.method public timeout(JLjava/util/concurrent/TimeUnit;)Lccsanokio/Timeout;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;

    .line 42
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0, p1, p2, p3}, Lccsanokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lccsanokio/Timeout;

    move-result-object v0

    return-object v0
.end method

.method public timeoutNanos()J
    .locals 2

    .line 46
    iget-object v0, p0, Lccsanokio/ForwardingTimeout;->delegate:Lccsanokio/Timeout;

    invoke-virtual {v0}, Lccsanokio/Timeout;->timeoutNanos()J

    move-result-wide v0

    return-wide v0
.end method
