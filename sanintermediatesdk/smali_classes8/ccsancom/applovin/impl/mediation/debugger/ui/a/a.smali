.class public Lccsancom/applovin/impl/mediation/debugger/ui/a/a;
.super Lccsancom/applovin/impl/mediation/debugger/ui/a;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;
.implements Lccsancom/applovin/mediation/MaxAdRevenueListener;
.implements Lccsancom/applovin/mediation/MaxAdViewAdListener;
.implements Lccsancom/applovin/mediation/MaxRewardedAdListener;


# instance fields
.field private a:Lccsancom/applovin/impl/sdk/k;

.field private b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

.field private c:Lccsancom/applovin/impl/mediation/debugger/ui/a/b;

.field private d:Lccsancom/applovin/impl/mediation/debugger/a/a/b;

.field private e:Lccsancom/applovin/mediation/ads/MaxAdView;

.field private f:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

.field private g:Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

.field private h:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

.field private i:Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

.field private j:Lccsanandroid/widget/ListView;

.field private k:Lccsanandroid/view/View;

.field private l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

.field private m:Lccsanandroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;Lccsancom/applovin/impl/mediation/debugger/ui/a/d;)Lccsancom/applovin/impl/mediation/debugger/ui/a/d;
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

    return-object p1
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;)Lccsancom/applovin/mediation/ads/MaxAdView;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->e:Lccsancom/applovin/mediation/ads/MaxAdView;

    return-object p0
.end method

.method private a()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lccsancom/applovin/mediation/ads/MaxAdView;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3, p0}, Lccsancom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    iput-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->e:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v1, p0}, Lccsancom/applovin/mediation/ads/MaxAdView;->setListener(Lccsancom/applovin/mediation/MaxAdViewAdListener;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    if-ne v1, v2, :cond_1

    new-instance v1, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    iput-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->f:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {v1, p0}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->setListener(Lccsancom/applovin/mediation/MaxAdListener;)V

    goto :goto_0

    :cond_1
    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    if-ne v1, v2, :cond_2

    new-instance v1, Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v2

    invoke-direct {v1, v0, v2, p0}, Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    iput-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->g:Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

    invoke-virtual {v1, p0}, Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;->setListener(Lccsancom/applovin/mediation/MaxRewardedAdListener;)V

    goto :goto_0

    :cond_2
    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->getInstance(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->h:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v0, p0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->setListener(Lccsancom/applovin/mediation/MaxRewardedAdListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Lccsanandroid/content/DialogInterface$OnShowListener;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->e:Lccsancom/applovin/mediation/ads/MaxAdView;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;-><init>(Lccsancom/applovin/mediation/ads/MaxAdView;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->setOnShowListener(Lccsanandroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$3;

    invoke-direct {v0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$3;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;)V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->setOnDismissListener(Lccsanandroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/a/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/d;->show()V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->startActivity(Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method

.method private a(Lccsancom/applovin/mediation/MaxAdFormat;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->d:Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->d:Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/a/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Z)V

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->e:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxAdView;->loadAd()V

    goto :goto_0

    :cond_1
    sget-object p1, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->f:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    goto :goto_0

    :cond_2
    sget-object p1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->g:Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;->loadAd()V

    goto :goto_0

    :cond_3
    sget-object p1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->h:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    :cond_4
    :goto_0
    return-void
.end method

.method private b(Lccsancom/applovin/mediation/MaxAdFormat;)V
    .locals 1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$2;

    invoke-direct {p1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$2;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a(Lccsanandroid/content/DialogInterface$OnShowListener;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->f:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->showAd()V

    goto :goto_0

    :cond_1
    sget-object p1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->g:Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;->showAd()V

    goto :goto_0

    :cond_2
    sget-object p1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->h:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->showAd()V

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Lccsancom/applovin/impl/mediation/debugger/a/a/a;Lccsancom/applovin/impl/mediation/debugger/a/a/b;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->d:Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    new-instance v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-direct {v0, p1, p2, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b;-><init>(Lccsancom/applovin/impl/mediation/debugger/a/a/a;Lccsancom/applovin/impl/mediation/debugger/a/a/b;Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/b;

    new-instance p2, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;

    invoke-direct {p2, p0, p3, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/mediation/debugger/a/a/a;)V

    invoke-virtual {v0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a()V

    return-void
.end method

.method public onAdClicked(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onAdClicked"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onAdCollapsed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onAdCollapsed"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onAdDisplayFailed(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->m:Lccsanandroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to display with error code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onAdDisplayed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onAdDisplayed"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onAdExpanded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onAdExpanded"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onAdHidden"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->m:Lccsanandroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p1

    const/16 v1, 0xcc

    if-ne v1, p1, :cond_0

    const-string p1, "No Fill"

    const-string p2, "No fills often happen in live environments. Please make sure to use the Mediation Debugger test mode before you go live."

    invoke-static {p1, p2, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load with error code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->m:Lccsanandroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getNetworkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ad loaded"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    sget-object v1, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a(Lccsanandroid/content/DialogInterface$OnShowListener;)V

    :cond_0
    return-void
.end method

.method public onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onAdRevenuePaid"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onClick(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Not Supported"

    const-string v0, "Ad loads are not supported while Test Mode is enabled. Please restart the app."

    invoke-static {p1, v0, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getControlState()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a(Lccsancom/applovin/mediation/MaxAdFormat;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getControlState()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    move-result-object v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->b(Lccsancom/applovin/mediation/MaxAdFormat;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onCreate(Lccsanandroid/os/Bundle;)V

    sget p1, Lccsancom/applovin/sdk/R$layout;->mediation_debugger_ad_unit_detail_activity:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->setContentView(I)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->setTitle(Ljava/lang/CharSequence;)V

    sget p1, Lccsancom/applovin/sdk/R$id;->listView:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/ListView;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->j:Lccsanandroid/widget/ListView;

    sget p1, Lccsancom/applovin/sdk/R$id;->ad_presenter_view:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->k:Lccsanandroid/view/View;

    sget p1, Lccsancom/applovin/sdk/R$id;->ad_control_button:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    sget p1, Lccsancom/applovin/sdk/R$id;->status_textview:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/TextView;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->m:Lccsanandroid/widget/TextView;

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->j:Lccsanandroid/widget/ListView;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ListView;->setAdapter(Lccsanandroid/widget/ListAdapter;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->m:Lccsanandroid/widget/TextView;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Not Supported while Test Mode is enabled"

    goto :goto_0

    :cond_0
    const-string v0, "Tap to load an ad"

    :goto_0
    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->m:Lccsanandroid/widget/TextView;

    sget-object v0, Lccsanandroid/graphics/Typeface;->DEFAULT_BOLD:Lccsanandroid/graphics/Typeface;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/TextView;->setTypeface(Lccsanandroid/graphics/Typeface;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setOnClickListener(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;)V

    new-instance p1, Lccsanandroid/graphics/drawable/ShapeDrawable;

    invoke-direct {p1}, Lccsanandroid/graphics/drawable/ShapeDrawable;-><init>()V

    const/4 v0, 0x0

    const/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v0, v0}, Lccsanandroid/graphics/drawable/ShapeDrawable;->setPadding(IIII)V

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/ShapeDrawable;->getPaint()Lccsanandroid/graphics/Paint;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lccsanandroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p1}, Lccsanandroid/graphics/drawable/ShapeDrawable;->getPaint()Lccsanandroid/graphics/Paint;

    move-result-object v2

    int-to-float v1, v1

    const/4 v3, 0x0

    const/16 v4, -0xa

    int-to-float v4, v4

    const/high16 v5, 0x33000000

    invoke-virtual {v2, v1, v3, v4, v5}, Lccsanandroid/graphics/Paint;->setShadowLayer(FFFI)V

    new-instance v1, Lccsanandroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v1}, Lccsanandroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {p1, v1}, Lccsanandroid/graphics/drawable/ShapeDrawable;->setShape(Lccsanandroid/graphics/drawable/shapes/Shape;)V

    new-instance v1, Lccsanandroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x1

    new-array v2, v2, [Lccsanandroid/graphics/drawable/Drawable;

    aput-object p1, v2, v0

    invoke-direct {v1, v2}, Lccsanandroid/graphics/drawable/LayerDrawable;-><init>([Lccsanandroid/graphics/drawable/Drawable;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v5, 0xa

    move-object v2, v1

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->k:Lccsanandroid/view/View;

    invoke-virtual {p1, v1}, Lccsanandroid/view/View;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onDestroy()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->d:Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Z)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->e:Lccsancom/applovin/mediation/ads/MaxAdView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxAdView;->destroy()V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->f:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->destroy()V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->h:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->destroy()V

    :cond_3
    return-void
.end method

.method public onRewardedVideoCompleted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onRewardedVideoCompleted"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onRewardedVideoStarted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const-string v0, "onRewardedVideoStarted"

    invoke-static {v0, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onUserRewarded(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 0

    const-string p2, "onUserRewarded"

    invoke-static {p2, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showToast(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/content/Context;)V

    return-void
.end method
