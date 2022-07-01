.class public Lccsancom/applovin/impl/mediation/c/b;
.super Lccsancom/applovin/impl/sdk/utils/g;


# static fields
.field private static final a:[Ljava/lang/String;

.field private static final b:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "ads"

    aput-object v2, v0, v1

    const/4 v3, 0x1

    const-string/jumbo v4, "settings"

    aput-object v4, v0, v3

    const-string v5, "auto_init_adapters"

    const/4 v6, 0x2

    aput-object v5, v0, v6

    const-string/jumbo v5, "test_mode_idfas"

    const/4 v7, 0x3

    aput-object v5, v0, v7

    const/4 v5, 0x4

    const-string/jumbo v8, "test_mode_auto_init_adapters"

    aput-object v8, v0, v5

    sput-object v0, Lccsancom/applovin/impl/mediation/c/b;->a:[Ljava/lang/String;

    new-array v0, v7, [Ljava/lang/String;

    aput-object v2, v0, v1

    aput-object v4, v0, v3

    const-string/jumbo v1, "signal_providers"

    aput-object v1, v0, v6

    sput-object v0, Lccsancom/applovin/impl/mediation/c/b;->b:[Ljava/lang/String;

    return-void
.end method

.method public static a(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->c:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string/jumbo v0, "signal_providers"

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lccsanorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lccsancom/applovin/impl/mediation/c/b;->a:[Ljava/lang/String;

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->removeObjectsForKeys(Lccsanorg/json/JSONObject;[Ljava/lang/String;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->w:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static b(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->d:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate"

    invoke-static {v0, v1, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "auto_init_adapters"

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lccsanorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "test_mode_auto_init_adapters"

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->valueExists(Lccsanorg/json/JSONObject;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lccsancom/applovin/impl/sdk/c/d;->x:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p1, p0}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {p0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->shallowCopy(Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p0

    sget-object v0, Lccsancom/applovin/impl/mediation/c/b;->b:[Ljava/lang/String;

    invoke-static {p0, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->removeObjectsForKeys(Lccsanorg/json/JSONObject;[Ljava/lang/String;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->x:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public static c(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->c:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->d:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1.0/mediate_debug"

    invoke-static {v0, v1, p0}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
