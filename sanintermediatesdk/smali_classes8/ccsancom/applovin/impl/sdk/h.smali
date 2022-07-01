.class public Lccsancom/applovin/impl/sdk/h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/sdk/h$a;
    }
.end annotation


# static fields
.field private static final a:Lccsancom/applovin/impl/sdk/h$a;

.field private static final b:Lccsancom/applovin/impl/sdk/h$a;

.field private static final c:Lccsancom/applovin/impl/sdk/h$a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lccsancom/applovin/impl/sdk/h$a;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->l:Lccsancom/applovin/impl/sdk/c/d;

    const-string v2, "Age Restricted User"

    invoke-direct {v0, v2, v1}, Lccsancom/applovin/impl/sdk/h$a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lccsancom/applovin/impl/sdk/h;->a:Lccsancom/applovin/impl/sdk/h$a;

    new-instance v0, Lccsancom/applovin/impl/sdk/h$a;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->k:Lccsancom/applovin/impl/sdk/c/d;

    const-string v2, "Has User Consent"

    invoke-direct {v0, v2, v1}, Lccsancom/applovin/impl/sdk/h$a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lccsancom/applovin/impl/sdk/h;->b:Lccsancom/applovin/impl/sdk/h$a;

    new-instance v0, Lccsancom/applovin/impl/sdk/h$a;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->m:Lccsancom/applovin/impl/sdk/c/d;

    const-string v2, "\"Do Not Sell\""

    invoke-direct {v0, v2, v1}, Lccsancom/applovin/impl/sdk/h$a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/c/d;)V

    sput-object v0, Lccsancom/applovin/impl/sdk/h;->c:Lccsancom/applovin/impl/sdk/h$a;

    return-void
.end method

.method public static a()Lccsancom/applovin/impl/sdk/h$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/h;->a:Lccsancom/applovin/impl/sdk/h$a;

    return-object v0
.end method

.method public static a(Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lccsancom/applovin/impl/sdk/h;->a:Lccsancom/applovin/impl/sdk/h$a;

    invoke-static {v1, p0}, Lccsancom/applovin/impl/sdk/h;->a(Lccsancom/applovin/impl/sdk/h$a;Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/applovin/impl/sdk/h;->b:Lccsancom/applovin/impl/sdk/h$a;

    invoke-static {v1, p0}, Lccsancom/applovin/impl/sdk/h;->a(Lccsancom/applovin/impl/sdk/h$a;Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lccsancom/applovin/impl/sdk/h;->c:Lccsancom/applovin/impl/sdk/h$a;

    invoke-static {v1, p0}, Lccsancom/applovin/impl/sdk/h;->a(Lccsancom/applovin/impl/sdk/h$a;Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lccsancom/applovin/impl/sdk/h$a;Lccsanandroid/content/Context;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/h$a;->a(Lccsancom/applovin/impl/sdk/h$a;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/h$a;->b(Lccsanandroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Lccsanandroid/content/Context;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/c/d<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/Boolean;",
            "Lccsanandroid/content/Context;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to update compliance value for key: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AppLovinSdk"

    invoke-static {p1, p0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x0

    invoke-static {p0, v1, p2}, Lccsancom/applovin/impl/sdk/c/e;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;Lccsanandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-static {p0, p1, p2}, Lccsancom/applovin/impl/sdk/c/e;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;Lccsanandroid/content/Context;)V

    const/4 p0, 0x1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method public static a(ZLccsanandroid/content/Context;)Z
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->l:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lccsancom/applovin/impl/sdk/h;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Lccsanandroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static b()Lccsancom/applovin/impl/sdk/h$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/h;->b:Lccsancom/applovin/impl/sdk/h$a;

    return-object v0
.end method

.method public static b(ZLccsanandroid/content/Context;)Z
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->k:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lccsancom/applovin/impl/sdk/h;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Lccsanandroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static c()Lccsancom/applovin/impl/sdk/h$a;
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/h;->c:Lccsancom/applovin/impl/sdk/h$a;

    return-object v0
.end method

.method public static c(ZLccsanandroid/content/Context;)Z
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->m:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lccsancom/applovin/impl/sdk/h;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Boolean;Lccsanandroid/content/Context;)Z

    move-result p0

    return p0
.end method
