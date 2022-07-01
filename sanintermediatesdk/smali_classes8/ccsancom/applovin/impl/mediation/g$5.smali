.class Lccsancom/applovin/impl/mediation/g$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/g;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/g;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/g;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/g$5;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$5;->a:Lccsancom/applovin/impl/mediation/g;

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$5;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/g;->e(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/mediation/adapter/MaxAdapter;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapter;->onDestroy()V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/g$5;->a:Lccsancom/applovin/impl/mediation/g;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/mediation/adapter/MaxAdapter;)Lccsancom/applovin/mediation/adapter/MaxAdapter;

    return-void
.end method
