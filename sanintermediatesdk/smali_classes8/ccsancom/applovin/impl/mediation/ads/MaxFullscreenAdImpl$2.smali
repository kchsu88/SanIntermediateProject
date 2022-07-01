.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->loadAd(Lccsanandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/app/Activity;

.field final synthetic b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->a:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->a:Lccsanandroid/app/Activity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->al()Lccsanandroid/app/Activity;

    move-result-object v0

    :goto_0
    move-object v5, v0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v2, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adUnitId:Ljava/lang/String;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v3, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adFormat:Lccsancom/applovin/mediation/MaxAdFormat;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->loadRequestBuilder:Lccsancom/applovin/impl/sdk/network/i$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/i$a;->a()Lccsancom/applovin/impl/sdk/network/i;

    move-result-object v4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v6, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->listenerWrapper:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->loadAd(Ljava/lang/String;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/network/i;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method
