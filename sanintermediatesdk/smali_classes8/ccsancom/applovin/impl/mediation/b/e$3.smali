.class Lccsancom/applovin/impl/mediation/b/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/b/e;->a(Lccsancom/applovin/mediation/MaxAd;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/a;

.field final synthetic b:Ljava/lang/Float;

.field final synthetic c:Lccsancom/applovin/impl/mediation/b/e;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/b/e;Lccsancom/applovin/impl/mediation/a/a;Ljava/lang/Float;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/e$3;->c:Lccsancom/applovin/impl/mediation/b/e;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/e$3;->a:Lccsancom/applovin/impl/mediation/a/a;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/b/e$3;->b:Ljava/lang/Float;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e$3;->c:Lccsancom/applovin/impl/mediation/b/e;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/b/e;->b(Lccsancom/applovin/impl/mediation/b/e;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e$3;->a:Lccsancom/applovin/impl/mediation/a/a;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/e$3;->b:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->processAdLossPostback(Lccsancom/applovin/impl/mediation/a/a;Ljava/lang/Float;)V

    return-void
.end method
