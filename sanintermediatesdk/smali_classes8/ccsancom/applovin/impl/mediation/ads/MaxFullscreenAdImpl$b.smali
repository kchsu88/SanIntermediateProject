.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/ads/a$a;
.implements Lccsancom/applovin/mediation/MaxAdListener;
.implements Lccsancom/applovin/mediation/MaxAdRevenueListener;
.implements Lccsancom/applovin/mediation/MaxRewardedAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->d(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public onAdDisplayFailed(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    sget-object v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    new-instance v2, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdDisplayed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->f(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->c(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/b;->a(Lccsancom/applovin/mediation/MaxAd;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    sget-object v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    new-instance v2, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;

    invoke-direct {v2, p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->e(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    sget-object v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    new-instance v2, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;

    invoke-direct {v2, p0, p1, p2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    move-object v1, p1

    check-cast v1, Lccsancom/applovin/impl/mediation/a/c;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsancom/applovin/impl/mediation/a/c;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->d(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object p1, p1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->loadRequestBuilder:Lccsancom/applovin/impl/sdk/network/i$a;

    const-string v0, "expired_ad_ad_unit_id"

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    sget-object v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    new-instance v2, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$1;

    invoke-direct {v2, p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$1;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;Lccsancom/applovin/mediation/MaxAd;)V

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->revenueListener:Lccsancom/applovin/mediation/MaxAdRevenueListener;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method

.method public onRewardedVideoCompleted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->f(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public onRewardedVideoStarted(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->e(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method

.method public onUserRewarded(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;Z)V

    return-void
.end method
