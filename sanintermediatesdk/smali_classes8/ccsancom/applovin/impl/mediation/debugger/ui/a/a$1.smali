.class Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->initialize(Lccsancom/applovin/impl/mediation/debugger/a/a/a;Lccsancom/applovin/impl/mediation/debugger/a/a/b;Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

.field final synthetic c:Lccsancom/applovin/impl/mediation/debugger/ui/a/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/mediation/debugger/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 3

    instance-of p1, p2, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/a;

    const-class v0, Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;

    invoke-direct {v2, p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V

    invoke-static {p1, v0, v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/a/a;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    :cond_0
    return-void
.end method
