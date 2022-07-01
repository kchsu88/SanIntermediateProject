.class Lccsancom/applovin/impl/adview/p$27;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/p;->a(Lccsanandroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/p;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/p;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Lccsanandroid/media/MediaPlayer;)V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-static {v0, v1}, Lccsancom/applovin/impl/adview/p;->a(Lccsancom/applovin/impl/adview/p;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/p;->c(Lccsancom/applovin/impl/adview/p;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Lccsanandroid/media/MediaPlayer;->setVolume(FF)V

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getDuration()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-int v4, v3

    iput v4, v2, Lccsancom/applovin/impl/adview/p;->computedLengthSeconds:I

    iget-object v2, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    iget-object v2, v2, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v2, v0, v1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->setVideoSize(II)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/p;->videoView:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->getHolder()Lccsanandroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Lccsanandroid/view/SurfaceHolder;->getSurface()Lccsanandroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaPlayer;->setDisplay(Lccsanandroid/view/SurfaceHolder;)V

    :cond_0
    new-instance v0, Lccsancom/applovin/impl/adview/p$27$1;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/p$27$1;-><init>(Lccsancom/applovin/impl/adview/p$27;)V

    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaPlayer;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    new-instance v0, Lccsancom/applovin/impl/adview/p$27$2;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/adview/p$27$2;-><init>(Lccsancom/applovin/impl/adview/p$27;)V

    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaPlayer;->setOnInfoListener(Lccsanandroid/media/MediaPlayer$OnInfoListener;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->h(Lccsancom/applovin/impl/adview/p;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->i(Lccsancom/applovin/impl/adview/p;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->j(Lccsancom/applovin/impl/adview/p;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->k(Lccsancom/applovin/impl/adview/p;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->l(Lccsancom/applovin/impl/adview/p;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/p;->playVideo()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/p$27;->a:Lccsancom/applovin/impl/adview/p;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/p;->m(Lccsancom/applovin/impl/adview/p;)V

    :cond_1
    return-void
.end method
