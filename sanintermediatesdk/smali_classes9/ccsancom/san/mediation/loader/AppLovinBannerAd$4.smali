.class Lccsancom/san/mediation/loader/AppLovinBannerAd$4;
.super Ljava/lang/Object;
.source "AppLovinBannerAd.java"

# interfaces
.implements Lccsancom/applovin/adview/AppLovinAdViewEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/AppLovinBannerAd;->startLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;

    .line 81
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adClosedFullscreen(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .param p2, "adView"    # Lccsancom/applovin/adview/AppLovinAdView;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#adClosedFullscreen spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public adFailedToDisplay(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .param p2, "adView"    # Lccsancom/applovin/adview/AppLovinAdView;
    .param p3, "code"    # Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#adFailedToDisplay spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 101
    return-void
.end method

.method public adLeftApplication(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .param p2, "adView"    # Lccsancom/applovin/adview/AppLovinAdView;

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#adLeftApplication spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public adOpenedFullscreen(Lccsancom/applovin/sdk/AppLovinAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .param p2, "adView"    # Lccsancom/applovin/adview/AppLovinAdView;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#adOpenedFullscreen spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method
