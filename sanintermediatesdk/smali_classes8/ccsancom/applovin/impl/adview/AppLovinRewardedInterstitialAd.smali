.class public Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

.field private b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

.field private c:Lccsancom/applovin/sdk/AppLovinAdClickListener;

.field private d:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;


# direct methods
.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinSdk;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    invoke-direct {v0, p1}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;)V

    iput-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->a:Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    return-void
.end method


# virtual methods
.method public setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->c:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    return-void
.end method

.method public setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    return-void
.end method

.method public setAdVideoPlaybackListener(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->d:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    return-void
.end method

.method public show(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;)V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->a:Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    iget-object v4, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->d:Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;

    iget-object v5, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->b:Lccsancom/applovin/sdk/AppLovinAdDisplayListener;

    iget-object v6, p0, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->c:Lccsancom/applovin/sdk/AppLovinAdClickListener;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AppLovinRewardedInterstitialAd{}"

    return-object v0
.end method
