.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->c(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/b;->b(Lccsancom/applovin/impl/mediation/a/c;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->tag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Showing ad for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\'; loaded ad: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/a/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/a/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/a/a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/a/c;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->a:Ljava/lang/String;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->b:Lccsanandroid/app/Activity;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;

    iget-object v4, v4, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v4, v4, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->listenerWrapper:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->showFullscreenAd(Lccsancom/applovin/mediation/MaxAd;Ljava/lang/String;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method
