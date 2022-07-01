.class public Lccsancom/san/mediation/loader/AppLovinInterstitialAd;
.super Lccsancom/san/mediation/loader/BaseAppLovinAd;
.source "AppLovinInterstitialAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IFullScreenAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLovin.Interstitial"


# instance fields
.field private mInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/BaseAppLovinAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    .line 21
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$102(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinInterstitialAd;
    .param p1, "x1"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 21
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$200(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinInterstitialAd;

    .line 21
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private createAppLovinInterstitialAdDialog()Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;
    .locals 2

    .line 64
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->getActivityContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->getActivityContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/adview/AppLovinInterstitialAd;->create(Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;)Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 66
    .local v0, "interstitialAd":Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$2;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$2;-><init>(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 79
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$$ExternalSyntheticLambda0;-><init>(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    .line 83
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$3;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$3;-><init>(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    .line 94
    return-object v0
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 3

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->getActivityContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinSdk;->getInstance(Lccsanandroid/content/Context;)Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    new-instance v2, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;

    invoke-direct {v2, p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd$1;-><init>(Lccsancom/san/mediation/loader/AppLovinInterstitialAd;)V

    invoke-interface {v0, v1, v2}, Lccsancom/applovin/sdk/AppLovinAdService;->loadNextAd(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 50
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 99
    sget-object v0, Lccsancom/san/ads/AdFormat;->INTERSTITIAL:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 104
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$createAppLovinInterstitialAdDialog$0$com-san-mediation-loader-AppLovinInterstitialAd(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdClick spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.Interstitial"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {p0, v0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 82
    return-void
.end method

.method public show()V
    .locals 2

    .line 54
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->createAppLovinInterstitialAdDialog()Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 56
    .local v0, "interstitialAd":Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;
    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinInterstitialAd;->mInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {v0, v1}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lccsancom/applovin/sdk/AppLovinAd;)V

    .line 57
    .end local v0    # "interstitialAd":Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;
    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "AppLovin.Interstitial"

    const-string v1, "The interstitial ad wasn\'t ready yet."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :goto_0
    return-void
.end method
