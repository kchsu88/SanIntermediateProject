.class Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->initialize(Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/ui/c/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/c/a;Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/c/a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 3

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/a;->a()I

    move-result p1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->e:Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/b$a;->ordinal()I

    move-result v0

    const-string v1, "Instructions"

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->s()Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->c()Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->e:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    if-ne v2, v0, :cond_0

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/c/a;

    const-class v0, Lccsancom/applovin/mediation/MaxDebuggerMultiAdActivity;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->ad()Lccsancom/applovin/impl/sdk/a;

    move-result-object p1

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;)V

    invoke-static {p2, v0, p1, v1}, Lccsancom/applovin/impl/mediation/debugger/ui/c/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/c/a;Ljava/lang/Class;Lccsancom/applovin/impl/sdk/a;Lccsancom/applovin/impl/mediation/debugger/ui/a$a;)V

    goto :goto_0

    :cond_0
    sget-object v2, Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;->d:Lccsancom/applovin/impl/mediation/debugger/a/b/b$b;

    if-ne v2, v0, :cond_1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->d()V

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->m()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/c/a;

    const-string v0, "Restart Required"

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->m()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/c/a$1;->b:Lccsancom/applovin/impl/mediation/debugger/ui/c/a;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    :goto_0
    return-void
.end method
