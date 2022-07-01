.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/MaxAd;

.field final synthetic b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->a:Lccsancom/applovin/mediation/MaxAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->g(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->D()Lccsancom/applovin/impl/sdk/s;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->a:Lccsancom/applovin/mediation/MaxAd;

    check-cast v1, Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/s;->b(Lccsancom/applovin/impl/mediation/a/a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    const-string v1, "ad was hidden"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$3;->a:Lccsancom/applovin/mediation/MaxAd;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Z)V

    return-void
.end method
