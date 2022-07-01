.class Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$9;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnSeekCompleteListener;


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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$9;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeekComplete(Lccsanandroid/media/MediaPlayer;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$9;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {p1}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->a(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    const-string v0, "AppLovinVideoView"

    const-string v1, "Seek finished"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
