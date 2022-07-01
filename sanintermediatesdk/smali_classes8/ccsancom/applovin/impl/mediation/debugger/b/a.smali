.class public Lccsancom/applovin/impl/mediation/debugger/b/a;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/network/b$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsancom/applovin/impl/sdk/network/b$c<",
            "Lccsanorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/network/b$c;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/network/b$c<",
            "Lccsanorg/json/JSONObject;",
            ">;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskFetchMediationDebuggerInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Z)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->a:Lccsancom/applovin/impl/sdk/network/b$c;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/debugger/b/a;)Lccsancom/applovin/impl/sdk/network/b$c;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->a:Lccsancom/applovin/impl/sdk/network/b$c;

    return-object p0
.end method

.method private a(Lccsancom/applovin/impl/sdk/k;)Lccsanorg/json/JSONObject;
    .locals 2

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "installed_mediation_adapters"

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/c/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsanorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v1, "Failed to create mediation debugger request post body"

    invoke-virtual {p0, v1, p1}, Lccsancom/applovin/impl/mediation/debugger/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private b()Lccsanorg/json/JSONObject;
    .locals 3

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "installed_mediation_adapters"

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v2}, Lccsancom/applovin/impl/mediation/c/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsanorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to construct JSON body"

    invoke-virtual {p0, v2, v1}, Lccsancom/applovin/impl/mediation/debugger/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method


# virtual methods
.method protected a()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v1, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    const-string/jumbo v2, "sdk_version"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sdk_key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/m;->g()Ljava/util/Map;

    move-result-object v1

    const-string v2, "package_name"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "app_version"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "platform"

    const-string v2, "android"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsanandroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, "os"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/debugger/b/a;->a(Lccsancom/applovin/impl/sdk/k;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/b/a;->a()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    const-string v3, "POST"

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/c/b;->c(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/c/b;->d(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/a;->g:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/b/a;->b()Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/mediation/debugger/b/a$1;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/b/a;->g()Z

    move-result v3

    invoke-direct {v1, p0, v0, v2, v3}, Lccsancom/applovin/impl/mediation/debugger/b/a$1;-><init>(Lccsancom/applovin/impl/mediation/debugger/b/a;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Z)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->c:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->a(Lccsancom/applovin/impl/sdk/c/b;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->d:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->b(Lccsancom/applovin/impl/sdk/c/b;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void
.end method
