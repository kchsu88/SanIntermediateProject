.class public Lccsancom/san/mediation/loader/AppLovinBannerAd;
.super Lccsancom/san/mediation/loader/BaseAppLovinAd;
.source "AppLovinBannerAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IBannerAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLovin.BannerAd"


# instance fields
.field private mAdView:Lccsancom/applovin/adview/AppLovinAdView;


# direct methods
.method protected constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "context"    # Lccsanandroid/content/Context;
    .param p2, "spotId"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0, p1, p2}, Lccsancom/san/mediation/loader/BaseAppLovinAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method static synthetic access$000(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;

    .line 23
    invoke-direct {p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->startLoad()V

    return-void
.end method

.method static synthetic access$100(Lccsancom/san/mediation/loader/AppLovinBannerAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;

    .line 23
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$202(Lccsancom/san/mediation/loader/AppLovinBannerAd;Lccsancom/applovin/adview/AppLovinAdView;)Lccsancom/applovin/adview/AppLovinAdView;
    .locals 0
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;
    .param p1, "x1"    # Lccsancom/applovin/adview/AppLovinAdView;

    .line 23
    iput-object p1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mAdView:Lccsancom/applovin/adview/AppLovinAdView;

    return-object p1
.end method

.method static synthetic access$300(Lccsancom/san/mediation/loader/AppLovinBannerAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinBannerAd;

    .line 23
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method private startLoad()V
    .locals 4

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->getSpotId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    sget-object v2, Lccsancom/san/ads/AdSize;->BANNER:Lccsancom/san/ads/AdSize;

    if-eq v0, v2, :cond_0

    .line 44
    const-string v0, "AppLovin only support 320x50 size."

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    sget-object v0, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    .line 46
    return-void

    .line 48
    :cond_0
    new-instance v0, Lccsancom/applovin/adview/AppLovinAdView;

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdSize;->BANNER:Lccsancom/applovin/sdk/AppLovinAdSize;

    iget-object v2, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->getActivityContext()Lccsanandroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lccsancom/applovin/adview/AppLovinAdView;-><init>(Lccsancom/applovin/sdk/AppLovinAdSize;Ljava/lang/String;Lccsanandroid/content/Context;)V

    .line 49
    .local v0, "adView":Lccsancom/applovin/adview/AppLovinAdView;
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;

    invoke-direct {v1, p0, v0}, Lccsancom/san/mediation/loader/AppLovinBannerAd$2;-><init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;Lccsancom/applovin/adview/AppLovinAdView;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdLoadListener(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 64
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinBannerAd$3;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd$3;-><init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 77
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinBannerAd$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd$$ExternalSyntheticLambda0;-><init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    .line 81
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd$4;-><init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinAdView;->setAdViewEventListener(Lccsancom/applovin/adview/AppLovinAdViewEventListener;)V

    .line 104
    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinAdView;->loadNextAd()V

    .line 105
    return-void
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 2

    .line 33
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsancom/san/mediation/loader/AppLovinBannerAd$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd$1;-><init>(Lccsancom/san/mediation/loader/AppLovinBannerAd;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 39
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 119
    sget-object v0, Lccsancom/san/ads/AdFormat;->BANNER:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/AdInfo;->getAdSize()Lccsancom/san/ads/AdSize;

    move-result-object v0

    return-object v0
.end method

.method public getAdView()Lccsanandroid/view/View;
    .locals 1

    .line 114
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mAdView:Lccsancom/applovin/adview/AppLovinAdView;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 124
    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mAdView:Lccsancom/applovin/adview/AppLovinAdView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$startLoad$0$com-san-mediation-loader-AppLovinBannerAd(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdClicked spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinBannerAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.BannerAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {p0, v0}, Lccsancom/san/mediation/loader/AppLovinBannerAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 80
    return-void
.end method
