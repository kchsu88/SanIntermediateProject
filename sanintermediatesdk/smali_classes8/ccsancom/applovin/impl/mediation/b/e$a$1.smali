.class Lccsancom/applovin/impl/mediation/b/e$a$1;
.super Lccsancom/applovin/impl/mediation/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/applovin/impl/mediation/b/e$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lccsancom/applovin/impl/mediation/b/e$a;


# direct methods
.method constructor <init>(Lccsancom/applovin/impl/mediation/b/e$a;Lccsancom/applovin/impl/mediation/ads/a$a;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    invoke-direct {p0, p2}, Lccsancom/applovin/impl/mediation/c/a;-><init>(Lccsancom/applovin/impl/mediation/ads/a$a;)V

    return-void
.end method


# virtual methods
.method public onAdLoadFailed(Ljava/lang/String;Lccsancom/applovin/mediation/MaxError;)V
    .locals 4

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ad failed to load with error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lccsancom/applovin/impl/mediation/b/e$a;->b(Lccsancom/applovin/impl/mediation/b/e$a;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/b/e$a;->b(Lccsancom/applovin/impl/mediation/b/e$a;)Lccsancom/applovin/impl/sdk/k;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/c/c;->a(Lccsancom/applovin/impl/sdk/k;)Lccsanorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_3

    invoke-static {p1, v0, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONArray;ILccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "class"

    invoke-static {v1, v3, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    invoke-static {v3}, Lccsancom/applovin/impl/mediation/b/e$a;->c(Lccsancom/applovin/impl/mediation/b/e$a;)Lccsancom/applovin/impl/mediation/a/a;

    move-result-object v3

    invoke-virtual {v3}, Lccsancom/applovin/impl/mediation/a/a;->J()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v2, v1

    goto :goto_2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    new-instance p1, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;

    invoke-direct {p1, v2, p2}, Lccsancom/applovin/impl/mediation/MaxMediatedNetworkInfoImpl;-><init>(Lccsanorg/json/JSONObject;Lccsancom/applovin/mediation/MaxError;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/b/e$a;->a:Lccsancom/applovin/impl/mediation/b/e;

    invoke-static {v0}, Lccsancom/applovin/impl/mediation/b/e;->f(Lccsancom/applovin/impl/mediation/b/e;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lccsancom/applovin/mediation/MaxError;->getCode()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lccsancom/applovin/impl/mediation/b/e$a;->a(Lccsancom/applovin/impl/mediation/b/e$a;Ljava/lang/String;)V

    iget-object p1, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    invoke-static {p1}, Lccsancom/applovin/impl/mediation/b/e$a;->d(Lccsancom/applovin/impl/mediation/b/e$a;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/applovin/mediation/MaxAd;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    const-string v1, "loaded ad"

    invoke-static {v0, v1}, Lccsancom/applovin/impl/mediation/b/e$a;->a(Lccsancom/applovin/impl/mediation/b/e$a;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    iget-object v0, v0, Lccsancom/applovin/impl/mediation/b/e$a;->a:Lccsancom/applovin/impl/mediation/b/e;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/e$a$1;->a:Lccsancom/applovin/impl/mediation/b/e$a;

    invoke-static {v1}, Lccsancom/applovin/impl/mediation/b/e$a;->a(Lccsancom/applovin/impl/mediation/b/e$a;)I

    move-result v1

    invoke-static {v0, p1, v1}, Lccsancom/applovin/impl/mediation/b/e;->a(Lccsancom/applovin/impl/mediation/b/e;Lccsancom/applovin/mediation/MaxAd;I)V

    return-void
.end method
