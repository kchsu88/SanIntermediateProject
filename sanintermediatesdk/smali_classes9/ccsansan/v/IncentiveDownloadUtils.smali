.class public Lccsansan/v/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-static {}, Lccsansan/z/unifiedDownload;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void

    .line 8
    :cond_1
    invoke-static {p1}, Lccsansan/z/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/z/unifiedDownload$unifiedDownload;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 9
    invoke-virtual {p1}, Lccsansan/z/unifiedDownload$unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    invoke-virtual {p1}, Lccsansan/z/unifiedDownload$unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    const-string v1, "music"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 14
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 16
    :cond_3
    invoke-virtual {p1}, Lccsansan/z/unifiedDownload$unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notify"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/content/Context;)V

    .line 19
    :cond_4
    invoke-virtual {p1}, Lccsansan/z/unifiedDownload$unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    const-string v0, "wakelock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    :cond_5
    return-void

    .line 21
    :cond_6
    :goto_0
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lccsansan/z/unifiedDownload;->unifiedDownload(Ljava/lang/String;)Lccsansan/z/unifiedDownload$unifiedDownload;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)V

    return-void

    .line 7
    :cond_0
    invoke-virtual {p1}, Lccsansan/z/unifiedDownload$unifiedDownload;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p1}, Lccsansan/z/unifiedDownload$unifiedDownload;->addDownloadListener()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {p1}, Lccsansan/z/unifiedDownload$unifiedDownload;->removeDownloadListener()Ljava/lang/String;

    move-result-object p1

    :goto_0
    nop

    .line 12
    const-string v0, "music"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 13
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    :cond_2
    nop

    .line 15
    const-string v0, "notify"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;)V

    :cond_3
    nop

    .line 18
    const-string v0, "wakelock"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 19
    invoke-static {p0}, Lccsansan/ag/IncentiveDownloadUtils;->getDownloadedRecordByUrl(Lccsanandroid/content/Context;)V

    :cond_4
    return-void
.end method
