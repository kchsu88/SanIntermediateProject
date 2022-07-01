.class public Lccsancom/applovin/impl/mediation/c/a;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/ads/a$a;
.implements Lccsancom/applovin/mediation/MaxAdListener;
.implements Lccsancom/applovin/mediation/MaxAdRevenueListener;
.implements Lccsancom/applovin/mediation/MaxAdViewAdListener;
.implements Lccsancom/applovin/mediation/MaxRewardedAdListener;


# instance fields
.field private final a:Lccsancom/applovin/impl/mediation/ads/a$a;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    return-void
.end method


# virtual methods
.method public onAdClicked(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->d(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdCollapsed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->h(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdDisplayFailed(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onAdDisplayed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdExpanded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->g(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onRewardedVideoCompleted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->f(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onRewardedVideoStarted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->e(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onUserRewarded(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c/a;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V

    return-void
.end method
