.class public Lccsansan/ck/deleteDownList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic $r8$lambda$ho87ATDl1_tMUeOlJATZUtdqNRE(Lccsansan/dt/removeDownloadListener;Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsansan/ck/deleteDownList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Z)V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V
    .locals 1

    .line 1
    const-string v0, "ad"

    invoke-static {p0, v0}, Lccsansan/ck/deleteDownList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
    .locals 1

    .line 27
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart()Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lccsansan/ck/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Z)V
    .locals 2

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportClick isMainThread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/toString;->addDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "   hasReportFailure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.ImpressionUtils"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ReportFailure: insertClickTrackUrls:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lccsansan/dc/getDownloadingRecordByUrl;->getDownloadingList()Lccsansan/dc/getDownloadingRecordByUrl;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/dc/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    :cond_0
    return-void
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;)V
    .locals 8

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->performActionWhenOffline()Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 5
    array-length v4, v2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    .line 7
    :try_start_0
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 8
    const/4 v6, 0x1

    aget-object v2, v2, v6

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    cmp-long v7, v0, v4

    if-nez v7, :cond_0

    .line 10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v2, v6

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsansan/dt/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 28
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v0

    new-instance v1, Lccsansan/ck/deleteDownList$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/ck/deleteDownList$$ExternalSyntheticLambda0;-><init>(Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {v0, p1, p0, v1}, Lccsansan/cy/removeDownloadListener;->getDownloadingList(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    .line 35
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/ck/deleteDownList$addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/ck/deleteDownList$addDownloadListener;-><init>(Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 44
    :cond_0
    invoke-static {p2}, Lccsansan/bw/getDownloadStatusByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 45
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorCode()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lccsansan/cy/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    nop

    .line 47
    const-string p0, "AD.ImpressionUtils"

    const-string p1, "increase click count "

    invoke-static {p0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static addDownloadListener(Lccsansan/dt/removeDownloadListener;ZLjava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLoadStartTime()V

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setNetworkId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0, p3}, Lccsansan/cy/deleteDownItem;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setNetworkId()Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p1, :cond_3

    .line 6
    :cond_1
    invoke-static {p0}, Lccsansan/ck/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 7
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object p1

    new-instance p3, Lccsansan/ck/deleteDownList$removeDownloadListener;

    invoke-direct {p3, p0}, Lccsansan/ck/deleteDownList$removeDownloadListener;-><init>(Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {p1, p2, p0, p3}, Lccsansan/cy/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    .line 17
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance p2, Lccsansan/ck/deleteDownList$IncentiveDownloadUtils;

    invoke-direct {p2, p0}, Lccsansan/ck/deleteDownList$IncentiveDownloadUtils;-><init>(Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {p1, p2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    .line 25
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "increase show count "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AD.ImpressionUtils"

    invoke-static {p1, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;)V
    .locals 1

    .line 26
    const-string v0, "ad"

    invoke-static {p0, v0}, Lccsansan/ck/deleteDownList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V

    return-void
.end method

.method public static unifiedDownload(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)V
    .locals 2

    .line 2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdSize()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, p1}, Lccsansan/ck/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;ZLjava/util/List;Ljava/lang/String;)V

    return-void
.end method
