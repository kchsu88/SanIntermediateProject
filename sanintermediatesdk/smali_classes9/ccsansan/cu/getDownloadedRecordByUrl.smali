.class public Lccsansan/cu/getDownloadedRecordByUrl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected IncentiveDownloadUtils:Ljava/lang/String;

.field protected addDownloadListener:F

.field protected getDownloadingList:Ljava/lang/String;

.field protected removeDownloadListener:Ljava/lang/String;

.field protected unifiedDownload:Z


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cu/getDownloadedRecordByUrl;->unifiedDownload:Z

    .line 3
    const-string v1, ""

    iput-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    .line 4
    iput-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 5
    iput-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    .line 6
    const/4 v1, 0x0

    iput v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->addDownloadListener:F

    .line 9
    const-string v1, "hb_dsp_type"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    .line 10
    const-string v1, "hb_dsp_info"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 11
    iget-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    iput-boolean v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->unifiedDownload:Z

    if-nez v1, :cond_0

    return-void

    .line 16
    :cond_0
    const-string v1, "bid"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->addDownloadListener:F

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getDownloadingList()F
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/cu/getDownloadedRecordByUrl;->addDownloadListener:F

    return v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cu/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HBResultData{isHBResultData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->unifiedDownload:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", bidDSPType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", bidDSPInfo=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/cu/getDownloadedRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", placementId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/cu/getDownloadedRecordByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mPriceBid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cu/getDownloadedRecordByUrl;->addDownloadListener:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
