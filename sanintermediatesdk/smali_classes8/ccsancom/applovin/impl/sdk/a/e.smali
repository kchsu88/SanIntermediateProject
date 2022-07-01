.class public Lccsancom/applovin/impl/sdk/a/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/k;

.field private final b:Lccsancom/applovin/impl/sdk/r;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lccsancom/applovin/mediation/MaxAdFormat;",
            "Lccsancom/applovin/impl/sdk/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lccsancom/applovin/impl/sdk/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/lang/Object;

.field private volatile g:Z


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->e:Ljava/util/LinkedHashSet;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->f:Ljava/lang/Object;

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/a/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->b:Lccsancom/applovin/impl/sdk/r;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lccsancom/applovin/impl/sdk/a/f;

    sget-object v3, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lccsancom/applovin/impl/sdk/a/f;-><init>(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lccsancom/applovin/impl/sdk/a/f;

    sget-object v3, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lccsancom/applovin/impl/sdk/a/f;-><init>(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lccsancom/applovin/impl/sdk/a/f;

    sget-object v3, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lccsancom/applovin/impl/sdk/a/f;-><init>(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lccsancom/applovin/impl/sdk/a/f;

    sget-object v3, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lccsancom/applovin/impl/sdk/a/f;-><init>(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lccsancom/applovin/impl/sdk/a/f;

    sget-object v3, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lccsancom/applovin/impl/sdk/a/f;-><init>(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v2, Lccsancom/applovin/impl/sdk/a/f;

    sget-object v3, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-direct {v2, v3, p1}, Lccsancom/applovin/impl/sdk/a/f;-><init>(Lccsancom/applovin/mediation/MaxAdFormat;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eT:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private c(Lccsanorg/json/JSONArray;)Ljava/util/LinkedHashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lccsancom/applovin/impl/sdk/a/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x0

    invoke-static {p1, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v3

    const-string v4, "id"

    invoke-static {v3, v4, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v3}, Lccsancom/applovin/impl/sdk/a/d;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;ZZ)V
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/a/d;->b()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/a/f;->a(Lccsancom/applovin/impl/sdk/AppLovinAdBase;ZZ)V

    return-void
.end method

.method public a(Lccsancom/applovin/impl/sdk/a/d;ZI)V
    .locals 2

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/d;->b()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {v0, p1, p2, p3}, Lccsancom/applovin/impl/sdk/a/f;->a(Lccsancom/applovin/impl/sdk/a/d;ZI)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lccsancom/applovin/impl/sdk/a/e;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, p3, p2}, Lccsancom/applovin/impl/sdk/a/f;->a(Lccsancom/applovin/impl/sdk/a/d;ILccsancom/applovin/impl/sdk/k;)V

    :goto_0
    return-void
.end method

.method public a(Lccsancom/applovin/impl/sdk/a/g;)V
    .locals 1

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/a/e;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/g;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/d;->b()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/a/f;->a()V

    return-void
.end method

.method public a(Lccsanorg/json/JSONArray;)V
    .locals 10

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->a:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->eT:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v7

    if-ge v1, v7, :cond_7

    const/4 v7, 0x0

    invoke-static {p1, v1, v7}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v8

    const-string v9, "id"

    invoke-static {v8, v9, v7}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v8}, Lccsancom/applovin/impl/sdk/a/d;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v7

    invoke-virtual {v7}, Lccsancom/applovin/impl/sdk/a/d;->b()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v8

    sget-object v9, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_1

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    sget-object v9, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_2

    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    sget-object v9, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_3

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    sget-object v9, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_4

    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    sget-object v9, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_5

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    sget-object v9, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v8, v9, :cond_6

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_7
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    sget-object v1, Lccsancom/applovin/mediation/MaxAdFormat;->BANNER:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/a/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->LEADER:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {p1, v2}, Lccsancom/applovin/impl/sdk/a/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->MREC:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {p1, v3}, Lccsancom/applovin/impl/sdk/a/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {p1, v4}, Lccsancom/applovin/impl/sdk/a/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {p1, v5}, Lccsancom/applovin/impl/sdk/a/f;->a(Ljava/util/List;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/a/e;->d:Ljava/util/Map;

    sget-object v0, Lccsancom/applovin/mediation/MaxAdFormat;->REWARDED_INTERSTITIAL:Lccsancom/applovin/mediation/MaxAdFormat;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsancom/applovin/impl/sdk/a/f;

    invoke-virtual {p1, v6}, Lccsancom/applovin/impl/sdk/a/f;->a(Ljava/util/List;)V

    :cond_8
    return-void
.end method

.method public b(Lccsanorg/json/JSONArray;)Ljava/util/LinkedHashSet;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/LinkedHashSet<",
            "Lccsancom/applovin/impl/sdk/a/d;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    return-object p1

    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a/e;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lccsancom/applovin/impl/sdk/a/e;->g:Z

    if-nez v2, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->b:Lccsancom/applovin/impl/sdk/r;

    const-string v2, "AdZoneManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " zone(s)..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lccsancom/applovin/impl/sdk/r;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lccsancom/applovin/impl/sdk/a/e;->c(Lccsanorg/json/JSONArray;)Ljava/util/LinkedHashSet;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/a/e;->e:Ljava/util/LinkedHashSet;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lccsancom/applovin/impl/sdk/a/e;->g:Z

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
