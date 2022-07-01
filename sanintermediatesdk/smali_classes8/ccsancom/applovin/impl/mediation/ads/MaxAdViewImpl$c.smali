.class Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;
.super Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;


# direct methods
.method private constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V
    .locals 1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$b;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 3

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object p1, p1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to precache ad for refresh with error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {p1, p2}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/mediation/MaxError;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->j(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad with ad unit ID \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' loaded after MaxAdView was destroyed. Destroying the ad."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lccsancom/applovin/mediation/MaxAd;)V

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    const-string v2, "Successfully pre-cached ad for refresh"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$c;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method
