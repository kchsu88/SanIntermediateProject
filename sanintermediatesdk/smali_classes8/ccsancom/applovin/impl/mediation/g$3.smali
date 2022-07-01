.class Lccsancom/applovin/impl/mediation/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/a/a;Lccsanandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lccsancom/applovin/impl/mediation/a/a;

.field final synthetic c:Lccsancom/applovin/impl/mediation/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g;Ljava/lang/Runnable;Lccsancom/applovin/impl/mediation/a/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$3;->c:Lccsancom/applovin/impl/mediation/g;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$3;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g$3;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$3;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start displaying ad"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$3;->b:Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediationAdapterWrapper"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    const/16 v2, -0x1450

    invoke-direct {v1, v2, v0}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$3;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->f(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/g$a;

    move-result-object v0

    const-string/jumbo v2, "show_ad"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/mediation/g$a;->b(Lccsancom/applovin/impl/mediation/g$a;Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$3;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0, v2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$3;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->d(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->A()Lccsancom/applovin/impl/mediation/f;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$3;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/g$3;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/g;->g(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/applovin/impl/mediation/f;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/mediation/a/a;)V

    :goto_0
    return-void
.end method
