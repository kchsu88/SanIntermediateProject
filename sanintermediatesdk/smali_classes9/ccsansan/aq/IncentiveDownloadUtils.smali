.class public final Lccsansan/aq/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:Z

.field private deleteDownItem:Z

.field private getDownloadStatusByUrl:Z

.field private getDownloadedList:Z

.field private getDownloadedRecordByUrl:Z

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:Z

.field private pause:Ljava/lang/String;

.field private removeDownloadListener:Z

.field private unifiedDownload:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;ZZZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lccsansan/aq/IncentiveDownloadUtils;->unifiedDownload:I

    .line 3
    iput-boolean p3, p0, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener:Z

    .line 4
    iput-boolean p4, p0, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    .line 5
    iput-object p5, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 6
    iput-boolean p7, p0, Lccsansan/aq/IncentiveDownloadUtils;->removeDownloadListener:Z

    .line 7
    iput-boolean p8, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    .line 8
    iput-boolean p9, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Z

    .line 9
    iput-boolean p10, p0, Lccsansan/aq/IncentiveDownloadUtils;->deleteDownItem:Z

    .line 10
    iput-object p6, p0, Lccsansan/aq/IncentiveDownloadUtils;->pause:Ljava/lang/String;

    .line 11
    const-string p2, "cache"

    const-string p3, "open"

    invoke-static {p1, p2, p3}, Lccsansan/bw/getAdFormat;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadedList:Z

    .line 12
    iput-boolean p11, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    return v0
.end method

.method public addDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->unifiedDownload:I

    return v0
.end method

.method public deleteDownItem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadedList:Z

    return v0
.end method

.method public getDownloadStatusByUrl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    return v0
.end method

.method public getDownloadedList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->deleteDownItem:Z

    return v0
.end method

.method public getDownloadedRecordByUrl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Z

    return v0
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->removeDownloadListener:Z

    return v0
.end method

.method public getDownloadingRecordByUrl()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    return v0
.end method

.method public pause()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->pause:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewConfig{style="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->unifiedDownload:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isGPExit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAddCenterProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", isShowProgressBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->removeDownloadListener:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isShowScrollBar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadStatusByUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableHardware="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSetWeakNetTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->deleteDownItem:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", enableNavigator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/aq/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener:Z

    return v0
.end method
