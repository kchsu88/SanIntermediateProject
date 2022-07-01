.class final Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;
.super Ljava/lang/Object;
.source "VideoFrameReleaseTimeHelper.java"

# interfaces
.implements Lccsanandroid/os/Handler$Callback;
.implements Lccsanandroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VSyncSampler"
.end annotation


# static fields
.field private static final CREATE_CHOREOGRAPHER:I = 0x0

.field private static final INSTANCE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

.field private static final MSG_ADD_OBSERVER:I = 0x1

.field private static final MSG_REMOVE_OBSERVER:I = 0x2


# instance fields
.field private choreographer:Lccsanandroid/view/Choreographer;

.field private final choreographerOwnerThread:Lccsanandroid/os/HandlerThread;

.field private final handler:Lccsanandroid/os/Handler;

.field private observerCount:I

.field public volatile sampledVsyncTimeNs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 279
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;-><init>()V

    sput-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->INSTANCE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 292
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "ChoreographerOwner:Handler"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographerOwnerThread:Lccsanandroid/os/HandlerThread;

    .line 293
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 294
    new-instance v1, Lccsanandroid/os/Handler;

    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->handler:Lccsanandroid/os/Handler;

    .line 295
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 296
    return-void
.end method

.method private addObserverInternal()V
    .locals 2

    .line 346
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    .line 347
    if-ne v0, v1, :cond_0

    .line 348
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    invoke-virtual {v0, p0}, Lccsanandroid/view/Choreographer;->postFrameCallback(Lccsanandroid/view/Choreographer$FrameCallback;)V

    .line 350
    :cond_0
    return-void
.end method

.method private createChoreographerInstanceInternal()V
    .locals 1

    .line 342
    invoke-static {}, Lccsanandroid/view/Choreographer;->getInstance()Lccsanandroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    .line 343
    return-void
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;
    .locals 1

    .line 287
    sget-object v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->INSTANCE:Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;

    return-object v0
.end method

.method private removeObserverInternal()V
    .locals 2

    .line 353
    iget v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->observerCount:I

    .line 354
    if-nez v0, :cond_0

    .line 355
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    invoke-virtual {v0, p0}, Lccsanandroid/view/Choreographer;->removeFrameCallback(Lccsanandroid/view/Choreographer$FrameCallback;)V

    .line 356
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 358
    :cond_0
    return-void
.end method


# virtual methods
.method public final addObserver()V
    .locals 2

    .line 303
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 304
    return-void
.end method

.method public final doFrame(J)V
    .locals 2

    .line 316
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 317
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Lccsanandroid/view/Choreographer;->postFrameCallbackDelayed(Lccsanandroid/view/Choreographer$FrameCallback;J)V

    .line 318
    return-void
.end method

.method public final handleMessage(Lccsanandroid/os/Message;)Z
    .locals 1

    .line 322
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 336
    const/4 p1, 0x0

    return p1

    .line 332
    :pswitch_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->removeObserverInternal()V

    .line 333
    return v0

    .line 328
    :pswitch_1
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->addObserverInternal()V

    .line 329
    return v0

    .line 324
    :pswitch_2
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->createChoreographerInstanceInternal()V

    .line 325
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final removeObserver()V
    .locals 2

    .line 311
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/video/VideoFrameReleaseTimeHelper$VSyncSampler;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    return-void
.end method
