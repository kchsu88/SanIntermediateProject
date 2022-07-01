.class public Lccsansan/cw/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils()Ljava/lang/String;
    .locals 2

    .line 10
    const-string v0, "mads_web_host"

    const-string v1, "http://api.myadsget.com/ads"

    invoke-static {v0, v1}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static IncentiveDownloadUtils(B)Ljava/lang/String;
    .locals 4

    :try_start_0
    const-string v0, "adcs_domain"

    const-string v1, "adcs-ue.myappsget.com/ping/beyla?version=3"

    .line 1
    invoke-static {v0, v1}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x3

    if-ge p0, v2, :cond_0

    return-object v1

    .line 9
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    const-string v2, "san_stats_use_https"

    const/4 v3, 0x0

    invoke-static {p0, v2, v3}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v0

    :goto_0
    return-object v1

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    const-string v1, "http://adcs-ue.myappsget.com/ping/beyla?version=3"

    :goto_1
    return-object v1
.end method

.method public static addDownloadListener()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "protect_host"

    const-string v1, "https://san.myadssupport.com/client/ci?sec=2"

    invoke-static {v0, v1}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "san_urls"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 15
    :cond_0
    :try_start_0
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p0, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object p1
.end method

.method public static unifiedDownload()Ljava/lang/String;
    .locals 2

    .line 1
    const-string v0, "protect_host_batch"

    const-string v1, "https://san.myadssupport.com/client/ci?v=2&sec=2"

    invoke-static {v0, v1}, Lccsansan/cw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
