.class public Lccsancom/applovin/impl/mediation/debugger/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsancom/applovin/impl/mediation/debugger/a/a/a;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lccsancom/applovin/mediation/MaxAdFormat;

.field private final d:Lccsancom/applovin/impl/mediation/debugger/a/a/c;

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsancom/applovin/impl/mediation/debugger/a/a/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;Ljava/util/Map;Lccsancom/applovin/impl/sdk/k;)V
    .locals 5
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

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->a:Ljava/lang/String;

    const-string v0, "display_name"

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->b:Ljava/lang/String;

    const-string v0, "format"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->c:Lccsancom/applovin/mediation/MaxAdFormat;

    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    const-string/jumbo v2, "waterfalls"

    invoke-static {p1, v2, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONArray(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONArray;)Lccsanorg/json/JSONArray;

    move-result-object p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->e:Ljava/util/List;

    const/4 v0, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_1

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Lccsancom/applovin/impl/mediation/debugger/a/a/c;

    invoke-direct {v4, v3, p2, p3}, Lccsancom/applovin/impl/mediation/debugger/a/a/c;-><init>(Lccsanorg/json/JSONObject;Ljava/util/Map;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v3, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->e:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v2, :cond_0

    invoke-virtual {v4}, Lccsancom/applovin/impl/mediation/debugger/a/a/c;->c()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d:Lccsancom/applovin/impl/mediation/debugger/a/a/c;

    return-void
.end method

.method private g()Lccsancom/applovin/impl/mediation/debugger/a/a/c;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->e:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/mediation/debugger/a/a/c;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Lccsancom/applovin/impl/mediation/debugger/a/a/a;)I
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->b:Ljava/lang/String;

    iget-object p1, p1, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->c:Lccsancom/applovin/mediation/MaxAdFormat;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "Unknown"

    :goto_0
    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lccsancom/applovin/impl/mediation/debugger/a/a/a;

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->a(Lccsancom/applovin/impl/mediation/debugger/a/a/a;)I

    move-result p1

    return p1
.end method

.method public d()Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->c:Lccsancom/applovin/mediation/MaxAdFormat;

    return-object v0
.end method

.method public e()Lccsancom/applovin/impl/mediation/debugger/a/a/c;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->d:Lccsancom/applovin/impl/mediation/debugger/a/a/c;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->g()Lccsancom/applovin/impl/mediation/debugger/a/a/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n---------- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ----------"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nIdentifier - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nFormat     - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/debugger/a/a/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
