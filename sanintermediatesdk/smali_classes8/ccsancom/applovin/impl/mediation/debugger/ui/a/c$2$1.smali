.class Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/applovin/impl/mediation/debugger/ui/a$a<",
        "Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/d/a;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;Lccsancom/applovin/impl/mediation/debugger/ui/d/a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lccsanandroid/app/Activity;)V
    .locals 0

    check-cast p1, Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;->a(Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V

    return-void
.end method

.method public a(Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->b:Ljava/util/List;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/a;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/a;->b()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/debugger/ui/a/c$2;->a:Lccsancom/applovin/impl/sdk/k;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;->initialize(Lccsancom/applovin/impl/mediation/debugger/a/a/a;Lccsancom/applovin/impl/mediation/debugger/a/a/b;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method
