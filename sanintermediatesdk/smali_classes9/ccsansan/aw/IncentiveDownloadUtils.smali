.class public abstract Lccsansan/aw/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/cv/IncentiveDownloadUtils$unifiedDownload;


# instance fields
.field protected final deleteDownItem:Ljava/lang/Object;

.field protected final getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected getDownloadedList:J

.field protected getDownloadedRecordByUrl:Ljava/lang/Object;

.field protected getDownloadingCount:J

.field protected getDownloadingRecordByUrl:Ljava/lang/String;

.field protected pause:I

.field protected resume:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 4
    const/4 v0, 0x0

    iput-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/Object;

    .line 6
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadedList:J

    .line 7
    iput-wide v2, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingCount:J

    .line 8
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->resume:Z

    .line 9
    iput v1, p0, Lccsansan/aw/IncentiveDownloadUtils;->pause:I

    return-void
.end method


# virtual methods
.method public ActionTypeDetailPage()V
    .locals 2

    .line 3
    iget-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadedList:J

    return-void
.end method

.method public IncentiveDownloadUtils(Z)V
    .locals 0

    return-void
.end method

.method public IncentiveSDK()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadedList:J

    return-wide v0
.end method

.method public IncentiveSDK$1()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->pause:I

    return v0
.end method

.method public deleteDownItem()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public execute()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public getDownloadStatusByUrl()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public getDownloadingCount()Lccsansan/cs/unifiedDownload;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getDownloadingList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end method

.method public getDownloadingList(J)V
    .locals 0

    .line 2
    iput-wide p1, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingCount:J

    return-void
.end method

.method public getDownloadingList(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/Object;

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method public abstract getDownloadingList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsansan/cs/removeDownloadListener;",
            ">;)V"
        }
    .end annotation
.end method

.method public getPackageNameByRecord()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingCount:J

    return-wide v0
.end method

.method public getThumbPathByRecord()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public removeDownloadListener(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    return-void

    .line 5
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    :try_start_1
    iget-object v1, p0, Lccsansan/aw/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V

    .line 7
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method

.method public resolveUrl()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->pause:I

    return-void
.end method

.method public shouldTryHandlingAction()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lccsansan/aw/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", length = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadingCount:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadedList:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", retry = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lccsansan/aw/IncentiveDownloadUtils;->pause:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cancelled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trackReportClick()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->resume:Z

    return v0
.end method

.method public trackReportShow()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aw/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/Object;

    return-object v0
.end method

.method public unifiedDownload()Lccsansan/da/removeDownloadListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public unifiedDownload(Ljava/lang/Exception;)V
    .locals 0

    return-void
.end method
