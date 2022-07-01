.class public Lccsansan/cu/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static addDownloadListener(Lccsanorg/json/JSONObject;)Lccsansan/cu/getDownloadedRecordByUrl;
    .locals 3

    .line 8
    const-string v0, "hb_dsp_type"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "fb"

    .line 13
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Lccsansan/cu/IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/cu/IncentiveDownloadUtils;-><init>(Lccsanorg/json/JSONObject;)V

    return-object v0

    .line 16
    :cond_1
    new-instance v0, Lccsansan/cu/getDownloadedRecordByUrl;

    invoke-direct {v0, p0}, Lccsansan/cu/getDownloadedRecordByUrl;-><init>(Lccsanorg/json/JSONObject;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    return-object v2
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;)Lccsansan/cu/addDownloadListener;
    .locals 1

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lccsansan/cu/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance v0, Lccsansan/cu/removeDownloadListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsansan/cu/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Lccsansan/cu/addDownloadListener;

    invoke-direct {v0, p0, p1, p2, p3}, Lccsansan/cu/addDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;)V

    return-object v0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static unifiedDownload(Lccsanorg/json/JSONObject;)Z
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 1
    :cond_0
    const-string v0, "hb_dsp_type"

    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2
    :goto_0
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
