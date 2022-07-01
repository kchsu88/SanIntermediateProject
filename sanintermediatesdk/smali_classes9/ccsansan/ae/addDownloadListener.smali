.class public Lccsansan/ae/addDownloadListener;
.super Lccsansan/ae/unifiedDownload;
.source ""


# instance fields
.field private deleteDownList:J

.field private getDownloadedCount:Ljava/lang/String;

.field private getDownloadingCount:Ljava/lang/String;

.field private getDownloadingRecordByUrl:I

.field private getThumbPathByRecord:J

.field private pause:J

.field private resume:Lccsancom/san/xz/base/removeDownloadListener;

.field private trackReportShow:Z


# direct methods
.method public constructor <init>(Lccsancom/san/xz/base/getDownloadingList;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/ae/unifiedDownload;-><init>(Lccsancom/san/xz/base/getDownloadingList;)V

    .line 3
    const/4 p1, 0x1

    iput p1, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    .line 4
    invoke-direct {p0}, Lccsansan/ae/addDownloadListener;->trackReportClick()V

    return-void
.end method

.method public constructor <init>(Lccsanorg/json/JSONObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lccsansan/ae/unifiedDownload;-><init>(Lccsanorg/json/JSONObject;)V

    return-void
.end method

.method private trackReportClick()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lccsancom/san/xz/base/removeDownloadListener;

    sget-object v1, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->LOADED:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, v1}, Lccsancom/san/xz/base/removeDownloadListener;-><init>(Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;)V

    iput-object v0, p0, Lccsansan/ae/addDownloadListener;->resume:Lccsancom/san/xz/base/removeDownloadListener;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lccsancom/san/xz/base/removeDownloadListener;

    sget-object v1, Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;->UNLOAD:Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;

    invoke-direct {v0, v1}, Lccsancom/san/xz/base/removeDownloadListener;-><init>(Lccsancom/san/xz/base/removeDownloadListener$addDownloadListener;)V

    iput-object v0, p0, Lccsansan/ae/addDownloadListener;->resume:Lccsancom/san/xz/base/removeDownloadListener;

    :goto_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(J)V
    .locals 3

    .line 1
    iput-wide p1, p0, Lccsansan/ae/addDownloadListener;->getThumbPathByRecord:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 3
    iget p1, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    or-int/lit8 p1, p1, 0x4

    iput p1, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    :cond_0
    return-void
.end method

.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected getDownloadingList(Lccsanorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lccsansan/ae/unifiedDownload;->getDownloadingList(Lccsanorg/json/JSONObject;)V

    .line 2
    const-string v0, "appmask"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    .line 7
    :goto_0
    invoke-virtual {p0}, Lccsansan/ae/addDownloadListener;->removeDownloadListener()Z

    move-result v0

    const-wide/16 v1, 0x0

    const-string v3, ""

    if-eqz v0, :cond_5

    .line 8
    const-string v0, "systemdatasize"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, p0, Lccsansan/ae/addDownloadListener;->pause:J

    .line 9
    const-string v0, "externaldatasize"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_1

    :cond_1
    move-wide v4, v1

    :goto_1
    iput-wide v4, p0, Lccsansan/ae/addDownloadListener;->deleteDownList:J

    .line 11
    const-string v0, "dataloaded"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 13
    const-string v0, "systemdatapath"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    .line 14
    const-string v0, "externaldatapath"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_2
    iput-object v3, p0, Lccsansan/ae/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    goto :goto_2

    :cond_3
    nop

    .line 16
    iput-object v3, p0, Lccsansan/ae/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    .line 17
    iput-object v3, p0, Lccsansan/ae/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    :goto_2
    nop

    .line 20
    const-string v0, "haspartnerdata"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    :goto_3
    iput-boolean v0, p0, Lccsansan/ae/addDownloadListener;->trackReportShow:Z

    goto :goto_4

    :cond_5
    nop

    .line 22
    iput-wide v1, p0, Lccsansan/ae/addDownloadListener;->pause:J

    .line 23
    iput-object v3, p0, Lccsansan/ae/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    .line 24
    iput-wide v1, p0, Lccsansan/ae/addDownloadListener;->deleteDownList:J

    .line 25
    iput-object v3, p0, Lccsansan/ae/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    .line 27
    :goto_4
    invoke-direct {p0}, Lccsansan/ae/addDownloadListener;->trackReportClick()V

    .line 29
    invoke-virtual {p0}, Lccsansan/ae/addDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 30
    const-string v0, "sdcarddatasize"

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 31
    invoke-virtual {p0, v0, v1}, Lccsansan/ae/addDownloadListener;->IncentiveDownloadUtils(J)V

    goto :goto_5

    :cond_6
    nop

    .line 33
    iput-wide v1, p0, Lccsansan/ae/addDownloadListener;->getThumbPathByRecord:J

    :goto_5
    return-void
.end method

.method public removeDownloadListener()Z
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected unifiedDownload(Lccsanorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 4
    invoke-super {p0, p1}, Lccsansan/ae/unifiedDownload;->unifiedDownload(Lccsanorg/json/JSONObject;)V

    .line 5
    iget v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadingRecordByUrl:I

    const-string v1, "appmask"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 6
    invoke-virtual {p0}, Lccsansan/ae/addDownloadListener;->removeDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-wide v0, p0, Lccsansan/ae/addDownloadListener;->pause:J

    const-string v2, "systemdatasize"

    invoke-virtual {p1, v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 8
    iget-wide v0, p0, Lccsansan/ae/addDownloadListener;->deleteDownList:J

    const-string v2, "externaldatasize"

    invoke-virtual {p1, v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 10
    invoke-virtual {p0}, Lccsansan/ae/addDownloadListener;->unifiedDownload()Z

    move-result v0

    .line 11
    const-string v1, "dataloaded"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadedCount:Ljava/lang/String;

    const-string v1, "systemdatapath"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 14
    iget-object v0, p0, Lccsansan/ae/addDownloadListener;->getDownloadingCount:Ljava/lang/String;

    const-string v1, "externaldatapath"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 17
    :cond_0
    iget-boolean v0, p0, Lccsansan/ae/addDownloadListener;->trackReportShow:Z

    const-string v1, "haspartnerdata"

    invoke-virtual {p1, v1, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 19
    :cond_1
    invoke-virtual {p0}, Lccsansan/ae/addDownloadListener;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    iget-wide v0, p0, Lccsansan/ae/addDownloadListener;->getThumbPathByRecord:J

    const-string v2, "sdcarddatasize"

    invoke-virtual {p1, v2, v0, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    :cond_2
    return-void
.end method

.method public unifiedDownload()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/ae/addDownloadListener;->resume:Lccsancom/san/xz/base/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/xz/base/removeDownloadListener;->addDownloadListener()Z

    move-result v0

    return v0
.end method
