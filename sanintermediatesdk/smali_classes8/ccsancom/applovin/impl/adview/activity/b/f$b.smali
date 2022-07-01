.class Lccsancom/applovin/impl/adview/activity/b/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnCompletionListener;
.implements Lccsanandroid/media/MediaPlayer$OnErrorListener;
.implements Lccsanandroid/media/MediaPlayer$OnInfoListener;
.implements Lccsanandroid/media/MediaPlayer$OnPreparedListener;
.implements Lccsancom/applovin/impl/adview/AppLovinTouchToClickListener$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/activity/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/activity/b/f;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/adview/activity/b/f;Lccsancom/applovin/impl/adview/activity/b/f$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/adview/activity/b/f$b;-><init>(Lccsancom/applovin/impl/adview/activity/b/f;)V

    return-void
.end method


# virtual methods
.method public onClick(Lccsanandroid/view/View;Lccsanandroid/graphics/PointF;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsanandroid/graphics/PointF;)V

    return-void
.end method

.method public onCompletion(Lccsanandroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    const-string v0, "InterActivityV2"

    const-string v1, "Video completed"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsancom/applovin/impl/adview/activity/b/f;Z)Z

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->w()V

    return-void
.end method

.method public onError(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Video view error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ","

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/adview/activity/b/f;->c(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->r:Lccsancom/applovin/impl/adview/AppLovinVideoView;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoView;->start()V

    const/4 p1, 0x1

    return p1
.end method

.method public onInfo(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer Info: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "InterActivityV2"

    invoke-virtual {p1, v0, p3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2bd

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/a;->a()V

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->e:Lccsancom/applovin/impl/sdk/d/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/d;->g()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->s:Lccsancom/applovin/impl/adview/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/k;->a()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->h(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/n;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->b(Lccsancom/applovin/impl/adview/activity/b/f;)V

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/a;->b()V

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->o:Lccsancom/applovin/impl/sdk/b/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/b/b;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->c()V

    goto :goto_0

    :cond_4
    const/16 p1, 0x2be

    if-ne p2, p1, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->e(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/a;->b()V

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Lccsanandroid/media/MediaPlayer;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/adview/activity/b/f;->a(Lccsancom/applovin/impl/adview/activity/b/f;Lccsanandroid/media/MediaPlayer;)Lccsanandroid/media/MediaPlayer;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->f(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/activity/b/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaPlayer;->setOnInfoListener(Lccsanandroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/activity/b/f;->f(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsancom/applovin/impl/adview/activity/b/f$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsanandroid/media/MediaPlayer;->setOnErrorListener(Lccsanandroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-boolean v0, v0, Lccsancom/applovin/impl/adview/activity/b/f;->t:Z

    xor-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0, v0}, Lccsanandroid/media/MediaPlayer;->setVolume(FF)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getDuration()I

    move-result p1

    int-to-long v1, p1

    iput-wide v1, v0, Lccsancom/applovin/impl/adview/activity/b/f;->u:J

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/activity/b/f;->s()V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    iget-object p1, p1, Lccsancom/applovin/impl/adview/activity/b/f;->c:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayer prepared: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/adview/activity/b/f$b;->a:Lccsancom/applovin/impl/adview/activity/b/f;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/activity/b/f;->g(Lccsancom/applovin/impl/adview/activity/b/f;)Lccsanandroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InterActivityV2"

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
