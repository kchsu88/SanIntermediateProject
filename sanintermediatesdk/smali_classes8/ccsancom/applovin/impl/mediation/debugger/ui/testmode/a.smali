.class public Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;
.super Lccsancom/applovin/impl/mediation/debugger/ui/a;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;
.implements Lccsancom/applovin/mediation/MaxAdRevenueListener;
.implements Lccsancom/applovin/mediation/MaxAdViewAdListener;
.implements Lccsancom/applovin/mediation/MaxRewardedAdListener;


# instance fields
.field private a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

.field private b:Lccsancom/applovin/impl/sdk/k;

.field private c:Lccsancom/applovin/mediation/ads/MaxAdView;

.field private d:Lccsancom/applovin/mediation/ads/MaxAdView;

.field private e:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

.field private f:Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

.field private g:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

.field private h:Ljava/lang/String;

.field private i:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

.field private j:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

.field private k:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

.field private l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

.field private m:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;
    .locals 3

    const-string/jumbo v0, "test_mode_banner"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string/jumbo v0, "test_mode_leader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "test_mode_mrec"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->j:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    return-object p1

    :cond_1
    const-string/jumbo v0, "test_mode_interstitial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->k:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    return-object p1

    :cond_2
    const-string/jumbo v0, "test_mode_rewarded_interstitial"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->l:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    return-object p1

    :cond_3
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->m:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    return-object p1

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid test mode ad unit identifier provided "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    return-object p1
.end method

.method private a()V
    .locals 6

    invoke-static {p0}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isTablet(Lccsanandroid/content/Context;)Z

    move-result v0

    sget v1, Lccsancom/applovin/sdk/R$id;->banner_ad_view_container:I

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    sget v2, Lccsancom/applovin/sdk/R$id;->banner_label:I

    invoke-virtual {p0, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/TextView;

    const-string v3, "Leader"

    invoke-virtual {v2, v3}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v2, "test_mode_leader"

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    const-string/jumbo v2, "test_mode_banner"

    :goto_0
    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->o()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lccsancom/applovin/mediation/ads/MaxAdView;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v4}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v4

    invoke-direct {v3, v2, v0, v4, p0}, Lccsancom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    iput-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->c:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v3, p0}, Lccsancom/applovin/mediation/ads/MaxAdView;->setListener(Lccsancom/applovin/mediation/MaxAdViewAdListener;)V

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;->getWidth()I

    move-result v2

    invoke-static {p0, v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result v2

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getSize()Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/applovin/sdk/AppLovinSdkUtils$Size;->getHeight()I

    move-result v3

    invoke-static {p0, v3}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->dpToPx(Lccsanandroid/content/Context;I)I

    move-result v3

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->c:Lccsancom/applovin/mediation/ads/MaxAdView;

    new-instance v5, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v2, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v4, v5}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    sget v1, Lccsancom/applovin/sdk/R$id;->banner_control_button:I

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    iput-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    invoke-virtual {v1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setOnClickListener(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->i:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setFormat(Lccsancom/applovin/mediation/MaxAdFormat;)V

    goto :goto_1

    :cond_1
    sget v0, Lccsancom/applovin/sdk/R$id;->banner_control_view:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method private a(Lccsancom/applovin/mediation/MaxAdFormat;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Ljava/lang/String;)V

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq v0, p1, :cond_4

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->d:Lccsancom/applovin/mediation/ads/MaxAdView;

    goto :goto_1

    :cond_1
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->e:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->loadAd()V

    goto :goto_2

    :cond_2
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->f:Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;->loadAd()V

    goto :goto_2

    :cond_3
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_5

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->g:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->loadAd()V

    goto :goto_2

    :cond_4
    :goto_0
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->c:Lccsancom/applovin/mediation/ads/MaxAdView;

    :goto_1
    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxAdView;->loadAd()V

    :cond_5
    :goto_2
    return-void
.end method

.method private b()V
    .locals 5

    sget v0, Lccsancom/applovin/sdk/R$id;->mrec_ad_view_container:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->o()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lccsancom/applovin/mediation/ads/MaxAdView;

    sget-object v2, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v3

    const-string/jumbo v4, "test_mode_mrec"

    invoke-direct {v1, v4, v2, v3, p0}, Lccsancom/applovin/mediation/ads/MaxAdView;-><init>(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    iput-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->d:Lccsancom/applovin/mediation/ads/MaxAdView;

    invoke-virtual {v1, p0}, Lccsancom/applovin/mediation/ads/MaxAdView;->setListener(Lccsancom/applovin/mediation/MaxAdViewAdListener;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->d:Lccsancom/applovin/mediation/ads/MaxAdView;

    new-instance v2, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    sget v0, Lccsancom/applovin/sdk/R$id;->mrec_control_button:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->j:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setOnClickListener(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->j:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setFormat(Lccsancom/applovin/mediation/MaxAdFormat;)V

    goto :goto_0

    :cond_0
    sget v1, Lccsancom/applovin/sdk/R$id;->mrec_control_view:I

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v2}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private b(Lccsancom/applovin/mediation/MaxAdFormat;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->e:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->showAd()V

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->f:Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedInterstitialAd;->showAd()V

    goto :goto_0

    :cond_1
    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->g:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {p1}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->showAd()V

    :cond_2
    :goto_0
    return-void
.end method

.method private c()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->o()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    const-string/jumbo v2, "test_mode_interstitial"

    invoke-direct {v0, v2, v1, p0}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;-><init>(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->e:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    invoke-virtual {v0, p0}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->setListener(Lccsancom/applovin/mediation/MaxAdListener;)V

    sget v0, Lccsancom/applovin/sdk/R$id;->interstitial_control_button:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->k:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setOnClickListener(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->k:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setFormat(Lccsancom/applovin/mediation/MaxAdFormat;)V

    goto :goto_0

    :cond_0
    sget v0, Lccsancom/applovin/sdk/R$id;->interstitial_control_view:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->o()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "test_mode_rewarded_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->h:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->W()Lccsancom/applovin/sdk/AppLovinSdk;

    move-result-object v1

    invoke-static {v0, v1, p0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->getInstance(Ljava/lang/String;Lccsancom/applovin/sdk/AppLovinSdk;Lccsanandroid/app/Activity;)Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->g:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

    invoke-virtual {v0, p0}, Lccsancom/applovin/mediation/ads/MaxRewardedAd;->setListener(Lccsancom/applovin/mediation/MaxRewardedAdListener;)V

    sget v0, Lccsancom/applovin/sdk/R$id;->rewarded_control_button:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->m:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    invoke-virtual {v0, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setOnClickListener(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->m:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setFormat(Lccsancom/applovin/mediation/MaxAdFormat;)V

    goto :goto_0

    :cond_0
    sget v0, Lccsancom/applovin/sdk/R$id;->rewarded_control_view:I

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initialize(Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->s()Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b:Lccsancom/applovin/impl/sdk/k;

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

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    move-result-object p1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with error code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p2, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

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

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    move-result-object p1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " with error code: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, ""

    invoke-static {p2, p1, p0}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;

    move-result-object v0

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    goto :goto_0

    :cond_0
    sget-object p1, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    :goto_0
    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

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

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getControlState()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a(Lccsancom/applovin/mediation/MaxAdFormat;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->c:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getControlState()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    move-result-object v1

    if-ne v0, v1, :cond_1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;->a:Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->setControlState(Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton$b;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/AdControlButton;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b(Lccsancom/applovin/mediation/MaxAdFormat;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Lccsanandroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onCreate(Lccsanandroid/os/Bundle;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    if-nez p1, :cond_0

    const-string p1, "MaxDebuggerMultiAdActivity"

    const-string v0, "Failed to initialize activity with a network model."

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    sget p1, Lccsancom/applovin/sdk/R$layout;->mediation_debugger_multi_ad_activity:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->setContentView(I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->h()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " Test Ads"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->a()V

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b()V

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->c()V

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->d()V

    sget p1, Lccsancom/applovin/sdk/R$id;->rewarded_interstitial_control_view:I

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->setVisibility(I)V

    const/4 p1, 0x7

    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->setRequestedOrientation(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AppLovinSdk"

    const-string v1, "Failed to set portrait orientation"

    invoke-static {v0, v1, p1}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    invoke-super {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/a;->onDestroy()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->c:Lccsancom/applovin/mediation/ads/MaxAdView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxAdView;->destroy()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->d:Lccsancom/applovin/mediation/ads/MaxAdView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxAdView;->destroy()V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->e:Lccsancom/applovin/mediation/ads/MaxInterstitialAd;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxInterstitialAd;->destroy()V

    :cond_2
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/a;->g:Lccsancom/applovin/mediation/ads/MaxRewardedAd;

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
