.class Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->initialize(Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lccsancom/applovin/impl/mediation/debugger/ui/a/c;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;Lccsancom/applovin/impl/sdk/k;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/c;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->a:Lccsancom/applovin/impl/sdk/k;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 3

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->c:Lccsancom/applovin/impl/mediation/debugger/ui/a/c;

    const-class v0, Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object v1

    new-instance v2, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;

    invoke-direct {v2, p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;Lccsancom/applovin/impl/mediation/debugger/ui/d/a;)V

    invoke-static {p2, v0, v1, v2}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c;->a(Lccsancom/applovin/impl/mediation/debugger/ui/a/c;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    return-void
.end method
