.class Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/mediation/MaxAdListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/c;

.field final synthetic b:J

.field final synthetic c:Lccsancom/applovin/mediation/MaxAdListener;

.field final synthetic d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/c;JLccsancom/applovin/mediation/MaxAdListener;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->a:Lccsancom/applovin/impl/mediation/a/c;

    iput-wide p3, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->b:J

    iput-object p5, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->c:Lccsancom/applovin/mediation/MaxAdListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->o()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/c;->L()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") has not been displayed after "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms. Failing ad display..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediationService"

    invoke-static {v1, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v0}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(ILjava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->a:Lccsancom/applovin/impl/mediation/a/c;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->c:Lccsancom/applovin/mediation/MaxAdListener;

    invoke-static {v0, v2, v1, v3}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/a;Lccsancom/applovin/mediation/MaxError;Lccsancom/applovin/mediation/MaxAdListener;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ac()Lccsancom/applovin/impl/sdk/q;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/q;->b(Ljava/lang/Object;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$3;->d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->ak()Lccsancom/applovin/impl/sdk/l;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/l;->a()V

    return-void
.end method
