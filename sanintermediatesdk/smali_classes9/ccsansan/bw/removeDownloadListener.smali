.class public Lccsansan/bw/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Lccsansan/co/resolveUrl;
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->removeDownloadListener()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lccsansan/co/resolveUrl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdDataUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadStatusByUrl()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 4
    invoke-virtual {p0, v1}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(I)V

    if-eqz v0, :cond_2

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "https://play.google.com/store/apps/details?id="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->valueOf()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-static {v3}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {p0, v3}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 10
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v1, v4

    :cond_1
    invoke-virtual {p0, v1}, Lccsansan/dt/removeDownloadListener;->getDownloadedList(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v1}, Lccsansan/dt/removeDownloadListener;->getDownloadingList(I)V

    .line 15
    :cond_2
    invoke-static {}, Lccsansan/cz/unifiedDownload;->performActionWhenOffline()Z

    move-result v1

    if-eqz v1, :cond_6

    if-nez v0, :cond_3

    return-void

    .line 20
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v1

    if-ne v1, v2, :cond_4

    .line 21
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->values()Ljava/lang/String;

    move-result-object v1

    .line 22
    invoke-virtual {v0}, Lccsansan/dt/resume;->deleteDownList()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v1}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 24
    invoke-static {v0, v1}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0, v0}, Lccsansan/dt/removeDownloadListener;->getDownloadedList(Ljava/lang/String;)V

    goto :goto_1

    .line 27
    :cond_4
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_5

    .line 28
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result p0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_6

    .line 29
    :cond_5
    invoke-virtual {v0}, Lccsansan/dt/resume;->getDownloadedList()Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-virtual {v0}, Lccsansan/dt/resume;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {p0}, Lccsansan/bw/getActionType;->addDownloadListener(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 32
    invoke-static {v1, p0}, Lccsansan/bw/getErrorCode;->getDownloadedList(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, v1}, Lccsansan/dt/resume;->addDownloadListener(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#parseProductData"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AdDataUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadingCount()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadingCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadingCount()I

    move-result p0

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method
