.class Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;
.super Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V
    .locals 1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;Z)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->j(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Precache ad with ad unit ID \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' loaded after MaxAdView was destroyed. Destroying the ad."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lccsancom/applovin/mediation/MaxAd;)V

    return-void

    :cond_0
    move-object v0, p1

    check-cast v0, Lccsancom/applovin/impl/mediation/a/b;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->k(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/a/b;->c(Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v1, v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/b;->B()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/b;->C()J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling banner ad refresh "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " milliseconds from now for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v5, v5, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\'..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->l(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/sdk/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lccsancom/applovin/impl/sdk/d;->a(J)V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method
