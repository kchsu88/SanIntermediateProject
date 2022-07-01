.class public Lccsansan/cj/IncentiveDownloadUtils;
.super Lccsansan/cj/addDownloadListener;
.source ""


# instance fields
.field public IncentiveDownloadUtils:J

.field public deleteDownItem:Ljava/lang/String;

.field protected getDownloadStatusByUrl:Ljava/lang/String;

.field public getDownloadedList:J

.field public getDownloadedRecordByUrl:Ljava/lang/String;

.field public getDownloadingRecordByUrl:Ljava/lang/String;

.field public unifiedDownload:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/cj/addDownloadListener;-><init>()V

    return-void
.end method

.method public constructor <init>(Lccsansan/cj/removeDownloadListener;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/cj/addDownloadListener;-><init>(Lccsansan/cj/removeDownloadListener;)V

    return-void
.end method


# virtual methods
.method protected getDownloadingList()Z
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/ce/removeDownloadListener;->unifiedDownload()Lccsansan/ce/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/ce/removeDownloadListener;->addDownloadListener(Lccsansan/cj/IncentiveDownloadUtils;)Z

    move-result v0

    return v0
.end method

.method public removeDownloadListener(Lccsanorg/json/JSONObject;)V
    .locals 1

    .line 2
    const-string v0, "pid"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 3
    const-string v0, "rid"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cj/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 4
    const-string v0, "sid"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/cj/addDownloadListener;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p0}, Lccsansan/cj/addDownloadListener;->removeDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/cj/addDownloadListener;->removeDownloadListener()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sid=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/cj/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedList:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    return-void
.end method
