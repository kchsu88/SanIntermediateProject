.class public Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/ads/a$a;
.implements Lccsancom/applovin/mediation/MaxAdListener;
.implements Lccsancom/applovin/mediation/MaxAdRevenueListener;
.implements Lccsancom/applovin/mediation/MaxAdViewAdListener;
.implements Lccsancom/applovin/mediation/MaxRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/MediationServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

.field private final b:Lccsancom/applovin/impl/mediation/a/a;

.field private c:Lccsancom/applovin/impl/mediation/ads/a$a;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/a;Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)Lccsancom/applovin/impl/mediation/ads/a$a;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    return-object p0
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    return-void
.end method

.method public a(Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/os/Bundle;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/a;->n()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lccsancom/applovin/impl/mediation/a/a;->a(Lccsanandroid/os/Bundle;)V

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-static {p2, v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/a;)V

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public b(Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->b(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "MediationService"

    const-string v2, "Scheduling impression for ad via callback..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->processCallbackAdImpressionPostback(Lccsancom/applovin/impl/mediation/a/a;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, p2}, Lccsancom/applovin/impl/mediation/a/a;->a(Lccsanandroid/os/Bundle;)V

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object p2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    const-string v1, "DID_DISPLAY"

    invoke-virtual {p2, v0, v1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsancom/applovin/impl/mediation/a/a;Ljava/lang/String;)V

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/q;->a(Ljava/lang/Object;)V

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->ak()Lccsancom/applovin/impl/sdk/l;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/l;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {p2, p1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdClicked(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/a;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->d(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdCollapsed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->h(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdDisplayFailed(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, v1, p2, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/a;Lccsancom/applovin/mediation/MaxError;Lccsancom/applovin/mediation/MaxAdListener;)V

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq p2, v0, :cond_0

    invoke-interface {p1}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p2

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne p2, v0, :cond_1

    :cond_0
    instance-of p2, p1, Lccsancom/applovin/impl/mediation/a/c;

    if-eqz p2, :cond_1

    check-cast p1, Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/c;->A()V

    :cond_1
    return-void
.end method

.method public onAdDisplayed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b(Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onAdExpanded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->g(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lccsancom/applovin/impl/mediation/a/a;

    const-string v2, "DID_HIDE"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/g;->a(Lccsancom/applovin/impl/mediation/a/a;Ljava/lang/String;)V

    instance-of v0, p1, Lccsancom/applovin/impl/mediation/a/c;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->w()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    new-instance v2, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;

    invoke-direct {v2, p0, p1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;-><init>(Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {v2, v0, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 2

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/a;->n()V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b:Lccsancom/applovin/impl/mediation/a/a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {p1, v0, p2, v1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->b(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/a;Lccsancom/applovin/mediation/MaxError;Lccsancom/applovin/mediation/MaxAdListener;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a(Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/os/Bundle;)V

    return-void
.end method

.method public onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    return-void
.end method

.method public onRewardedVideoCompleted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->f(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onRewardedVideoStarted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->e(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onUserRewarded(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->c:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V

    new-instance p2, Lccsancom/applovin/impl/mediation/b/f;

    check-cast p1, Lccsancom/applovin/impl/mediation/a/c;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lccsancom/applovin/impl/mediation/b/f;-><init>(Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    sget-object v0, Lccsancom/applovin/impl/sdk/e/o$a;->r:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {p1, p2, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method
