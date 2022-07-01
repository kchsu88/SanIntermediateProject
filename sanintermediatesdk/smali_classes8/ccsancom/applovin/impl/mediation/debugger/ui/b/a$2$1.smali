.class Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/applovin/impl/mediation/debugger/ui/a$a<",
        "Lccsancom/applovin/mediation/MaxDebuggerAdUnitsListActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lccsanandroid/app/Activity;)V
    .locals 0

    check-cast p1, Lccsancom/applovin/mediation/MaxDebuggerAdUnitsListActivity;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$1;->a(Lccsancom/applovin/mediation/MaxDebuggerAdUnitsListActivity;)V

    return-void
.end method

.method public a(Lccsancom/applovin/mediation/MaxDebuggerAdUnitsListActivity;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->e()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a;->b(Lccsancom/applovin/impl/mediation/debugger/ui/b/a;)Lccsancom/applovin/impl/mediation/debugger/ui/b/b;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/b;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/mediation/MaxDebuggerAdUnitsListActivity;->initialize(Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method
