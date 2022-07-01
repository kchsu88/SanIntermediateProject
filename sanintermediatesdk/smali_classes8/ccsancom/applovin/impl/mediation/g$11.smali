.class Lccsancom/applovin/impl/mediation/g$11;
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

.field final synthetic b:Lccsancom/applovin/impl/mediation/a/a;

.field final synthetic c:Lccsanandroid/app/Activity;

.field final synthetic d:Lccsancom/applovin/impl/mediation/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/impl/mediation/a/a;Lccsanandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$11;->d:Lccsancom/applovin/impl/mediation/g;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$11;->a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g$11;->b:Lccsancom/applovin/impl/mediation/a/a;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/g$11;->c:Lccsanandroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$11;->d:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->e(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/mediation/adapter/MaxAdViewAdapter;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$11;->a:Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$11;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g$11;->c:Lccsanandroid/app/Activity;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/g$11;->d:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v4}, Lccsancom/applovin/impl/mediation/g;->f(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/g$a;

    move-result-object v4

    invoke-interface {v0, v1, v2, v3, v4}, Lccsancom/applovin/mediation/adapter/MaxAdViewAdapter;->loadAdViewAd(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterResponseParameters;Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;Lccsancom/applovin/mediation/adapter/listeners/MaxAdViewAdapterListener;)V

    return-void
.end method
