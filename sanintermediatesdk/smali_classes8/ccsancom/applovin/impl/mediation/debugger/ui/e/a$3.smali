.class Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;
.super Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->a(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

.field final synthetic o:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;Lccsancom/applovin/impl/mediation/debugger/a/b/b;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-direct {p0, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public f()I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lccsancom/applovin/sdk/R$drawable;->applovin_ic_check_mark_borderless:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->o:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->c(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, -0xffff01

    return v0

    :cond_0
    invoke-super {p0}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;->g()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Please restart the app to show ads from the network: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$3;->a:Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/debugger/a/b/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
