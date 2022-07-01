.class Lccsancom/applovin/impl/mediation/g$a$21;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g$a;->onUserRewarded(Lccsancom/applovin/mediation/MaxReward;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/c;

.field final synthetic b:Lccsancom/applovin/mediation/MaxReward;

.field final synthetic c:Lccsancom/applovin/impl/mediation/g$a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g$a;Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/mediation/MaxReward;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$a$21;->c:Lccsancom/applovin/impl/mediation/g$a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/g$a$21;->a:Lccsancom/applovin/impl/mediation/a/c;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/g$a$21;->b:Lccsancom/applovin/mediation/MaxReward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$a$21;->c:Lccsancom/applovin/impl/mediation/g$a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g$a;->a(Lccsancom/applovin/impl/mediation/g$a;)Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$a$21;->a:Lccsancom/applovin/impl/mediation/a/c;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/g$a$21;->b:Lccsancom/applovin/mediation/MaxReward;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl$a;->onUserRewarded(Lccsancom/applovin/mediation/MaxAd;Lccsancom/applovin/mediation/MaxReward;)V

    return-void
.end method
