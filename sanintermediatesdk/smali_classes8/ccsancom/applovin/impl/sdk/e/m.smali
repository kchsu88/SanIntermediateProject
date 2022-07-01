.class public Lccsancom/applovin/impl/sdk/e/m;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/a/f$b;

.field private final c:Lccsancom/applovin/impl/sdk/a/f$b;

.field private final d:Lccsanorg/json/JSONArray;

.field private final e:Lccsancom/applovin/mediation/MaxAdFormat;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/f$b;Lccsancom/applovin/impl/sdk/a/f$b;Lccsanorg/json/JSONArray;Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskFlushZones"

    invoke-direct {p0, v0, p5}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/m;->a:Lccsancom/applovin/impl/sdk/a/f$b;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/m;->c:Lccsancom/applovin/impl/sdk/a/f$b;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/e/m;->d:Lccsanorg/json/JSONArray;

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/e/m;->e:Lccsancom/applovin/mediation/MaxAdFormat;

    return-void
.end method

.method private b()Lccsanorg/json/JSONObject;
    .locals 4

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v1

    const-string/jumbo v3, "ts_s"

    invoke-static {v0, v3, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->a:Lccsancom/applovin/impl/sdk/a/f$b;

    sget-object v2, Lccsancom/applovin/impl/sdk/a/f$b;->f:Lccsancom/applovin/impl/sdk/a/f$b;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->e:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    const-string v2, "format"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->c:Lccsancom/applovin/impl/sdk/a/f$b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/f$b;->a()I

    move-result v1

    const-string v2, "previous_trigger_code"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lccsanorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->c:Lccsancom/applovin/impl/sdk/a/f$b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/f$b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "previous_trigger_reason"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->a:Lccsancom/applovin/impl/sdk/a/f$b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/f$b;->a()I

    move-result v1

    const-string/jumbo v2, "trigger_code"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putInt(Lccsanorg/json/JSONObject;Ljava/lang/String;I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->a:Lccsancom/applovin/impl/sdk/a/f$b;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/f$b;->b()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "trigger_reason"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->d:Lccsanorg/json/JSONArray;

    const-string/jumbo v2, "zones"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putJsonArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)V

    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->T()Lccsancom/applovin/impl/sdk/m;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/m;->d()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/m;->g()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/m;->h()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->en:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "sdk_key"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->stringifyObjectMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public run()V
    .locals 6

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/m;->a()Ljava/util/Map;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/e/m;->b()Lccsanorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->eU:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    const-string v4, "1.0/flush_zones"

    invoke-static {v2, v4, v3}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v5, Lccsancom/applovin/impl/sdk/c/b;->eV:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3, v5}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v3, v4, v5}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v4}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v4

    invoke-virtual {v4, v2}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ez:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->d(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->eW:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object v0

    new-instance v1, Lccsancom/applovin/impl/sdk/e/m$1;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v1, p0, v0, v2}, Lccsancom/applovin/impl/sdk/e/m$1;-><init>(Lccsancom/applovin/impl/sdk/e/m;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aU:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->a(Lccsancom/applovin/impl/sdk/c/b;)V

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aV:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/t;->b(Lccsancom/applovin/impl/sdk/c/b;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/m;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void
.end method
