.class public Lccsancom/san/bridge/getDownloadingList;
.super Lccsancom/san/bridge/addDownloadListener;
.source ""


# direct methods
.method public static addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/unifiedDownload;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static addDownloadListener()V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/bridge/removeDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lccsancom/san/bridge/removeDownloadListener;->unifiedDownload()V

    :cond_0
    return-void
.end method

.method public static getDownloadingList(Lccsanorg/json/JSONArray;)V
    .locals 1

    .line 7
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->IncentiveDownloadUtils(Lccsanorg/json/JSONArray;)V

    :cond_0
    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p0, p1, p2}, Lccsancom/san/bridge/unifiedDownload;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static removeDownloadListener()Lccsanorg/json/JSONArray;
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lccsancom/san/bridge/unifiedDownload;->unifiedDownload()Lccsanorg/json/JSONArray;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0}, Lccsancom/san/bridge/unifiedDownload;->addDownloadListener(Lccsanandroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList()Lccsancom/san/bridge/unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p0, p1}, Lccsancom/san/bridge/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
