.class public Lccsancom/vungle/warren/ui/view/LocalAdView;
.super Lccsancom/vungle/warren/ui/view/BaseAdView;
.source "LocalAdView.java"

# interfaces
.implements Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;
.implements Lccsanandroid/media/MediaPlayer$OnErrorListener;
.implements Lccsanandroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lccsancom/vungle/warren/ui/view/BaseAdView<",
        "Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;",
        ">;",
        "Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalView;",
        "Lccsanandroid/media/MediaPlayer$OnErrorListener;",
        "Lccsanandroid/media/MediaPlayer$OnPreparedListener;"
    }
.end annotation


# instance fields
.field private clickListener:Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

.field private ctaClickAreaEnabled:Z

.field private handler:Lccsanandroid/os/Handler;

.field private mediaPlayer:Lccsanandroid/media/MediaPlayer;

.field private muted:Z

.field private presenter:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

.field private reportProgress:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;)V
    .locals 2
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "view"    # Lccsancom/vungle/warren/ui/view/FullAdWidget;
    .param p3, "orientationDelegate"    # Lccsancom/vungle/warren/ui/OrientationDelegate;
    .param p4, "closeDelegate"    # Lccsancom/vungle/warren/ui/CloseDelegate;

    .line 53
    invoke-direct {p0, p1, p2, p3, p4}, Lccsancom/vungle/warren/ui/view/BaseAdView;-><init>(Lccsanandroid/content/Context;Lccsancom/vungle/warren/ui/view/FullAdWidget;Lccsancom/vungle/warren/ui/OrientationDelegate;Lccsancom/vungle/warren/ui/CloseDelegate;)V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    .line 36
    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->ctaClickAreaEnabled:Z

    .line 47
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->handler:Lccsanandroid/os/Handler;

    .line 124
    new-instance v0, Lccsancom/vungle/warren/ui/view/LocalAdView$1;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/ui/view/LocalAdView$1;-><init>(Lccsancom/vungle/warren/ui/view/LocalAdView;)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->clickListener:Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    .line 54
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->attachListeners()V

    .line 55
    return-void
.end method

.method static synthetic access$000(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 29
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->presenter:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lccsancom/vungle/warren/ui/view/LocalAdView;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 29
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->ctaClickAreaEnabled:Z

    return v0
.end method

.method static synthetic access$200(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsanandroid/media/MediaPlayer;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 29
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->mediaPlayer:Lccsanandroid/media/MediaPlayer;

    return-object v0
.end method

.method static synthetic access$300(Lccsancom/vungle/warren/ui/view/LocalAdView;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 29
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->muteAudio()V

    return-void
.end method

.method static synthetic access$400(Lccsancom/vungle/warren/ui/view/LocalAdView;)Z
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 29
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    return v0
.end method

.method static synthetic access$500(Lccsancom/vungle/warren/ui/view/LocalAdView;)Lccsanandroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 29
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->handler:Lccsanandroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lccsancom/vungle/warren/ui/view/LocalAdView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lccsancom/vungle/warren/ui/view/LocalAdView;

    .line 29
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->reportProgress:Ljava/lang/Runnable;

    return-object v0
.end method

.method private attachListeners()V
    .locals 2

    .line 59
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->clickListener:Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setOnItemClickListener(Lccsancom/vungle/warren/ui/view/FullAdWidget$OnItemClickListener;)V

    .line 60
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V

    .line 61
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    .line 62
    return-void
.end method

.method private muteAudio()V
    .locals 1

    .line 159
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->mediaPlayer:Lccsanandroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 160
    return-void

    .line 162
    :cond_0
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    .line 163
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->switchMuteState()V

    .line 164
    return-void
.end method

.method private setupPlayerProgressBar()V
    .locals 2

    .line 180
    new-instance v0, Lccsancom/vungle/warren/ui/view/LocalAdView$2;

    invoke-direct {v0, p0}, Lccsancom/vungle/warren/ui/view/LocalAdView$2;-><init>(Lccsancom/vungle/warren/ui/view/LocalAdView;)V

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->reportProgress:Ljava/lang/Runnable;

    .line 218
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 219
    return-void
.end method

.method private switchMuteState()V
    .locals 3

    .line 167
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->mediaPlayer:Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 169
    :try_start_0
    iget-boolean v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 170
    .local v1, "volume":F
    :goto_0
    invoke-virtual {v0, v1, v1}, Lccsanandroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .end local v1    # "volume":F
    goto :goto_1

    .line 171
    :catch_0
    move-exception v0

    .line 172
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->TAG:Ljava/lang/String;

    const-string v2, "Exception On Mute/Unmute"

    invoke-static {v1, v2, v0}, Lccsanandroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 175
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .line 298
    invoke-super {p0}, Lccsancom/vungle/warren/ui/view/BaseAdView;->close()V

    .line 299
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->handler:Lccsanandroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 300
    return-void
.end method

.method public getVideoPosition()I
    .locals 1

    .line 105
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->getCurrentVideoPosition()I

    move-result v0

    return v0
.end method

.method public isVideoPlaying()Z
    .locals 1

    .line 100
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->isVideoPlaying()Z

    move-result v0

    return v0
.end method

.method public onError(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mediaPlayer"    # Lccsanandroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 225
    .local v0, "description":Ljava/lang/StringBuilder;
    sparse-switch p2, :sswitch_data_0

    .line 235
    const-string v1, "UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 227
    :sswitch_0
    const-string v1, "MEDIA_ERROR_SERVER_DIED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    goto :goto_0

    .line 231
    :sswitch_1
    const-string v1, "MEDIA_ERROR_UNKNOWN"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    nop

    .line 239
    :goto_0
    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 240
    sparse-switch p3, :sswitch_data_1

    .line 262
    const-string v1, "MEDIA_ERROR_SYSTEM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 250
    :sswitch_2
    const-string v1, "MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 251
    goto :goto_1

    .line 258
    :sswitch_3
    const-string v1, "MEDIA_ERROR_TIMED_OUT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    goto :goto_1

    .line 242
    :sswitch_4
    const-string v1, "MEDIA_ERROR_IO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    goto :goto_1

    .line 246
    :sswitch_5
    const-string v1, "MEDIA_ERROR_MALFORMED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    goto :goto_1

    .line 254
    :sswitch_6
    const-string v1, "MEDIA_ERROR_UNSUPPORTED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    nop

    .line 268
    :goto_1
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->presenter:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMediaError(Ljava/lang/String;)Z

    .line 269
    const/4 v1, 0x1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x64 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x3f2 -> :sswitch_6
        -0x3ef -> :sswitch_5
        -0x3ec -> :sswitch_4
        -0x6e -> :sswitch_3
        0xc8 -> :sswitch_2
    .end sparse-switch
.end method

.method public onPrepared(Lccsanandroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "mp"    # Lccsanandroid/media/MediaPlayer;

    .line 274
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->mediaPlayer:Lccsanandroid/media/MediaPlayer;

    .line 276
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->switchMuteState()V

    .line 278
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    new-instance v1, Lccsancom/vungle/warren/ui/view/LocalAdView$3;

    invoke-direct {v1, p0}, Lccsancom/vungle/warren/ui/view/LocalAdView$3;-><init>(Lccsancom/vungle/warren/ui/view/LocalAdView;)V

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V

    .line 291
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->presenter:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    invoke-virtual {p0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->getVideoPosition()I

    move-result v1

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getDuration()I

    move-result v2

    int-to-float v2, v2

    invoke-interface {v0, v1, v2}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onVideoStart(IF)V

    .line 293
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->setupPlayerProgressBar()V

    .line 294
    return-void
.end method

.method public pauseVideo()V
    .locals 2

    .line 92
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->pausePlayback()V

    .line 93
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->reportProgress:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 94
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->handler:Lccsanandroid/os/Handler;

    invoke-virtual {v1, v0}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    :cond_0
    return-void
.end method

.method public playVideo(Ljava/io/File;ZI)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;
    .param p2, "startMuted"    # Z
    .param p3, "videoPosition"    # I

    .line 75
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    if-nez v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    .line 77
    if-eqz p1, :cond_2

    .line 78
    invoke-direct {p0}, Lccsancom/vungle/warren/ui/view/LocalAdView;->setupPlayerProgressBar()V

    .line 79
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-static {p1}, Lccsanandroid/net/Uri;->fromFile(Ljava/io/File;)Lccsanandroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, p3}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->playVideo(Lccsanandroid/net/Uri;I)V

    .line 80
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    iget-boolean v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setMuted(Z)V

    .line 82
    iget-boolean v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->muted:Z

    if-eqz v0, :cond_2

    .line 84
    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->presenter:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    invoke-interface {v1, v0}, Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;->onMute(Z)V

    .line 88
    :cond_2
    return-void
.end method

.method public bridge synthetic setPresenter(Lccsancom/vungle/warren/ui/contract/AdContract$AdvertisementPresenter;)V
    .locals 0

    .line 29
    check-cast p1, Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    invoke-virtual {p0, p1}, Lccsancom/vungle/warren/ui/view/LocalAdView;->setPresenter(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V

    return-void
.end method

.method public setPresenter(Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;)V
    .locals 0
    .param p1, "presenter"    # Lccsancom/vungle/warren/ui/presenter/LocalAdPresenter;

    .line 110
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->presenter:Lccsancom/vungle/warren/ui/contract/LocalAdContract$LocalPresenter;

    .line 111
    return-void
.end method

.method public showCTAOverlay(ZZ)V
    .locals 2
    .param p1, "ctaOverlayEnabled"    # Z
    .param p2, "ctaClickAreaEnabled"    # Z

    .line 66
    iput-boolean p2, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->ctaClickAreaEnabled:Z

    .line 70
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->setCtaEnabled(Z)V

    .line 71
    return-void
.end method

.method public showWebsite(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .line 115
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->stopPlayback()V

    .line 116
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->view:Lccsancom/vungle/warren/ui/view/FullAdWidget;

    invoke-virtual {v0, p1}, Lccsancom/vungle/warren/ui/view/FullAdWidget;->showWebsite(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->handler:Lccsanandroid/os/Handler;

    iget-object v1, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->reportProgress:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lccsanandroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 120
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/vungle/warren/ui/view/LocalAdView;->mediaPlayer:Lccsanandroid/media/MediaPlayer;

    .line 121
    return-void
.end method
