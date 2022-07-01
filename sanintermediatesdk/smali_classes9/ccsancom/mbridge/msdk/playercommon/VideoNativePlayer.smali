.class public Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;
.super Ljava/lang/Object;
.source "VideoNativePlayer.java"

# interfaces
.implements Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;


# static fields
.field public static final INTERVAL_TIME_PLAY_TIME_CD_THREAD:I = 0x3e8

.field public static final INTERVAL_TIME_PLAY_TIME_PROGRESS:I = 0x64

.field public static final TAG:Ljava/lang/String; = "VideoNativePlayer"


# instance fields
.field private exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

.field private mBufferTime:I

.field private mBufferTimeoutTimer:Ljava/util/Timer;

.field private mCurrentPosition:J

.field private final mHandler:Lccsanandroid/os/Handler;

.field private mHasChaoDi:Z

.field private mHasPrepare:Z

.field private mInnerVFPLisener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mIsAllowLoopPlay:Z

.field private mIsBuffering:Z

.field private mIsComplete:Z

.field private mIsFrontDesk:Z

.field private mIsNeedBufferingTimeout:Z

.field private mIsOpenSound:Z

.field private mIsPlaying:Z

.field private mIsStartPlay:Z

.field private mLoadingView:Lccsanandroid/view/View;

.field private mNetUrl:Ljava/lang/String;

.field private mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Lccsanandroid/view/Surface;

.field private mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

.field private playProgressMSRunnable:Ljava/lang/Runnable;

.field private playProgressRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 40
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 41
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 42
    const/4 v1, 0x1

    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    .line 43
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    .line 44
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    .line 45
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    .line 46
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    .line 47
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 49
    const/4 v0, 0x5

    iput v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    .line 63
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    .line 68
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$1;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$1;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    .line 116
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$2;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;

    invoke-direct {v0, p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$3;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)J
    .locals 2

    .line 36
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    return-wide v0
.end method

.method static synthetic access$1000(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    return p0
.end method

.method static synthetic access$102(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;J)J
    .locals 0

    .line 36
    iput-wide p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    return-wide p1
.end method

.method static synthetic access$1100(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferingStarOnMainThread(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsanandroid/view/View;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Lccsanandroid/view/View;

    return-object p0
.end method

.method static synthetic access$1300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$1400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    return-object p0
.end method

.method static synthetic access$200(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    return p0
.end method

.method static synthetic access$202(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsStartPlay:Z

    return p1
.end method

.method static synthetic access$300(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayStartOnMainThread(I)V

    return-void
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressOnMainThread(II)V

    return-void
.end method

.method static synthetic access$502(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Z)Z
    .locals 0

    .line 36
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return p1
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    return p0
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    return-void
.end method

.method static synthetic access$800(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)Lccsanandroid/os/Handler;
    .locals 0

    .line 36
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$900(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayProgressMSOnMainThread(JJ)V

    return-void
.end method

.method private cancelBufferTimeoutTimer()V
    .locals 2

    .line 199
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void
.end method

.method private cancelPlayProgressTimer()V
    .locals 2

    .line 190
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 191
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    goto :goto_0

    .line 192
    :catch_0
    move-exception v0

    .line 193
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_0
    return-void
.end method

.method private hideLoading()V
    .locals 2

    .line 284
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    .line 285
    return-void

    .line 287
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$6;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$6;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    goto :goto_0

    .line 296
    :catch_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-void
.end method

.method private postOnBufferinEndOnMainThread()V
    .locals 2

    .line 370
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 371
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$10;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 387
    :cond_0
    goto :goto_0

    .line 385
    :catch_0
    move-exception v0

    .line 386
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    :goto_0
    return-void
.end method

.method private postOnBufferingStarOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 348
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 349
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$9;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$9;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_0
    goto :goto_0

    .line 363
    :catch_0
    move-exception p1

    .line 364
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :goto_0
    return-void
.end method

.method private postOnPlayCompletedOnMainThread()V
    .locals 2

    .line 459
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 460
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$14;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$14;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    :goto_0
    return-void
.end method

.method private postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    .locals 2

    .line 414
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 415
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$12;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 430
    :cond_0
    const/16 v0, 0x2a

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lccsancom/mbridge/msdk/foundation/same/report/d;->a(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 433
    goto :goto_0

    .line 431
    :catch_0
    move-exception p1

    .line 432
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    :goto_0
    return-void
.end method

.method private postOnPlayProgressMSOnMainThread(JJ)V
    .locals 8

    .line 326
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 327
    new-instance v7, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$8;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;JJ)V

    invoke-virtual {v0, v7}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 343
    :cond_0
    goto :goto_0

    .line 341
    :catch_0
    move-exception p1

    .line 342
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    :goto_0
    return-void
.end method

.method private postOnPlayProgressOnMainThread(II)V
    .locals 2

    .line 304
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 305
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;

    invoke-direct {v1, p0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$7;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;II)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :cond_0
    goto :goto_0

    .line 319
    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :goto_0
    return-void
.end method

.method private postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V
    .locals 2

    .line 438
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 439
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$13;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$13;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_0
    goto :goto_0

    .line 452
    :catch_0
    move-exception p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    :goto_0
    return-void
.end method

.method private postOnPlayStartOnMainThread(I)V
    .locals 2

    .line 392
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-eqz v0, :cond_0

    .line 393
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$11;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;I)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 409
    :cond_0
    goto :goto_0

    .line 407
    :catch_0
    move-exception p1

    .line 408
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    :goto_0
    return-void
.end method

.method private startBufferingTimer(Ljava/lang/String;)V
    .locals 4

    .line 208
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    if-nez v0, :cond_0

    .line 209
    return-void

    .line 212
    :cond_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    .line 214
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTimeoutTimer:Ljava/util/Timer;

    .line 215
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;

    invoke-direct {v1, p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$4;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;Ljava/lang/String;)V

    iget p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 227
    return-void
.end method

.method private startPlayProgressTimer()V
    .locals 2

    .line 180
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 181
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->playProgressMSRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    :goto_0
    return-void
.end method


# virtual methods
.method public closeSound()V
    .locals 2

    .line 672
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 673
    return-void

    .line 675
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 678
    goto :goto_0

    .line 676
    :catch_0
    move-exception v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    :goto_0
    return-void
.end method

.method public exoPlayerIsPlaying()Z
    .locals 2

    .line 760
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlaybackState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 761
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 760
    :goto_0
    return v0
.end method

.method public getCurPosition()I
    .locals 2

    .line 694
    iget-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    long-to-int v1, v0

    return v1
.end method

.method public hasPrepare()Z
    .locals 1

    .line 725
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    return v0
.end method

.method public initBufferIngParam(I)V
    .locals 0

    .line 230
    if-lez p1, :cond_0

    .line 231
    iput p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mBufferTime:I

    .line 233
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsNeedBufferingTimeout:Z

    .line 234
    return-void
.end method

.method public initParameter(Ljava/lang/String;ZZLccsanandroid/view/View;Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    .locals 3

    .line 562
    nop

    .line 564
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "MediaPlayer init error"

    if-eqz v1, :cond_0

    .line 565
    :try_start_1
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 566
    return v0

    .line 568
    :cond_0
    if-nez p4, :cond_1

    .line 569
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 570
    return v0

    .line 572
    :cond_1
    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    .line 573
    iput-boolean p3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    .line 574
    iput-object p4, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Lccsanandroid/view/View;

    .line 575
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    .line 576
    iput-object p5, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 577
    const/4 v0, 0x1

    .line 582
    goto :goto_0

    .line 578
    :catchall_0
    move-exception p1

    .line 579
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideoNativePlayer"

    invoke-static {p3, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    .line 581
    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 583
    :goto_0
    return v0
.end method

.method public isComplete()Z
    .locals 1

    .line 737
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    return v0
.end method

.method public isPlayIng()Z
    .locals 2

    .line 699
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 700
    const/4 v0, 0x1

    return v0

    .line 704
    :cond_0
    goto :goto_0

    .line 702
    :catch_0
    move-exception v0

    .line 703
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 745
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    return v0
.end method

.method public loadingViewIsVisible()Z
    .locals 2

    .line 750
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mLoadingView:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 751
    const/4 v0, 0x1

    return v0

    .line 755
    :cond_0
    goto :goto_0

    .line 753
    :catchall_0
    move-exception v0

    .line 754
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onCompletion()V
    .locals 2

    .line 238
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 240
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 241
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 242
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayCompletedOnMainThread()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    goto :goto_0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :goto_0
    return-void
.end method

.method public onError(ILjava/lang/String;)Z
    .locals 0

    .line 710
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 711
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 712
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z

    .line 713
    invoke-direct {p0, p2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 716
    goto :goto_0

    .line 714
    :catch_0
    move-exception p1

    .line 715
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onLoadingChanged(Z)V
    .locals 0

    .line 778
    return-void
.end method

.method public onPlaybackParametersChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;)V
    .locals 2

    .line 855
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackParametersChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/PlaybackParameters;->speed:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    return-void
.end method

.method public onPlayerError(Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;)V
    .locals 3

    .line 824
    nop

    .line 825
    if-eqz p1, :cond_0

    .line 826
    iget v0, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 837
    :pswitch_0
    nop

    .line 838
    const-string v0, "Play error, because have a UnexpectedException."

    goto :goto_1

    .line 833
    :pswitch_1
    nop

    .line 834
    const-string v0, "Play error, because have a RendererException."

    goto :goto_1

    .line 829
    :pswitch_2
    nop

    .line 830
    const-string v0, "Play error, because have a SourceException."

    goto :goto_1

    .line 844
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

    .line 845
    invoke-virtual {p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 848
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPlayerError : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoNativePlayer"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget p1, p1, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlaybackException;->type:I

    invoke-virtual {p0, p1, v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->onError(ILjava/lang/String;)Z

    .line 851
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

    .line 782
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPlaybackStateChanged : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    packed-switch p2, :pswitch_data_0

    goto :goto_0

    .line 805
    :pswitch_0
    const-string p1, "onPlaybackStateChanged : Ended : PLAY ENDED"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 807
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    goto :goto_0

    .line 797
    :pswitch_1
    const-string p1, "onPlaybackStateChanged : READY"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    .line 799
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 800
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    .line 801
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->onPrepared()V

    .line 802
    goto :goto_0

    .line 790
    :pswitch_2
    const-string p1, "onPlaybackStateChanged : Buffering"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsBuffering:Z

    .line 792
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 793
    const-string p1, "play buffering tiemout"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V

    .line 794
    goto :goto_0

    .line 786
    :pswitch_3
    const-string p1, "onPlaybackStateChanged : IDLE"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    nop

    .line 810
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
    .locals 2

    .line 865
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPositionDiscontinuity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    if-nez p1, :cond_0

    .line 867
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->onCompletion()V

    .line 869
    :cond_0
    return-void
.end method

.method public onPrepared()V
    .locals 2

    .line 250
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    if-eqz v0, :cond_0

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 252
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnBufferinEndOnMainThread()V

    .line 253
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    .line 255
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v1, :cond_0

    .line 256
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 261
    :cond_0
    goto :goto_0

    .line 259
    :catchall_0
    move-exception v0

    .line 260
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    :goto_0
    return-void
.end method

.method public onRepeatModeChanged(I)V
    .locals 0

    .line 815
    return-void
.end method

.method public onSeekProcessed()V
    .locals 0

    .line 861
    return-void
.end method

.method public onShuffleModeEnabledChanged(Z)V
    .locals 0

    .line 820
    return-void
.end method

.method public onTimelineChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Timeline;Ljava/lang/Object;I)V
    .locals 0

    .line 768
    return-void
.end method

.method public onTracksChanged(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/TrackGroupArray;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelectionArray;)V
    .locals 0

    .line 773
    return-void
.end method

.method public openSound()V
    .locals 2

    .line 684
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-nez v0, :cond_0

    .line 685
    return-void

    .line 687
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVolume(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 690
    goto :goto_0

    .line 688
    :catch_0
    move-exception v0

    .line 689
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :goto_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 479
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_0

    .line 480
    return-void

    .line 482
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 484
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 485
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    :cond_1
    goto :goto_0

    .line 487
    :catch_0
    move-exception v0

    .line 488
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :goto_0
    return-void
.end method

.method public play()V
    .locals 2

    .line 535
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 536
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    .line 537
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    :goto_0
    return-void
.end method

.method public play(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 2

    .line 78
    int-to-long v0, p3

    :try_start_0
    iput-wide v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mCurrentPosition:J

    .line 79
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 80
    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 81
    return-void

    .line 83
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 84
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 85
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 86
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 87
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 88
    :catch_0
    move-exception p1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    .line 91
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 92
    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 94
    :goto_0
    return-void
.end method

.method public play(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/view/Surface;)V
    .locals 1

    .line 98
    :try_start_0
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string p1, "play url is null"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 103
    iput-object p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 104
    const/4 p2, 0x0

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    .line 105
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z

    .line 106
    iput-object p3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Lccsanandroid/view/Surface;

    .line 107
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Lccsanandroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    goto :goto_0

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoNativePlayer"

    invoke-static {p2, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->releasePlayer()V

    .line 111
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 112
    const-string p1, "mediaplayer cannot play"

    invoke-direct {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 114
    :goto_0
    return-void
.end method

.method public releasePlayer()V
    .locals 3

    .line 655
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 656
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelBufferTimeoutTimer()V

    .line 657
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_0

    .line 658
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->stop()V

    .line 659
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->removeListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 660
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 662
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 666
    :cond_0
    goto :goto_0

    .line 664
    :catchall_0
    move-exception v0

    .line 665
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VideoNativePlayer"

    invoke-static {v2, v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 667
    :goto_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 668
    return-void
.end method

.method public setDataSource(Lccsanandroid/content/Context;)V
    .locals 6

    .line 588
    const-string v0, "VideoNativePlayer"

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_1

    .line 590
    :try_start_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 591
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    .line 593
    :cond_0
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    goto :goto_0

    .line 594
    :catchall_0
    move-exception v2

    .line 595
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsOpenSound:Z

    if-nez v2, :cond_2

    .line 600
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->closeSound()V

    .line 603
    :cond_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 604
    new-instance v2, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;

    invoke-direct {v2, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultRenderersFactory;-><init>(Lccsanandroid/content/Context;)V

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;

    invoke-direct {v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/DefaultTrackSelector;-><init>()V

    new-instance v4, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;

    invoke-direct {v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/DefaultLoadControl;-><init>()V

    invoke-static {v2, v3, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/ExoPlayerFactory;->newSimpleInstance(Lccsancom/mbridge/msdk/playercommon/exoplayer2/RenderersFactory;Lccsancom/mbridge/msdk/playercommon/exoplayer2/trackselection/TrackSelector;Lccsancom/mbridge/msdk/playercommon/exoplayer2/LoadControl;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    .line 607
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    .line 609
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const-string v4, "http"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "MBridge_ExoPlayer"

    if-nez v3, :cond_4

    :try_start_3
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    const-string v5, "https"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 614
    :cond_3
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;

    invoke-direct {v5, p1, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultDataSourceFactory;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    .line 616
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    goto :goto_2

    .line 610
    :cond_4
    :goto_1
    new-instance v3, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;

    new-instance v5, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;

    invoke-direct {v5, v4}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DefaultHttpDataSourceFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;-><init>(Lccsancom/mbridge/msdk/playercommon/exoplayer2/upstream/DataSource$Factory;)V

    .line 612
    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource$Factory;->createMediaSource(Lccsanandroid/net/Uri;)Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/ExtractorMediaSource;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    .line 619
    :goto_2
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-boolean v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsAllowLoopPlay:Z

    if-eqz v3, :cond_5

    const/4 v3, 0x2

    goto :goto_3

    :cond_5
    const/4 v3, 0x0

    :goto_3
    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setRepeatMode(I)V

    .line 620
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mediaSource:Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;

    invoke-virtual {v2, v3}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->prepare(Lccsancom/mbridge/msdk/playercommon/exoplayer2/source/MediaSource;)V

    .line 621
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, v1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setPlayWhenReady(Z)V

    .line 622
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2, p0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->addListener(Lccsancom/mbridge/msdk/playercommon/exoplayer2/Player$EventListener;)V

    .line 625
    :cond_6
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Lccsanandroid/view/Surface;

    if-eqz v2, :cond_7

    .line 626
    iget-object v3, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v3, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Lccsanandroid/view/Surface;)V

    .line 628
    :cond_7
    const-string v2, "mediaplayer prepare timeout"

    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->startBufferingTimer(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 646
    goto :goto_5

    .line 629
    :catch_0
    move-exception v2

    .line 630
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 632
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "set data source error"

    const-string v3, "mediaplayer cannot play"

    if-eqz v0, :cond_8

    .line 633
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 634
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    goto :goto_4

    .line 636
    :cond_8
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    if-nez v0, :cond_9

    .line 637
    iput-boolean v1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasChaoDi:Z

    .line 638
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mNetUrl:Ljava/lang/String;

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mPlayUrl:Ljava/lang/String;

    .line 639
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 640
    invoke-virtual {p0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->setDataSource(Lccsanandroid/content/Context;)V

    goto :goto_4

    .line 642
    :cond_9
    invoke-direct {p0, v3}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlayErrorOnMainThread(Ljava/lang/String;)V

    .line 645
    :goto_4
    invoke-direct {p0, v2}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->postOnPlaySetDataSourceError2MainThread(Ljava/lang/String;)V

    .line 647
    :goto_5
    return-void
.end method

.method public setIsComplete(Z)V
    .locals 0

    .line 741
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsComplete:Z

    .line 742
    return-void
.end method

.method public setIsFrontDesk(Z)V
    .locals 1

    .line 730
    :try_start_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsFrontDesk:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 733
    goto :goto_0

    .line 731
    :catch_0
    move-exception p1

    .line 732
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    :goto_0
    return-void
.end method

.method public setSelfVideoFeedsPlayerListener(Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    .line 650
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mInnerVFPLisener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 651
    return-void
.end method

.method public setVideoFeedsPlayerListener(Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)V
    .locals 0

    .line 721
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mOutterVFListener:Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;

    .line 722
    return-void
.end method

.method public showLoading()V
    .locals 2

    .line 266
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHandler:Lccsanandroid/os/Handler;

    if-nez v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    new-instance v1, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$5;

    invoke-direct {v1, p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer$5;-><init>(Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;)V

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    :goto_0
    return-void
.end method

.method public start()V
    .locals 1

    .line 509
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->start(Lccsanandroid/view/Surface;)V

    .line 510
    return-void
.end method

.method public start(I)V
    .locals 3

    .line 545
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_0

    .line 546
    return-void

    .line 548
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 549
    if-lez p1, :cond_1

    .line 550
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->seekTo(J)V

    .line 552
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    .line 553
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    .line 554
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    :cond_2
    goto :goto_0

    .line 556
    :catch_0
    move-exception p1

    .line 557
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    :goto_0
    return-void
.end method

.method public start(Lccsanandroid/view/Surface;)V
    .locals 1

    .line 514
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_0

    .line 515
    return-void

    .line 518
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    .line 519
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->showLoading()V

    .line 520
    if-eqz p1, :cond_1

    .line 521
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mSurfaceHolder:Lccsanandroid/view/Surface;

    .line 522
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->setVideoSurface(Lccsanandroid/view/Surface;)V

    .line 524
    :cond_1
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->play()V

    .line 525
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->startPlayProgressTimer()V

    .line 526
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 530
    :cond_2
    goto :goto_0

    .line 528
    :catch_0
    move-exception p1

    .line 529
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoNativePlayer"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 531
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 494
    :try_start_0
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mHasPrepare:Z

    if-nez v0, :cond_0

    .line 495
    return-void

    .line 497
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayerIsPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->hideLoading()V

    .line 499
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->exoPlayer:Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/exoplayer2/SimpleExoPlayer;->stop()V

    .line 500
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->cancelPlayProgressTimer()V

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/VideoNativePlayer;->mIsPlaying:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    :cond_1
    goto :goto_0

    .line 503
    :catch_0
    move-exception v0

    .line 504
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoNativePlayer"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    :goto_0
    return-void
.end method
