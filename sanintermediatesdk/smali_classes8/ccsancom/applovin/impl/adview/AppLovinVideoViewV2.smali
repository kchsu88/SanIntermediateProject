.class public Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;
.super Lccsanandroid/view/SurfaceView;

# interfaces
.implements Lccsanandroid/widget/MediaController$MediaPlayerControl;


# instance fields
.field private final A:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

.field private final B:Lccsanandroid/media/MediaPlayer$OnInfoListener;

.field private final C:Lccsanandroid/media/MediaPlayer$OnErrorListener;

.field private final D:Lccsanandroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private final E:Lccsanandroid/media/MediaPlayer$OnSeekCompleteListener;

.field private final a:Lccsancom/applovin/impl/sdk/r;

.field private final b:Lccsancom/applovin/impl/sdk/a/g$d;

.field private final c:Lccsancom/applovin/impl/sdk/k;

.field private d:Lccsanandroid/net/Uri;

.field private e:I

.field private f:I

.field private g:Lccsanandroid/view/SurfaceHolder;

.field private h:Lccsanandroid/media/MediaPlayer;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

.field private o:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

.field private p:I

.field private q:Lccsanandroid/media/MediaPlayer$OnErrorListener;

.field private r:Lccsanandroid/media/MediaPlayer$OnInfoListener;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Lccsanandroid/media/AudioManager;

.field private x:I

.field private final y:Lccsanandroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private final z:Lccsanandroid/media/MediaPlayer$OnPreparedListener;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/g$d;Lccsanandroid/content/Context;Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0, p2}, Lccsanandroid/view/SurfaceView;-><init>(Lccsanandroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->g:Lccsanandroid/view/SurfaceHolder;

    iput-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    const/4 v1, 0x1

    iput v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->x:I

    new-instance v2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->y:Lccsanandroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance v2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$4;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$4;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->z:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    new-instance v2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$5;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$5;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->A:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    new-instance v2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$6;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$6;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->B:Lccsanandroid/media/MediaPlayer$OnInfoListener;

    new-instance v2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->C:Lccsanandroid/media/MediaPlayer$OnErrorListener;

    new-instance v2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$8;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$8;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->D:Lccsanandroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance v2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$9;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$9;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    iput-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->E:Lccsanandroid/media/MediaPlayer$OnSeekCompleteListener;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b:Lccsancom/applovin/impl/sdk/a/g$d;

    invoke-virtual {p3}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    iput-object p3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->c:Lccsancom/applovin/impl/sdk/k;

    const-string p1, "audio"

    invoke-virtual {p2, p1}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/media/AudioManager;

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->w:Lccsanandroid/media/AudioManager;

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->getHolder()Lccsanandroid/view/SurfaceHolder;

    move-result-object p1

    new-instance p2, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;

    invoke-direct {p2, p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    invoke-interface {p1, p2}, Lccsanandroid/view/SurfaceHolder;->addCallback(Lccsanandroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->requestFocus()Z

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->l:I

    return p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Lccsanandroid/view/SurfaceHolder;)Lccsanandroid/view/SurfaceHolder;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->g:Lccsanandroid/view/SurfaceHolder;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsancom/applovin/impl/sdk/r;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    return-object p0
.end method

.method private a()V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Opening video"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->d:Lccsanandroid/net/Uri;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->g:Lccsanandroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "Using existing MediaPlayer"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->start()V

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v2, 0x1

    :try_start_0
    new-instance v3, Lccsanandroid/media/MediaPlayer;

    invoke-direct {v3}, Lccsanandroid/media/MediaPlayer;-><init>()V

    iput-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    if-eqz v4, :cond_2

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lccsanandroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v3

    iput v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    :goto_0
    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->z:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->y:Lccsanandroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Lccsanandroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->A:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->C:Lccsanandroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->B:Lccsanandroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setOnInfoListener(Lccsanandroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->D:Lccsanandroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setOnBufferingUpdateListener(Lccsanandroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->E:Lccsanandroid/media/MediaPlayer$OnSeekCompleteListener;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setOnSeekCompleteListener(Lccsanandroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->p:I

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->getContext()Lccsanandroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->d:Lccsanandroid/net/Uri;

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v5, v6}, Lccsanandroid/media/MediaPlayer;->setDataSource(Lccsanandroid/content/Context;Lccsanandroid/net/Uri;Ljava/util/Map;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->g:Lccsanandroid/view/SurfaceHolder;

    invoke-virtual {v3, v4}, Lccsanandroid/media/MediaPlayer;->setDisplay(Lccsanandroid/view/SurfaceHolder;)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v3, v2}, Lccsanandroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v3}, Lccsanandroid/media/MediaPlayer;->prepareAsync()V

    iput v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to open video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->d:Lccsanandroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v3}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, -0x1

    iput v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    iput v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    iget-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->C:Lccsanandroid/media/MediaPlayer$OnErrorListener;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-interface {v1, v3, v2, v0}, Lccsanandroid/media/MediaPlayer$OnErrorListener;->onError(Lccsanandroid/media/MediaPlayer;II)Z

    :cond_3
    :goto_1
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->t:Z

    return p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->m:I

    return p1
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    return-object p0
.end method

.method private b()Z
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static synthetic b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->u:Z

    return p1
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    return p1
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a()V

    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Z)Z
    .locals 0

    iput-boolean p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->v:Z

    return p1
.end method

.method static synthetic d(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .locals 0

    iget p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    return p0
.end method

.method static synthetic d(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    return p1
.end method

.method static synthetic e(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .locals 0

    iget p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    return p0
.end method

.method static synthetic e(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    return p1
.end method

.method static synthetic f(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .locals 0

    iget p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    return p0
.end method

.method static synthetic f(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    return p1
.end method

.method static synthetic g(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .locals 0

    iget p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->s:I

    return p0
.end method

.method static synthetic g(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I
    .locals 0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->p:I

    return p1
.end method

.method static synthetic h(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->o:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method static synthetic i(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .locals 0

    iget p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->l:I

    return p0
.end method

.method static synthetic j(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .locals 0

    iget p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->m:I

    return p0
.end method

.method static synthetic k(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->n:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method static synthetic l(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I
    .locals 0

    iget p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->x:I

    return p0
.end method

.method static synthetic m(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/AudioManager;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->w:Lccsanandroid/media/AudioManager;

    return-object p0
.end method

.method static synthetic n(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->r:Lccsanandroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic o(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->q:Lccsanandroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method


# virtual methods
.method public canPause()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->t:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->u:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->v:Z

    return v0
.end method

.method public getAudioSessionId()I
    .locals 2

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    if-nez v0, :cond_0

    new-instance v0, Lccsanandroid/media/MediaPlayer;

    invoke-direct {v0}, Lccsanandroid/media/MediaPlayer;-><init>()V

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->release()V

    :cond_0
    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->i:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->p:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getDuration()I
    .locals 1

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->getDuration()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public isPlaying()Z
    .locals 1

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onMeasure(II)V
    .locals 8

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    invoke-static {v0, p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    invoke-static {v1, p2}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    if-lez v2, :cond_6

    iget v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    if-lez v2, :cond_6

    invoke-static {p1}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Lccsanandroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    iget v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    mul-int v3, v2, v1

    iget v4, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    mul-int v5, v0, v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ge v3, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    mul-int v2, v2, v1

    mul-int v4, v4, v0

    if-le v2, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    iget-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b:Lccsancom/applovin/impl/sdk/a/g$d;

    sget-object v4, Lccsancom/applovin/impl/sdk/a/g$d;->a:Lccsancom/applovin/impl/sdk/a/g$d;

    if-ne v2, v4, :cond_3

    if-eqz v3, :cond_2

    iget p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    mul-int p1, p1, p2

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    div-int v0, p1, v0

    goto :goto_3

    :cond_2
    if-eqz v6, :cond_5

    iget p2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    mul-int p2, p2, p1

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    div-int v1, p2, v0

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b:Lccsancom/applovin/impl/sdk/a/g$d;

    sget-object v4, Lccsancom/applovin/impl/sdk/a/g$d;->b:Lccsancom/applovin/impl/sdk/a/g$d;

    if-ne v2, v4, :cond_6

    if-eqz v3, :cond_4

    int-to-float p2, p1

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    int-to-float v0, v0

    div-float/2addr p2, v0

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    int-to-float v0, v0

    mul-float v0, v0, p2

    float-to-int v1, v0

    :goto_2
    move v0, p1

    goto :goto_4

    :cond_4
    if-eqz v6, :cond_5

    int-to-float p1, p2

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->k:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->j:I

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    goto :goto_3

    :cond_5
    move v0, p1

    :goto_3
    move v1, p2

    :cond_6
    :goto_4
    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->setMeasuredDimension(II)V

    return-void
.end method

.method public pause()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Pausing video"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->pause()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    return-void
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Resuming video"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a()V

    return-void
.end method

.method public seekAndStart(J)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking and starting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVideoView"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Lccsanandroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string p2, "Media player unavailable"

    invoke-virtual {p1, v2, p2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public seekTo(I)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Seeking to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVideoView"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "Seek delayed"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->s:I

    return-void
.end method

.method public setOnCompletionListener(Lccsanandroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->n:Lccsanandroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->q:Lccsanandroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public setOnInfoListener(Lccsanandroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->r:Lccsanandroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public setOnPreparedListener(Lccsanandroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->o:Lccsanandroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public setVideoURI(Lccsanandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting video uri: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AppLovinVideoView"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->d:Lccsanandroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->s:I

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->requestLayout()V

    invoke-virtual {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->invalidate()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Starting video"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->start()V

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    return-void
.end method

.method public stopPlayback()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a:Lccsancom/applovin/impl/sdk/r;

    const-string v1, "AppLovinVideoView"

    const-string v2, "Stopping playback"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->h:Lccsanandroid/media/MediaPlayer;

    const/4 v2, 0x0

    iput v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e:I

    iput v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f:I

    iget-object v2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->w:Lccsanandroid/media/AudioManager;

    invoke-virtual {v2, v1}, Lccsanandroid/media/AudioManager;->abandonAudioFocus(Lccsanandroid/media/AudioManager$OnAudioFocusChangeListener;)I

    iget-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->c:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->eI:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->c:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/sdk/e/y;

    iget-object v3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->c:Lccsancom/applovin/impl/sdk/k;

    new-instance v4, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$2;

    invoke-direct {v4, p0, v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$2;-><init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Lccsanandroid/media/MediaPlayer;)V

    invoke-direct {v2, v3, v4}, Lccsancom/applovin/impl/sdk/e/y;-><init>(Lccsancom/applovin/impl/sdk/k;Ljava/lang/Runnable;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/e/o$a;->c:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v1, v2, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsanandroid/media/MediaPlayer;->release()V

    :cond_1
    :goto_0
    return-void
.end method
