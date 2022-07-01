.class public Lccsancom/applovin/impl/sdk/e/z;
.super Lccsancom/applovin/impl/sdk/e/aa;


# instance fields
.field private final a:Lccsancom/applovin/impl/sdk/a/g;

.field private final c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/g;Lccsancom/applovin/sdk/AppLovinAdRewardListener;Lccsancom/applovin/impl/sdk/k;)V
    .locals 1

    const-string v0, "TaskValidateAppLovinReward"

    invoke-direct {p0, v0, p3}, Lccsancom/applovin/impl/sdk/e/aa;-><init>(Ljava/lang/String;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/e/z;->c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "2.0/vr"

    return-object v0
.end method

.method protected a(I)V
    .locals 2

    invoke-super {p0, p1}, Lccsancom/applovin/impl/sdk/e/aa;->a(I)V

    const/16 v0, 0x190

    if-lt p1, v0, :cond_0

    const/16 v0, 0x1f4

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/z;->c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lccsancom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    const-string p1, "rejected"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-interface {v0, v1, p1}, Lccsancom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lccsancom/applovin/sdk/AppLovinAd;I)V

    const-string p1, "network_timeout"

    :goto_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/b/c;->a(Ljava/lang/String;)Lccsancom/applovin/impl/sdk/b/c;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/a/g;->a(Lccsancom/applovin/impl/sdk/b/c;)V

    return-void
.end method

.method protected a(Lccsancom/applovin/impl/sdk/b/c;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0, p1}, Lccsancom/applovin/impl/sdk/a/g;->a(Lccsancom/applovin/impl/sdk/b/c;)V

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/b/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lccsancom/applovin/impl/sdk/b/c;->a()Ljava/util/Map;

    move-result-object p1

    const-string v1, "accepted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-interface {v0, v1, p1}, Lccsancom/applovin/sdk/AppLovinAdRewardListener;->userRewardVerified(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_0
    const-string v1, "quota_exceeded"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-interface {v0, v1, p1}, Lccsancom/applovin/sdk/AppLovinAdRewardListener;->userOverQuota(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    const-string v1, "rejected"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-interface {v0, v1, p1}, Lccsancom/applovin/sdk/AppLovinAdRewardListener;->userRewardRejected(Lccsancom/applovin/sdk/AppLovinAd;Ljava/util/Map;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lccsancom/applovin/impl/sdk/e/z;->c:Lccsancom/applovin/sdk/AppLovinAdRewardListener;

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    const/16 v1, -0x190

    invoke-interface {p1, v0, v1}, Lccsancom/applovin/sdk/AppLovinAdRewardListener;->validationRequestFailed(Lccsancom/applovin/sdk/AppLovinAd;I)V

    :goto_0
    return-void
.end method

.method protected a(Lccsanorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zone_id"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->getClCode()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "NO_CLCODE"

    :goto_0
    const-string v1, "clcode"

    invoke-static {p1, v1, v0}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->putString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b()Z
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/e/z;->a:Lccsancom/applovin/impl/sdk/a/g;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/g;->aG()Z

    move-result v0

    return v0
.end method
