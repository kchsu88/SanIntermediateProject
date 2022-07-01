.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/HandlerWrapper;


# instance fields
.field private final handler:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsanandroid/os/Handler;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    .line 28
    return-void
.end method


# virtual methods
.method public final getLooper()Lccsanandroid/os/Looper;
    .locals 1

    .line 32
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public final obtainMessage(I)Lccsanandroid/os/Message;
    .locals 1

    .line 37
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(III)Lccsanandroid/os/Message;
    .locals 1

    .line 47
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/os/Handler;->obtainMessage(III)Lccsanandroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;
    .locals 1

    .line 52
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3, p4}, Lccsanandroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;
    .locals 1

    .line 42
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p2}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object p1

    return-object p1
.end method

.method public final post(Ljava/lang/Runnable;)Z
    .locals 1

    .line 77
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1

    .line 82
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public final removeMessages(I)V
    .locals 1

    .line 67
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 68
    return-void
.end method

.method public final sendEmptyMessage(I)Z
    .locals 1

    .line 57
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    move-result p1

    return p1
.end method

.method public final sendEmptyMessageAtTime(IJ)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result p1

    return p1
.end method
