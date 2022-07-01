.class Lccsancom/applovin/impl/mediation/g$9;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g;->a(Ljava/lang/String;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/impl/mediation/a/a;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

.field final synthetic b:Lccsanandroid/app/Activity;

.field final synthetic c:Lccsancom/applovin/impl/mediation/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$9;->c:Lccsancom/applovin/impl/mediation/g;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$9;->a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g$9;->b:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$9;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->e(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$9;->a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$9;->b:Lccsanandroid/app/Activity;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g$9;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/g;->f(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/g$a;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lccsancom/applovin/mediation/adapter/MaxRewardedInterstitialAdapter;->loadRewardedInterstitialAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxRewardedInterstitialAdapterListener;)V

    return-void
.end method
