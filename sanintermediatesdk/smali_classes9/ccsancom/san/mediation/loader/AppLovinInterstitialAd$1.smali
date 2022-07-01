.class Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;
.super Ljava/lang/Object;
.source "AppLovinInterstitialAd.java"

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->doStartLoadAd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;


# direct methods
.method constructor <init>(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)V
    .locals 0
    .param p1, "this$0"    # Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    .line 33
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adReceived(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 4
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoaded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->access$000(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-static {v0, p1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->access$102(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    .line 39
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    new-instance v1, Lccsancom/san/ads/base/FullScreenAdWrapper;

    iget-object v2, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-virtual {v2}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/FullScreenAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    .line 40
    return-void
.end method

.method public failedToReceiveAd(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdError spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", duration:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-static {v1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->access$200(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->access$102(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;

    .line 47
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-virtual {v0, p1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->parseToSanError(I)Lccsancom/san/ads/AdError;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 48
    return-void
.end method
