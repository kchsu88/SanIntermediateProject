.class public Lccsancom/google/android/exoplayer2/util/SystemClock;
.super Ljava/lang/Object;
.source "SystemClock.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/Clock;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createHandler(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper;
    .locals 2
    .param p1, "looper"    # Lccsanandroid/os/Looper;
    .param p2, "callback"    # Lccsanandroid/os/Handler$Callback;

    .line 48
    new-instance v0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;

    new-instance v1, Lccsanandroid/os/Handler;

    invoke-direct {v1, p1, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;-><init>(Lccsanandroid/os/Handler;)V

    return-object v0
.end method

.method public currentTimeMillis()J
    .locals 2

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public elapsedRealtime()J
    .locals 2

    .line 38
    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public onThreadBlocked()V
    .locals 0

    .line 54
    return-void
.end method

.method public uptimeMillis()J
    .locals 2

    .line 43
    invoke-static {}, Lccsanandroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    return-wide v0
.end method
