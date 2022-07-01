.class Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/MediationServiceImpl;->collectSignal(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/mediation/a/g;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/mediation/a/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/f$a;

.field final synthetic b:Lccsancom/applovin/impl/mediation/a/g;

.field final synthetic c:Lccsancom/applovin/impl/mediation/g;

.field final synthetic d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Lccsancom/applovin/impl/mediation/a/f$a;Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->a:Lccsancom/applovin/impl/mediation/a/f$a;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->b:Lccsancom/applovin/impl/mediation/a/g;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalCollected(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->a:Lccsancom/applovin/impl/mediation/a/f$a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->b:Lccsancom/applovin/impl/mediation/a/g;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v1, v2, p1}, Lccsancom/applovin/impl/mediation/a/f;->a(Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;)Lccsancom/applovin/impl/mediation/a/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lccsancom/applovin/impl/mediation/a/f$a;->a(Lccsancom/applovin/impl/mediation/a/f;)V

    return-void
.end method

.method public onSignalCollectionFailed(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->d:Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->b:Lccsancom/applovin/impl/mediation/a/g;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0, p1, v1, v2}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->a(Lccsancom/applovin/impl/mediation/MediationServiceImpl;Ljava/lang/String;Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/g;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->a:Lccsancom/applovin/impl/mediation/a/f$a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->b:Lccsancom/applovin/impl/mediation/a/g;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/MediationServiceImpl$2;->c:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v1, v2, p1}, Lccsancom/applovin/impl/mediation/a/f;->b(Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;)Lccsancom/applovin/impl/mediation/a/f;

    move-result-object p1

    invoke-interface {v0, p1}, Lccsancom/applovin/impl/mediation/a/f$a;->a(Lccsancom/applovin/impl/mediation/a/f;)V

    return-void
.end method
