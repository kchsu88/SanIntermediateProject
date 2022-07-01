.class public Lccsansan/dr/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils()J
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_app_usage_record_time"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static IncentiveDownloadUtils(I)V
    .locals 0

    .line 4
    invoke-static {p0}, Lccsansan/dr/deleteDownItem;->unifiedDownload(I)V

    return-void
.end method

.method public static IncentiveDownloadUtils(J)V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_app_usage_record_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "app_cache_size"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static addDownloadListener()Ljava/lang/String;
    .locals 2

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "app_cache_size"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static addDownloadListener(J)V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_upload_index"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    return-void
.end method

.method public static addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_upload_md5"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static deleteDownItem()J
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_upload_index"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getDownloadStatusByUrl()Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "apps_info_record"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadStatusByUrl(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_info_record"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static getDownloadedList()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_upload_md5"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadedRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_info_record"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadingList(I)V
    .locals 0

    .line 4
    invoke-static {p0}, Lccsansan/dr/deleteDownItem;->IncentiveDownloadUtils(I)V

    return-void
.end method

.method public static getDownloadingList(J)V
    .locals 0

    .line 5
    invoke-static {p0, p1}, Lccsansan/dr/deleteDownItem;->getDownloadingList(J)V

    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "apps_info_summary"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static getDownloadingList()Z
    .locals 3

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "al_uploaded_once"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getDownloadingRecordByUrl()Ljava/lang/String;
    .locals 3

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "apps_info_summary"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lccsansan/bw/AdError;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static removeDownloadListener()J
    .locals 4

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_record_time"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public static removeDownloadListener(J)V
    .locals 2

    .line 3
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "last_apps_record_time"

    invoke-virtual {v0, v1, p0, p1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;J)Z

    return-void
.end method

.method public static removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "apps_info_record"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static unifiedDownload()Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "app_usage_info"

    invoke-virtual {v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "app_usage_info"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static unifiedDownload(Z)V
    .locals 2

    .line 1
    new-instance v0, Lccsansan/bw/AdError;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;)V

    const-string v1, "al_uploaded_once"

    invoke-virtual {v0, v1, p0}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;Z)Z

    return-void
.end method
