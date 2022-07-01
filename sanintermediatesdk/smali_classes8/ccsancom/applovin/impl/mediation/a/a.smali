.class public abstract Lccsancom/applovin/impl/mediation/a/a;
.super Lccsancom/applovin/impl/mediation/a/e;

# interfaces
.implements Lccsancom/applovin/mediation/MaxAd;


# instance fields
.field protected a:Lccsancom/applovin/impl/mediation/g;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method protected constructor <init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/mediation/g;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0, p1, p2, p4}, Lccsancom/applovin/impl/mediation/a/e;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lccsancom/applovin/impl/mediation/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lccsancom/applovin/impl/mediation/a/a;->a:Lccsancom/applovin/impl/mediation/g;

    return-void
.end method

.method public static a(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)Lccsancom/applovin/impl/mediation/a/a;
    .locals 3

    const-string v0, "ad_format"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->isAdViewAd()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v0, Lccsancom/applovin/impl/mediation/a/b;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/mediation/a/b;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    return-object v0

    :cond_0
    sget-object v2, Lccsancom/applovin/mediation/MaxAdFormat;->NATIVE:Lccsancom/applovin/mediation/MaxAdFormat;

    if-ne v1, v2, :cond_1

    new-instance v0, Lccsancom/applovin/impl/mediation/a/d;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/mediation/a/d;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    return-object v0

    :cond_1
    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->isFullscreenAd()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v0, Lccsancom/applovin/impl/mediation/a/c;

    invoke-direct {v0, p0, p1, p2}, Lccsancom/applovin/impl/mediation/a/c;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/k;)V

    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported ad format: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private q()J
    .locals 3

    const-string v0, "load_started_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public abstract a(Lccsancom/applovin/impl/mediation/g;)Lccsancom/applovin/impl/mediation/a/a;
.end method

.method public a()Lccsanorg/json/JSONObject;
    .locals 2

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "ad_values"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Lccsanandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    const-string v0, "creative_id"

    invoke-virtual {p1, v0}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0, p1}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Lccsanandroid/os/Bundle;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsancom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Lccsanorg/json/JSONObject;
    .locals 2

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "revenue_parameters"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->b()Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "revenue_event"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/a;->a:Lccsancom/applovin/impl/mediation/g;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/g;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/a;->a:Lccsancom/applovin/impl/mediation/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/mediation/g;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e()Ljava/lang/String;
    .locals 2

    const-string v0, "event_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Lccsancom/applovin/impl/mediation/g;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/a;->a:Lccsancom/applovin/impl/mediation/g;

    return-object v0
.end method

.method public g()Ljava/lang/Float;
    .locals 2

    const-string v0, "r_mbr"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 2

    const-string v0, "ad_unit_id"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/mediation/a/a;->getAdValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->a()Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCreativeId()Ljava/lang/String;
    .locals 2

    const-string v0, "creative_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Lccsancom/applovin/mediation/MaxAdFormat;
    .locals 2

    const-string v0, "ad_format"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/mediation/MaxAdFormat;->formatFromString(Ljava/lang/String;)Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkName()Ljava/lang/String;
    .locals 2

    const-string v0, "network_name"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkPlacement()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->j()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->emptyIfNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRevenue()D
    .locals 4

    const-string v0, "revenue_parameters"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->a(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v1, "revenue"

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    invoke-static {v0, v1, v2, v3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getDouble(Lccsanorg/json/JSONObject;Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    const-string v0, "bid_response"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()J
    .locals 4

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->R()Lccsanandroid/os/Bundle;

    move-result-object v0

    const-string v1, "bid_expiration_ms"

    const-wide/16 v2, -0x1

    invoke-static {v1, v2, v3, v0}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getLong(Ljava/lang/String;JLccsanandroid/os/Bundle;)J

    move-result-wide v2

    invoke-virtual {p0, v1, v2, v3}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "third_party_ad_placement_id"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()J
    .locals 5

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/a/a;->q()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->m()J

    move-result-wide v0

    invoke-direct {p0}, Lccsancom/applovin/impl/mediation/a/a;->q()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public l()V
    .locals 3

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "load_started_time_ms"

    invoke-virtual {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public m()J
    .locals 3

    const-string v0, "load_completed_time_ms"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/mediation/a/a;->b(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public n()V
    .locals 3

    invoke-static {}, Lccsanandroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "load_completed_time_ms"

    invoke-virtual {p0, v2, v0, v1}, Lccsancom/applovin/impl/mediation/a/a;->c(Ljava/lang/String;J)V

    return-void
.end method

.method public o()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/mediation/a/a;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public p()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/applovin/impl/mediation/a/a;->a:Lccsancom/applovin/impl/mediation/g;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediatedAd{thirdPartyAdPlacementId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", adUnitId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->getAdUnitId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->getFormat()Lccsancom/applovin/mediation/MaxAdFormat;

    move-result-object v1

    invoke-virtual {v1}, Lccsancom/applovin/mediation/MaxAdFormat;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", networkName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/mediation/a/a;->getNetworkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
