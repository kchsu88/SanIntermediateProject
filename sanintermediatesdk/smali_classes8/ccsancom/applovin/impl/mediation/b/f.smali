.class public Lccsancom/applovin/impl/mediation/b/f;
.super Lccsancom/applovin/impl/sdk/e/v;


# instance fields
.field private final a:Lccsancom/applovin/impl/mediation/a/c;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/mediation/a/c;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskReportMaxReward"

    invoke-direct {p0, v0, p2}, Lccsancom/applovin/impl/sdk/e/v;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    return-void
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0/mcr"

    return-object v0
.end method

.method protected a(I)V
    .locals 2

    invoke-super {p0, p1}, Lccsancom/applovin/impl/sdk/e/v;->a(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to report reward for mediated ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " - error code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/b/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Lccsanorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->getAdUnitId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ad_unit_id"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->getPlacement()Ljava/lang/String;

    move-result-object v0

    const-string v1, "placement"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_MCODE"

    :goto_0
    const-string v1, "mcode"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "NO_BCODE"

    :goto_1
    const-string v1, "bcode"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Lccsancom/applovin/impl/sdk/b/c;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/a/c;->B()Lccsancom/applovin/impl/sdk/b/c;

    move-result-object v0

    return-object v0
.end method

.method protected b(Lccsanorg/json/JSONObject;)V
    .locals 1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Reported reward successfully for mediated ad: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsancom/applovin/impl/mediation/b/f;->a(Ljava/lang/String;)V

    return-void
.end method

.method protected c()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No reward result was found for mediated ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/applovin/impl/mediation/b/f;->a:Lccsancom/applovin/impl/mediation/a/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsancom/applovin/impl/mediation/b/f;->d(Ljava/lang/String;)V

    return-void
.end method
