.class public abstract Lccsancom/applovin/impl/sdk/e/v;
.super Lccsancom/applovin/impl/sdk/e/x;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/x;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method private a(Lccsancom/applovin/impl/sdk/b/c;)Lccsanorg/json/JSONObject;
    .locals 3

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/v;->i()Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/b/c;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "result"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/b/c;->a()Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string p1, "params"

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method protected abstract b()Lccsancom/applovin/impl/sdk/b/c;
.end method

.method protected abstract b(Lccsanorg/json/JSONObject;)V
.end method

.method protected abstract c()V
.end method

.method protected h()I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/v;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->bo:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 3

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/v;->b()Lccsancom/applovin/impl/sdk/b/c;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reporting pending reward: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/sdk/e/v;->a(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/e/v;->a(Lccsancom/applovin/impl/sdk/b/c;)Lccsanorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/e/v$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/e/v$1;-><init>(Lccsancom/applovin/impl/sdk/e/v;)V

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/e/v;->a(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/network/b$c;)V

    goto :goto_0

    :cond_0
    const-string v0, "Pending reward not found"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/v;->d(Ljava/lang/String;)V

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/v;->c()V

    :goto_0
    return-void
.end method
