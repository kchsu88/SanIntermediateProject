.class final Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;
.super Ljava/lang/Object;
.source "VideoFrameReleaseHelper.java"

# interfaces
.implements Lccsanandroid/view/Choreographer$FrameCallback;
.implements Lccsanandroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "VSyncSampler"
.end annotation


# static fields
.field private static final CREATE_CHOREOGRAPHER:I = 0x0

.field private static final INSTANCE:Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

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

    .line 572
    new-instance v0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    invoke-direct {v0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;-><init>()V

    sput-object v0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 584
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 585
    new-instance v0, Lccsanandroid/os/HandlerThread;

    const-string v1, "ExoPlayer:FrameReleaseChoreographer"

    invoke-direct {v0, v1}, Lccsanandroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographerOwnerThread:Lccsanandroid/os/HandlerThread;

    .line 586
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->start()V

    .line 587
    invoke-virtual {v0}, Lccsanandroid/os/HandlerThread;->getLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {v0, p0}, Lccsancom/google/android/exoplayer2/util/Util;->createHandler(Lccsanandroid/os/Looper;Lccsanandroid/os/Handler$Callback;)Lccsanandroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Lccsanandroid/os/Handler;

    .line 588
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 589
    return-void
.end method

.method private addObserverInternal()V
    .locals 2

    .line 635
    iget v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    .line 636
    if-ne v0, v1, :cond_0

    .line 637
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/Choreographer;

    invoke-virtual {v0, p0}, Lccsanandroid/view/Choreographer;->postFrameCallback(Lccsanandroid/view/Choreographer$FrameCallback;)V

    .line 639
    :cond_0
    return-void
.end method

.method private createChoreographerInstanceInternal()V
    .locals 1

    .line 631
    invoke-static {}, Lccsanandroid/view/Choreographer;->getInstance()Lccsanandroid/view/Choreographer;

    move-result-object v0

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    .line 632
    return-void
.end method

.method public static getInstance()Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;
    .locals 1

    .line 580
    sget-object v0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->INSTANCE:Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;

    return-object v0
.end method

.method private removeObserverInternal()V
    .locals 2

    .line 642
    iget v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->observerCount:I

    .line 643
    if-nez v0, :cond_0

    .line 644
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/Choreographer;

    invoke-virtual {v0, p0}, Lccsanandroid/view/Choreographer;->removeFrameCallback(Lccsanandroid/view/Choreographer$FrameCallback;)V

    .line 645
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    iput-wide v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 647
    :cond_0
    return-void
.end method


# virtual methods
.method public addObserver()V
    .locals 2

    .line 596
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 597
    return-void
.end method

.method public doFrame(J)V
    .locals 3
    .param p1, "vsyncTimeNs"    # J

    .line 609
    iput-wide p1, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->sampledVsyncTimeNs:J

    .line 610
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->choreographer:Lccsanandroid/view/Choreographer;

    invoke-static {v0}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/Choreographer;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, p0, v1, v2}, Lccsanandroid/view/Choreographer;->postFrameCallbackDelayed(Lccsanandroid/view/Choreographer$FrameCallback;J)V

    .line 611
    return-void
.end method

.method public handleMessage(Lccsanandroid/os/Message;)Z
    .locals 2
    .param p1, "message"    # Lccsanandroid/os/Message;

    .line 615
    iget v0, p1, Lccsanandroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 626
    const/4 v0, 0x0

    return v0

    .line 623
    :pswitch_0
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->removeObserverInternal()V

    .line 624
    return v1

    .line 620
    :pswitch_1
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->addObserverInternal()V

    .line 621
    return v1

    .line 617
    :pswitch_2
    invoke-direct {p0}, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->createChoreographerInstanceInternal()V

    .line 618
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeObserver()V
    .locals 2

    .line 604
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/VideoFrameReleaseHelper$VSyncSampler;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->sendEmptyMessage(I)Z

    .line 605
    return-void
.end method
