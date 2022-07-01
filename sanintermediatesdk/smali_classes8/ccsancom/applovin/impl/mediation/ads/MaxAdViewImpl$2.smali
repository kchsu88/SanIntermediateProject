.class Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/b;

.field final synthetic b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsancom/applovin/impl/mediation/a/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->a:Lccsancom/applovin/impl/mediation/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->a:Lccsancom/applovin/impl/mediation/a/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/b;->s()Lccsanandroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->c(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/mediation/ads/MaxAdView;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    new-instance v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;

    invoke-direct {v3, p0, v2, v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2$1;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;Lccsancom/applovin/mediation/ads/MaxAdView;Lccsanandroid/view/View;)V

    invoke-static {v1, v3}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;Lccsanandroid/animation/AnimatorListenerAdapter;)V

    goto :goto_1

    :cond_0
    const-string v0, "MaxAdView does not have a parent view"

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {v2, v1, v0}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MaxAdView does not have a loaded ad view"

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->logger:Lccsancom/applovin/impl/sdk/r;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    iget-object v3, v3, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    invoke-direct {v2, v1, v0}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->b:Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;->h(Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl;)Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxAdViewImpl$2;->a:Lccsancom/applovin/impl/mediation/a/b;

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxError;)V

    :goto_1
    return-void
.end method
