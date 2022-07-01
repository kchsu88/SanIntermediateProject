.class public Lccsansan/cj/unifiedDownload$getDownloadingList;
.super Lccsansan/cj/IncentiveDownloadUtils;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/cj/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "getDownloadingList"
.end annotation


# instance fields
.field public deleteDownList:Ljava/lang/String;

.field public getDownloadedCount:I

.field public getDownloadingCount:I

.field public getPackageNameByRecord:Ljava/lang/String;

.field public getThumbPathByRecord:Z

.field public pause:I

.field public resume:Ljava/lang/String;

.field public trackReportClick:J

.field public trackReportShow:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/cj/IncentiveDownloadUtils;-><init>()V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/cj/unifiedDownload;Ljava/lang/String;)V
    .locals 11

    if-eqz p0, :cond_5

    .line 1
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 6
    :cond_0
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 13
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 16
    :try_start_1
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 20
    new-instance v3, Lccsansan/cj/unifiedDownload$getDownloadingList;

    invoke-direct {v3}, Lccsansan/cj/unifiedDownload$getDownloadingList;-><init>()V

    .line 22
    iget-object v4, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    iput-object v4, v3, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 23
    iget-object v4, p0, Lccsansan/cj/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    iput-object v4, v3, Lccsansan/cj/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    .line 24
    iget-object v4, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    iput-object v4, v3, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    .line 25
    iget-wide v4, p0, Lccsansan/cj/addDownloadListener;->addDownloadListener:J

    iput-wide v4, v3, Lccsansan/cj/addDownloadListener;->addDownloadListener:J

    .line 27
    const-string v4, "plat"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->resume:Ljava/lang/String;

    .line 28
    const-string v4, "lid"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->deleteDownList:Ljava/lang/String;

    .line 29
    const-string v4, "i"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->pause:I

    .line 30
    const-string v4, "level"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadedCount:I

    .line 31
    const-string v4, "sts"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadingCount:I

    .line 32
    const-string v4, "bid"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->trackReportClick:J

    .line 33
    const-string v4, "lst"

    const-wide/16 v5, 0x0

    invoke-virtual {v2, v4, v5, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, v3, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    cmp-long v4, v7, v5

    if-nez v4, :cond_2

    move-wide v7, v5

    goto :goto_1

    .line 34
    :cond_2
    iget-wide v9, p0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    sub-long/2addr v7, v9

    :goto_1
    iput-wide v7, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->trackReportShow:J

    .line 35
    const-string v4, "let"

    invoke-virtual {v2, v4, v5, v6}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v3, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    .line 36
    iget-wide v6, v3, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    sub-long/2addr v4, v6

    iput-wide v4, v3, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadedList:J

    .line 37
    const-string v4, "cache"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    :goto_2
    iput-boolean v5, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->getThumbPathByRecord:Z

    .line 38
    const-string v4, "en"

    invoke-virtual {v2, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lccsansan/cj/unifiedDownload$getDownloadingList;->getPackageNameByRecord:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v3}, Lccsansan/cj/unifiedDownload;->getDownloadingList(Lccsansan/cj/unifiedDownload$getDownloadingList;)V

    goto :goto_3

    :catch_0
    move-exception v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_4
    return-void

    :catch_1
    move-exception p0

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method protected getDownloadingList()Z
    .locals 1

    .line 41
    invoke-static {}, Lccsansan/ce/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsansan/ce/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsansan/ce/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/cj/IncentiveDownloadUtils;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cj/IncentiveDownloadUtils;->unifiedDownload:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->resume:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->deleteDownList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isExpected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {p0}, Lccsansan/cj/addDownloadListener;->removeDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/cj/addDownloadListener;->removeDownloadListener()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsansan/cj/IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadingCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadingCount:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", isCached="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getThumbPathByRecord:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    if-ne v1, v3, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", en=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getPackageNameByRecord:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", endTs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cj/IncentiveDownloadUtils;->IncentiveDownloadUtils:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", sort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->pause:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->getDownloadedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", delayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->trackReportShow:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cj/unifiedDownload$getDownloadingList;->resume:Ljava/lang/String;

    const-string v1, "mads"

    invoke-static {v0, v1}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
