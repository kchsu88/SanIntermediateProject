.class Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/ads/a$a;

.field final synthetic b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v0

    const-string/jumbo v1, "viewability_flags"

    const-string/jumbo v2, "visible_ad_ad_unit_id"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/sdk/w;

    move-result-object v0

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v3

    invoke-virtual {v0, v3}, Lccsancom/applovin/impl/sdk/w;->a(Lccsancom/applovin/impl/mediation/a/b;)J

    move-result-wide v3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadRequestBuilder:Lccsancom/applovin/impl/sdk/network/i$a;

    iget-object v5, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v5}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/a/b;

    move-result-object v5

    invoke-virtual {v5}, Lccsancom/applovin/impl/mediation/a/b;->getAdUnitId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadRequestBuilder:Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/mediation/ads/MaxAdView;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/mediation/ads/MaxAdView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/mediation/ads/MaxAdView;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/mediation/ads/MaxAdView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/mediation/ads/MaxAdView;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/mediation/ads/MaxAdView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/mediation/ads/MaxAdView;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/mediation/ads/MaxAdView;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->pxToDp(Lccsanandroid/content/Context;I)I

    move-result v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadRequestBuilder:Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "viewport_width"

    invoke-virtual {v2, v3, v0}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "viewport_height"

    invoke-virtual {v0, v2, v1}, Lccsancom/applovin/impl/sdk/network/i$a;->a(Ljava/lang/String;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/i$a;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading banner ad for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' and notifying "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v2, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adUnitId:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->loadRequestBuilder:Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/i$a;->a()Lccsancom/applovin/impl/sdk/network/i;

    move-result-object v4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->d(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsanandroid/app/Activity;

    move-result-object v5

    iget-object v6, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->loadAd(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/network/i;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method
