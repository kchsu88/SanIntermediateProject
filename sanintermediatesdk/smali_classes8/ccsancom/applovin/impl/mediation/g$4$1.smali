.class Lccsancom/applovin/impl/mediation/g$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/mediation/adapter/listeners/MaxSignalCollectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/g$4;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g$4;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$4$1;->a:Lccsancom/applovin/impl/mediation/g$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalCollected(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4$1;->a:Lccsancom/applovin/impl/mediation/g$4;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$4$1;->a:Lccsancom/applovin/impl/mediation/g$4;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/g$4;->d:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    return-void
.end method

.method public onSignalCollectionFailed(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$4$1;->a:Lccsancom/applovin/impl/mediation/g$4;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/g$4;->f:Lccsancom/applovin/impl/mediation/g;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/g$4$1;->a:Lccsancom/applovin/impl/mediation/g$4;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/g$4;->d:Lccsancom/applovin/impl/mediation/g$b;

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/mediation/g;->b(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;Lccsancom/applovin/impl/mediation/g$b;)V

    return-void
.end method
