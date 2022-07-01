.class Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/MediationServiceImpl;->showFullscreenAd(Lccsancom/applovin/mediation/MaxAd;Ljava/lang/String;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/ads/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/c;

.field final synthetic b:Lccsancom/applovin/impl/mediation/g;

.field final synthetic c:Lccsanandroid/app/Activity;

.field final synthetic d:Lccsancom/applovin/impl/mediation/ads/a$a;

.field final synthetic e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/impl/mediation/g;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->b:Lccsancom/applovin/impl/mediation/g;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->c:Lccsanandroid/app/Activity;

    iput-object p5, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v0, v1, :cond_1

    :cond_0
    new-instance v0, Lccsancom/applovin/impl/mediation/b/g;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lccsancom/applovin/impl/mediation/b/g;-><init>(Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/e/o$a;->r:Lccsancom/applovin/impl/sdk/e/o$a;

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    :cond_1
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->b:Lccsancom/applovin/impl/mediation/g;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->c:Lccsanandroid/app/Activity;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/a/a;Lccsanandroid/app/Activity;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/q;->a(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/mediation/MaxAdListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->b(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "MediationService"

    const-string v2, "Scheduling impression for ad manually..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->e:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$1;->d:Lccsancom/applovin/impl/mediation/ads/a$a;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->processRawAdImpressionPostback(Lccsancom/applovin/impl/mediation/a/a;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method
