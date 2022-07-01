.class Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;
.super Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/applovin/impl/mediation/debugger/ui/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/debugger/ui/a/b;

.field private final o:Lccsancom/applovin/impl/mediation/debugger/a/a/b;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/debugger/ui/a/b;Lccsancom/applovin/impl/mediation/debugger/a/a/b;Ljava/lang/String;Z)V
    .locals 2

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->a:Lccsancom/applovin/impl/mediation/debugger/ui/a/b;

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/debugger/a/a/b;->a()Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    move-result-object v0

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/debugger/ui/a/b;->a(Lccsancom/applovin/impl/mediation/debugger/ui/a/b;)Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/b/a/a;-><init>(Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsanandroid/content/Context;)V

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->o:Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    invoke-virtual {p2}, Lccsancom/applovin/impl/mediation/debugger/a/a/b;->c()Ljava/lang/String;

    move-result-object p1

    const/high16 p2, -0x1000000

    const/16 v0, 0x12

    const/4 v1, 0x1

    invoke-static {p1, p2, v0, v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->createSpannedString(Ljava/lang/String;III)Lccsanandroid/text/SpannedString;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->d:Lccsanandroid/text/SpannedString;

    invoke-static {p3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lccsanandroid/text/SpannedString;

    invoke-direct {p1, p3}, Lccsanandroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->e:Lccsanandroid/text/SpannedString;

    iput-boolean p4, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->c:Z

    return-void
.end method


# virtual methods
.method public a()Lccsancom/applovin/impl/mediation/debugger/a/a/b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->o:Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    return-object v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/debugger/ui/a/b$a;->c:Z

    return v0
.end method

.method public c()I
    .locals 1

    const v0, -0xbbbbbc

    return v0
.end method
