.class Lccsancom/applovin/impl/mediation/g$a$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g$a;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/mediation/MaxError;

.field final synthetic b:Lccsancom/applovin/impl/mediation/g$a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g$a;Lccsancom/applovin/mediation/MaxError;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$a$12;->b:Lccsancom/applovin/impl/mediation/g$a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$a$12;->a:Lccsancom/applovin/mediation/MaxError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a$12;->b:Lccsancom/applovin/impl/mediation/g$a;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->h(Lccsancom/applovin/impl/mediation/g;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a$12;->b:Lccsancom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g$a;->a(Lccsancom/applovin/impl/mediation/g$a;)Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$a$12;->b:Lccsancom/applovin/impl/mediation/g$a;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/g$a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/g;->l(Lccsancom/applovin/impl/mediation/g;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a$12;->a:Lccsancom/applovin/mediation/MaxError;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V

    :cond_0
    return-void
.end method