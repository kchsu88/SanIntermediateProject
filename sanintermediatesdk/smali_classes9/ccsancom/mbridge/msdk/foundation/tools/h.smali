.class public final Lccsancom/mbridge/msdk/foundation/tools/h;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method public static a(IIIII)Ljava/lang/String;
    .locals 6

    .line 28
    const-string v0, "message"

    const-string v1, "code"

    const-string v2, "JSONUtils"

    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V

    .line 31
    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3, v1, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 32
    const-string v4, "Sucess"

    invoke-virtual {v3, v0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 34
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 35
    const-string v5, "rotateAngle"

    invoke-virtual {v4, v5, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 37
    new-instance p0, Lccsanorg/json/JSONObject;

    invoke-direct {p0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 38
    const-string v5, "left"

    invoke-virtual {p0, v5, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 39
    const-string p1, "right"

    invoke-virtual {p0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 40
    const-string p1, "top"

    invoke-virtual {p0, p1, p3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 41
    const-string p1, "bottom"

    invoke-virtual {p0, p1, p4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 43
    const-string p1, "cutoutInfo"

    invoke-virtual {v4, p1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 45
    const-string p0, "data"

    invoke-virtual {v3, p0, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    goto :goto_0

    .line 49
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 46
    :catch_0
    move-exception p0

    .line 47
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 57
    :goto_0
    goto :goto_2

    .line 50
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v3, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 53
    const-string p0, "Fail"

    invoke-virtual {v3, v0, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    .line 56
    goto :goto_2

    .line 54
    :catch_1
    move-exception p0

    .line 55
    invoke-virtual {p0}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lccsancom/mbridge/msdk/foundation/tools/q;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    :goto_2
    invoke-virtual {v3}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lccsanorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    if-eqz p0, :cond_1

    .line 17
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    .line 18
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 19
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 20
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 22
    :cond_0
    return-object v1

    .line 24
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
