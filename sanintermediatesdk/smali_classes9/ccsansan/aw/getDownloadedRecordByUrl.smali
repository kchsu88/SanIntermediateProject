.class public Lccsansan/aw/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final IncentiveDownloadUtils:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/aw/unifiedDownload;",
            ">;"
        }
    .end annotation
.end field

.field protected addDownloadListener:Ljava/lang/String;

.field public getDownloadingList:Lccsansan/aw/getDownloadingList;

.field protected removeDownloadListener:Lccsansan/aw/addDownloadListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener:Lccsansan/aw/addDownloadListener;

    .line 3
    iput-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    .line 5
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    .line 10
    iput-object p1, p0, Lccsansan/aw/getDownloadedRecordByUrl;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method private getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;JJ)V
    .locals 8

    .line 7
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lccsansan/aw/unifiedDownload;

    .line 9
    move-object v3, p1

    move-wide v4, p2

    move-wide v6, p4

    :try_start_0
    invoke-interface/range {v2 .. v7}, Lccsansan/aw/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;JJ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 11
    const-string v2, "Task.Scheduler"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 16
    :cond_0
    iget-object p2, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {p2, p1}, Lccsansan/aw/getDownloadingList;->getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    invoke-virtual {p0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener()V

    :cond_1
    return-void
.end method

.method private getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/aw/unifiedDownload;

    .line 4
    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1}, Lccsansan/aw/unifiedDownload;->getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    const-string v3, "Task.Scheduler"

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    return v2

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method private removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;I)V
    .locals 3

    .line 18
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/aw/unifiedDownload;

    .line 20
    :try_start_0
    invoke-interface {v1, p1, p2}, Lccsansan/aw/unifiedDownload;->addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 22
    const-string v2, "Task.Scheduler"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;Ljava/lang/Exception;)Z
    .locals 4

    .line 23
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/aw/unifiedDownload;

    .line 25
    :try_start_0
    invoke-interface {v2, p1, p2}, Lccsansan/aw/unifiedDownload;->addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;Ljava/lang/Exception;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    .line 28
    const-string v3, "Task.Scheduler"

    invoke-static {v3, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public final IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;
    .locals 1

    .line 3
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v0, p1}, Lccsansan/aw/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Lccsansan/aw/IncentiveDownloadUtils;

    move-result-object p1

    return-object p1
.end method

.method protected final IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)Z
    .locals 11

    const-string v0, "Task.Scheduler"

    .line 1
    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    invoke-direct {p0, p1}, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 7
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-static {v3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 8
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getPackageNameByRecord()J

    move-result-wide v3

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-gtz v9, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Lccsansan/bw/trackReportShow;->unifiedDownload(Z)V

    .line 11
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->getPackageNameByRecord()J

    move-result-wide v3

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-nez v9, :cond_2

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->IncentiveSDK()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-nez v3, :cond_4

    .line 14
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "executing task: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v4, p0, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener:Lccsansan/aw/addDownloadListener;

    invoke-interface {v4, p1}, Lccsansan/aw/addDownloadListener;->addDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "task completed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->trackReportClick()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 11
    :cond_4
    const/4 v4, 0x1

    .line 18
    :goto_3
    if-eqz v3, :cond_5

    .line 23
    invoke-direct {p0, p1, v4}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    .line 36
    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_0
    move-exception v2

    move v10, v3

    move-object v3, v2

    move v2, v10

    goto :goto_7

    .line 23
    :cond_5
    :goto_4
    if-nez v3, :cond_6

    goto :goto_5

    .line 34
    :cond_6
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v0, p1}, Lccsansan/aw/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)V

    :goto_5
    return v2

    :cond_7
    nop

    .line 35
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepare task failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v3, Lccsansan/aw/getDownloadingRecordByUrl;

    const/16 v4, 0x12

    invoke-direct {v3, v4}, Lccsansan/aw/getDownloadingRecordByUrl;-><init>(I)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const/4 v3, 0x0

    :goto_6
    const/4 v1, 0x0

    goto :goto_8

    :catch_1
    move-exception v3

    .line 59
    :goto_7
    :try_start_3
    invoke-direct {p0, p1, v3}, Lccsansan/aw/getDownloadedRecordByUrl;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;Ljava/lang/Exception;)Z

    move-result v4

    .line 60
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "task execute failed: retry = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", error = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", task = "

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 66
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v0, p1}, Lccsansan/aw/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)V

    return v4

    :catchall_2
    move-exception v0

    move v3, v2

    :goto_8
    if-nez v3, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    iget-object v1, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v1, p1}, Lccsansan/aw/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 67
    :cond_9
    throw v0
.end method

.method public final getDownloadingList(Lccsansan/aw/unifiedDownload;)V
    .locals 1

    .line 6
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected final removeDownloadListener()V
    .locals 5

    .line 5
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v0}, Lccsansan/aw/getDownloadingList;->addDownloadListener()Ljava/util/Collection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " tasks"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Task.Scheduler"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/aw/IncentiveDownloadUtils;

    .line 12
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v2

    new-instance v3, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;

    iget-object v4, p0, Lccsansan/aw/getDownloadedRecordByUrl;->addDownloadListener:Ljava/lang/String;

    invoke-direct {v3, p0, v4, v1}, Lccsansan/aw/getDownloadedRecordByUrl$getDownloadingList;-><init>(Lccsansan/aw/getDownloadedRecordByUrl;Ljava/lang/String;Lccsansan/aw/IncentiveDownloadUtils;)V

    invoke-virtual {v2, v3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public final removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task removed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task.Scheduler"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->shouldTryHandlingAction()V

    .line 4
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v0, p1}, Lccsansan/aw/getDownloadingList;->unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 5
    invoke-virtual {p0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener()V

    return-void
.end method

.method public final removeDownloadListener(Lccsansan/aw/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener:Lccsansan/aw/addDownloadListener;

    return-void
.end method

.method public final removeDownloadListener(Lccsansan/aw/getDownloadingList;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    return-void
.end method

.method public final unifiedDownload()V
    .locals 2

    .line 4
    const-string v0, "Task.Scheduler"

    const-string v1, "tasks cleared"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v0}, Lccsansan/aw/getDownloadingList;->unifiedDownload()V

    return-void
.end method

.method public final unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "task added: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsansan/aw/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Task.Scheduler"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList:Lccsansan/aw/getDownloadingList;

    invoke-interface {v0, p1}, Lccsansan/aw/getDownloadingList;->removeDownloadListener(Lccsansan/aw/IncentiveDownloadUtils;)V

    .line 4
    invoke-virtual {p0}, Lccsansan/aw/getDownloadedRecordByUrl;->removeDownloadListener()V

    return-void
.end method

.method public final unifiedDownload(Lccsansan/aw/IncentiveDownloadUtils;JJ)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p5}, Lccsansan/aw/getDownloadedRecordByUrl;->getDownloadingList(Lccsansan/aw/IncentiveDownloadUtils;JJ)V

    return-void
.end method

.method public final unifiedDownload(Lccsansan/aw/unifiedDownload;)V
    .locals 1

    .line 13
    iget-object v0, p0, Lccsansan/aw/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
