.class public abstract Lccsancom/applovin/impl/sdk/e/aa;
.super Lccsancom/applovin/impl/sdk/e/x;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/x;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/e/aa;Lccsanorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/e/aa;->b(Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method private b(Lccsanorg/json/JSONObject;)V
    .locals 2

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/e/aa;->c(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/b/c;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/aa;->a(Lccsancom/applovin/impl/sdk/b/c;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pending reward handled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/e/aa;->a(Ljava/lang/String;)V

    return-void
.end method

.method private c(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/b/c;
    .locals 2

    :try_start_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/g;->a(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/aa;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/g;->d(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/aa;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/g;->c(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/aa;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    const-string p1, "params"

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanorg/json/JSONObject;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toStringMap(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_0
    :try_start_3
    const-string v1, "result"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    const-string v0, "network_timeout"

    :goto_1
    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;Ljava/util/Map;)Lccsancom/applovin/impl/sdk/b/c;

    move-result-object p1
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "Unable to parse API response"

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/sdk/e/aa;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method protected abstract a(Lccsancom/applovin/impl/sdk/b/c;)V
.end method

.method protected abstract b()Z
.end method

.method protected h()I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/aa;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->bn:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/aa;->i()Lccsanorg/json/JSONObject;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/e/aa$1;

    invoke-direct {v1, p0}, Lccsancom/applovin/impl/sdk/e/aa$1;-><init>(Lccsancom/applovin/impl/sdk/e/aa;)V

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/e/aa;->a(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/network/b$c;)V

    return-void
.end method
