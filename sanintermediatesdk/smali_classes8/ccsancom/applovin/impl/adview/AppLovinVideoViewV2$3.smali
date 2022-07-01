.class Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;
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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Lccsanandroid/media/MediaPlayer;II)V
    .locals 0

    iget-object p2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->c(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {p1}, Lccsanandroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->d(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->getHolder()Lccsanandroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p2}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p2

    iget-object p3, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p3}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Lccsanandroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$3;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-virtual {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->requestLayout()V

    :cond_0
    return-void
.end method
