.class public Lccsansan/c/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 19
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/c/unifiedDownload$addDownloadListener;

    const-string v2, "WorkerBalancer$reportResult"

    invoke-direct {v1, v2, p0, p1}, Lccsansan/c/unifiedDownload$addDownloadListener;-><init>(Ljava/lang/String;Lccsanandroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;J)Z
    .locals 6

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 4
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 9
    :try_start_0
    new-instance v4, Lccsansan/bw/AdError;

    const-string v5, "background_worker"

    invoke-direct {v4, p0, v5}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    goto :goto_0

    :catch_0
    move-exception p0

    :goto_0
    if-nez v3, :cond_1

    return v0

    .line 17
    :cond_1
    const-wide/16 v4, -0x1

    invoke-virtual {v3, p1, v4, v5}, Lccsansan/bw/AdError;->getDownloadingList(Ljava/lang/String;J)J

    move-result-wide p0

    cmp-long v3, p0, v4

    if-eqz v3, :cond_2

    sub-long/2addr v1, p0

    .line 18
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide p0

    cmp-long v1, p0, p2

    if-lez v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method
