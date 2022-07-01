.class public final Lccsankotlin/time/TestTimeSource;
.super Lccsankotlin/time/AbstractLongTimeSource;
.source "TimeSources.kt"


# annotations
.annotation runtime Lccsankotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nJ\u001b\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\u0086\u0002\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u000c\u0010\nJ\u0008\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006\u000e"
    }
    d2 = {
        "Lccsankotlin/time/TestTimeSource;",
        "Lccsankotlin/time/AbstractLongTimeSource;",
        "()V",
        "reading",
        "",
        "overflow",
        "",
        "duration",
        "Lccsankotlin/time/Duration;",
        "overflow-LRDsOJo",
        "(J)V",
        "plusAssign",
        "plusAssign-LRDsOJo",
        "read",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private reading:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0, v0}, Lccsankotlin/time/AbstractLongTimeSource;-><init>(Ljava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private final overflow-LRDsOJo(J)V
    .locals 4
    .param p1, "duration"    # J

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TestTimeSource will overflow if its reading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsankotlin/time/TestTimeSource;->reading:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ns is advanced by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lccsankotlin/time/Duration;->toString-impl(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method


# virtual methods
.method public final plusAssign-LRDsOJo(J)V
    .locals 11
    .param p1, "duration"    # J

    .line 87
    invoke-virtual {p0}, Lccsankotlin/time/TestTimeSource;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsankotlin/time/Duration;->toLong-impl(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    .line 88
    .local v0, "longDelta":J
    const-wide v2, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v0, v4

    if-eqz v6, :cond_1

    cmp-long v6, v0, v2

    if-eqz v6, :cond_1

    .line 90
    iget-wide v2, p0, Lccsankotlin/time/TestTimeSource;->reading:J

    add-long v4, v2, v0

    .line 91
    .local v4, "newReading":J
    xor-long v6, v2, v0

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-ltz v10, :cond_0

    xor-long/2addr v2, v4

    cmp-long v6, v2, v8

    if-gez v6, :cond_0

    invoke-direct {p0, p1, p2}, Lccsankotlin/time/TestTimeSource;->overflow-LRDsOJo(J)V

    .line 92
    :cond_0
    nop

    .end local v4    # "newReading":J
    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0}, Lccsankotlin/time/TestTimeSource;->getUnit()Ljava/util/concurrent/TimeUnit;

    move-result-object v6

    invoke-static {p1, p2, v6}, Lccsankotlin/time/Duration;->toDouble-impl(JLjava/util/concurrent/TimeUnit;)D

    move-result-wide v6

    .line 96
    .local v6, "delta":D
    iget-wide v8, p0, Lccsankotlin/time/TestTimeSource;->reading:J

    long-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v8, v6

    .line 97
    .local v8, "newReading":D
    long-to-double v2, v2

    cmpl-double v10, v8, v2

    if-gtz v10, :cond_2

    long-to-double v2, v4

    cmpg-double v4, v8, v2

    if-gez v4, :cond_3

    :cond_2
    invoke-direct {p0, p1, p2}, Lccsankotlin/time/TestTimeSource;->overflow-LRDsOJo(J)V

    .line 98
    :cond_3
    double-to-long v4, v8

    .line 88
    .end local v6    # "delta":D
    .end local v8    # "newReading":D
    :goto_0
    iput-wide v4, p0, Lccsankotlin/time/TestTimeSource;->reading:J

    .line 100
    return-void
.end method

.method protected read()J
    .locals 2

    .line 75
    iget-wide v0, p0, Lccsankotlin/time/TestTimeSource;->reading:J

    return-wide v0
.end method
