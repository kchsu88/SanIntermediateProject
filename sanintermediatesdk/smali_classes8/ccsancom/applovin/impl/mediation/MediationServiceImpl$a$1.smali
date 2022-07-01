.class Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/MaxAd;

.field final synthetic b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->a:Lccsancom/applovin/mediation/MaxAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->a:Lccsancom/applovin/mediation/MaxAd;

    invoke-interface {v0}, Lccsancom/applovin/mediation/MaxAd;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->a:Lccsancom/applovin/mediation/MaxAd;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/q;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ak()Lccsancom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/l;->a()V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->b:Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)Lccsancom/applovin/impl/mediation/ads/a$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a$1;->a:Lccsancom/applovin/mediation/MaxAd;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/i;->c(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method
