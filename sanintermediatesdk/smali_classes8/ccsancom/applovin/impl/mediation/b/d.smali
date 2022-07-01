.class public Lccsancom/applovin/impl/mediation/b/d;
.super Lccsancom/applovin/impl/sdk/e/a;


# instance fields
.field private final a:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Lccsancom/applovin/impl/mediation/a/e;

.field private final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lccsancom/applovin/mediation/MaxError;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lccsancom/applovin/mediation/MaxError;Lccsancom/applovin/impl/mediation/a/e;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/applovin/mediation/MaxError;",
            "Lccsancom/applovin/impl/mediation/a/e;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    const-string v0, "TaskFireMediationPostbacks"

    invoke-direct {p0, v0, p5}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/d;->a:Ljava/lang/String;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "_urls"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    iput-object p5, p0, Lccsancom/applovin/impl/mediation/b/d;->c:Ljava/lang/String;

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/Utils;->toUrlSafeMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/d;->e:Ljava/util/Map;

    if-eqz p3, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    new-instance p2, Lccsancom/applovin/impl/mediation/MaxErrorImpl;

    const/4 p5, -0x1

    invoke-direct {p2, p5}, Lccsancom/applovin/impl/mediation/MaxErrorImpl;-><init>(I)V

    :goto_0
    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/d;->g:Lccsancom/applovin/mediation/MaxError;

    iput-object p4, p0, Lccsancom/applovin/impl/mediation/b/d;->d:Lccsancom/applovin/impl/mediation/a/e;

    new-instance p2, Ljava/util/HashMap;

    const/4 p5, 0x7

    invoke-direct {p2, p5}, Ljava/util/HashMap;-><init>(I)V

    const-string p5, "AppLovin-Event-Type"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lccsancom/applovin/impl/mediation/a/e;->K()Ljava/lang/String;

    move-result-object p1

    const-string p5, "AppLovin-Ad-Network-Name"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of p1, p4, Lccsancom/applovin/impl/mediation/a/a;

    if-eqz p1, :cond_1

    check-cast p4, Lccsancom/applovin/impl/mediation/a/a;

    invoke-virtual {p4}, Lccsancom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object p1

    const-string p5, "AppLovin-Ad-Unit-Id"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object p1

    const-string p5, "AppLovin-Ad-Format"

    invoke-interface {p2, p5, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p4}, Lccsancom/applovin/impl/mediation/a/a;->j()Ljava/lang/String;

    move-result-object p1

    const-string p4, "AppLovin-Third-Party-Ad-Placement-ID"

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p4, "AppLovin-Error-Code"

    invoke-interface {p2, p4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p3}, Lccsancom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AppLovin-Error-Message"

    invoke-interface {p2, p3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iput-object p2, p0, Lccsancom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)Ljava/lang/String;
    .locals 4

    instance-of v0, p2, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lccsancom/applovin/mediation/adapter/MaxAdapterError;

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->getThirdPartySdkErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lccsancom/applovin/mediation/adapter/MaxAdapterError;->getThirdPartySdkErrorMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const-string v0, ""

    :goto_0
    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "{ERROR_CODE}"

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v2, "{ERROR_MESSAGE}"

    invoke-virtual {p1, v2, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v1, "{THIRD_PARTY_SDK_ERROR_CODE}"

    invoke-virtual {p1, v1, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->encodeUrlString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "{THIRD_PARTY_SDK_ERROR_MESSAGE}"

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lccsancom/applovin/mediation/MaxError;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lccsancom/applovin/mediation/MaxError;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lccsancom/applovin/impl/mediation/b/d;->d:Lccsancom/applovin/impl/mediation/a/e;

    invoke-virtual {v5, v4}, Lccsancom/applovin/impl/mediation/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_0
    invoke-direct {p0, v1, p3}, Lccsancom/applovin/impl/mediation/b/d;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p4}, Lccsancom/applovin/impl/mediation/b/d;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private a()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/d;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/a;->i:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->toStringMap(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(Lccsancom/applovin/impl/mediation/b/d;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/b/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lccsancom/applovin/impl/sdk/network/g;->o()Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    const-string v0, "POST"

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    iget-object p2, p0, Lccsancom/applovin/impl/mediation/b/d;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v0, Lccsancom/applovin/impl/sdk/c/a;->U:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {p2, v0}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/network/g$a;->a()Lccsancom/applovin/impl/sdk/network/g;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/b/d;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object p2

    invoke-virtual {p2}, Lccsancom/applovin/impl/sdk/k;->S()Lccsancom/applovin/impl/sdk/network/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lccsancom/applovin/impl/sdk/network/f;->a(Lccsancom/applovin/impl/sdk/network/g;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lccsancom/applovin/impl/sdk/network/g;->o()Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/network/g$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->a(Z)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/g$a;->b(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/g$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/g$a;->a()Lccsancom/applovin/impl/sdk/network/g;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/b/d;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->S()Lccsancom/applovin/impl/sdk/network/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/network/f;->a(Lccsancom/applovin/impl/sdk/network/g;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method private b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/b/d;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/network/h;->b(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/h$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/network/h$a;->d(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/h$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/h$a;->f(Z)Lccsancom/applovin/impl/sdk/network/h$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/d;->f:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/h$a;->d(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/h$a;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/network/h$a;->b()Lccsancom/applovin/impl/sdk/network/h;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/b/d;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->V()Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/e/o$a;->m:Lccsancom/applovin/impl/sdk/e/o$a;

    new-instance v3, Lccsancom/applovin/impl/mediation/b/d$1;

    invoke-direct {v3, p0}, Lccsancom/applovin/impl/mediation/b/d$1;-><init>(Lccsancom/applovin/impl/mediation/b/d;)V

    invoke-virtual {v1, v0, v2, v3}, Lccsancom/applovin/impl/sdk/network/PostbackServiceImpl;->dispatchPostbackRequest(Lccsancom/applovin/impl/sdk/network/h;Lccsancom/applovin/impl/sdk/e/o$a;Lccsancom/applovin/sdk/AppLovinPostbackListener;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/d;->d:Lccsancom/applovin/impl/mediation/a/e;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/mediation/a/e;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/b/d;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/b/d;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v2

    sget-object v3, Lccsancom/applovin/impl/sdk/c/a;->R:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/d;->e:Ljava/util/Map;

    invoke-direct {p0, v2, v3}, Lccsancom/applovin/impl/mediation/b/d;->b(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/d;->g:Lccsancom/applovin/mediation/MaxError;

    invoke-direct {p0, v2, v3}, Lccsancom/applovin/impl/mediation/b/d;->a(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->buildUpon()Lccsanandroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lccsanandroid/net/Uri$Builder;->clearQuery()Lccsanandroid/net/Uri$Builder;

    move-result-object v3

    new-instance v4, Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Lccsanandroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lccsancom/applovin/impl/mediation/b/d;->d:Lccsancom/applovin/impl/mediation/a/e;

    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Lccsancom/applovin/impl/mediation/a/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v6, v7}, Lccsanandroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/net/Uri$Builder;

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lccsanandroid/net/Uri$Builder;->build()Lccsanandroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v4}, Lccsancom/applovin/impl/mediation/b/d;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lccsancom/applovin/impl/mediation/b/d;->e:Ljava/util/Map;

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/d;->g:Lccsancom/applovin/mediation/MaxError;

    invoke-direct {p0, v0, v1, v2, v3}, Lccsancom/applovin/impl/mediation/b/d;->a(Ljava/util/List;Ljava/util/Map;Ljava/util/Map;Lccsancom/applovin/mediation/MaxError;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/b/d;->d()Lccsancom/applovin/impl/sdk/k;

    move-result-object v1

    sget-object v2, Lccsancom/applovin/impl/sdk/c/a;->j:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/b/d;->a(Ljava/util/List;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0, v0}, Lccsancom/applovin/impl/mediation/b/d;->b(Ljava/util/List;)V

    :cond_4
    :goto_2
    return-void
.end method
