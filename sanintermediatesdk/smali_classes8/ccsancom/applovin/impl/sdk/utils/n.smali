.class public final Lccsancom/applovin/impl/sdk/utils/n;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->f:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/c/e;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;Lccsanandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->g:Lccsancom/applovin/impl/sdk/c/d;

    invoke-direct {p0, v1, v0}, Lccsancom/applovin/impl/sdk/utils/n;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->c:Ljava/lang/String;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->W:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->h:Lccsancom/applovin/impl/sdk/c/d;

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/sdk/utils/n;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/n;->d:Ljava/lang/String;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/utils/n;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/utils/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/c/d<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/c/e;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;Lccsanandroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lccsancom/applovin/impl/sdk/c/e;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;Lccsanandroid/content/Context;)V

    return-object p2
.end method

.method public static a(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 4

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->i:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->i:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dy:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->e:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;)V

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->e:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using identifier ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") from previous session"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AppLovinSdk"

    invoke-virtual {v1, v3, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dy:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->e:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v0, v1, p1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lccsancom/applovin/impl/sdk/utils/n;->b:Ljava/lang/String;

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "user_id"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/utils/n;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "applovin_random_token"

    invoke-virtual {v0, v1, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/utils/n;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object p1

    const-string/jumbo v1, "user_info"

    invoke-virtual {p1, v0, v1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/utils/n;->d:Ljava/lang/String;

    return-object v0
.end method
