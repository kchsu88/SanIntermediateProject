.class public Lccsancom/applovin/impl/mediation/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsanorg/json/JSONObject;

.field protected final b:Lccsancom/applovin/impl/sdk/k;

.field private final c:Lccsanorg/json/JSONObject;

.field private final d:Ljava/lang/Object;

.field private final e:Ljava/lang/Object;

.field private volatile f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    if-eqz p1, :cond_0

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/a/e;->b:Lccsancom/applovin/impl/sdk/k;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/a/e;->a:Lccsanorg/json/JSONObject;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad object specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No full response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a()I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->L:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "mute_state"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected H()Lccsanorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->a:Lccsanorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected I()Lccsanorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public J()Ljava/lang/String;
    .locals 2

    const-string v0, "class"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public K()Ljava/lang/String;
    .locals 2

    const-string v0, "name"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public L()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/e;->K()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public M()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "is_testing"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public N()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "huc"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public O()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "aru"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public P()Ljava/lang/Boolean;
    .locals 2

    const-string v0, "dns"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public Q()Z
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "run_on_ui_thread"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public R()Lccsanandroid/os/Bundle;
    .locals 4

    const-string/jumbo v0, "server_parameters"

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsanorg/json/JSONObject;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toBundle(Lccsanorg/json/JSONObject;)Lccsanandroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    :goto_0
    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/a/e;->a()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/4 v2, 0x2

    const-string v3, "is_muted"

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/sdk/AppLovinSdkSettings;->isMuted()Z

    move-result v1

    :goto_1
    invoke-virtual {v0, v3, v1}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_1
    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    :goto_2
    return-object v0
.end method

.method public S()J
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->l:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-string v2, "adapter_timeout_ms"

    invoke-virtual {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public T()J
    .locals 3

    const-string v0, "init_completion_delay_ms"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getFloat(Lccsanorg/json/JSONObject;Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->a:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lccsanorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->a:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->a:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getFloat(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->a:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->a:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lccsanorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected b(Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/a/e;->f:Ljava/lang/String;

    return-void
.end method

.method protected c(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/a/e;->c:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object v0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->optList(Lccsanorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-virtual {p0, p1, v1}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    invoke-static {p1, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->optList(Lccsanorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No key specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/mediation/a/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/mediation/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPlacement()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediationAdapterSpec{adapterClass=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', adapterName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/e;->K()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isTesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/e;->M()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
