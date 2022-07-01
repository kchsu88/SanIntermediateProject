.class public Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;
.super Lccsancom/applovin/mediation/adapters/MediationAdapterBase;

# interfaces
.implements Lccsancom/applovin/mediation/adapter/MaxAdViewAdapter;
.implements Lccsancom/applovin/mediation/adapter/MaxInterstitialAdapter;
.implements Lccsancom/applovin/mediation/adapter/MaxRewardedAdapter;
.implements Lccsancom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;
.implements Lccsancom/applovin/mediation/adapter/MaxSignalProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;,
        Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedAdListenerWrapper;,
        Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardListenerWrapper;
    }
.end annotation


# instance fields
.field private mLoadedAdView:Lccsancom/applovin/adview/AppLovinAdView;

.field private mLoadedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

.field private mLoadedRewardedAd:Lccsancom/applovin/sdk/AppLovinAd;

.field private mLoadedRewardedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

.field private mPendingReward:Lccsancom/applovin/mediation/MaxReward;


# direct methods
.method public constructor <init>(Lccsancom/applovin/sdk/AppLovinSdk;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/mediation/adapters/MediationAdapterBase;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;)V

    return-void
.end method

.method static synthetic access$000(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/adview/AppLovinAdView;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lccsancom/applovin/adview/AppLovinAdView;

    return-object p0
.end method

.method static synthetic access$002(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/adview/AppLovinAdView;)Lccsancom/applovin/adview/AppLovinAdView;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lccsancom/applovin/adview/AppLovinAdView;

    return-object p1
.end method

.method static synthetic access$100(Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)Lccsancom/applovin/mediation/adapter/MaxAdapterError;
    .locals 0

    invoke-static {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(I)Lccsancom/applovin/mediation/adapter/MaxAdapterError;
    .locals 0

    invoke-static {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->toMaxError(I)Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$502(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$602(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedAd:Lccsancom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$702(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/sdk/AppLovinAd;)Lccsancom/applovin/sdk/AppLovinAd;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    return-object p1
.end method

.method static synthetic access$800(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;)Lccsancom/applovin/mediation/MaxReward;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lccsancom/applovin/mediation/MaxReward;

    return-object p0
.end method

.method static synthetic access$802(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxReward;)Lccsancom/applovin/mediation/MaxReward;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mPendingReward:Lccsancom/applovin/mediation/MaxReward;

    return-object p1
.end method

.method private loadFullscreenAd(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V
    .locals 3

    new-instance v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$4;

    invoke-direct {v0, p0, p3, p4}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$4;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    invoke-interface {p2}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v1, " ad..."

    if-nez p4, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Loading bidding "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    invoke-interface {p2}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lccsancom/applovin/sdk/AppLovinAdService;->loadNextAdForAdToken(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    const-string v2, "Loading mediated "

    if-nez p4, :cond_1

    invoke-interface {p2}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " ad: "

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    invoke-interface {p2}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Lccsancom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lccsancom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    :goto_0
    return-void
.end method

.method private static toMaxError(I)Lccsancom/applovin/mediation/adapter/MaxAdapterError;
    .locals 2

    const/16 v0, 0xcc

    const/16 v1, -0x3f1

    if-ne p0, v1, :cond_0

    const/16 v0, -0x1457

    goto :goto_0

    :cond_0
    if-ne p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    if-ne p0, v0, :cond_2

    const/16 v0, -0x1459

    goto :goto_0

    :cond_2
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_3

    const/16 v0, -0x1458

    goto :goto_0

    :cond_3
    const/16 v0, -0x1450

    :goto_0
    new-instance v1, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    invoke-direct {v1, v0, p0}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;-><init>(II)V

    return-object v1
.end method

.method private static toMaxError(Lccsancom/applovin/adview/AppLovinAdViewDisplayErrorCode;)Lccsancom/applovin/mediation/adapter/MaxAdapterError;
    .locals 0

    sget-object p0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->UNSPECIFIED:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    return-object p0
.end method


# virtual methods
.method public collectSignal(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterSignalCollectionParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;)V
    .locals 0

    const-string p1, "Collecting signal..."

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/applovin/sdk/AppLovinAdService;->getBidToken()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;->onSignalCollected(Ljava/lang/String;)V

    return-void
.end method

.method public getAdapterVersion()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getSdkVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSdkVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method public initialize(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;)V
    .locals 0

    sget-object p1, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->DOES_NOT_APPLY:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    const/4 p2, 0x0

    invoke-interface {p3, p1, p2}, Lccsancom/applovin/mediation/adapter/MaxAdapter$OnCompletionListener;->onCompletion(Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    return-void
.end method

.method public loadAdViewAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V
    .locals 3

    new-instance v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;

    invoke-direct {v0, p0, p2, p3, p4}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v1, " ad..."

    if-nez p3, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Loading bidding "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getBidResponse()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Lccsancom/applovin/sdk/AppLovinAdService;->loadNextAdForAdToken(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto/16 :goto_1

    :cond_0
    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    const-string v2, "Loading mediated "

    if-nez p3, :cond_1

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " ad: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "..."

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lccsancom/applovin/sdk/AppLovinAdService;->loadNextAdForZoneId(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    sget-object p3, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p2, p3, :cond_2

    sget-object p1, Lccsancom/applovin/sdk/AppLovinAdSize;->BANNER:Lccsancom/applovin/sdk/AppLovinAdSize;

    goto :goto_0

    :cond_2
    sget-object p3, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p2, p3, :cond_3

    sget-object p1, Lccsancom/applovin/sdk/AppLovinAdSize;->MREC:Lccsancom/applovin/sdk/AppLovinAdSize;

    goto :goto_0

    :cond_3
    sget-object p3, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p2, p3, :cond_4

    sget-object p1, Lccsancom/applovin/sdk/AppLovinAdSize;->LEADER:Lccsancom/applovin/sdk/AppLovinAdSize;

    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/sdk/AppLovinSdk;->getAdService()Lccsancom/applovin/sdk/AppLovinAdService;

    move-result-object p2

    invoke-interface {p2, p1, v0}, Lccsancom/applovin/sdk/AppLovinAdService;->loadNextAd(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Failed to load ad for format: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    sget-object p1, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->INTERNAL_ERROR:Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    invoke-interface {p4, p1}, Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;->onAdViewAdLoadFailed(Lccsancom/applovin/mediation/adapter/MaxAdapterError;)V

    :goto_1
    return-void
.end method

.method public loadInterstitialAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .locals 1

    sget-object p2, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v0, "inter_regular"

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadFullscreenAd(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    return-void
.end method

.method public loadRewardedAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V
    .locals 1

    sget-object p2, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v0, "inter_videoa"

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadFullscreenAd(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    return-void
.end method

.method public loadRewardedInterstitialAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V
    .locals 1

    sget-object p2, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    const-string v0, "inter_autorew"

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->loadFullscreenAd(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/mediation/adapter/listeners/MaxAdapterListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedAd:Lccsancom/applovin/sdk/AppLovinAd;

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lccsancom/applovin/adview/AppLovinAdView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsancom/applovin/adview/AppLovinAdView;->destroy()V

    iput-object v0, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedAdView:Lccsancom/applovin/adview/AppLovinAdView;

    :cond_0
    return-void
.end method

.method public showInterstitialAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing interstitial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "..."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-static {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAd;->create(Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;)Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    new-instance p2, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$2;

    invoke-direct {p2, p0, p3}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$2;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    invoke-interface {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    new-instance p2, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$3;

    invoke-direct {p2, p0, p3}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$3;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxInterstitialAdapterListener;)V

    invoke-interface {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    iget-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lccsancom/applovin/sdk/AppLovinAd;)V

    return-void
.end method

.method public showRewardedAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing rewarded ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->configureReward(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->create(Lccsancom/applovin/sdk/AppLovinSdk;)Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;

    move-result-object v0

    new-instance v6, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedAdListenerWrapper;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedAdListenerWrapper;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedAdapterListener;Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V

    iget-object v1, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedAd:Lccsancom/applovin/sdk/AppLovinAd;

    move-object v2, p2

    move-object v3, v6

    move-object v4, v6

    move-object v5, v6

    invoke-virtual/range {v0 .. v6}, Lccsancom/applovin/adview/AppLovinIncentivizedInterstitial;->show(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;Lccsancom/applovin/sdk/AppLovinAdDisplayListener;Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    return-void
.end method

.method public showRewardedInterstitialAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing rewarded interstitial ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;->getThirdPartyAdPlacementId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p3, v1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$RewardedInterstitialAdListenerWrapper;-><init>(Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter$1;)V

    iget-object p3, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {p3}, Lccsancom/applovin/sdk/AppLovinAd;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object p3

    sget-object v1, Lccsancom/applovin/sdk/AppLovinAdType;->AUTO_INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    if-ne p3, v1, :cond_0

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->configureReward(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;)V

    new-instance p1, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p3

    invoke-direct {p1, p3}, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;-><init>(Lccsancom/applovin/sdk/AppLovinSdk;)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->setAdVideoPlaybackListener(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iget-object p3, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-virtual {p1, p3, p2, v0}, Lccsancom/applovin/impl/adview/AppLovinRewardedInterstitialAd;->show(Lccsancom/applovin/sdk/AppLovinAd;Lccsanandroid/content/Context;Lccsancom/applovin/sdk/AppLovinAdRewardListener;)V

    goto :goto_0

    :cond_0
    const-string p1, "Rewarded interstitial is regular interstitial"

    invoke-virtual {p0, p1}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->getWrappingSdk()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object p1

    invoke-static {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAd;->create(Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/content/Context;)Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object p1

    invoke-interface {p1, v0}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lccsancom/applovin/sdk/AppLovinAdDisplayListener;)V

    invoke-interface {p1, v0}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lccsancom/applovin/sdk/AppLovinAdClickListener;)V

    invoke-interface {p1, v0}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->setAdVideoPlaybackListener(Lccsancom/applovin/sdk/AppLovinAdVideoPlaybackListener;)V

    iget-object p2, p0, Lccsancom/applovin/mediation/adapters/AppLovinMediationAdapter;->mLoadedRewardedInterstitialAd:Lccsancom/applovin/sdk/AppLovinAd;

    invoke-interface {p1, p2}, Lccsancom/applovin/adview/AppLovinInterstitialAdDialog;->showAndRender(Lccsancom/applovin/sdk/AppLovinAd;)V

    :goto_0
    return-void
.end method
