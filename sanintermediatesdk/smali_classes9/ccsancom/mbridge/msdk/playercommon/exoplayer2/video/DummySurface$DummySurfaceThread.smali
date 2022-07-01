.class Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;
.super Lccsanandroid/os/HandlerThread;
.source "DummySurface.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DummySurfaceThread"
.end annotation


# static fields
.field private static final MSG_INIT:I = 0x1

.field private static final MSG_RELEASE:I = 0x2


# instance fields
.field private eglSurfaceTexture:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

.field private handler:Lccsanandroid/os/Handler;

.field private initError:Ljava/lang/Error;

.field private initException:Ljava/lang/RuntimeException;

.field private surface:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 165
    const-string v0, "dummySurface"

    invoke-direct {p0, v0}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method private initInternal(I)V
    .locals 3

    .line 234
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->init(I)V

    .line 236
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

    .line 238
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->getSurfaceTexture()Lccsanandroid/graphics/SurfaceTexture;

    move-result-object v1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;Lccsanandroid/graphics/SurfaceTexture;ZLccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$1;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;

    .line 239
    return-void
.end method

.method private releaseInternal()V
    .locals 1

    .line 242
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;->release()V

    .line 244
    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 3

    .line 203
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 229
    return v1

    .line 221
    :pswitch_0
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->releaseInternal()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    :goto_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    .line 226
    goto :goto_1

    .line 222
    :catchall_0
    move-exception p1

    .line 223
    :try_start_1
    const-string v0, "DummySurface"

    const-string v2, "Failed to release dummy surface"

    invoke-static {v0, v2, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 227
    :goto_1
    return v1

    .line 225
    :catchall_1
    move-exception p1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->quit()Z

    .line 226
    throw p1

    .line 206
    :pswitch_1
    :try_start_2
    iget p1, p1, Lccsanandroid/os/Message;->arg1:I

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->initInternal(I)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Error; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 214
    monitor-enter p0

    .line 215
    :try_start_3
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 216
    monitor-exit p0

    .line 217
    :goto_2
    goto :goto_3

    .line 216
    :catchall_2
    move-exception p1

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    .line 214
    :catchall_3
    move-exception p1

    goto :goto_4

    .line 210
    :catch_0
    move-exception p1

    .line 211
    :try_start_4
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 214
    monitor-enter p0

    .line 215
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 216
    monitor-exit p0

    goto :goto_2

    :catchall_4
    move-exception p1

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw p1

    .line 207
    :catch_1
    move-exception p1

    .line 208
    :try_start_6
    const-string v0, "DummySurface"

    const-string v2, "Failed to initialize dummy surface"

    invoke-static {v0, v2, p1}, Lccsanandroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 214
    monitor-enter p0

    .line 215
    :try_start_7
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 216
    monitor-exit p0

    goto :goto_2

    .line 218
    :goto_3
    return v1

    .line 216
    :catchall_5
    move-exception p1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw p1

    .line 214
    :goto_4
    monitor-enter p0

    .line 215
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 216
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 217
    throw p1

    .line 216
    :catchall_6
    move-exception p1

    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public init(I)Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;
    .locals 3

    .line 169
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->start()V

    .line 170
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Lccsanandroid/os/Handler;

    .line 171
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Lccsanandroid/os/Handler;

    invoke-direct {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;-><init>(Lccsanandroid/os/Handler;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->eglSurfaceTexture:Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/EGLSurfaceTexture;

    .line 172
    nop

    .line 173
    monitor-enter p0

    .line 174
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lccsanandroid/os/Handler;->obtainMessage(III)Lccsanandroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/os/Message;->sendToTarget()V

    .line 175
    :goto_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    .line 177
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    goto :goto_0

    .line 178
    :catch_0
    move-exception p1

    .line 179
    nop

    .line 180
    const/4 v2, 0x1

    goto :goto_0

    .line 182
    :cond_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    if-eqz v2, :cond_1

    .line 185
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 187
    :cond_1
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->initException:Ljava/lang/RuntimeException;

    if-nez p1, :cond_3

    .line 189
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->initError:Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 192
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->surface:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;

    invoke-static {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface;

    return-object p1

    .line 190
    :cond_2
    throw p1

    .line 188
    :cond_3
    throw p1

    .line 182
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public release()V
    .locals 2

    .line 197
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Lccsanandroid/os/Handler;

    invoke-static {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/DummySurface$DummySurfaceThread;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 199
    return-void
.end method
