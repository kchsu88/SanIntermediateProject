.class public Lccsancom/applovin/impl/mediation/b/a;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private final a:Lccsanandroid/app/Activity;


# direct methods
.method public constructor <init>(Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2

    const-string v0, "TaskAutoInitAdapters"

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;Z)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/a;->a:Lccsanandroid/app/Activity;

    return-void
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/a;)Lccsanandroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/a;->a:Lccsanandroid/app/Activity;

    return-object p0
.end method

.method private a(Lccsanorg/json/JSONArray;Lccsanorg/json/JSONObject;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            "Lccsanorg/json/JSONObject;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/a/e;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v2

    new-instance v3, Lccsancom/applovin/impl/mediation/a/e;

    iget-object v4, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v3, v2, p2, v4}, Lccsancom/applovin/impl/mediation/a/e;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/a;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lccsancom/applovin/impl/mediation/b/a;)Lccsancom/applovin/impl/sdk/k;
    .locals 0

    iget-object p0, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/d;->x:Lccsancom/applovin/impl/sdk/c/d;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/d;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "test_mode_auto_init_adapters"

    goto :goto_0

    :cond_1
    const-string v0, "auto_init_adapters"

    :goto_0
    new-instance v2, Lccsanorg/json/JSONArray;

    invoke-direct {v2}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-static {v1, v0, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lccsancom/applovin/impl/mediation/b/a;->a(Lccsanorg/json/JSONArray;Lccsanorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Auto-initing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " adapters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, " in test mode"

    goto :goto_1

    :cond_2
    const-string v2, ""

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lccsancom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->s()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "AppLovinSdk"

    if-eqz v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    const-string v3, "max"

    invoke-virtual {v1, v3}, Lccsancom/applovin/impl/sdk/k;->c(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->f()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Auto-initing adapters for non-MAX mediation provider: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v3}, Lccsancom/applovin/impl/sdk/k;->s()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/a;->a:Lccsanandroid/app/Activity;

    if-nez v1, :cond_5

    const-string v0, "\n**********\nFailed to initialize 3rd-party SDKs. Please make sure to initialize the AppLovin SDK with an Activity context.\n**********\n"

    invoke-static {v2, v0}, Lccsancom/applovin/impl/sdk/r;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->R()Lccsancom/applovin/impl/sdk/d/g;

    move-result-object v0

    sget-object v1, Lccsancom/applovin/impl/sdk/d/f;->p:Lccsancom/applovin/impl/sdk/d/f;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/d/g;->b(Lccsancom/applovin/impl/sdk/d/f;J)V

    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsancom/applovin/impl/mediation/a/e;

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/a;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v2

    invoke-virtual {v2}, Lccsancom/applovin/impl/sdk/e/o;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v2

    new-instance v3, Lccsancom/applovin/impl/mediation/b/a$1;

    invoke-direct {v3, p0, v1}, Lccsancom/applovin/impl/mediation/b/a$1;-><init>(Lccsancom/applovin/impl/mediation/b/a;Lccsancom/applovin/impl/mediation/a/e;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    const-string v1, "Failed to auto-init adapters"

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "Failed to parse auto-init adapters JSON"

    :goto_4
    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/mediation/b/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method
