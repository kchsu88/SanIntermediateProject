.class public Lccsancom/applovin/impl/mediation/debugger/a/a/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lccsanorg/json/JSONObject;Ljava/util/Map;Lccsancom/applovin/impl/sdk/k;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "name"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->a:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "default"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->b:Z

    const-string v0, "bidders"

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;Ljava/util/Map;Lccsancom/applovin/impl/sdk/k;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->c:Ljava/util/List;

    const-string/jumbo v0, "waterfall"

    invoke-direct {p0, v0, p1, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;Ljava/util/Map;Lccsancom/applovin/impl/sdk/k;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->d:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;Lccsanorg/json/JSONObject;Ljava/util/Map;Lccsancom/applovin/impl/sdk/k;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lccsanorg/json/JSONObject;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lccsancom/applovin/impl/mediation/debugger/a/b/b;",
            ">;",
            "Lccsancom/applovin/impl/sdk/k;",
            ")",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/b;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lccsanorg/json/JSONArray;

    invoke-direct {v1}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-static {p2, p1, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p1

    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge p2, v1, :cond_2

    const/4 v1, 0x0

    invoke-static {p1, p2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "adapter_class"

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsancom/applovin/impl/mediation/debugger/a/b/b;

    if-nez v3, :cond_0

    invoke-virtual {p4}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to retrieve network info for adapter class: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AdUnitWaterfall"

    invoke-virtual {v1, v3, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    new-instance v2, Lccsancom/applovin/impl/mediation/debugger/a/a/b;

    invoke-direct {v2, v1, v3, p4}, Lccsancom/applovin/impl/mediation/debugger/a/a/b;-><init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/mediation/debugger/a/b/b;Lccsancom/applovin/impl/sdk/k;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->c:Ljava/util/List;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->d:Ljava/util/List;

    return-object v0
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->b:Z

    return v0
.end method
