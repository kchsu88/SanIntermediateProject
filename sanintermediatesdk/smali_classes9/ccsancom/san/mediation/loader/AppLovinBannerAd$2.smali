.class Lccsancom/san/mediation/loader/AppLovinBannerAd$2;
.super Ljava/lang/Object;
.source "AppLovinBannerAd.java"

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


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

.field final synthetic val$adView:Lccsancom/applovin/adview/AppLovinAdView;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;Lccsancom/applovin/adview/AppLovinAdView;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;

    .line 49
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iput-object p2, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->val$adView:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 4
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->access$100(Lccsancom/san/mediation/loader/AppLovinBannerAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->val$adView:Lccsancom/applovin/adview/AppLovinAdView;

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->access$202(Lccsancom/san/mediation/loader/AppLovinBannerAd;Lccsancom/applovin/adview/AppLovinAdView;)Lccsancom/applovin/adview/AppLovinAdView;

    .line 54
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    new-instance v1, Lccsancom/san/ads/base/BannerAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/BannerAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 55
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdFailedToLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->access$300(Lccsancom/san/mediation/loader/AppLovinBannerAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->access$202(Lccsancom/san/mediation/loader/AppLovinBannerAd;Lccsancom/applovin/adview/AppLovinAdView;)Lccsancom/applovin/adview/AppLovinAdView;

    .line 61
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;->this$0:Lccsancom/san/mediation/loader/AppLovinBannerAd;

    invoke-virtual {v0, p1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->parseToSanError(I)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 62
    return-void
.end method
