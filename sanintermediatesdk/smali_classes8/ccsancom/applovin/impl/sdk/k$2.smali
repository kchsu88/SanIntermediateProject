.class Lccsancom/applovin/impl/sdk/k$2;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/impl/sdk/e/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/sdk/k;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/sdk/k;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsanorg/json/JSONObject;)V
    .locals 3

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v2}, Lccsancom/applovin/impl/sdk/utils/g;->d(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v2}, Lccsancom/applovin/impl/sdk/utils/g;->c(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v2}, Lccsancom/applovin/impl/sdk/utils/g;->e(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0, v2}, Lccsancom/applovin/impl/sdk/utils/g;->a(Lccsanorg/json/JSONObject;ZLccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/mediation/c/b;->a(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/mediation/c/b;->b(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "smd"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->E()Lccsancom/applovin/impl/mediation/debugger/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/mediation/debugger/a;->a(Z)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/k;Lccsanorg/json/JSONObject;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/applovin/impl/sdk/k;->a(Lccsancom/applovin/impl/sdk/k;Ljava/util/List;)Ljava/util/List;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->h(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->f(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->H()Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/mediation/debugger/ui/testmode/b;->a(Lccsanorg/json/JSONObject;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/k;->b(Lccsancom/applovin/impl/sdk/k;Lccsanorg/json/JSONObject;)V

    new-instance v0, Lccsancom/applovin/impl/sdk/e/n;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-direct {v0, v1}, Lccsancom/applovin/impl/sdk/e/n;-><init>(Lccsancom/applovin/impl/sdk/k;)V

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v1}, Lccsancom/applovin/impl/sdk/k;->Q()Lccsancom/applovin/impl/sdk/e/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsancom/applovin/impl/sdk/e/o;->a(Lccsancom/applovin/impl/sdk/e/a;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/k$2;->a:Lccsancom/applovin/impl/sdk/k;

    invoke-static {p1, v0}, Lccsancom/applovin/impl/sdk/utils/g;->g(Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    return-void
.end method
