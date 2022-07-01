.class Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$8;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$8;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Lccsanandroid/media/MediaPlayer;I)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$8;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Buffered: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovinVideoView"

    invoke-virtual {p1, v1, v0}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$8;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->g(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;I)I

    return-void
.end method
