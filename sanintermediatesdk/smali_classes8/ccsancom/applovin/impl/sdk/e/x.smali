.class public abstract Lccsancom/applovin/impl/sdk/e/x;
.super Lccsancom/applovin/impl/sdk/e/a;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lccsancom/applovin/impl/sdk/e/a;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected a(I)V
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->a(ILccsancom/applovin/impl/sdk/k;)V

    return-void
.end method

.method protected abstract a(Lccsanorg/json/JSONObject;)V
.end method

.method a(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/network/b$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONObject;",
            "Lccsancom/applovin/impl/sdk/network/b$c<",
            "Lccsanorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/network/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/x;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1, v2}, Lccsancom/applovin/impl/sdk/utils/g;->a(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/x;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1, v2}, Lccsancom/applovin/impl/sdk/utils/g;->b(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->c(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsancom/applovin/impl/sdk/k;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/util/Map;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    const-string v1, "POST"

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/network/c$a;->b(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Lccsanorg/json/JSONObject;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v1, Lccsancom/applovin/impl/sdk/c/b;->ey:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->d(Z)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(Ljava/lang/Object;)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/e/x;->h()I

    move-result v0

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/network/c$a;->a(I)Lccsancom/applovin/impl/sdk/network/c$a;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/network/c$a;->a()Lccsancom/applovin/impl/sdk/network/c;

    move-result-object p1

    new-instance v0, Lccsancom/applovin/impl/sdk/e/x$1;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, p0, p1, v1, p2}, Lccsancom/applovin/impl/sdk/e/x$1;-><init>(Lccsancom/applovin/impl/sdk/e/x;Lccsancom/applovin/impl/sdk/network/c;Lccsancom/applovin/impl/sdk/k;Lccsancom/applovin/impl/sdk/network/b$c;)V

    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->aQ:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/t;->a(Lccsancom/applovin/impl/sdk/c/b;)V

    sget-object p1, Lccsancom/applovin/impl/sdk/c/b;->aR:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/e/t;->b(Lccsancom/applovin/impl/sdk/c/b;)V

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    return-void
.end method

.method protected abstract h()I
.end method

.method protected i()Lccsanorg/json/JSONObject;
    .locals 4

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v3, Lccsancom/applovin/impl/sdk/c/b;->dt:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cuid"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dv:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->n()Ljava/lang/String;

    move-result-object v1

    const-string v2, "compass_random_token"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    sget-object v2, Lccsancom/applovin/impl/sdk/c/b;->dx:Lccsancom/applovin/impl/sdk/c/b;

    invoke-virtual {v1, v2}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/c/b;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/x;->b:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->o()Ljava/lang/String;

    move-result-object v1

    const-string v2, "applovin_random_token"

    invoke-static {v0, v2, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/sdk/e/x;->a(Lccsanorg/json/JSONObject;)V

    return-object v0
.end method
