.class Lccsancom/applovin/impl/mediation/debugger/ui/e/a$1;
.super Lccsancom/applovin/impl/mediation/debugger/ui/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->initialize(Ljava/util/List;Lccsancom/applovin/impl/sdk/k;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;Lccsanandroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/mediation/debugger/ui/d/d;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 0

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1
.end method

.method protected b()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected b(I)Lccsancom/applovin/impl/mediation/debugger/ui/d/c;
    .locals 1

    new-instance p1, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->b:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-direct {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)V

    const-string v0, "Select a network to load ads using your MAX ad unit configuration. Once enabled, this functionality will reset on the next app session."

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$a;->a()Lccsancom/applovin/impl/mediation/debugger/ui/d/c;

    move-result-object p1

    return-object p1
.end method

.method protected c(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/ui/d/c;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/e/a$1;->a:Lccsancom/applovin/impl/mediation/debugger/ui/e/a;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/e/a;->a(Lccsancom/applovin/impl/mediation/debugger/ui/e/a;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
