.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsancom/applovin/mediation/MaxError;

.field final synthetic c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;->b:Lccsancom/applovin/mediation/MaxError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b;->a:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->adListener:Lccsancom/applovin/mediation/MaxAdListener;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;->a:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$2;->b:Lccsancom/applovin/mediation/MaxError;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/i;->a(Lccsancom/applovin/mediation/MaxAdListener;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;Z)V

    return-void
.end method
