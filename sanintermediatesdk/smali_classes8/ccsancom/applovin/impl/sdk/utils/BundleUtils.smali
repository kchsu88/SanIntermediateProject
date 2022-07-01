.class public Lccsancom/applovin/impl/sdk/utils/BundleUtils;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static containsAtLeastOneKey(Ljava/util/Set;Lccsanandroid/os/Bundle;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;",
            "Lccsanandroid/os/Bundle;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v0
.end method

.method public static getBoolean(Ljava/lang/String;Lccsanandroid/os/Bundle;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getBoolean(Ljava/lang/String;ZLccsanandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method

.method public static getBoolean(Ljava/lang/String;ZLccsanandroid/os/Bundle;)Z
    .locals 2

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-eqz p2, :cond_8

    invoke-virtual {p2, p0}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p2, p0}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/Boolean;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    :cond_1
    instance-of p2, p0, Ljava/lang/Number;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    if-nez p0, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_8

    check-cast p0, Ljava/lang/String;

    const-string/jumbo p2, "true"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_7

    const-string p2, "1"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const-string p2, "false"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6

    const-string p2, "0"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return p1

    :cond_6
    :goto_0
    return v0

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    return p1
.end method

.method public static getInt(Ljava/lang/String;ILccsanandroid/os/Bundle;)I
    .locals 1

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p2, p0, Ljava/lang/Number;

    if-eqz p2, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_1
    instance-of p2, p0, Ljava/lang/String;

    if-eqz p2, :cond_2

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    :cond_2
    :goto_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;Lccsanandroid/os/Bundle;)I
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getInt(Ljava/lang/String;ILccsanandroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method public static getLong(Ljava/lang/String;JLccsanandroid/os/Bundle;)J
    .locals 1

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p3, p0}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p3, p0}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p3, p0, Ljava/lang/Number;

    if-eqz p3, :cond_1

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    return-wide p0

    :cond_1
    instance-of p3, p0, Ljava/lang/String;

    if-eqz p3, :cond_2

    :try_start_0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    move-exception p0

    :cond_2
    :goto_0
    return-wide p1
.end method

.method public static getLong(Ljava/lang/String;Lccsanandroid/os/Bundle;)J
    .locals 2

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1, p1}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getLong(Ljava/lang/String;JLccsanandroid/os/Bundle;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static getString(Ljava/lang/String;Lccsanandroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->getString(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2, p0}, Lccsanandroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p0}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object p1
.end method

.method public static putBoolean(Ljava/lang/String;Ljava/lang/Boolean;Lccsanandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p2, p0, p1}, Lccsanandroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public static putDouble(Ljava/lang/String;Ljava/lang/Double;Lccsanandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lccsanandroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_0
    return-void
.end method

.method public static putInt(Ljava/lang/String;Ljava/lang/Integer;Lccsanandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2, p0, p1}, Lccsanandroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static putLong(Ljava/lang/String;Ljava/lang/Long;Lccsanandroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, p0, v0, v1}, Lccsanandroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method public static putString(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p2, p0, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static putStringIfValid(Ljava/lang/String;Ljava/lang/String;Lccsanandroid/os/Bundle;)V
    .locals 1

    invoke-static {p1}, Lccsancom/applovin/sdk/AppLovinSdkUtils;->isValidString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p0, p1}, Lccsanandroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static toJSONObject(Lccsanandroid/os/Bundle;)Lccsanorg/json/JSONObject;
    .locals 7

    if-nez p0, :cond_0

    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsanorg/json/JSONObject;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lccsanandroid/os/Bundle;

    if-eqz v4, :cond_3

    check-cast v3, Lccsanandroid/os/Bundle;

    invoke-static {v3}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Lccsanandroid/os/Bundle;)Lccsanorg/json/JSONObject;

    move-result-object v3

    :cond_2
    invoke-virtual {v0, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/util/Collection;

    if-nez v4, :cond_4

    instance-of v4, v3, [Lccsanandroid/os/Parcelable;

    if-eqz v4, :cond_2

    :cond_4
    instance-of v4, v3, Ljava/util/Collection;

    if-eqz v4, :cond_5

    check-cast v3, Ljava/util/Collection;

    goto :goto_1

    :cond_5
    check-cast v3, [Lccsanandroid/os/Parcelable;

    check-cast v3, [Lccsanandroid/os/Parcelable;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_1
    new-instance v4, Lccsanorg/json/JSONArray;

    invoke-direct {v4}, Lccsanorg/json/JSONArray;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lccsanandroid/os/Bundle;

    if-eqz v6, :cond_6

    check-cast v5, Lccsanandroid/os/Bundle;

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toJSONObject(Lccsanandroid/os/Bundle;)Lccsanorg/json/JSONObject;

    move-result-object v5

    :cond_6
    invoke-virtual {v4, v5}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v2, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "AppLovinSdk"

    const-string v2, "Failed to convert Bundle to JSONObject"

    invoke-static {v1, v2, p0}, Lccsancom/applovin/impl/sdk/r;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_8
    return-object v0
.end method

.method public static toMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsanandroid/os/Bundle;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    instance-of v4, v3, Lccsanandroid/os/Bundle;

    if-eqz v4, :cond_3

    check-cast v3, Lccsanandroid/os/Bundle;

    invoke-static {v3}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v3

    :cond_2
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    instance-of v4, v3, Ljava/util/Collection;

    if-nez v4, :cond_4

    instance-of v5, v3, [Lccsanandroid/os/Parcelable;

    if-eqz v5, :cond_2

    :cond_4
    if-eqz v4, :cond_5

    check-cast v3, Ljava/util/Collection;

    goto :goto_1

    :cond_5
    check-cast v3, [Lccsanandroid/os/Parcelable;

    check-cast v3, [Lccsanandroid/os/Parcelable;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    instance-of v6, v5, Lccsanandroid/os/Bundle;

    if-eqz v6, :cond_6

    check-cast v5, Lccsanandroid/os/Bundle;

    invoke-static {v5}, Lccsancom/applovin/impl/sdk/utils/BundleUtils;->toMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;

    move-result-object v5

    :cond_6
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_8
    return-object v0
.end method

.method public static toStringMap(Lccsanandroid/os/Bundle;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/os/Bundle;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-virtual {p0}, Lccsanandroid/os/Bundle;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p0}, Lccsanandroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Lccsanandroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-object v0
.end method
