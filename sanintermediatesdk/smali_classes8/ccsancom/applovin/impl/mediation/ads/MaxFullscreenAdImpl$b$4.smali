.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->onAdDisplayFailed(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/MaxAd;

.field final synthetic b:Lccsancom/applovin/mediation/MaxError;

.field final synthetic c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->a:Lccsancom/applovin/mediation/MaxAd;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->b:Lccsancom/applovin/mediation/MaxError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->f(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/b;->a()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->g(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->D()Lccsancom/applovin/impl/sdk/s;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->a:Lccsancom/applovin/mediation/MaxAd;

    check-cast v1, Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/s;->b(Lccsancom/applovin/impl/mediation/a/a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    const-string v1, "ad failed to display"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->a:Lccsancom/applovin/mediation/MaxAd;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$4;->b:Lccsancom/applovin/mediation/MaxError;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;Z)V

    return-void
.end method
