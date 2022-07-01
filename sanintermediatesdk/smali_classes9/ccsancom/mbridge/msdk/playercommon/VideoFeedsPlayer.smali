.class public Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;
.super Ljava/lang/Object;
.source "VideoFeedsPlayer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# static fields
.field public static final INTERVAL_TIME_PLAY_TIME_CD_THREAD:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "VideoFeedsPlayer"


# instance fields
.field private exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

.field private isStart:Z

.field private mBufferTime:I

.field private mBufferTimeoutTimer:Ljava/util/Timer;

.field private mCurrentPosition:J

.field private mFullScreenLoadingView:Lccsanandroid/view/View;

.field private final mHandler:Lccsanandroid/os/Handler;

.field private mHasPrepare:Z

.field private volatile mInnerVFPLisener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mIsBuffering:Z

.field private mIsComplete:Z

.field private mIsFrontDesk:Z

.field private mIsNeedBufferingTimeout:Z

.field private mIsPlaying:Z

.field private mIsSilent:Z

.field private mLoadingView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private volatile mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

.field private mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private playProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    .line 40
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    .line 41
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 42
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    .line 43
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsNeedBufferingTimeout:Z

    .line 44
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    .line 46
    const/4 v1, 0x5

    iput v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTime:I

    .line 52
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLock:Ljava/lang/Object;

    .line 58
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isStart:Z

    .line 60
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$1;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    .line 169
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$2;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->playProgressRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)J
    .locals 2

    .line 35
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic access$1000(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;J)J
    .locals 0

    .line 35
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$1200(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mInnerVFPLisener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayProgressOnMainThread(II)V

    return-void
.end method

.method static synthetic access$302(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Z)Z
    .locals 0

    .line 35
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    return p1
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    return p0
.end method

.method static synthetic access$500(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    return-void
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsanandroid/os/Handler;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Z
    .locals 0

    .line 35
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    return p0
.end method

.method static synthetic access$800(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)Lccsanandroid/view/View;
    .locals 0

    .line 35
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mFullScreenLoadingView:Lccsanandroid/view/View;

    return-object p0
.end method

.method private cancelBufferTimeoutTimer()V
    .locals 2

    .line 222
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :goto_0
    return-void
.end method

.method private cancelPlayProgressTimer()V
    .locals 2

    .line 214
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 217
    goto :goto_0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :goto_0
    return-void
.end method

.method private hideLoading()V
    .locals 2

    .line 320
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$5;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$5;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    goto :goto_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void
.end method

.method private postOnBufferinEndOnMainThread()V
    .locals 2

    .line 404
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 405
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$8;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$8;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 429
    :cond_0
    goto :goto_0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :goto_0
    return-void
.end method

.method private postOnBufferingStarOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 374
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 375
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$7;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 399
    :cond_0
    goto :goto_0

    .line 397
    :catch_0
    move-exception p1

    .line 398
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    :goto_0
    return-void
.end method

.method private postOnPlayCompletedOnMainThread()V
    .locals 2

    .line 526
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 527
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$12;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 549
    :cond_0
    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    .line 548
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    :goto_0
    return-void
.end method

.method private postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 465
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 466
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$10;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$10;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 489
    :cond_0
    const/16 v0, 0x5e

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 492
    goto :goto_0

    .line 490
    :catch_0
    move-exception p1

    .line 491
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    :goto_0
    return-void
.end method

.method private postOnPlayProgressOnMainThread(II)V
    .locals 2

    .line 344
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 345
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$6;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;II)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    :cond_0
    goto :goto_0

    .line 367
    :catch_0
    move-exception p1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    :goto_0
    return-void
.end method

.method private postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V
    .locals 2

    .line 497
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 498
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$11;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$11;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    :cond_0
    goto :goto_0

    .line 519
    :catch_0
    move-exception p1

    .line 520
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    :goto_0
    return-void
.end method

.method private postOnPlayStartOnMainThread(J)V
    .locals 2

    .line 434
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 435
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$9;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$9;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;J)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :cond_0
    goto :goto_0

    .line 458
    :catch_0
    move-exception p1

    .line 459
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    :goto_0
    return-void
.end method

.method private startBufferIngTimer(Ljava/lang/String;)V
    .locals 4

    .line 232
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsNeedBufferingTimeout:Z

    if-nez v0, :cond_0

    .line 233
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelBufferTimeoutTimer()V

    .line 238
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    .line 239
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$3;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;Ljava/lang/String;)V

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTime:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 251
    return-void
.end method

.method private startPlayProgressTimer()V
    .locals 2

    .line 205
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelPlayProgressTimer()V

    .line 206
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    :goto_0
    return-void
.end method


# virtual methods
.method public closeSound()V
    .locals 2

    .line 715
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 716
    return-void

    .line 718
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsSilent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 722
    goto :goto_0

    .line 720
    :catch_0
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    :goto_0
    return-void
.end method

.method public exoPlayerIsPlaying()Z
    .locals 2

    .line 867
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 868
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 867
    :goto_0
    return v0
.end method

.method public fullScreenLoadingViewisVisible()Z
    .locals 2

    .line 805
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mFullScreenLoadingView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 807
    const/4 v0, 0x1

    return v0

    .line 811
    :cond_0
    goto :goto_0

    .line 809
    :catchall_0
    move-exception v0

    .line 810
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 813
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurPosition()I
    .locals 2

    .line 738
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    long-to-int v1, v0

    return v1
.end method

.method public getDuration()I
    .locals 1

    .line 835
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 836
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    .line 838
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public halfLoadingViewisVisible()Z
    .locals 2

    .line 819
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    .line 820
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/View;

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 821
    const/4 v0, 0x1

    return v0

    .line 825
    :cond_0
    goto :goto_0

    .line 823
    :catchall_0
    move-exception v0

    .line 824
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasPrepare()Z
    .locals 1

    .line 773
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    return v0
.end method

.method public initBufferIngParam(I)V
    .locals 0

    .line 254
    if-lez p1, :cond_0

    .line 255
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mBufferTime:I

    .line 257
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsNeedBufferingTimeout:Z

    .line 258
    return-void
.end method

.method public initPlayer(Lccsanandroid/content/Context;Lccsanandroid/view/View;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    .locals 3

    .line 71
    const-string v0, "VideoFeedsPlayer"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 72
    :try_start_0
    const-string p1, "loadingView is NULL"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string p1, "MediaPlayer init error"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 74
    return v1

    .line 77
    :cond_0
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 78
    new-instance p4, Ljava/lang/ref/WeakReference;

    invoke-direct {p4, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLoadingView:Ljava/lang/ref/WeakReference;

    .line 80
    new-instance p2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {p2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;)V

    new-instance p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {p2, p4, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object p2

    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 84
    invoke-static {p3}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p2

    .line 85
    new-instance p3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance p4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;

    const-string v2, "MBridge_ExoPlayer"

    invoke-direct {p4, p1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p3, p4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    .line 87
    invoke-virtual {p3, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object p1

    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 89
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 90
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 91
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    const/4 p1, 0x1

    return p1

    .line 94
    :catchall_0
    move-exception p1

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    nop

    .line 97
    nop

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 103
    return v1
.end method

.method public isComplete()Z
    .locals 1

    .line 785
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    return v0
.end method

.method public isPlayIng()Z
    .locals 2

    .line 743
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 744
    const/4 v0, 0x1

    return v0

    .line 748
    :cond_0
    goto :goto_0

    .line 746
    :catch_0
    move-exception v0

    .line 747
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSilent()Z
    .locals 1

    .line 831
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsSilent:Z

    return v0
.end method

.method public justSeekTo(I)V
    .locals 2

    .line 646
    int-to-long v0, p1

    :try_start_0
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    nop

    .line 648
    return-void

    .line 650
    :catch_0
    move-exception p1

    .line 651
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    return-void
.end method

.method public onBufferingUpdate(I)V
    .locals 0

    .line 766
    return-void
.end method

.method public onCompletion()V
    .locals 2

    .line 262
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    .line 263
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    .line 264
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    .line 265
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 266
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayCompletedOnMainThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    goto :goto_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)Z
    .locals 2

    .line 754
    const/4 p1, 0x1

    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 755
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    if-nez v0, :cond_0

    const-string v0, "MIX 3"

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lccsancom/mbridge/msdk/foundation/tools/m;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Xiaomi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 756
    return p1

    .line 758
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 759
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    goto :goto_0

    .line 760
    :catch_0
    move-exception p2

    .line 761
    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    :goto_0
    return p1
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .line 889
    return-void
.end method

.method public onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 971
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackParametersChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    return-void
.end method

.method public onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 935
    nop

    .line 936
    if-eqz p1, :cond_0

    .line 937
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 948
    :pswitch_0
    nop

    .line 949
    const-string v0, "Play error, because have a UnexpectedException."

    goto :goto_1

    .line 944
    :pswitch_1
    nop

    .line 945
    const-string v0, "Play error, because have a RendererException."

    goto :goto_1

    .line 940
    :pswitch_2
    nop

    .line 941
    const-string v0, "Play error, because have a SourceException."

    goto :goto_1

    .line 955
    :cond_0
    :goto_0
    const-string v0, "Play error and ExoPlayer have not message."

    :goto_1
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 956
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 959
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoFeedsPlayer"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->onError(ILjava/lang/String;)Z

    .line 962
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPlayerStateChanged(ZI)V
    .locals 1

    .line 893
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlaybackStateChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 916
    :pswitch_0
    const-string p1, "onPlaybackStateChanged : Ended : PLAY ENDED"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelPlayProgressTimer()V

    .line 918
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->onCompletion()V

    goto :goto_0

    .line 908
    :pswitch_1
    const-string p1, "onPlaybackStateChanged : READY"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    .line 910
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 911
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferinEndOnMainThread()V

    .line 912
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->onPrepared()V

    .line 913
    goto :goto_0

    .line 901
    :pswitch_2
    const-string p1, "onPlaybackStateChanged : Buffering"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsBuffering:Z

    .line 903
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    .line 904
    const-string p1, "play buffering tiemout"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startBufferIngTimer(Ljava/lang/String;)V

    .line 905
    goto :goto_0

    .line 897
    :pswitch_3
    const-string p1, "onPlaybackStateChanged : IDLE"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 898
    nop

    .line 921
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPositionDiscontinuity(I)V
    .locals 0

    .line 967
    return-void
.end method

.method public onPrepared()V
    .locals 6

    .line 274
    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    if-eqz v1, :cond_1

    .line 275
    if-eqz v1, :cond_2

    .line 276
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 277
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 278
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v2, :cond_0

    .line 279
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    .line 280
    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isStart:Z

    if-nez v3, :cond_0

    .line 281
    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-direct {p0, v2, v3}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayStartOnMainThread(J)V

    .line 282
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPlayStarted()\uff0cgetCurrentPosition:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isStart:Z

    .line 286
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnBufferinEndOnMainThread()V

    .line 287
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startPlayProgressTimer()V

    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPrepare mCurrentPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " onPrepare mHasPrepare\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 291
    :cond_1
    const-string v1, "At background, Do not process"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 295
    :cond_2
    :goto_0
    goto :goto_1

    .line 293
    :catchall_0
    move-exception v1

    .line 294
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :goto_1
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 926
    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    .line 977
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 931
    return-void
.end method

.method public onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    .line 879
    return-void
.end method

.method public onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 884
    return-void
.end method

.method public openSound()V
    .locals 2

    .line 727
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 728
    return-void

    .line 730
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    .line 731
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsSilent:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 734
    goto :goto_0

    .line 732
    :catch_0
    move-exception v0

    .line 733
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 3

    .line 554
    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    .line 555
    return-void

    .line 557
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pause isPalying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mIsPlaying:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 560
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 561
    iput-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :cond_1
    goto :goto_0

    .line 563
    :catch_0
    move-exception v1

    .line 564
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 872
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 873
    return-void
.end method

.method public play(Ljava/lang/String;I)V
    .locals 3

    .line 122
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    if-lez p2, :cond_0

    .line 124
    int-to-long v1, p2

    :try_start_1
    iput-wide v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    .line 126
    :cond_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 127
    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 128
    monitor-exit v0

    return-void

    .line 130
    :cond_1
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    .line 131
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 132
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    .line 133
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    .line 135
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    :try_start_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDataSource()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 142
    goto :goto_0

    .line 135
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 137
    :catch_0
    move-exception p1

    .line 138
    const-string p2, "VideoFeedsPlayer"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->releasePlayer()V

    .line 140
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 141
    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 143
    :goto_0
    return-void
.end method

.method public play(Ljava/lang/String;Lccsanandroid/view/SurfaceHolder;)V
    .locals 2

    .line 148
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    :try_start_1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 152
    monitor-exit v0

    return-void

    .line 154
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mPlayUrl:Ljava/lang/String;

    .line 155
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 156
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z

    .line 157
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

    .line 158
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    .line 159
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    :try_start_2
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDataSource()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 166
    goto :goto_0

    .line 159
    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 161
    :catch_0
    move-exception p1

    .line 162
    const-string p2, "VideoFeedsPlayer"

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->releasePlayer()V

    .line 164
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 165
    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 167
    :goto_0
    return-void
.end method

.method public prepare()V
    .locals 2

    .line 570
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-eqz v0, :cond_0

    .line 571
    return-void

    .line 573
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 574
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 575
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 576
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 580
    :cond_1
    goto :goto_0

    .line 578
    :catch_0
    move-exception v0

    .line 579
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    :goto_0
    return-void
.end method

.method public releasePlayer()V
    .locals 2

    .line 697
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelPlayProgressTimer()V

    .line 698
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->cancelBufferTimeoutTimer()V

    .line 699
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 700
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->stop()V

    .line 701
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 702
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V

    .line 704
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mInnerVFPLisener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 705
    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 707
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 710
    goto :goto_0

    .line 708
    :catchall_0
    move-exception v0

    .line 709
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 2

    .line 657
    int-to-long v0, p1

    :try_start_0
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mCurrentPosition:J

    .line 658
    iget-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez p1, :cond_0

    .line 659
    return-void

    .line 661
    :cond_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_1

    .line 662
    invoke-virtual {p1, v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 666
    :cond_1
    goto :goto_0

    .line 664
    :catch_0
    move-exception p1

    .line 665
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    :goto_0
    return-void
.end method

.method public setDataSource()V
    .locals 2

    .line 671
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 674
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDisplay(Lccsanandroid/view/SurfaceHolder;)V

    .line 677
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 678
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 679
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 680
    const-string v0, "mediaplayer prepare timeout"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startBufferIngTimer(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :cond_1
    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 685
    const-string v0, "illegal video address"

    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 686
    invoke-direct {p0, v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    .line 688
    :goto_0
    return-void
.end method

.method public setDisplay(Lccsanandroid/view/SurfaceHolder;)V
    .locals 2

    .line 108
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getVideoComponent()Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;

    move-result-object v0

    .line 109
    invoke-interface {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$VideoComponent;->setVideoSurfaceHolder(Lccsanandroid/view/SurfaceHolder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    goto :goto_0

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    nop

    .line 113
    nop

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-void
.end method

.method public setFullScreenLoadingView(Lccsanandroid/view/View;)V
    .locals 1

    .line 794
    if-eqz p1, :cond_0

    .line 795
    :try_start_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mFullScreenLoadingView:Lccsanandroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 797
    :catch_0
    move-exception p1

    .line 798
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 799
    :cond_0
    :goto_0
    nop

    .line 800
    :goto_1
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 0

    .line 789
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z

    .line 790
    return-void
.end method

.method public setIsFrontDesk(Z)V
    .locals 1

    .line 778
    :try_start_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsFrontDesk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 781
    goto :goto_0

    .line 779
    :catch_0
    move-exception p1

    .line 780
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :goto_0
    return-void
.end method

.method public setPlaybackParams(F)V
    .locals 1

    .line 853
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 855
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 856
    goto :goto_0

    .line 857
    :cond_0
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;-><init>(F)V

    .line 858
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1, v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlaybackParameters(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V

    .line 859
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 863
    :goto_0
    goto :goto_1

    .line 861
    :catchall_0
    move-exception p1

    .line 862
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    :goto_1
    return-void
.end method

.method public setSelfVideoFeedsPlayerListener(Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    .line 691
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mInnerVFPLisener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 692
    return-void
.end method

.method public setVideoFeedsPlayerListener(Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    .line 769
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 770
    return-void
.end method

.method public setVolume(FF)V
    .locals 0

    .line 843
    :try_start_0
    iget-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz p1, :cond_0

    .line 844
    invoke-virtual {p1, p2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 848
    :cond_0
    goto :goto_0

    .line 846
    :catchall_0
    move-exception p1

    .line 847
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoFeedsPlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    :goto_0
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHandler:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    .line 302
    return-void

    .line 304
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer$4;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 315
    goto :goto_0

    .line 313
    :catch_0
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :goto_0
    return-void
.end method

.method public start(I)V
    .locals 3

    .line 625
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v0, :cond_0

    .line 626
    return-void

    .line 629
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    if-lez p1, :cond_1

    .line 632
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 633
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->play()V

    goto :goto_0

    .line 635
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->play()V

    .line 636
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    :cond_2
    :goto_0
    goto :goto_1

    .line 639
    :catch_0
    move-exception p1

    .line 640
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoFeedsPlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    :goto_1
    return-void
.end method

.method public start(Z)V
    .locals 2

    .line 602
    const-string v0, "VideoFeedsPlayer"

    :try_start_0
    iget-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v1, :cond_0

    .line 603
    return-void

    .line 606
    :cond_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v1

    if-nez v1, :cond_2

    .line 607
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    .line 608
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->play()V

    .line 609
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    .line 611
    if-eqz p1, :cond_1

    .line 612
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->startPlayProgressTimer()V

    .line 615
    :cond_1
    const-string p1, "start"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 619
    :cond_2
    goto :goto_0

    .line 617
    :catch_0
    move-exception p1

    .line 618
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 585
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    if-nez v0, :cond_0

    .line 586
    return-void

    .line 588
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hideLoading()V

    .line 590
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    .line 591
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mHasPrepare:Z

    .line 592
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsPlaying:Z

    .line 593
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->mIsComplete:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 597
    :cond_1
    goto :goto_0

    .line 595
    :catch_0
    move-exception v0

    .line 596
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoFeedsPlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_0
    return-void
.end method
