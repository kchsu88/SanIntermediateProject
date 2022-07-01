.class public Lccsancom/applovin/impl/mediation/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Lccsanorg/json/JSONArray;

.field private final e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private g:Z


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/e;->d:Lccsanorg/json/JSONArray;

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/e;->e:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/e;->f:Ljava/lang/Object;

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/e;->b:Lccsancom/applovin/impl/sdk/r;

    return-void
.end method


# virtual methods
.method public a(Lccsanandroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lccsancom/applovin/impl/mediation/e;->g:Z

    new-instance v0, Lccsancom/applovin/impl/mediation/b/a;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p1, v1}, Lccsancom/applovin/impl/mediation/b/a;-><init>(Lccsanandroid/app/Activity;Lccsancom/applovin/impl/sdk/k;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    :cond_1
    return-void
.end method

.method a(Lccsancom/applovin/impl/mediation/a/e;JLccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V
    .locals 7

    if-eqz p4, :cond_4

    sget-object v0, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->INITIALIZING:Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;

    if-ne p4, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/e;->a(Lccsancom/applovin/impl/mediation/a/e;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lccsancom/applovin/impl/mediation/e;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v3, "class"

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "init_status"

    invoke-virtual {p4}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "error_message"

    invoke-static {p5}, Lccsanorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/e;->d:Lccsanorg/json/JSONArray;

    invoke-virtual {v3, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "DID_INITIALIZE"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "network_name"

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->K()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "initialization_status"

    invoke-virtual {p4}, Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;->getCode()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p5}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "error_message"

    invoke-virtual {v0, v1, p5}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object v1

    const-string v2, "max_adapter_events"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/mediation/a/e;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->C()Lccsancom/applovin/impl/mediation/MediationServiceImpl;

    move-result-object v1

    move-object v2, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lccsancom/applovin/impl/mediation/MediationServiceImpl;->processAdapterInitializationPostback(Lccsancom/applovin/impl/mediation/a/e;JLccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object p2

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p4, p1}, Lccsancom/applovin/impl/sdk/g;->a(Lccsancom/applovin/mediation/adapter/MaxAdapter$InitializationStatus;Ljava/lang/String;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-void
.end method

.method public a(Lccsancom/applovin/impl/mediation/a/e;Lccsanandroid/app/Activity;)V
    .locals 4

    new-instance v0, Lccsanandroid/os/Bundle;

    invoke-direct {v0}, Lccsanandroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "WILL_INITIALIZE"

    invoke-virtual {v0, v1, v2}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->K()Ljava/lang/String;

    move-result-object v1

    const-string v2, "network_name"

    invoke-virtual {v0, v2, v1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->af()Lccsancom/applovin/impl/sdk/g;

    move-result-object v1

    const-string v2, "max_adapter_events"

    invoke-virtual {v1, v0, v2}, Lccsancom/applovin/impl/sdk/g;->a(Lccsanandroid/os/Bundle;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->A()Lccsancom/applovin/impl/mediation/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/f;->a(Lccsancom/applovin/impl/mediation/a/e;)Lccsancom/applovin/impl/mediation/g;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initializing adapter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediationAdapterInitializationManager"

    invoke-virtual {v1, v3, v2}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/MaxAdapterParametersImpl;->a(Lccsancom/applovin/impl/mediation/a/e;)Lccsancom/applovin/impl/mediation/MaxAdapterParametersImpl;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lccsancom/applovin/impl/mediation/g;->a(Lccsancom/applovin/mediation/adapter/parameters/MaxAdapterInitializationParameters;Lccsanandroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method a(Lccsancom/applovin/impl/mediation/a/e;)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/e;->e:Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lccsancom/applovin/impl/mediation/a/e;->J()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

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

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/e;->g:Z

    return v0
.end method

.method public c()Ljava/util/LinkedHashSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/e;->e:Ljava/util/LinkedHashSet;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public d()Lccsanorg/json/JSONArray;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/e;->f:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/mediation/e;->d:Lccsanorg/json/JSONArray;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
