.class public Lccsancom/san/mediation/loader/AppLovinRewardedAd;
.super Lccsancom/san/mediation/loader/BaseAppLovinAd;
.source "AppLovinRewardedAd.java"

# interfaces
.implements Lccsancom/san/ads/base/IFullScreenAd;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppLovin.RewardedAd"


# instance fields
.field private hasShown:Z

.field private mRewarded:Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;


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

.method static synthetic access$000(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    .line 20
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$100(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)J
    .locals 2
    .param p0, "x0"    # Lccsancom/san/mediation/loader/AppLovinRewardedAd;

    .line 20
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->getLoadDuration()J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method protected doStartLoadAd()V
    .locals 2

    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#startLoad spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->getActivityContext()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lccsanandroid/content/Context;)Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mRewarded:Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    .line 35
    new-instance v1, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;

    invoke-direct {v1, p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd$1;-><init>(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)V

    invoke-virtual {v0, v1}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->preload(Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 50
    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 116
    sget-object v0, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public isAdReady()Z
    .locals 1

    .line 121
    iget-boolean v0, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->hasShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mRewarded:Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->isAdReadyToDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$show$0$com-san-mediation-loader-AppLovinRewardedAd(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lccsancom/applovin/sdk/AppLovinAd;

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#adClicked spotId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mSpotId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppLovin.RewardedAd"

    invoke-static {v1, v0}, Lccsancom/san/ads/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-virtual {p0, v0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->notifyAdAction(Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 106
    return-void
.end method

.method public show()V
    .locals 7

    .line 54
    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->isAdReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iget-object v1, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->mRewarded:Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-virtual {p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->getActivityContext()Lccsanandroid/content/Context;

    move-result-object v2

    new-instance v3, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;

    invoke-direct {v3, p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd$2;-><init>(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)V

    new-instance v4, Lccsancom/san/mediation/loader/AppLovinRewardedAd$3;

    invoke-direct {v4, p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd$3;-><init>(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)V

    new-instance v5, Lccsancom/san/mediation/loader/AppLovinRewardedAd$4;

    invoke-direct {v5, p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd$4;-><init>(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)V

    new-instance v6, Lccsancom/san/mediation/loader/AppLovinRewardedAd$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0}, Lccsancom/san/mediation/loader/AppLovinRewardedAd$$ExternalSyntheticLambda0;-><init>(Lccsancom/san/mediation/loader/AppLovinRewardedAd;)V

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    goto :goto_0

    .line 108
    :cond_0
    const-string v0, "AppLovin.RewardedAd"

    const-string v1, "The rewarded ad wasn\'t ready yet."

    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/san/mediation/loader/AppLovinRewardedAd;->hasShown:Z

    .line 112
    return-void
.end method
