.class public Lccsansan/ac/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(I)I
    .locals 2

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_san_stats_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "def_upload_interval"

    invoke-static {v0, v1, p0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static addDownloadListener(I)I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_san_stats_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "med_upload_interval"

    invoke-static {v0, v1, p0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDownloadedRecordByUrl(I)I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_san_stats_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "special_min_upload_count"

    invoke-static {v0, v1, p0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getDownloadingList(I)I
    .locals 2

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_san_stats_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "max_upload_events"

    invoke-static {v0, v1, p0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static removeDownloadListener(I)I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_san_stats_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "max_upload_times"

    invoke-static {v0, v1, p0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static removeDownloadListener()Z
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "san_stats_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static unifiedDownload(I)I
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "ad_san_stats_config"

    invoke-static {v0, v1}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return p0

    .line 3
    :cond_0
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "min_upload_interval"

    invoke-static {v0, v1, p0}, Lccsansan/bw/performActionWhenOffline;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static unifiedDownload()Z
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v1, "san_stats_impl_enable"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lccsansan/bw/performActionWhenOffline;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
