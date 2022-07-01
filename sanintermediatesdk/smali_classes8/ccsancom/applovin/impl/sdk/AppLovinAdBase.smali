.class public abstract Lccsancom/applovin/impl/sdk/AppLovinAdBase;
.super Ljava/lang/Object;

# interfaces
.implements Lccsancom/applovin/sdk/AppLovinAd;


# instance fields
.field private final a:I

.field protected final adObject:Lccsanorg/json/JSONObject;

.field protected final adObjectLock:Ljava/lang/Object;

.field private b:Lccsancom/applovin/impl/sdk/a/d;

.field private final c:J

.field private d:Lccsancom/applovin/impl/sdk/a/h;

.field protected final fullResponse:Lccsanorg/json/JSONObject;

.field protected final fullResponseLock:Ljava/lang/Object;

.field protected final sdk:Lccsancom/applovin/impl/sdk/k;

.field protected final source:Lccsancom/applovin/impl/sdk/a/b;


# direct methods
.method protected constructor <init>(Lccsanorg/json/JSONObject;Lccsanorg/json/JSONObject;Lccsancom/applovin/impl/sdk/a/b;Lccsancom/applovin/impl/sdk/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    if-eqz p4, :cond_0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    iput-object p3, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->source:Lccsancom/applovin/impl/sdk/a/b;

    iput-object p4, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lccsancom/applovin/impl/sdk/k;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->c:J

    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->sort([C)V

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p1

    iput p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->a:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No sdk specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No response specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No ad object specified"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method protected containsKeyForAdObject(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lccsancom/applovin/impl/sdk/a/h;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lccsancom/applovin/impl/sdk/a/h;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/h;->b()Lccsancom/applovin/sdk/AppLovinAd;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object p1, v0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    goto :goto_2

    :cond_2
    check-cast p1, Lccsancom/applovin/impl/sdk/AppLovinAdBase;

    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    if-eqz v2, :cond_3

    iget-object v3, p1, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v2, v3}, Lccsancom/applovin/impl/sdk/a/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    iget-object v2, p1, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->source:Lccsancom/applovin/impl/sdk/a/b;

    iget-object v3, p1, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->source:Lccsancom/applovin/impl/sdk/a/b;

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget v2, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->a:I

    iget p1, p1, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->a:I

    if-ne v2, p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public getAdIdNumber()J
    .locals 3

    const-string v0, "ad_id"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getLongFromAdObject(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getAdValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getAdValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "ad_values"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getJsonObjectFromAdObject(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getAdZone()Lccsancom/applovin/impl/sdk/a/d;
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->c()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->d()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    return-object v0

    :cond_1
    const/4 v0, 0x0

    const-string/jumbo v1, "zone_id"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getSize()Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v1

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getType()Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lccsancom/applovin/impl/sdk/a/d;->a(Lccsancom/applovin/sdk/AppLovinAdSize;Lccsancom/applovin/sdk/AppLovinAdType;Ljava/lang/String;)Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    iput-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->b:Lccsancom/applovin/impl/sdk/a/d;

    return-object v0
.end method

.method protected getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getBooleanFromFullResponse(Ljava/lang/String;Z)Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getBoolean(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getClCode()Ljava/lang/String;
    .locals 4

    const-string v0, "clcode"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getColorFromAdObject(Ljava/lang/String;I)I
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lccsancom/applovin/impl/sdk/utils/StringUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lccsanandroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    :cond_0
    return p2
.end method

.method public getCreatedAtMillis()J
    .locals 2

    iget-wide v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->c:J

    return-wide v0
.end method

.method public getDummyAd()Lccsancom/applovin/impl/sdk/a/h;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->d:Lccsancom/applovin/impl/sdk/a/h;

    return-object v0
.end method

.method public getFetchLatencyMillis()J
    .locals 3

    const-string v0, "ad_fetch_latency_millis"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getLongFromFullResponse(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFetchResponseSize()J
    .locals 3

    const-string v0, "ad_fetch_response_size"

    const-wide/16 v1, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getLongFromFullResponse(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected getFloatFromAdObject(Ljava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getFloat(Lccsanorg/json/JSONObject;Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getFloatFromFullResponse(Ljava/lang/String;F)F
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getFloat(Lccsanorg/json/JSONObject;Ljava/lang/String;F)F

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getIntFromAdObject(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lccsanorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getIntFromFullResponse(Ljava/lang/String;I)I
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getInt(Lccsanorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getJsonObjectFromAdObject(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getJsonObjectFromFullResponse(Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getJSONObject(Lccsanorg/json/JSONObject;Ljava/lang/String;Lccsanorg/json/JSONObject;)Lccsanorg/json/JSONObject;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getLongFromAdObject(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getLongFromFullResponse(Ljava/lang/String;J)J
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2, p3}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getLong(Lccsanorg/json/JSONObject;Ljava/lang/String;J)J

    move-result-wide p1

    monitor-exit v0

    return-wide p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPrimaryKey()Ljava/lang/String;
    .locals 2

    const-string v0, "pk"

    const-string v1, "NA"

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRawFullResponse()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getSdk()Lccsancom/applovin/impl/sdk/k;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lccsancom/applovin/impl/sdk/k;

    return-object v0
.end method

.method public getSecondaryKey1()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sk1"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecondaryKey2()Ljava/lang/String;
    .locals 2

    const-string/jumbo v0, "sk2"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSize()Lccsancom/applovin/sdk/AppLovinAdSize;
    .locals 2

    const-string v0, "ad_size"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinAdSize;->fromString(Ljava/lang/String;)Lccsancom/applovin/sdk/AppLovinAdSize;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Lccsancom/applovin/impl/sdk/a/b;
    .locals 1

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->source:Lccsancom/applovin/impl/sdk/a/b;

    return-object v0
.end method

.method protected getStringFromAdObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponseLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->fullResponse:Lccsanorg/json/JSONObject;

    invoke-static {v1, p1, p2}, Lccsancom/applovin/impl/sdk/utils/JsonUtils;->getString(Lccsanorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getType()Lccsancom/applovin/sdk/AppLovinAdType;
    .locals 2

    const-string v0, "ad_type"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsancom/applovin/sdk/AppLovinAdType;->fromString(Ljava/lang/String;)Lccsancom/applovin/sdk/AppLovinAdType;

    move-result-object v0

    return-object v0
.end method

.method public getZoneId()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getAdZone()Lccsancom/applovin/impl/sdk/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/a/d;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "zone_id"

    invoke-virtual {p0, v0, v1}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getStringFromFullResponse(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public hasShown()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "shown"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public hasVideoUrl()Z
    .locals 3

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->sdk:Lccsancom/applovin/impl/sdk/k;

    invoke-virtual {v0}, Lccsancom/applovin/impl/sdk/k;->z()Lccsancom/applovin/impl/sdk/r;

    move-result-object v0

    const-string v1, "AppLovinAdBase"

    const-string v2, "Attempting to invoke hasVideoUrl() from base ad class"

    invoke-virtual {v0, v1, v2}, Lccsancom/applovin/impl/sdk/r;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->a:I

    return v0
.end method

.method public isVideoAd()Z
    .locals 2

    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    const-string v1, "is_video_ad"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->hasVideoUrl()Z

    move-result v0

    return v0
.end method

.method public setDummyAd(Lccsancom/applovin/impl/sdk/a/h;)V
    .locals 0

    iput-object p1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->d:Lccsancom/applovin/impl/sdk/a/h;

    return-void
.end method

.method public setHasShown(Z)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObjectLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->adObject:Lccsanorg/json/JSONObject;

    const-string/jumbo v2, "shown"

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    :goto_0
    return-void
.end method

.method public shouldCancelHtmlCachingIfShown()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "chcis"

    invoke-virtual {p0, v1, v0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getBooleanFromAdObject(Ljava/lang/String;Ljava/lang/Boolean;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovinAd{adIdNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getAdIdNumber()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getSource()Lccsancom/applovin/impl/sdk/a/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", zoneId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsancom/applovin/impl/sdk/AppLovinAdBase;->getZoneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
