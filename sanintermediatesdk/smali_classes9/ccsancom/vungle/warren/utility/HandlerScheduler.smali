.class public Lccsancom/vungle/warren/utility/HandlerScheduler;
.super Ljava/lang/Object;
.source "HandlerScheduler.java"

# interfaces
.implements Lccsancom/vungle/warren/utility/Scheduler;


# instance fields
.field private handler:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/vungle/warren/utility/HandlerScheduler;->handler:Lccsanandroid/os/Handler;

    return-void
.end method

.method private calculateTime(J)J
    .locals 2
    .param p1, "delay"    # J

    .line 19
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    add-long/2addr v0, p1

    return-wide v0
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 29
    iget-object v0, p0, Lccsancom/vungle/warren/utility/HandlerScheduler;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 30
    return-void
.end method

.method public cancelAll()V
    .locals 2

    .line 34
    iget-object v0, p0, Lccsancom/vungle/warren/utility/HandlerScheduler;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delay"    # J

    .line 24
    iget-object v0, p0, Lccsancom/vungle/warren/utility/HandlerScheduler;->handler:Lccsanandroid/os/Handler;

    invoke-direct {p0, p2, p3}, Lccsancom/vungle/warren/utility/HandlerScheduler;->calculateTime(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 25
    return-void
.end method

.method public schedule(Ljava/lang/Runnable;Ljava/lang/String;J)V
    .locals 3
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "delay"    # J

    .line 15
    iget-object v0, p0, Lccsancom/vungle/warren/utility/HandlerScheduler;->handler:Lccsanandroid/os/Handler;

    invoke-direct {p0, p3, p4}, Lccsancom/vungle/warren/utility/HandlerScheduler;->calculateTime(J)J

    move-result-wide v1

    invoke-virtual {v0, p1, p2, v1, v2}, Lccsanandroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    .line 16
    return-void
.end method
