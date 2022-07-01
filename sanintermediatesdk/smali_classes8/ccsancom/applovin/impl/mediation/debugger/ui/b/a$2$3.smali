.class Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$3;
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
        "Lccsancom/applovin/mediation/MaxDebuggerDetailActivity;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$3;->b:Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$3;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lccsanandroid/app/Activity;)V
    .locals 0

    check-cast p1, Lccsancom/applovin/mediation/MaxDebuggerDetailActivity;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$3;->a(Lccsancom/applovin/mediation/MaxDebuggerDetailActivity;)V

    return-void
.end method

.method public a(Lccsancom/applovin/mediation/MaxDebuggerDetailActivity;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a$2$3;->a:Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->d()Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/mediation/MaxDebuggerDetailActivity;->initialize(Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V

    return-void
.end method
