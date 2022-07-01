.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Clock;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createHandler(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/HandlerWrapper;
    .locals 2

    .line 45
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;

    new-instance v1, Lccsanandroid/os/Handler;

    invoke-direct {v1, p1, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;-><init>(Lccsanandroid/os/Handler;)V

    return-object v0
.end method

.method public final elapsedRealtime()J
    .locals 2

    .line 30
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public final sleep(J)V
    .locals 0

    .line 40
    invoke-static {p1, p2}, Lccsanandroid/os/SystemClock;->sleep(J)V

    .line 41
    return-void
.end method

.method public final uptimeMillis()J
    .locals 2

    .line 35
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
