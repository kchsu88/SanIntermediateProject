.class public Lccsancom/applovin/impl/sdk/c/c;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lccsancom/applovin/impl/sdk/k;

.field protected final b:Lccsancom/applovin/impl/sdk/r;

.field protected final c:Lccsanandroid/content/Context;

.field protected final d:Lccsanandroid/content/SharedPreferences;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/c/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->b:Lccsancom/applovin/impl/sdk/r;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->J()Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->c:Lccsanandroid/content/Context;

    const-string v1, "com.applovin.sdk.1"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Lccsanandroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->d:Lccsanandroid/content/SharedPreferences;

    :try_start_0
    const-class v0, Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    const-class v0, Lccsancom/applovin/impl/sdk/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "localSettings"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/c/c;->g:Ljava/util/Map;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :goto_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/c/c;->b()V

    return-void
.end method

.method private static a(Ljava/lang/String;Lccsanorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    instance-of v0, p2, Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p2, Ljava/lang/Float;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lccsanorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p0

    double-to-float p0, p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p2, Ljava/lang/Integer;

    if-eqz v0, :cond_2

    invoke-virtual {p1, p0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p2, Ljava/lang/Long;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {p1, p0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SDK Error: unknown value type: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.applovin.sdk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/c/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->x()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/Utils;->shortenKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/c/b;)Lccsancom/applovin/impl/sdk/c/b;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "TT;>;)",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lccsancom/applovin/impl/sdk/c/b;->c()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-object v2

    :cond_1
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "TT;>;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/c/b;->b()Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    invoke-virtual {p1, v1}, Lccsancom/applovin/impl/sdk/c/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No setting type specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()V
    .locals 7

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lccsancom/applovin/impl/sdk/c/c;->d:Lccsanandroid/content/SharedPreferences;

    invoke-interface {v2}, Lccsanandroid/content/SharedPreferences;->edit()Lccsanandroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-static {}, Lccsancom/applovin/impl/sdk/c/b;->c()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lccsancom/applovin/impl/sdk/c/b;

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    invoke-virtual {v4}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lccsancom/applovin/impl/sdk/c/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v6, v4, v5, v2}, Lccsancom/applovin/impl/sdk/k;->a(Ljava/lang/String;Ljava/lang/Object;Lccsanandroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lccsanandroid/content/SharedPreferences$Editor;->apply()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public a(Lccsancom/applovin/impl/sdk/c/b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No new value specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No setting type specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lccsanorg/json/JSONObject;)V
    .locals 6

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-lez v3, :cond_0

    const/4 v3, 0x0

    :try_start_1
    invoke-virtual {p0, v2, v3}, Lccsancom/applovin/impl/sdk/c/c;->a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/c/b;)Lccsancom/applovin/impl/sdk/c/b;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/c/b;->b()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, p1, v4}, Lccsancom/applovin/impl/sdk/c/c;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->ep:Lccsancom/applovin/impl/sdk/c/b;

    if-ne v3, v2, :cond_0

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->eq:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_2
    iget-object v3, p0, Lccsancom/applovin/impl/sdk/c/c;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v4, "SettingsManager"

    const-string v5, "Unable to convert setting object "

    :goto_1
    invoke-virtual {v3, v4, v5, v2}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lccsancom/applovin/impl/sdk/c/c;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v4, "SettingsManager"

    const-string v5, "Unable to parse JSON settingsValues array"

    goto :goto_1

    :cond_1
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/CollectionUtils;->explode(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public b()V
    .locals 9

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/c/c;->e()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lccsancom/applovin/impl/sdk/c/b;->c()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/applovin/impl/sdk/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/c/b;->b()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lccsancom/applovin/impl/sdk/c/c;->a:Lccsancom/applovin/impl/sdk/k;

    const/4 v7, 0x0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v8, p0, Lccsancom/applovin/impl/sdk/c/c;->d:Lccsanandroid/content/SharedPreferences;

    invoke-virtual {v6, v4, v7, v5, v8}, Lccsancom/applovin/impl/sdk/k;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;Lccsanandroid/content/SharedPreferences;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v5, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    iget-object v5, p0, Lccsancom/applovin/impl/sdk/c/c;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v6, "SettingsManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/c/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\""

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v6, v3, v4}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public c(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/applovin/impl/sdk/c/b<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lccsancom/applovin/mediation/MaxAdFormat;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/sdk/c/c;->b(Lccsancom/applovin/impl/sdk/c/b;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/c/c;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->a:Lccsancom/applovin/impl/sdk/k;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/c/c;->d:Lccsanandroid/content/SharedPreferences;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsanandroid/content/SharedPreferences;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/c/c;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->p()Lccsancom/applovin/sdk/AppLovinSdkSettings;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/sdk/AppLovinSdkSettings;->isVerboseLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/b;->aa:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/c/c;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
