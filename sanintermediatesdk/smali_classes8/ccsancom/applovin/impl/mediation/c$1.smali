.class Lccsancom/applovin/impl/mediation/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/c;->a(Lccsancom/applovin/impl/mediation/a/c;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/a/c;

.field final synthetic b:Lccsancom/applovin/impl/mediation/c;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/c;Lccsancom/applovin/impl/mediation/a/c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/c$1;->b:Lccsancom/applovin/impl/mediation/c;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/c$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c$1;->b:Lccsancom/applovin/impl/mediation/c;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/c;->a(Lccsancom/applovin/impl/mediation/c;)Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AdHiddenCallbackTimeoutManager"

    const-string v2, "Timing out..."

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/c$1;->b:Lccsancom/applovin/impl/mediation/c;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/c;->b(Lccsancom/applovin/impl/mediation/c;)Lccsancom/applovin/impl/mediation/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/c$1;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-interface {v0, v1}, Lccsancom/applovin/impl/mediation/c$a;->c(Lccsancom/applovin/impl/mediation/a/c;)V

    return-void
.end method
