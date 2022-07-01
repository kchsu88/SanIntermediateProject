.class Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/mediation/debugger/ui/d/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->initialize(Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;

.field final synthetic b:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;->b:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/debugger/ui/d/a;Lccsancom/applovin/impl/mediation/debugger/ui/d/c;)V
    .locals 1

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object p1

    check-cast p2, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->d()Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->g()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object p1

    move-object v0, p2

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->d()Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->b(Ljava/lang/String;)V

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;->m()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;->b:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    const-string v0, "Restart Required"

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->showAlert(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/content/Context;)V

    :goto_0
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$2;->b:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->b(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Lccsancom/applovin/impl/mediation/debugger/ui/d/d;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;->notifyDataSetChanged()V

    return-void
.end method
