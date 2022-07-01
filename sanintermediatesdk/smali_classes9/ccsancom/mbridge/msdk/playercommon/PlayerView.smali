.class public Lccsancom/mbridge/msdk/playercommon/PlayerView;
.super Lccsanandroid/widget/LinearLayout;
.source "PlayerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "PlayerView"


# instance fields
.field private isBTVideo:Z

.field private isBTVideoPlaying:Z

.field private mInitState:Z

.field private mIsCovered:Z

.field private mIsFirstCreateHolder:Z

.field private mIsNeedToRepeatPrepare:Z

.field private mIsSurfaceHolderDestoryed:Z

.field private mLlSurContainer:Lccsanandroid/widget/LinearLayout;

.field private mLoadingView:Lccsanandroid/widget/LinearLayout;

.field private mPlayUrl:Ljava/lang/String;

.field private mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

.field private mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 25
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mInitState:Z

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsFirstCreateHolder:Z

    .line 28
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    .line 29
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsCovered:Z

    .line 30
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    .line 32
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideo:Z

    .line 33
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideoPlaying:Z

    .line 39
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/LinearLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 25
    const/4 p1, 0x0

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mInitState:Z

    .line 27
    const/4 p2, 0x1

    iput-boolean p2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsFirstCreateHolder:Z

    .line 28
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    .line 29
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsCovered:Z

    .line 30
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    .line 32
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideo:Z

    .line 33
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideoPlaying:Z

    .line 44
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$100(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;
    .locals 0

    .line 15
    iget-object p0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    return-object p0
.end method

.method static synthetic access$202(Lccsancom/mbridge/msdk/playercommon/PlayerView;Lccsanandroid/view/SurfaceHolder;)Lccsanandroid/view/SurfaceHolder;
    .locals 0

    .line 15
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic access$302(Lccsancom/mbridge/msdk/playercommon/PlayerView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsFirstCreateHolder:Z

    return p1
.end method

.method static synthetic access$400(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    return p0
.end method

.method static synthetic access$402(Lccsancom/mbridge/msdk/playercommon/PlayerView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    return p1
.end method

.method static synthetic access$502(Lccsancom/mbridge/msdk/playercommon/PlayerView;Z)Z
    .locals 0

    .line 15
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    return p1
.end method

.method static synthetic access$600(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsCovered:Z

    return p0
.end method

.method static synthetic access$700(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideo:Z

    return p0
.end method

.method static synthetic access$800(Lccsancom/mbridge/msdk/playercommon/PlayerView;)Z
    .locals 0

    .line 15
    iget-boolean p0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideoPlaying:Z

    return p0
.end method

.method private init()V
    .locals 2

    .line 57
    :try_start_0
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->initView()V

    .line 58
    invoke-direct {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->initPlayer()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 59
    :catch_0
    move-exception v0

    .line 60
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_0
    return-void
.end method

.method private initPlayer()V
    .locals 1

    .line 65
    new-instance v0, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    .line 66
    return-void
.end method

.method private initView()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "mbridge_playercommon_player_view"

    const-string v2, "layout"

    invoke-static {v0, v1, v2}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 94
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_playercommon_ll_sur_container"

    const-string v3, "id"

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mLlSurContainer:Lccsanandroid/widget/LinearLayout;

    .line 97
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "mbridge_playercommon_ll_loading"

    invoke-static {v1, v2, v3}, Lccsancom/mbridge/msdk/foundation/tools/k;->a(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/LinearLayout;

    iput-object v1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mLoadingView:Lccsanandroid/widget/LinearLayout;

    .line 99
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->addSurfaceView()V

    .line 100
    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->addView(Lccsanandroid/view/View;II)V

    .line 102
    :cond_0
    return-void
.end method


# virtual methods
.method public addSurfaceView()V
    .locals 5

    .line 70
    const-string v0, "PlayerView"

    :try_start_0
    const-string v1, "addSurfaceView"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v1, Lccsanandroid/view/SurfaceView;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/view/SurfaceView;-><init>(Lccsanandroid/content/Context;)V

    .line 72
    invoke-virtual {v1}, Lccsanandroid/view/SurfaceView;->getHolder()Lccsanandroid/view/SurfaceHolder;

    move-result-object v2

    iput-object v2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

    .line 73
    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lccsanandroid/view/SurfaceHolder;->setType(I)V

    .line 74
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lccsanandroid/view/SurfaceHolder;->setKeepScreenOn(Z)V

    .line 75
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

    new-instance v3, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lccsancom/mbridge/msdk/playercommon/PlayerView$MySurfaceHoldeCallback;-><init>(Lccsancom/mbridge/msdk/playercommon/PlayerView;Lccsancom/mbridge/msdk/playercommon/PlayerView$1;)V

    invoke-interface {v2, v3}, Lccsanandroid/view/SurfaceHolder;->addCallback(Lccsanandroid/view/SurfaceHolder$Callback;)V

    .line 76
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mLlSurContainer:Lccsanandroid/widget/LinearLayout;

    const/4 v3, -0x1

    invoke-virtual {v2, v1, v3, v3}, Lccsanandroid/widget/LinearLayout;->addView(Lccsanandroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 77
    :catch_0
    move-exception v1

    .line 78
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    :goto_0
    return-void
.end method

.method public closeSound()V
    .locals 1

    .line 248
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->closeSound()V

    .line 251
    :cond_0
    return-void
.end method

.method public coverUnlockResume()V
    .locals 2

    .line 274
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V

    .line 275
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_2

    .line 276
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    invoke-virtual {p0, v1}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->start(Z)V

    goto :goto_1

    .line 277
    :cond_1
    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    :cond_2
    :goto_1
    goto :goto_2

    .line 282
    :catchall_0
    move-exception v0

    .line 283
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_2
    return-void
.end method

.method public getCurPosition()I
    .locals 3

    .line 303
    nop

    .line 305
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v1, :cond_0

    .line 306
    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->getCurPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    :cond_0
    goto :goto_0

    .line 308
    :catch_0
    move-exception v1

    .line 309
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerView"

    invoke-static {v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 1

    .line 315
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 316
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->getDuration()I

    move-result v0

    return v0

    .line 318
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public initBufferIngParam(I)V
    .locals 1

    .line 385
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->initBufferIngParam(I)V

    .line 388
    :cond_0
    return-void
.end method

.method public initVFPData(Ljava/lang/String;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z
    .locals 2

    .line 105
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 106
    const/4 p1, 0x0

    return p1

    .line 109
    :cond_0
    iput-object p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mPlayUrl:Ljava/lang/String;

    .line 111
    iget-object p2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mLoadingView:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {p2, v0, v1, p1, p3}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->initPlayer(Lccsanandroid/content/Context;Lccsanandroid/view/View;Ljava/lang/String;Lccsancom/mbridge/msdk/playercommon/VideoPlayerStatusListener;)Z

    .line 113
    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mInitState:Z

    .line 114
    return p1
.end method

.method public isComplete()Z
    .locals 4

    .line 377
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isComplete()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    .line 378
    :catchall_0
    move-exception v1

    .line 379
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayerView"

    invoke-static {v3, v2, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    return v0
.end method

.method public isPlayIng()Z
    .locals 2

    .line 392
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 393
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isPlayIng()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 397
    :cond_0
    goto :goto_0

    .line 395
    :catchall_0
    move-exception v0

    .line 396
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSilent()Z
    .locals 1

    .line 410
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->isSilent()Z

    move-result v0

    return v0
.end method

.method public justSeekTo(I)V
    .locals 1

    .line 213
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 214
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->justSeekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_0
    goto :goto_0

    .line 216
    :catch_0
    move-exception p1

    .line 217
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 141
    :try_start_0
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->pause()V

    .line 142
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 143
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :cond_0
    goto :goto_0

    .line 145
    :catch_0
    move-exception v0

    .line 146
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 259
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V

    .line 260
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsFirstCreateHolder:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsSurfaceHolderDestoryed:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isComplete()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->hasPrepare()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->resumeStart()V

    goto :goto_0

    .line 264
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    :cond_1
    :goto_0
    goto :goto_1

    .line 267
    :catch_0
    move-exception v0

    .line 268
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :goto_1
    return-void
.end method

.method public openSound()V
    .locals 1

    .line 242
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 243
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->openSound()V

    .line 245
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 2

    .line 152
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    :cond_0
    goto :goto_0

    .line 155
    :catch_0
    move-exception v0

    .line 156
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    :goto_0
    return-void
.end method

.method public playVideo()Z
    .locals 1

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->playVideo(I)Z

    move-result v0

    return v0
.end method

.method public playVideo(I)Z
    .locals 3

    .line 119
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-nez v1, :cond_0

    .line 120
    return v0

    .line 122
    :cond_0
    iget-boolean v2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mInitState:Z

    if-nez v2, :cond_1

    .line 123
    return v0

    .line 126
    :cond_1
    iget-object v2, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mPlayUrl:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->play(Ljava/lang/String;I)V

    .line 127
    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 128
    const/4 p1, 0x1

    return p1

    .line 129
    :catchall_0
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PlayerView"

    invoke-static {v2, v1, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    return v0
.end method

.method public prepare()V
    .locals 2

    .line 192
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :cond_0
    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 289
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 290
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->releasePlayer()V

    .line 293
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mSurfaceHolder:Lccsanandroid/view/SurfaceHolder;

    if-eqz v0, :cond_1

    .line 294
    invoke-interface {v0}, Lccsanandroid/view/SurfaceHolder;->getSurface()Lccsanandroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/view/Surface;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 298
    :cond_1
    goto :goto_0

    .line 296
    :catchall_0
    move-exception v0

    .line 297
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    :goto_0
    return-void
.end method

.method public removeSurface()V
    .locals 2

    .line 84
    const-string v0, "PlayerView"

    :try_start_0
    const-string v1, "removeSurface"

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    iget-object v1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mLlSurContainer:Lccsanandroid/widget/LinearLayout;

    invoke-virtual {v1}, Lccsanandroid/widget/LinearLayout;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    goto :goto_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    :goto_0
    return-void
.end method

.method public resumeStart()V
    .locals 2

    .line 162
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/playercommon/PlayerView;->start(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 223
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 224
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 228
    :cond_0
    goto :goto_0

    .line 226
    :catch_0
    move-exception p1

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :goto_0
    return-void
.end method

.method public setDataSource()V
    .locals 2

    .line 170
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->showLoading()V

    .line 172
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setDataSource()V

    .line 173
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsNeedToRepeatPrepare:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    goto :goto_0

    .line 175
    :catch_0
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    :goto_0
    return-void
.end method

.method public setDesk(Z)V
    .locals 1

    .line 254
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setIsFrontDesk(Z)V

    .line 255
    return-void
.end method

.method public setIsBTVideo(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideo:Z

    .line 49
    return-void
.end method

.method public setIsBTVideoPlaying(Z)V
    .locals 0

    .line 52
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->isBTVideoPlaying:Z

    .line 53
    return-void
.end method

.method public setIsCovered(Z)V
    .locals 1

    .line 403
    :try_start_0
    iput-boolean p1, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mIsCovered:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 404
    :catch_0
    move-exception p1

    .line 405
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void
.end method

.method public setPlaybackParams(F)V
    .locals 1

    .line 420
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 421
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setPlaybackParams(F)V

    .line 423
    :cond_0
    return-void
.end method

.method public setVolume(FF)V
    .locals 1

    .line 414
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->setVolume(FF)V

    .line 417
    :cond_0
    return-void
.end method

.method public start(I)V
    .locals 1

    .line 203
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->start(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    goto :goto_0

    .line 206
    :catch_0
    move-exception p1

    .line 207
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :goto_0
    return-void
.end method

.method public start(Z)V
    .locals 1

    .line 182
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->start(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_0
    goto :goto_0

    .line 185
    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PlayerView"

    invoke-static {v0, p1}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 233
    :try_start_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/playercommon/PlayerView;->mVideoFeedsPlayer:Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lccsancom/mbridge/msdk/playercommon/VideoFeedsPlayer;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :cond_0
    goto :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PlayerView"

    invoke-static {v1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    :goto_0
    return-void
.end method
