.class Lccsancom/applovin/impl/sdk/e/b;
.super Lccsancom/applovin/impl/sdk/e/a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskApiSubmitData"

    invoke-direct {p0, v0, p1}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/sdk/e/b;Lccsanorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/e/b;->a(Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method private a(Lccsanorg/json/JSONObject;)V
    .locals 5

    const-string/jumbo v0, "sdk_update_message"

    :try_start_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/g;->a(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->W:Lccsancom/applovin/impl/sdk/c/b;

    const-string v3, "device_id"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->Y:Lccsancom/applovin/impl/sdk/c/b;

    const-string v3, "device_token"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->Z:Lccsancom/applovin/impl/sdk/c/b;

    const-string v3, "publisher_id"

    invoke-virtual {p1, v3}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->I()Lccsancom/applovin/impl/sdk/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/c/c;->a()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/g;->d(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/g;->g(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    const-string v1, "latest_version"

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current SDK version ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lccsancom/applovin/sdk/AppLovinSdk;->VERSION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") is outdated. Please integrate the latest version of the AppLovin SDK ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "). Doing so will improve your CPMs and ensure you have access to the latest revenue earning features."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lccsanorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string p1, "AppLovinSdk"

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/r;->h(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/d/g;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "Unable to parse API response"

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/sdk/e/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private b(Lccsanorg/json/JSONObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/m;->d()Ljava/util/Map;

    move-result-object v1

    const-string v2, "platform"

    const-string/jumbo v3, "type"

    invoke-static {v2, v3, v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v2, "api_level"

    const-string/jumbo v3, "sdk_version"

    invoke-static {v2, v3, v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v1, "device_info"

    invoke-virtual {p1, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/m;->g()Ljava/util/Map;

    move-result-object v0

    const-string v1, "applovin_sdk_version"

    invoke-static {v3, v1, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "ia"

    const-string v2, "installed_at"

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/utils/Utils;->renameKeyInObjectMap(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const-string v0, "app_info"

    invoke-virtual {p1, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    return-void
.end method

.method private c(Lccsanorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->dW:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/d/g;->c()Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string/jumbo v1, "stats"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ag:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/b;->f()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/e;->b(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "network_response_codes"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    :cond_1
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->ah:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/b;->f()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/e;->a(Lccsanandroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private d(Lccsanorg/json/JSONObject;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    const-string v2, "2.0/device"

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/utils/g;->b(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsancom/applovin/impl/sdk/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eu:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->d(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->cY:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object p1

    new-instance v0, Lccsancom/applovin/impl/sdk/e/b$1;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p0, p1, v1}, Lccsancom/applovin/impl/sdk/e/b$1;-><init>(Lccsancom/applovin/impl/sdk/e/b;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->aQ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/t;->a(Lccsancom/applovin/impl/sdk/c/b;)V

    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->aR:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/t;->b(Lccsancom/applovin/impl/sdk/c/b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "Submitting user data..."

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/b;->b(Ljava/lang/String;)V

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/e/b;->b(Lccsanorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/e/b;->c(Lccsanorg/json/JSONObject;)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/sdk/e/b;->d(Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to build JSON message with collected data"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/e/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
