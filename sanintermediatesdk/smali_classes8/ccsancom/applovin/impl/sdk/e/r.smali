.class Lccsancom/applovin/impl/sdk/e/r;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private final a:Lccsanorg/json/JSONObject;

.field private final c:Lccsanorg/json/JSONObject;

.field private final d:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

.field private final e:Lccsancom/applovin/impl/sdk/a/b;


# direct methods
.method constructor <init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/sdk/AppLovinAdLoadListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskRenderAppLovinAd"

    invoke-direct {p0, v0, p5}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/r;->a:Lccsanorg/json/JSONObject;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/r;->c:Lccsanorg/json/JSONObject;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/e/r;->e:Lccsancom/applovin/impl/sdk/a/b;

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/e/r;->d:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "Rendering ad..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/r;->a(Ljava/lang/String;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/a/a;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/r;->a:Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/r;->c:Lccsanorg/json/JSONObject;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/r;->e:Lccsancom/applovin/impl/sdk/a/b;

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/e/r;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, v1, v2, v3, v4}, Lccsancom/applovin/impl/sdk/a/a;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/r;->a:Lccsanorg/json/JSONObject;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "gs_load_immediately"

    invoke-static {v1, v3, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/r;->a:Lccsanorg/json/JSONObject;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string/jumbo v4, "vs_load_immediately"

    invoke-static {v2, v4, v3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    new-instance v3, Lccsancom/applovin/impl/sdk/e/d;

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/e/r;->b:Lccsancom/applovin/impl/sdk/k;

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/e/r;->d:Lccsancom/applovin/sdk/AppLovinAdLoadListener;

    invoke-direct {v3, v0, v4, v5}, Lccsancom/applovin/impl/sdk/e/d;-><init>(Lccsancom/applovin/impl/sdk/a/a;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/sdk/AppLovinAdLoadListener;)V

    invoke-virtual {v3, v2}, Lccsancom/applovin/impl/sdk/e/d;->a(Z)V

    invoke-virtual {v3, v1}, Lccsancom/applovin/impl/sdk/e/d;->b(Z)V

    sget-object v1, Lccsancom/applovin/impl/sdk/e/o$a;->h:Lccsancom/applovin/impl/sdk/e/o$a;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/r;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v4, Lccsancom/applovin/impl/sdk/c/b;->be:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v4}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    sget-object v4, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    if-ne v2, v4, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v2

    sget-object v4, Lccsancom/applovin/sdk/AppLovinAdType;->REGULAR:Lccsancom/applovin/sdk/AppLovinAdType;

    if-ne v2, v4, :cond_0

    sget-object v1, Lccsancom/applovin/impl/sdk/e/o$a;->f:Lccsancom/applovin/impl/sdk/e/o$a;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v2

    sget-object v4, Lccsancom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lccsancom/applovin/sdk/AppLovinAdSize;

    if-ne v2, v4, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/a;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    sget-object v2, Lccsancom/applovin/sdk/AppLovinAdType;->INCENTIVIZED:Lccsancom/applovin/sdk/AppLovinAdType;

    if-ne v0, v2, :cond_1

    sget-object v1, Lccsancom/applovin/impl/sdk/e/o$a;->g:Lccsancom/applovin/impl/sdk/e/o$a;

    :cond_1
    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/r;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v3, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;Lccsancom/applovin/impl/sdk/e/o$a;)V

    return-void
.end method
