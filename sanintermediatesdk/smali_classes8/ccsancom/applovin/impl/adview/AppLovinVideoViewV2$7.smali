.class Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media player error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinVideoView"

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->e(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->f(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->o(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->o(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$7;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->b(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Lccsanandroid/media/MediaPlayer$OnErrorListener;->onError(Lccsanandroid/media/MediaPlayer;II)Z

    :cond_0
    return v0
.end method
