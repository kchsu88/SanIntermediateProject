.class Lccsancom/applovin/impl/adview/activity/b/e$b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;
.implements Lccsancom/google/android/exoplayer2/Player$EventListener;
.implements Lccsancom/google/android/exoplayer2/ui/PlayerControlView$VisibilityListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/activity/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/e;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/activity/b/e;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/activity/b/e;Lccsancom/applovin/impl/adview/activity/b/e$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/b/e$b;-><init>(Lccsancom/applovin/impl/adview/activity/b/e;)V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;Lccsanandroid/graphics/PointF;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/adview/activity/b/e;->a(Lccsanandroid/graphics/PointF;)V

    return-void
.end method

.method public onPlaybackStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/e;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Player state changed to state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " and will play when ready: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object v2, v2, Lccsancom/applovin/impl/adview/activity/b/e;->s:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->getPlayWhenReady()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InterActivityV2"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->c(Lccsancom/applovin/impl/adview/activity/b/e;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->c(Lccsancom/applovin/impl/adview/activity/b/e;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/a;->a()V

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->g()V

    goto/16 :goto_0

    :cond_1
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-boolean p1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->u:Z

    xor-int/2addr p1, v1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object v0, v0, Lccsancom/applovin/impl/adview/activity/b/e;->s:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->setVolume(F)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object v0, p1, Lccsancom/applovin/impl/adview/activity/b/e;->s:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/SimpleExoPlayer;->getDuration()J

    move-result-wide v0

    iput-wide v0, p1, Lccsancom/applovin/impl/adview/activity/b/e;->v:J

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->s()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object v1, v1, Lccsancom/applovin/impl/adview/activity/b/e;->s:Lccsancom/google/android/exoplayer2/SimpleExoPlayer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->t:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/k;->a()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->d(Lccsancom/applovin/impl/adview/activity/b/e;)Lccsancom/applovin/impl/adview/n;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->y()V

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->c(Lccsancom/applovin/impl/adview/activity/b/e;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->c(Lccsancom/applovin/impl/adview/activity/b/e;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/a;->b()V

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->o:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/b/b;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->c()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "Video completed"

    invoke-virtual {p1, v2, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iput-boolean v1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->y:Z

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->w()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onPlayerError(Lccsancom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Video view error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/adview/activity/b/e;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/e;->g()V

    return-void
.end method

.method public onVisibilityChange(I)V
    .locals 0

    if-nez p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/e$b;->a:Lccsancom/applovin/impl/adview/activity/b/e;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/e;->r:Lccsancom/google/android/exoplayer2/ui/PlayerView;

    invoke-virtual {p1}, Lccsancom/google/android/exoplayer2/ui/PlayerView;->hideController()V

    :cond_0
    return-void
.end method
