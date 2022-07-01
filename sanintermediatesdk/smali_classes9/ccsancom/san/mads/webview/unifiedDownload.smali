.class public Lccsancom/san/mads/webview/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(Ljava/lang/String;)Lccsanorg/json/JSONObject;
    .locals 2

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "responseCode"

    .line 3
    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object v0
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/Exception;)Lccsanorg/json/JSONObject;
    .locals 2

    .line 4
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "responseCode"

    .line 6
    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, "exception"

    .line 7
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-object v0
.end method
