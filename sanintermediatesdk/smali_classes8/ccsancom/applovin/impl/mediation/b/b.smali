.class public Lccsancom/applovin/impl/mediation/b/b;
.super Lccsancom/applovin/impl/sdk/e/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/applovin/impl/mediation/b/b$a;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final c:Lccsancom/applovin/mediation/MaxAdFormat;

.field private final d:Lccsanandroid/app/Activity;

.field private final e:Lccsancom/applovin/impl/mediation/b/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x0

    sput-object v0, Lccsancom/applovin/impl/mediation/b/b;->a:Ljava/lang/String;

    :try_start_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    const-string v1, "APPLOVIN_NETWORK"

    const-string v2, "com.applovin.mediation.adapters.AppLovinMediationAdapter"

    invoke-static {v1, v2}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    const-string v1, "FACEBOOK_NETWORK"

    const-string v2, "com.applovin.mediation.adapters.FacebookMediationAdapter"

    invoke-static {v1, v2}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/lang/String;Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "run_on_ui_thread"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    const-string/jumbo v2, "signal_providers"

    invoke-virtual {v1, v2, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lccsancom/applovin/impl/mediation/b/b;->a:Ljava/lang/String;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method public constructor <init>(Lccsancom/applovin/mediation/MaxAdFormat;Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/mediation/b/b$a;)V
    .locals 1

    const-string v0, "TaskCollectSignals"

    invoke-direct {p0, v0, p3}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/b;->c:Lccsancom/applovin/mediation/MaxAdFormat;

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/b;->d:Lccsanandroid/app/Activity;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/b/b;->e:Lccsancom/applovin/impl/mediation/b/b$a;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/b;)Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/b;->c:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string p0, "class"

    invoke-virtual {v0, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string p0, "adapter_timeout_ms"

    const/16 p1, 0x7530

    invoke-virtual {v0, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    const-string p0, "max_signal_length"

    const p1, 0x8000

    invoke-virtual {v0, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    const-string/jumbo p0, "scode"

    const-string p1, ""

    invoke-virtual {v0, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    return-object v0
.end method

.method private a(Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/a/f$a;)V
    .locals 2

    new-instance v0, Lccsancom/applovin/impl/mediation/b/b$2;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/mediation/b/b$2;-><init>(Lccsancom/applovin/impl/mediation/b/b;Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/a/f$a;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/g;->Q()Z

    move-result p2

    const-string v1, "Running signal collection for "

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on the main thread"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b/b;->d:Lccsanandroid/app/Activity;

    invoke-virtual {p1, v0}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " on the background thread"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/b;Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/a/f$a;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/mediation/b/b;->a(Lccsancom/applovin/impl/mediation/a/g;Lccsancom/applovin/impl/mediation/a/f$a;)V

    return-void
.end method

.method private a(Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lccsancom/applovin/impl/mediation/a/f;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/mediation/a/f;

    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/f;->a()Lccsancom/applovin/impl/mediation/a/g;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/a/g;->K()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v4, "class"

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/a/g;->J()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v4, "adapter_version"

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/f;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string/jumbo v4, "sdk_version"

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/f;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/f;->e()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "error_message"

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/f;->e()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v4, v5, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_2

    :cond_0
    const-string/jumbo v5, "signal"

    invoke-virtual {v1}, Lccsancom/applovin/impl/mediation/a/f;->d()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    const-string v1, "data"

    invoke-virtual {v2, v1, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collected signal from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Failed to create signal data"

    invoke-virtual {p0, v2, v1}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/b/b;->a(Lccsanorg/json/JSONArray;)V

    return-void
.end method

.method private a(Lccsanorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/b;->e:Lccsancom/applovin/impl/mediation/b/b$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lccsancom/applovin/impl/mediation/b/b$a;->a(Lccsanorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method private a(Lccsanorg/json/JSONArray;Lccsanorg/json/JSONObject;)V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/CollectionUtils;->synchronizedList(I)Ljava/util/List;

    move-result-object v0

    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v8, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v8, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/e/o;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v11, v1, :cond_0

    invoke-virtual {p1, v11}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    new-instance v3, Lccsancom/applovin/impl/mediation/a/g;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/b;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v3, v1, p2, v2}, Lccsancom/applovin/impl/mediation/a/g;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    new-instance v12, Lccsancom/applovin/impl/mediation/b/b$1;

    move-object v1, v12

    move-object v2, p0

    move-object v4, v7

    move-object v5, v0

    move-object v6, v8

    invoke-direct/range {v1 .. v6}, Lccsancom/applovin/impl/mediation/b/b$1;-><init>(Lccsancom/applovin/impl/mediation/b/b;Lccsancom/applovin/impl/mediation/a/g;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/List;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v9, v12}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b/b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object p2, Lccsancom/applovin/impl/sdk/c/a;->k:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v8, p1, p2, v1}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    invoke-virtual {v7, v10}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/util/Collection;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/b/b;)Lccsanandroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/b;->d:Lccsanandroid/app/Activity;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No signals collected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lccsancom/applovin/impl/mediation/b/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lccsanorg/json/JSONArray;

    invoke-direct {p1}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/mediation/b/b;->a(Lccsanorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic c(Lccsancom/applovin/impl/mediation/b/b;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/b;->b:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/b;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->w:Lccsancom/applovin/impl/sdk/c/d;

    sget-object v2, Lccsancom/applovin/impl/mediation/b/b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/c/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "signal_providers"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "No signal providers found"

    invoke-direct {p0, v0, v2}, Lccsancom/applovin/impl/mediation/b/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/mediation/b/b;->a(Lccsanorg/json/JSONArray;Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "Failed to collect signals"

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Failed to wait for signals"

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "Failed to parse signals JSON"

    :goto_0
    invoke-direct {p0, v1, v0}, Lccsancom/applovin/impl/mediation/b/b;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
