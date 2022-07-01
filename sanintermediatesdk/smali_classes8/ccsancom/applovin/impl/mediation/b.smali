.class public Lccsancom/applovin/impl/mediation/b;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/a$a;
.implements Lccsancom/applovin/impl/mediation/c$a;


# instance fields
.field private final a:Lccsancom/applovin/impl/mediation/a;

.field private final b:Lccsancom/applovin/impl/mediation/c;

.field private final c:Lccsancom/applovin/mediation/MaxAdListener;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/mediation/MaxAdListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b;->c:Lccsancom/applovin/mediation/MaxAdListener;

    new-instance p2, Lccsancom/applovin/impl/mediation/a;

    invoke-direct {p2, p1}, Lccsancom/applovin/impl/mediation/a;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b;->a:Lccsancom/applovin/impl/mediation/a;

    new-instance p2, Lccsancom/applovin/impl/mediation/c;

    invoke-direct {p2, p1, p0}, Lccsancom/applovin/impl/mediation/c;-><init>(Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/mediation/c$a;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b;->b:Lccsancom/applovin/impl/mediation/c;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b;)Lccsancom/applovin/mediation/MaxAdListener;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b;->c:Lccsancom/applovin/mediation/MaxAdListener;

    return-object p0
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/a/c;)V
    .locals 3

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/c;->t()J

    move-result-wide v0

    new-instance v2, Lccsancom/applovin/impl/mediation/b$1;

    invoke-direct {v2, p0, p1}, Lccsancom/applovin/impl/mediation/b$1;-><init>(Lccsancom/applovin/impl/mediation/b;Lccsancom/applovin/impl/mediation/a/c;)V

    invoke-static {v2, v0, v1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->runOnUiThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public a(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b;->b:Lccsancom/applovin/impl/mediation/c;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/c;->a()V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b;->a:Lccsancom/applovin/impl/mediation/a;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a;->a()V

    return-void
.end method

.method public b(Lccsancom/applovin/impl/mediation/a/c;)V
    .locals 5

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/c;->r()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b;->b:Lccsancom/applovin/impl/mediation/c;

    invoke-virtual {v2, p1, v0, v1}, Lccsancom/applovin/impl/mediation/c;->a(Lccsancom/applovin/impl/mediation/a/c;J)V

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/c;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b;->a:Lccsancom/applovin/impl/mediation/a;

    invoke-virtual {v0, p1, p0}, Lccsancom/applovin/impl/mediation/a;->a(Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/impl/mediation/a$a;)V

    :cond_1
    return-void
.end method

.method public c(Lccsancom/applovin/impl/mediation/a/c;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b;->c:Lccsancom/applovin/mediation/MaxAdListener;

    invoke-interface {v0, p1}, Lccsancom/applovin/mediation/MaxAdListener;->onAdHidden(Lccsancom/applovin/mediation/MaxAd;)V

    return-void
.end method
