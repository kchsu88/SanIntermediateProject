.class abstract Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/ads/a$a;
.implements Lccsancom/applovin/mediation/MaxAdListener;
.implements Lccsancom/applovin/mediation/MaxAdRevenueListener;
.implements Lccsancom/applovin/mediation/MaxAdViewAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "b"
.end annotation


# instance fields
.field final synthetic b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V

    return-void
.end method


# virtual methods
.method public onAdClicked(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->d(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    :cond_0
    return-void
.end method

.method public onAdCollapsed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->startAutoRefresh()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->h(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    :cond_1
    return-void
.end method

.method public onAdDisplayFailed(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;Z)V

    :cond_0
    return-void
.end method

.method public onAdDisplayed(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->b(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    :cond_0
    return-void
.end method

.method public onAdExpanded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/b;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->stopAutoRefresh()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->g(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    :cond_1
    return-void
.end method

.method public onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    :cond_0
    return-void
.end method

.method public onAdRevenuePaid(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->revenueListener:Lccsancom/applovin/mediation/MaxAdRevenueListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdRevenueListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method
