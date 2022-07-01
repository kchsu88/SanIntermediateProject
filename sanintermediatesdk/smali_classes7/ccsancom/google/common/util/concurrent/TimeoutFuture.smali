.class final Lccsancom/google/common/util/concurrent/TimeoutFuture;
.super Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;
.source "TimeoutFuture.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/common/util/concurrent/TimeoutFuture$TimeoutFutureException;,
        Lccsancom/google/common/util/concurrent/TimeoutFuture$Fire;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private delegateRef:Lccsancom/google/common/util/concurrent/ListenableFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field

.field private timer:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation

    .annotation runtime Lccsanorg/checkerframework/checker/nullness/compatqual/NullableDecl;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lccsancom/google/common/util/concurrent/ListenableFuture;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;)V"
        }
    .end annotation

    .line 77
    .local p0, "this":Lccsancom/google/common/util/concurrent/TimeoutFuture;, "Lccsancom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    .local p1, "delegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    invoke-direct {p0}, Lccsancom/google/common/util/concurrent/FluentFuture$TrustedFuture;-><init>()V

    .line 78
    invoke-static {p1}, Lccsancom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/google/common/util/concurrent/ListenableFuture;

    iput-object v0, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 79
    return-void
.end method

.method static synthetic access$000(Lccsancom/google/common/util/concurrent/TimeoutFuture;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/TimeoutFuture;

    .line 37
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lccsancom/google/common/util/concurrent/ListenableFuture;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/google/common/util/concurrent/TimeoutFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/TimeoutFuture;

    .line 37
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$102(Lccsancom/google/common/util/concurrent/TimeoutFuture;Ljava/util/concurrent/ScheduledFuture;)Ljava/util/concurrent/ScheduledFuture;
    .locals 0
    .param p0, "x0"    # Lccsancom/google/common/util/concurrent/TimeoutFuture;
    .param p1, "x1"    # Ljava/util/concurrent/ScheduledFuture;

    .line 37
    iput-object p1, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/ScheduledFuture;

    return-object p1
.end method

.method static create(Lccsancom/google/common/util/concurrent/ListenableFuture;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lccsancom/google/common/util/concurrent/ListenableFuture;
    .locals 3
    .param p1, "time"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "scheduledExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ")",
            "Lccsancom/google/common/util/concurrent/ListenableFuture<",
            "TV;>;"
        }
    .end annotation

    .line 43
    .local p0, "delegate":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<TV;>;"
    new-instance v0, Lccsancom/google/common/util/concurrent/TimeoutFuture;

    invoke-direct {v0, p0}, Lccsancom/google/common/util/concurrent/TimeoutFuture;-><init>(Lccsancom/google/common/util/concurrent/ListenableFuture;)V

    .line 44
    .local v0, "result":Lccsancom/google/common/util/concurrent/TimeoutFuture;, "Lccsancom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    new-instance v1, Lccsancom/google/common/util/concurrent/TimeoutFuture$Fire;

    invoke-direct {v1, v0}, Lccsancom/google/common/util/concurrent/TimeoutFuture$Fire;-><init>(Lccsancom/google/common/util/concurrent/TimeoutFuture;)V

    .line 45
    .local v1, "fire":Lccsancom/google/common/util/concurrent/TimeoutFuture$Fire;, "Lccsancom/google/common/util/concurrent/TimeoutFuture$Fire<TV;>;"
    invoke-interface {p4, v1, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v2

    iput-object v2, v0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/ScheduledFuture;

    .line 46
    invoke-static {}, Lccsancom/google/common/util/concurrent/MoreExecutors;->directExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lccsancom/google/common/util/concurrent/ListenableFuture;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method protected afterDone()V
    .locals 2

    .line 168
    .local p0, "this":Lccsancom/google/common/util/concurrent/TimeoutFuture;, "Lccsancom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lccsancom/google/common/util/concurrent/ListenableFuture;

    invoke-virtual {p0, v0}, Lccsancom/google/common/util/concurrent/TimeoutFuture;->maybePropagateCancellationTo(Ljava/util/concurrent/Future;)V

    .line 170
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/ScheduledFuture;

    .line 174
    .local v0, "localTimer":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    if-eqz v0, :cond_0

    .line 175
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 178
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 179
    iput-object v1, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/ScheduledFuture;

    .line 180
    return-void
.end method

.method protected pendingToString()Ljava/lang/String;
    .locals 8

    .line 150
    .local p0, "this":Lccsancom/google/common/util/concurrent/TimeoutFuture;, "Lccsancom/google/common/util/concurrent/TimeoutFuture<TV;>;"
    iget-object v0, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->delegateRef:Lccsancom/google/common/util/concurrent/ListenableFuture;

    .line 151
    .local v0, "localInputFuture":Lccsancom/google/common/util/concurrent/ListenableFuture;, "Lccsancom/google/common/util/concurrent/ListenableFuture<+TV;>;"
    iget-object v1, p0, Lccsancom/google/common/util/concurrent/TimeoutFuture;->timer:Ljava/util/concurrent/ScheduledFuture;

    .line 152
    .local v1, "localTimer":Ljava/util/concurrent/ScheduledFuture;, "Ljava/util/concurrent/ScheduledFuture<*>;"
    if-eqz v0, :cond_1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inputFuture=["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "message":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 155
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v3}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v3

    .line 157
    .local v3, "delay":J
    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", remaining delay=["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 161
    .end local v3    # "delay":J
    :cond_0
    return-object v2

    .line 163
    .end local v2    # "message":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method
