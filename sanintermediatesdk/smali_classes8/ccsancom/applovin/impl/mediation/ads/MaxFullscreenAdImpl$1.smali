.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->destroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/a/c;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destroying ad for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v4, v4, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adUnitId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'; current ad: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v4}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/a/c;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;)Lccsancom/applovin/impl/mediation/a/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->destroyAd(Lccsancom/applovin/mediation/MaxAd;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
