.class public final Lccsancom/applovin/impl/sdk/a/h;
.super Lccsancom/applovin/impl/sdk/AppLovinAdBase;


# instance fields
.field private a:Lccsancom/applovin/sdk/AppLovinAd;

.field private final b:Lccsancom/applovin/impl/sdk/a/d;


# direct methods
.method public constructor <init>(Lccsancom/applovin/impl/sdk/a/d;Lccsancom/applovin/impl/sdk/k;)V
    .locals 3

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    sget-object v2, Lccsancom/applovin/impl/sdk/a/b;->a:Lccsancom/applovin/impl/sdk/a/b;

    invoke-direct {p0, v0, v1, v2, p2}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;-><init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/impl/sdk/k;)V

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/a/h;->b:Lccsancom/applovin/impl/sdk/a/d;

    return-void
.end method

.method private c()Lccsancom/applovin/sdk/AppLovinAd;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/h;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->X()Lccsancom/applovin/impl/sdk/c;

    move-result-object v0

    iget-object v1, p0, Lccsancom/applovin/impl/sdk/a/h;->b:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0, v1}, Lccsancom/applovin/impl/sdk/c;->d(Lccsancom/applovin/impl/sdk/a/d;)Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    move-result-object v0

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->e()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a()Lccsancom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/h;->a:Lccsancom/applovin/sdk/AppLovinAd;

    return-object v0
.end method

.method public a(Lccsancom/applovin/sdk/AppLovinAd;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/a/h;->a:Lccsancom/applovin/sdk/AppLovinAd;

    return-void
.end method

.method public b()Lccsancom/applovin/sdk/AppLovinAd;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/h;->a:Lccsancom/applovin/sdk/AppLovinAd;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/a/h;->c()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    invoke-super {p0, p1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAdIdNumber()J
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsancom/applovin/sdk/AppLovinAd;->getAdIdNumber()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getAdZone()Lccsancom/applovin/impl/sdk/a/d;
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/h;->b:Lccsancom/applovin/impl/sdk/a/d;

    :goto_0
    return-object v0
.end method

.method public getCreatedAtMillis()J
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    instance-of v1, v0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v1, :cond_0

    check-cast v0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getCreatedAtMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getSize()Lccsancom/applovin/sdk/AppLovinAdSize;
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->c()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lccsancom/applovin/impl/sdk/a/b;
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    check-cast v0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getSource()Lccsancom/applovin/impl/sdk/a/b;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Lccsancom/applovin/impl/sdk/a/b;->a:Lccsancom/applovin/impl/sdk/a/b;

    :goto_0
    return-object v0
.end method

.method public getType()Lccsancom/applovin/sdk/AppLovinAdType;
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->d()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/h;->b:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/a/h;->b:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->a()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    invoke-super {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->hashCode()I

    move-result v0

    return v0
.end method

.method public isVideoAd()Z
    .locals 1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lccsancom/applovin/sdk/AppLovinAd;->isVideoAd()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAd{ #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", adType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", adSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/a/h;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lccsancom/applovin/impl/sdk/a/h;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
