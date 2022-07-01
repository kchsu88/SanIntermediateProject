.class Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/aw/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cv/getDownloadingCount;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lccsansan/cv/getDownloadingCount;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;Ljava/lang/Exception;)V
    .locals 7

    .line 54
    instance-of v0, p3, Lccsansan/aw/removeDownloadListener;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lccsansan/aw/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/aw/removeDownloadListener;->removeDownloadListener()I

    move-result v0

    move v5, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v5, 0x0

    :goto_0
    if-nez p3, :cond_1

    const-string p3, ""

    move-object v6, p3

    goto :goto_1

    .line 55
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    move-object v6, p3

    .line 56
    :goto_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p3

    new-instance v0, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p2

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;Lccsansan/cs/IncentiveDownloadUtils;ZILjava/lang/String;)V

    invoke-virtual {p3, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;JJ)V
    .locals 0

    return-void
.end method

.method public addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;I)V
    .locals 1

    .line 47
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object p2

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object p2

    .line 48
    invoke-virtual {p2}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cv/deleteDownItem;->getDownloadingList(Ljava/lang/String;)Lccsansan/da/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    .line 49
    check-cast p1, Lccsansan/cv/pause;

    invoke-virtual {p1, p2}, Lccsansan/cv/pause;->getDownloadingList(Lccsansan/cs/IncentiveDownloadUtils;)V

    .line 50
    sget-object p1, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->COMPLETED:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {p2, p1}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;)V

    .line 52
    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;->addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;Ljava/lang/Exception;)V

    .line 53
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cs/IncentiveDownloadUtils;)V

    return-void
.end method

.method public addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;Ljava/lang/Exception;)Z
    .locals 5

    .line 34
    instance-of v0, p2, Lccsansan/aw/getDownloadingRecordByUrl;

    invoke-static {v0}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 35
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    .line 37
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->execute()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK$1()I

    move-result v1

    invoke-static {}, Lccsansan/cl/unifiedDownload;->unifiedDownload()I

    move-result v4

    if-ge v1, v4, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 38
    :goto_0
    sget-object v4, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->ERROR:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0, v4}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;)V

    .line 39
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v4

    invoke-virtual {v4, v0}, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cs/IncentiveDownloadUtils;)V

    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingCount()I

    move-result p2

    add-int/2addr p2, v2

    invoke-virtual {v0, p2}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(I)V

    .line 42
    instance-of p2, p1, Lccsansan/cv/pause;

    if-eqz p2, :cond_2

    .line 43
    check-cast p1, Lccsansan/cv/pause;

    invoke-virtual {p1, v0}, Lccsansan/cv/pause;->getDownloadingList(Lccsansan/cs/IncentiveDownloadUtils;)V

    goto :goto_1

    .line 46
    :cond_1
    check-cast p1, Lccsansan/cv/pause;

    invoke-virtual {p1}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object p1

    invoke-direct {p0, v3, p1, p2}, Lccsansan/cv/getDownloadingCount$IncentiveDownloadUtils;->addDownloadListener(ZLccsansan/cs/IncentiveDownloadUtils;Ljava/lang/Exception;)V

    :cond_2
    :goto_1
    return v1
.end method

.method public getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Z
    .locals 4

    .line 1
    instance-of v0, p1, Lccsansan/cv/pause;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsansan/cp/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    move-object v2, p1

    check-cast v2, Lccsansan/cv/pause;

    invoke-virtual {v2}, Lccsansan/cv/pause;->addDownloadListener()Lccsansan/cs/addDownloadListener;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 6
    new-instance v0, Lccsansan/cs/IncentiveDownloadUtils;

    invoke-virtual {v2}, Lccsansan/cv/pause;->addDownloadListener()Lccsansan/cs/addDownloadListener;

    move-result-object v2

    invoke-direct {v0, v2}, Lccsansan/cs/IncentiveDownloadUtils;-><init>(Lccsansan/cs/addDownloadListener;)V

    .line 7
    sget-object v2, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->WAITING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0, v2}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;)V

    .line 8
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v2

    invoke-virtual {v2, v0}, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cs/IncentiveDownloadUtils;)V

    :cond_1
    if-nez v0, :cond_2

    return v1

    .line 13
    :cond_2
    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingCount()I

    move-result v2

    invoke-static {}, Lccsansan/cl/unifiedDownload;->unifiedDownload()I

    move-result v3

    if-le v2, v3, :cond_3

    .line 14
    invoke-virtual {v0, v1}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(I)V

    .line 15
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cs/IncentiveDownloadUtils;)V

    .line 17
    :cond_3
    check-cast p1, Lccsansan/cv/pause;

    invoke-virtual {p1, v0}, Lccsansan/cv/pause;->getDownloadingList(Lccsansan/cs/IncentiveDownloadUtils;)V

    .line 19
    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl()Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    move-result-object v1

    sget-object v2, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->ERROR:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadingCount()I

    move-result v1

    const/4 v2, 0x3

    if-gt v1, v2, :cond_4

    .line 20
    sget-object v1, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->PROCESSING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;)V

    .line 21
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cs/IncentiveDownloadUtils;)V

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->getDownloadStatusByUrl()Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    move-result-object v1

    sget-object v2, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->WAITING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    if-ne v1, v2, :cond_5

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener(J)V

    .line 24
    sget-object v1, Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;->PROCESSING:Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;

    invoke-virtual {v0, v1}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils$unifiedDownload;)V

    .line 25
    invoke-virtual {p1}, Lccsansan/cv/pause;->unifiedDownload()Lccsansan/da/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/da/removeDownloadListener;->deleteDownItem()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/cs/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lccsansan/cp/addDownloadListener;->removeDownloadListener()Lccsansan/cp/IncentiveDownloadUtils;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsansan/cp/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cs/IncentiveDownloadUtils;)V

    .line 28
    :cond_5
    :goto_0
    invoke-static {}, Lccsansan/cv/getDownloadingCount;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Lccsansan/cs/IncentiveDownloadUtils;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cv/resume;

    if-nez v0, :cond_6

    .line 30
    invoke-static {}, Lccsansan/cv/getDownloadingCount;->IncentiveDownloadUtils()Ljava/util/Map;

    move-result-object v0

    const-string v1, "ad_statistic"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsansan/cv/resume;

    :cond_6
    if-eqz v0, :cond_7

    .line 33
    invoke-virtual {p1}, Lccsansan/cv/pause;->getDownloadingRecordByUrl()Lccsansan/cs/IncentiveDownloadUtils;

    move-result-object p1

    invoke-interface {v0, p1}, Lccsansan/cv/resume;->unifiedDownload(Lccsansan/cs/IncentiveDownloadUtils;)V

    :cond_7
    const/4 p1, 0x1

    return p1
.end method
