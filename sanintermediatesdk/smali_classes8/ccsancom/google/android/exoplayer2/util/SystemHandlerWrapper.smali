.class final Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;
.super Ljava/lang/Object;
.source "SystemHandlerWrapper.java"

# interfaces
.implements Lccsancom/google/android/exoplayer2/util/HandlerWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    }
.end annotation


# static fields
.field private static final MAX_POOL_SIZE:I = 0x32

.field private static final messagePool:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final handler:Lccsanandroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/os/Handler;)V
    .locals 0
    .param p1, "handler"    # Lccsanandroid/os/Handler;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    .line 39
    return-void
.end method

.method static synthetic access$100(Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    .line 28
    invoke-static {p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->recycleMessage(Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V

    return-void
.end method

.method private static obtainSystemMessage()Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;
    .locals 3

    .line 119
    sget-object v0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    monitor-enter v0

    .line 120
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 121
    new-instance v1, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;-><init>(Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$1;)V

    goto :goto_0

    .line 122
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    :goto_0
    monitor-exit v0

    .line 120
    return-object v1

    .line 123
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static recycleMessage(Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;)V
    .locals 3
    .param p0, "message"    # Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    .line 127
    sget-object v0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->messagePool:Ljava/util/List;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 129
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_0
    monitor-exit v0

    .line 132
    return-void

    .line 131
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getLooper()Lccsanandroid/os/Looper;
    .locals 1

    .line 43
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Lccsanandroid/os/Handler;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public hasMessages(I)Z
    .locals 1
    .param p1, "what"    # I

    .line 48
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->hasMessages(I)Z

    move-result v0

    return v0
.end method

.method public obtainMessage(I)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2
    .param p1, "what"    # I

    .line 53
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v1, p1}, Lccsanandroid/os/Handler;->obtainMessage(I)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Lccsanandroid/os/Message;Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public obtainMessage(III)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I

    .line 63
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    .line 64
    invoke-virtual {v1, p1, p2, p3}, Lccsanandroid/os/Handler;->obtainMessage(III)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Lccsanandroid/os/Message;Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    .line 63
    return-object v0
.end method

.method public obtainMessage(IIILjava/lang/Object;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 69
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    .line 70
    invoke-virtual {v1, p1, p2, p3, p4}, Lccsanandroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Lccsanandroid/os/Message;Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    .line 69
    return-object v0
.end method

.method public obtainMessage(ILjava/lang/Object;)Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;
    .locals 2
    .param p1, "what"    # I
    .param p2, "obj"    # Ljava/lang/Object;

    .line 58
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->obtainSystemMessage()Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v1, p1, p2}, Lccsanandroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Lccsanandroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->setMessage(Lccsanandroid/os/Message;Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;)Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    move-result-object v0

    return-object v0
.end method

.method public post(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 105
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postAtFrontOfQueue(Ljava/lang/Runnable;)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .line 115
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public postDelayed(Ljava/lang/Runnable;J)Z
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;
    .param p2, "delayMs"    # J

    .line 110
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v0

    return v0
.end method

.method public removeCallbacksAndMessages(Ljava/lang/Object;)V
    .locals 1
    .param p1, "token"    # Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method public removeMessages(I)V
    .locals 1
    .param p1, "what"    # I

    .line 95
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->removeMessages(I)V

    .line 96
    return-void
.end method

.method public sendEmptyMessage(I)Z
    .locals 1
    .param p1, "what"    # I

    .line 80
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v0

    return v0
.end method

.method public sendEmptyMessageAtTime(IJ)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "uptimeMs"    # J

    .line 90
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, p1, p2, p3}, Lccsanandroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    move-result v0

    return v0
.end method

.method public sendEmptyMessageDelayed(II)Z
    .locals 3
    .param p1, "what"    # I
    .param p2, "delayMs"    # I

    .line 85
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-result v0

    return v0
.end method

.method public sendMessageAtFrontOfQueue(Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;)Z
    .locals 2
    .param p1, "message"    # Lccsancom/google/android/exoplayer2/util/HandlerWrapper$Message;

    .line 75
    move-object v0, p1

    check-cast v0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;

    iget-object v1, p0, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/SystemHandlerWrapper$SystemMessage;->sendAtFrontOfQueue(Lccsanandroid/os/Handler;)Z

    move-result v0

    return v0
.end method
