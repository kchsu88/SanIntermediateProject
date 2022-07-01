.class Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
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
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lccsanandroid/app/Activity;)V
    .locals 0

    check-cast p1, Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;->a(Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V

    return-void
.end method

.method public a(Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->a()Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;

    iget-object v1, v1, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->b:Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;

    iget-object v2, v2, Lccsancom/applovin/impl/mediation/debugger/ui/a/a$1;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1, v1, v0, v2}, Lccsancom/applovin/mediation/MaxDebuggerAdUnitDetailActivity;->initialize(Lccsancom/applovin/impl/mediation/debugger/a/a/a;Lccsancom/applovin/impl/mediation/debugger/a/a/b;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method
