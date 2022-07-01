.class Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->showAd(Ljava/lang/String;Lccsanandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lccsanandroid/app/Activity;

.field final synthetic c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Ljava/lang/String;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->b:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;->c:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;

    sget-object v1, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;->d:Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;

    new-instance v2, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;

    invoke-direct {v2, p0}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3$1;-><init>(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$3;)V

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;->a(Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl;Lccsancom/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c;Ljava/lang/Runnable;)V

    return-void
.end method
