.class Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$6;
.super Ljava/lang/Object;

# interfaces
.implements Lccsanandroid/media/MediaPlayer$OnInfoListener;


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

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$6;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lccsanandroid/media/MediaPlayer;II)Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$6;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->n(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2$6;->a:Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;

    invoke-static {v0}, Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;->n(Lccsancom/applovin/impl/adview/AppLovinVideoViewV2;)Lccsanandroid/media/MediaPlayer$OnInfoListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsanandroid/media/MediaPlayer$OnInfoListener;->onInfo(Lccsanandroid/media/MediaPlayer;II)Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
