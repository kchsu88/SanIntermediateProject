.class Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;-><init>(Lccsancom/applovin/impl/sdk/a/g$d;Lccsanandroid/content/Context;Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Lccsanandroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Surface changed with format: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", width: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", height: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "AppLovinVideoView"

    invoke-virtual {p1, v0, p2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1, p3}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1, p4}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->d(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->d(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iget-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result v1

    if-ne v1, p3, :cond_2

    iget-object p3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p3}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p3

    if-ne p3, p4, :cond_2

    const/4 p2, 0x1

    :cond_2
    iget-object p3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p3}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->g(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->g(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->seekTo(I)V

    :cond_3
    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->start()V

    :cond_4
    return-void
.end method

.method public surfaceCreated(Lccsanandroid/view/SurfaceHolder;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AppLovinVideoView"

    const-string v2, "Surface created"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Lccsanandroid/view/SurfaceHolder;)Lccsanandroid/view/SurfaceHolder;

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1}, Lccsanandroid/view/SurfaceHolder;->getSurface()Lccsanandroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsanandroid/media/MediaPlayer;->setSurface(Lccsanandroid/view/Surface;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->c(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)V

    :goto_0
    return-void
.end method

.method public surfaceDestroyed(Lccsanandroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string v0, "AppLovinVideoView"

    const-string v1, "Surface destroyed"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$1;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;Lccsanandroid/view/SurfaceHolder;)Lccsanandroid/view/SurfaceHolder;

    return-void
.end method
