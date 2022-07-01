.class Lccsancom/applovin/impl/mediation/b/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/b/b;->a(Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/g;

.field final synthetic b:Lccsancom/applovin/impl/mediation/a/f$a;

.field final synthetic c:Lccsancom/applovin/impl/mediation/b/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/b/b;Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/a/f$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/b$2;->c:Lccsancom/applovin/impl/mediation/b/b;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/b$2;->a:Lccsancom/applovin/impl/mediation/a/g;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/b/b$2;->b:Lccsancom/applovin/impl/mediation/a/f$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/b$2;->c:Lccsancom/applovin/impl/mediation/b/b;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/b/b;->c(Lccsancom/applovin/impl/mediation/b/b;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/b$2;->c:Lccsancom/applovin/impl/mediation/b/b;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/b/b;->a(Lccsancom/applovin/impl/mediation/b/b;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/b$2;->a:Lccsancom/applovin/impl/mediation/a/g;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/b$2;->c:Lccsancom/applovin/impl/mediation/b/b;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/b/b;->b(Lccsancom/applovin/impl/mediation/b/b;)Lccsanandroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/b/b$2;->b:Lccsancom/applovin/impl/mediation/a/f$a;

    invoke-virtual {v0, v1, v2, v3, v4}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->collectSignal(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/mediation/a/g;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/a/f$a;)V

    return-void
.end method
