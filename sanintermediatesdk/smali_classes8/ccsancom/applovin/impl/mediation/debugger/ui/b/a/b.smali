.class public Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;
.super Lccsancom/applovin/impl/mediation/debugger/ui/d/c;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/h$a;

.field private final o:Lccsanandroid/content/Context;

.field private final p:Z


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/h$a;ZLccsanandroid/content/Context;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;->e:Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/ui/d/c;-><init>(Lccsancom/applovin/impl/mediation/debugger/ui/d/c$b;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->a:Lccsancom/applovin/impl/sdk/h$a;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->o:Lccsanandroid/content/Context;

    new-instance p3, Lccsanandroid/text/SpannedString;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/h$a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->d:Lccsanandroid/text/SpannedString;

    iput-boolean p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->p:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c_()Lccsanandroid/text/SpannedString;
    .locals 3

    new-instance v0, Lccsanandroid/text/SpannedString;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->a:Lccsancom/applovin/impl/sdk/h$a;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->o:Lccsanandroid/content/Context;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/h$a;->b(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public d_()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->a:Lccsancom/applovin/impl/sdk/h$a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->o:Lccsanandroid/content/Context;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsanandroid/content/Context;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/b;->p:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
