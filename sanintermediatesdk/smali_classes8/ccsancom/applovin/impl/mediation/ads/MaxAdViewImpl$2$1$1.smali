.class Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;->onAnimationEnd(Lccsanandroid/animation/Animator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;->c:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->b(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/sdk/w;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;->c:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->a:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/w;->a(Lccsancom/applovin/impl/mediation/a/b;)J

    move-result-wide v0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;->c:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->a:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/a/b;->y()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;->c:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;->c:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->a:Lccsancom/applovin/impl/mediation/a/b;

    invoke-static {v2, v3, v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;J)V

    :cond_0
    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1$1;->a:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;->c:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v2, v0, v1}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;J)V

    return-void
.end method
