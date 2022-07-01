.class Lccsansan/dg/unifiedDownload$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dd/getDownloadingList$IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dg/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/dg/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/dg/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError() : reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad.VideoPresenter"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/dg/unifiedDownload;->addDownloadListener(Lccsansan/dg/unifiedDownload;Lccsansan/dd/getDownloadingList;)Lccsansan/dd/getDownloadingList;

    .line 14
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->IDLE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    invoke-static {v0, v1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dg/unifiedDownload;Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    .line 17
    :cond_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lccsansan/dg/addDownloadListener;->unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    iget-object p2, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {p2}, Lccsansan/dg/unifiedDownload;->addDownloadListener(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/IncentiveDownloadUtils;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 20
    iget-object p2, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {p2}, Lccsansan/dg/unifiedDownload;->addDownloadListener(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/IncentiveDownloadUtils;

    move-result-object v0

    iget-object p2, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {p2}, Lccsansan/dg/unifiedDownload;->removeDownloadListener(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/removeDownloadListener;

    move-result-object v1

    iget-object p2, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {p2}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dg/unifiedDownload;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object p2, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {p2}, Lccsansan/dg/unifiedDownload;->getDownloadingRecordByUrl(Lccsansan/dg/unifiedDownload;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lccsansan/dg/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/dd/removeDownloadListener;Ljava/lang/String;JLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public addDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "========== onPaused() =========="

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->deleteDownItem(Lccsansan/dg/unifiedDownload;)V

    .line 3
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/dg/addDownloadListener;->getDownloadStatusByUrl()V

    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 1
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "========== onStarted() =========="

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/dg/addDownloadListener;->unifiedDownload()V

    .line 5
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadedList(Lccsansan/dg/unifiedDownload;)V

    .line 6
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v1

    invoke-interface {v1}, Lccsansan/dd/getDownloadingList;->deleteDownItem()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/dg/unifiedDownload;->removeDownloadListener(Lccsansan/dg/unifiedDownload;I)V

    .line 7
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->START:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    invoke-static {v0, v1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dg/unifiedDownload;Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    .line 9
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v1

    invoke-interface {v1}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v1

    invoke-static {v0, v1}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;I)I

    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "========== onStopped() =========="

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->COMPLETE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->STOP:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl(Lccsansan/dg/unifiedDownload;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->STOP:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    invoke-static {v0, v1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dg/unifiedDownload;Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    .line 5
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/dg/addDownloadListener;->getDownloadedRecordByUrl()V

    return-void
.end method

.method public unifiedDownload()V
    .locals 3

    .line 1
    const-string v0, "Ad.VideoPresenter"

    const-string v1, "========== onCompleted() =========="

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/dg/addDownloadListener;->getDownloadedList()V

    .line 3
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->pause(Lccsansan/dg/unifiedDownload;)V

    .line 4
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    sget-object v1, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->COMPLETE:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadStatusByUrl(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    sget-object v2, Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;->STOP:Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    if-eq v0, v2, :cond_0

    .line 5
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl(Lccsansan/dg/unifiedDownload;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    invoke-static {v0, v1}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dg/unifiedDownload;Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;)Lccsansan/dg/unifiedDownload$IncentiveDownloadUtils;

    .line 9
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$getDownloadingList;->unifiedDownload:Lccsansan/dg/unifiedDownload;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/dg/unifiedDownload;->unifiedDownload(Lccsansan/dg/unifiedDownload;J)J

    return-void
.end method
