.class public Lccsancom/applovin/impl/sdk/network/e;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lccsancom/applovin/impl/sdk/network/e;->a:Ljava/lang/Object;

    return-void
.end method

.method private static a(Ljava/lang/String;Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/network/e;->b(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1}, Lccsanorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p1, p0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, p0, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    return-object p1
.end method

.method static a(ILjava/lang/String;Lccsanandroid/content/Context;)V
    .locals 4

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/sdk/network/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/Utils;->urlStringWithoutQueryParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lccsancom/applovin/impl/sdk/network/e;->a(Ljava/lang/String;Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, p0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    :try_start_1
    invoke-virtual {v2, p0, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    :try_start_2
    invoke-virtual {v1, p1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception p0

    :goto_1
    :try_start_3
    invoke-static {v1, p2}, Lccsancom/applovin/impl/sdk/network/e;->a(Lccsanorg/json/JSONObject;Lccsanandroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method public static a(Lccsanandroid/content/Context;)V
    .locals 2

    sget-object v0, Lccsancom/applovin/impl/sdk/network/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->q:Lccsancom/applovin/impl/sdk/c/d;

    invoke-static {v1, p0}, Lccsancom/applovin/impl/sdk/c/e;->a(Lccsancom/applovin/impl/sdk/c/d;Lccsanandroid/content/Context;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private static a(Lccsanorg/json/JSONObject;Lccsanandroid/content/Context;)V
    .locals 1

    sget-object v0, Lccsancom/applovin/impl/sdk/c/d;->q:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {p0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, p1}, Lccsancom/applovin/impl/sdk/c/e;->a(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;Lccsanandroid/content/Context;)V

    return-void
.end method

.method public static b(Lccsanandroid/content/Context;)Lccsanorg/json/JSONObject;
    .locals 3

    sget-object v0, Lccsancom/applovin/impl/sdk/network/e;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->q:Lccsancom/applovin/impl/sdk/c/d;

    const-string/jumbo v2, "{}"

    invoke-static {v1, v2, p0}, Lccsancom/applovin/impl/sdk/c/e;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;Lccsanandroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsanorg/json/JSONObject;-><init>()V

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
