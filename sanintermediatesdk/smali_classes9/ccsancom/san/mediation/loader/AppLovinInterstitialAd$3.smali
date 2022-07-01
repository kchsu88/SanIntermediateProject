.class Lccsancom/san/mediation/loader/AppLovinInterstitialAd$3;
.super Ljava/lang/Object;
.source "AppLovinInterstitialAd.java"

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->createAppLovinInterstitialAdDialog()Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;
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

    .line 83
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public videoPlaybackBegan(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#videoPlaybackBegan spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public videoPlaybackEnded(Lccsancom/applovin/sdk/AppLovinAd;DZ)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;
    .param p2, "percentViewed"    # D
    .param p4, "fullyWatched"    # Z

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#videoPlaybackEnded spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$3;->this$0:Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    iget-object v1, v1, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-void
.end method
