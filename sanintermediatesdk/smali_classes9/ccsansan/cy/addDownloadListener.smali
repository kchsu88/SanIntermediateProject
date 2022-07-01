.class public Lccsansan/cy/addDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils()J
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/cy/unifiedDownload;->getDownloadedRecordByUrl()J

    move-result-wide v0

    return-wide v0
.end method

.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 5
    :try_start_0
    invoke-static {p0, p1, p2}, Lccsansan/cy/deleteDownItem;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    return-void
.end method

.method public static IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 0

    .line 2
    invoke-static {p0}, Lccsansan/cy/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)V
    .locals 1

    .line 3
    invoke-static {}, Lccsansan/p/deleteDownItem;->removeDownloadListener()Lccsansan/p/deleteDownItem;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/p/deleteDownItem;->addDownloadListener(Lccsansan/p/addDownloadListener$getDownloadingList;)V

    return-void
.end method

.method public static removeDownloadListener()J
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/cy/unifiedDownload;->addDownloadListener()J

    move-result-wide v0

    return-wide v0
.end method

.method public static removeDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl;)Lccsansan/m/removeDownloadListener;
    .locals 0

    .line 4
    :try_start_0
    invoke-static {p0}, Lccsansan/cy/deleteDownItem;->addDownloadListener(Lccsansan/cy/getDownloadingRecordByUrl;)Lccsansan/m/removeDownloadListener;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static unifiedDownload()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/cy/unifiedDownload;->resume()Z

    move-result v0

    return v0
.end method
