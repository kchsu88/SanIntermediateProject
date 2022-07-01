.class public Lccsansan/p/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic $r8$lambda$BzxfKQtOkXyw-Pz1JSWf5wWxDqM(Lccsansan/m/deleteDownList;Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsansan/p/getDownloadingRecordByUrl;->addDownloadListener(Lccsansan/m/deleteDownList;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ti9EDuJ7jxulqlRU9JU9eAROkOk(Ljava/util/List;Z)V
    .locals 0

    invoke-static {p0, p1}, Lccsansan/p/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/util/List;Z)V

    return-void
.end method

.method private static addDownloadListener()V
    .locals 7

    .line 1
    const-string v0, "CPIRetryReportHelper"

    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v1

    invoke-static {}, Lccsansan/cy/unifiedDownload;->execute()I

    move-result v2

    invoke-virtual {v1, v2}, Lccsansan/dc/getDownloadingList;->getDownloadingList(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/m/deleteDownList;

    .line 7
    invoke-virtual {v2}, Lccsansan/m/deleteDownList;->getDownloadingList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lccsansan/ab/getDownloadingList;->getDownloadingList(Lccsansan/m/deleteDownList;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v3

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#reportAdOfflineTrackUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/m/deleteDownList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    sget-object v4, Lccsansan/cy/pause;->OFFLINE:Lccsansan/cy/pause;

    invoke-virtual {v2}, Lccsansan/m/deleteDownList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lccsansan/p/getDownloadingRecordByUrl$$ExternalSyntheticLambda1;

    invoke-direct {v6, v2}, Lccsansan/p/getDownloadingRecordByUrl$$ExternalSyntheticLambda1;-><init>(Lccsansan/m/deleteDownList;)V

    invoke-static {v3, v4, v5, v6}, Lccsansan/cy/deleteDownList;->unifiedDownload(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;Lccsansan/cy/deleteDownList$addDownloadListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 16
    const-string v2, "report offline track urls exception!"

    invoke-static {v0, v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private static synthetic addDownloadListener(Lccsansan/m/deleteDownList;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p0}, Lccsansan/p/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/m/deleteDownList;)V

    :cond_0
    return-void
.end method

.method public static getDownloadingList()V
    .locals 3

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/getDownloadingRecordByUrl$addDownloadListener;

    const-string v2, "Track.Url"

    invoke-direct {v1, v2}, Lccsansan/p/getDownloadingRecordByUrl$addDownloadListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public static removeDownloadListener()V
    .locals 4

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/m/getDownloadStatusByUrl;

    .line 7
    invoke-virtual {v3}, Lccsansan/m/getDownloadStatusByUrl;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 14
    :cond_2
    sget-object v2, Lccsansan/cy/pause;->CPI_OFFLINE:Lccsansan/cy/pause;

    new-instance v3, Lccsansan/p/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lccsansan/p/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    const-string v0, "-1"

    invoke-static {v1, v2, v0, v3}, Lccsansan/cy/deleteDownList;->unifiedDownload(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;Lccsansan/cy/deleteDownList$addDownloadListener;)V

    return-void
.end method

.method private static synthetic removeDownloadListener(Ljava/util/List;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lccsansan/m/unifiedDownload;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/unifiedDownload;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/m/unifiedDownload;->IncentiveDownloadUtils(Ljava/util/List;)Z

    :cond_0
    return-void
.end method

.method private static removeDownloadListener(Lccsansan/m/deleteDownList;)V
    .locals 1

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-virtual {p0}, Lccsansan/m/deleteDownList;->removeDownloadListener()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsansan/dc/getDownloadingList;->addDownloadListener(Ljava/util/List;)V

    return-void
.end method

.method static synthetic unifiedDownload()V
    .locals 0

    .line 1
    invoke-static {}, Lccsansan/p/getDownloadingRecordByUrl;->addDownloadListener()V

    return-void
.end method
