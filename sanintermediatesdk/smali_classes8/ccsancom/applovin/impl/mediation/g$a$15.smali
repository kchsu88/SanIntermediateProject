.class Lccsancom/applovin/impl/mediation/g$a$15;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g$a;->b(Ljava/lang/String;Lccsanandroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsanandroid/os/Bundle;

.field final synthetic b:Lccsancom/applovin/impl/mediation/g$a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g$a;Lccsanandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$a$15;->b:Lccsancom/applovin/impl/mediation/g$a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$a$15;->a:Lccsanandroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a$15;->b:Lccsancom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g$a;->a(Lccsancom/applovin/impl/mediation/g$a;)Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$a$15;->b:Lccsancom/applovin/impl/mediation/g$a;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/g;->g(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a$15;->a:Lccsanandroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->b(Lccsancom/applovin/mediation/MaxAd;Lccsanandroid/os/Bundle;)V

    return-void
.end method
