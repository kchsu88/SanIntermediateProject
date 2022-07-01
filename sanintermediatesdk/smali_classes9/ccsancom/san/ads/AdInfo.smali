.class public Lccsancom/san/ads/AdInfo;
.super Lccsansan/bu/unifiedDownload;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/AdInfo$LoadStatusValue;,
        Lccsancom/san/ads/AdInfo$LoadStatus;
    }
.end annotation


# instance fields
.field private ActionTypeDetailPage:J

.field private ActionTypeDownload:Lccsansan/cu/addDownloadListener;

.field private ActionTypeReserveApp:Z

.field private AdError:Z

.field protected IncentiveDownloadUtils:Ljava/lang/String;

.field private IncentiveSDK:J

.field private IncentiveSDK$1:J

.field protected addDownloadListener:Ljava/lang/String;

.field protected deleteDownItem:Lccsancom/san/ads/AdFormat;

.field protected deleteDownList:Ljava/lang/String;

.field private execute:J

.field private getActionType:J

.field protected getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:J

.field protected getDownloadedList:Lccsancom/san/ads/AdSize;

.field protected getDownloadedRecordByUrl:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected getDownloadingCount:Ljava/lang/String;

.field protected getDownloadingList:Ljava/lang/String;

.field protected getDownloadingRecordByUrl:I

.field private getPackageNameByRecord:I

.field private getThumbPathByRecord:Z

.field protected pause:Ljava/lang/String;

.field private performAction:Lccsansan/cu/getDownloadedRecordByUrl;

.field private performActionWhenOffline:Lccsancom/san/ads/AdError;

.field protected removeDownloadListener:Ljava/lang/String;

.field private resolveUrl:J

.field private resume:J

.field private setErrorMessage:Ljava/lang/String;

.field private shouldTryHandlingAction:I

.field private trackReportClick:Z

.field private trackReportShow:Z

.field protected unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lccsansan/bu/unifiedDownload;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    .line 3
    const/4 v0, 0x0

    iput-object v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadedList:Lccsancom/san/ads/AdSize;

    .line 8
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lccsancom/san/ads/AdInfo;->resume:J

    .line 9
    iput-wide v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadedCount:J

    .line 10
    iput-wide v0, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK:J

    .line 15
    const/4 v0, 0x0

    iput v0, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    .line 16
    iput v0, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    .line 17
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    .line 18
    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDetailPage:J

    .line 19
    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->execute:J

    .line 20
    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->resolveUrl:J

    .line 21
    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->getActionType:J

    .line 24
    iput-boolean v0, p0, Lccsancom/san/ads/AdInfo;->ActionTypeReserveApp:Z

    .line 28
    iput-boolean v0, p0, Lccsancom/san/ads/AdInfo;->AdError:Z

    .line 31
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lccsancom/san/ads/AdInfo;->getDownloadingList:Ljava/lang/String;

    .line 33
    iput-object p3, p0, Lccsancom/san/ads/AdInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lccsanorg/json/JSONObject;)V
    .locals 6

    .line 34
    invoke-direct {p0}, Lccsansan/bu/unifiedDownload;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    .line 36
    const/4 v1, 0x0

    iput-object v1, p0, Lccsancom/san/ads/AdInfo;->getDownloadedList:Lccsancom/san/ads/AdSize;

    .line 41
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->resume:J

    .line 42
    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->getDownloadedCount:J

    .line 43
    iput-wide v1, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK:J

    .line 48
    const/4 v3, 0x0

    iput v3, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    .line 49
    iput v3, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    .line 50
    const-wide/16 v4, -0x1

    iput-wide v4, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    .line 51
    iput-wide v4, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDetailPage:J

    .line 52
    iput-wide v4, p0, Lccsancom/san/ads/AdInfo;->execute:J

    .line 53
    iput-wide v4, p0, Lccsancom/san/ads/AdInfo;->resolveUrl:J

    .line 54
    iput-wide v4, p0, Lccsancom/san/ads/AdInfo;->getActionType:J

    .line 57
    iput-boolean v3, p0, Lccsancom/san/ads/AdInfo;->ActionTypeReserveApp:Z

    .line 61
    iput-boolean v3, p0, Lccsancom/san/ads/AdInfo;->AdError:Z

    .line 70
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 71
    iput-object p2, p0, Lccsancom/san/ads/AdInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 72
    const-string p1, "identity"

    invoke-virtual {p3, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->getDownloadingList:Ljava/lang/String;

    .line 73
    const-string p1, "name"

    invoke-virtual {p3, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    .line 74
    const-string p2, "adshonor"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/san/ads/AdInfo;->trackReportClick:Z

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    const-string v4, "mads"

    invoke-virtual {p1, p2, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    :goto_0
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    .line 76
    const-string p1, "bid"

    invoke-virtual {p3, p1}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    .line 77
    const-string p1, "level"

    invoke-virtual {p3, p1, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    .line 78
    const-string p1, "hb"

    invoke-virtual {p3, p1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lccsancom/san/ads/AdInfo;->getThumbPathByRecord:Z

    const-wide/16 p1, 0x3e8

    .line 79
    const-string v0, "delay_time"

    invoke-virtual {p3, v0, p1, p2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK:J

    .line 80
    const-string p1, "wait_time"

    invoke-virtual {p3, p1, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->resume:J

    .line 81
    const-string p1, "anchor_wait_time"

    invoke-virtual {p3, p1, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->getDownloadedCount:J

    .line 82
    const-string p1, "support_level"

    invoke-virtual {p3, p1, v3}, Lccsanorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lccsancom/san/ads/AdInfo;->trackReportShow:Z

    return-void
.end method


# virtual methods
.method public buildParams(Ljava/lang/String;)Lccsansan/cu/addDownloadListener;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDownload:Lccsansan/cu/addDownloadListener;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->getThumbPathByRecord:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    iget-object v1, p0, Lccsancom/san/ads/AdInfo;->getDownloadingList:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    invoke-static {p1, v0, v1, v2}, Lccsansan/cu/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsancom/san/ads/AdFormat;)Lccsansan/cu/addDownloadListener;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDownload:Lccsansan/cu/addDownloadListener;

    .line 4
    :cond_0
    iget-object p1, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDownload:Lccsansan/cu/addDownloadListener;

    return-object p1
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdSize()Lccsancom/san/ads/AdSize;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadedList:Lccsancom/san/ads/AdSize;

    return-object v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lccsancom/san/ads/AdInfo;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    invoke-virtual {v1}, Lccsancom/san/ads/AdFormat;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/AdInfo;->getDownloadedList:Lccsancom/san/ads/AdSize;

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBid()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    return-wide v0
.end method

.method public getDetailId()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->removeDownloadListener:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/AdInfo;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/AdInfo;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/AdInfo;->removeDownloadListener:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->removeDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public getHBResultData()Lccsansan/cu/getDownloadedRecordByUrl;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->getThumbPathByRecord:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->performAction:Lccsansan/cu/getDownloadedRecordByUrl;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    return v0
.end method

.method public getLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    return v0
.end method

.method public getLoadEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->resolveUrl:J

    return-wide v0
.end method

.method public getLoadMode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->deleteDownList:Ljava/lang/String;

    return-object v0
.end method

.method public getLoadStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->execute:J

    return-wide v0
.end method

.method public getLoadStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    return v0
.end method

.method public getLoadTiming()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->pause:Ljava/lang/String;

    return-object v0
.end method

.method public getLoaderClassName(Lccsancom/san/ads/AdFormat;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->unifiedDownload:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    invoke-static {v0, p1}, Lccsansan/bq/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Lccsancom/san/ads/AdFormat;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/ads/AdInfo;->unifiedDownload:Ljava/lang/String;

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lccsancom/san/ads/AdInfo;->setAdFormat(Lccsancom/san/ads/AdFormat;)V

    .line 4
    iget-object p1, p0, Lccsancom/san/ads/AdInfo;->unifiedDownload:Ljava/lang/String;

    return-object p1
.end method

.method public getLocalExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadedRecordByUrl:Ljava/util/Map;

    return-object v0
.end method

.method public getMinIntervalToReturn()J
    .locals 2

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->trackReportShow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    :goto_0
    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    return-wide v0

    .line 4
    :cond_1
    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->trackReportClick:Z

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadedCount:J

    goto :goto_1

    :cond_2
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->resume:J

    :goto_1
    return-wide v0
.end method

.method public getMinIntervalToStart()J
    .locals 4

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->trackReportShow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    :goto_0
    int-to-long v0, v0

    .line 2
    iget-wide v2, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK:J

    mul-long v0, v0, v2

    return-wide v0
.end method

.method public getNetworkId()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassengerHBParams()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->setErrorMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementEndTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->getActionType:J

    return-wide v0
.end method

.method public getPlacementId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method public getPlacementStartTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDetailPage:J

    return-wide v0
.end method

.method public getRemainedDelayTime()J
    .locals 6

    .line 1
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getMinIntervalToReturn()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getLoadEndTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public getRid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingCount:Ljava/lang/String;

    return-object v0
.end method

.method public getSpotId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public getStatsInfo()Lccsanorg/json/JSONObject;
    .locals 4

    .line 1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "lid"

    .line 3
    :try_start_0
    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "i"

    .line 4
    :try_start_1
    iget v2, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "level"

    .line 5
    :try_start_2
    iget v2, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "st"

    .line 6
    :try_start_3
    iget-wide v2, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDetailPage:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "lst"

    .line 7
    :try_start_4
    iget-wide v2, p0, Lccsancom/san/ads/AdInfo;->execute:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "let"

    .line 8
    :try_start_5
    iget-wide v2, p0, Lccsancom/san/ads/AdInfo;->resolveUrl:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "et"

    .line 9
    :try_start_6
    iget-wide v2, p0, Lccsancom/san/ads/AdInfo;->getActionType:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "sts"

    .line 10
    :try_start_7
    iget v2, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    const-string v1, "en"

    .line 11
    :try_start_8
    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->performActionWhenOffline:Lccsancom/san/ads/AdError;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    if-nez v2, :cond_0

    const-string v2, "-1"

    goto :goto_0

    :cond_0
    :try_start_9
    invoke-virtual {v2}, Lccsancom/san/ads/AdError;->getErrorCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "plat"

    .line 12
    :try_start_a
    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    const-string v1, "bid"

    .line 13
    :try_start_b
    iget-wide v2, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    const-string v1, "cache"

    .line 14
    :try_start_c
    iget-boolean v2, p0, Lccsancom/san/ads/AdInfo;->ActionTypeReserveApp:Z

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    const-string v1, "wait"

    .line 15
    :try_start_d
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getMinIntervalToReturn()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    return-object v0
.end method

.method public hasDelayTimeRestrictions()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getRemainedDelayTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasFinished()Z
    .locals 2

    .line 1
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasHBSucceed()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/AdInfo;->performAction:Lccsansan/cu/getDownloadedRecordByUrl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/cu/getDownloadedRecordByUrl;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSucceed()Z
    .locals 2

    .line 1
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSucceedByPassingRestrictions()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->hasDelayTimeRestrictions()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAnchorItem()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->trackReportClick:Z

    return v0
.end method

.method public isColdStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->AdError:Z

    return v0
.end method

.method public isHeaderBidding()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsancom/san/ads/AdInfo;->getThumbPathByRecord:Z

    return v0
.end method

.method public isIdle()Z
    .locals 2

    .line 1
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isRunning()Z
    .locals 2

    .line 1
    iget v0, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public onPlacementStartEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/ads/AdInfo;->getActionType:J

    .line 2
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->pause:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lccsancom/san/ads/AdInfo;->deleteDownList:Ljava/lang/String;

    return-void
.end method

.method public onPlacementStartLoad(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lccsancom/san/ads/AdInfo;->ActionTypeDetailPage:J

    .line 2
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->getDownloadingCount:Ljava/lang/String;

    return-void
.end method

.method public setAdFormat(Lccsancom/san/ads/AdFormat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->deleteDownItem:Lccsancom/san/ads/AdFormat;

    return-void
.end method

.method public setAdSize(Lccsancom/san/ads/AdSize;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->getDownloadedList:Lccsancom/san/ads/AdSize;

    return-void
.end method

.method public setBid(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_0

    .line 1
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    .line 2
    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    :cond_0
    return-void
.end method

.method public setColdStart(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/ads/AdInfo;->AdError:Z

    return-void
.end method

.method public setHBResultData(Lccsansan/cu/getDownloadedRecordByUrl;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->performAction:Lccsansan/cu/getDownloadedRecordByUrl;

    if-nez p1, :cond_0

    .line 2
    iget-wide v0, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lccsansan/cu/getDownloadedRecordByUrl;->getDownloadingList()F

    move-result p1

    float-to-int p1, p1

    int-to-long v0, p1

    :goto_0
    iput-wide v0, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    return-void
.end method

.method public setIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    return-void
.end method

.method public setLoadStartTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->execute:J

    return-void
.end method

.method public setLoaderClassName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->unifiedDownload:Ljava/lang/String;

    return-void
.end method

.method public setLocalExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->getDownloadedRecordByUrl:Ljava/util/Map;

    return-void
.end method

.method public setNetworkId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public setPassengerHBParams(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/AdInfo;->setErrorMessage:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/AdInfo;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "#"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsancom/san/ads/AdInfo;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/ads/AdInfo;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/san/ads/AdInfo;->trackReportShow:Z

    if-eqz v1, :cond_0

    const-string v1, "LevelMode"

    goto :goto_0

    :cond_0
    const-string v1, "EcpmMode"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/san/ads/AdInfo;->shouldTryHandlingAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/san/ads/AdInfo;->getPackageNameByRecord:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", bid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lccsancom/san/ads/AdInfo;->IncentiveSDK$1:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", intervalToStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->getMinIntervalToStart()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", isAnchor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lccsancom/san/ads/AdInfo;->trackReportClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasFilled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p0}, Lccsancom/san/ads/AdInfo;->hasSucceed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", loadStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateLoadStatus(I)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(ILccsancom/san/ads/AdError;Z)V

    return-void
.end method

.method public updateLoadStatus(ILccsancom/san/ads/AdError;)V
    .locals 1

    .line 3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(ILccsancom/san/ads/AdError;Z)V

    return-void
.end method

.method public updateLoadStatus(ILccsancom/san/ads/AdError;Z)V
    .locals 2

    if-eqz p2, :cond_0

    .line 4
    iput-object p2, p0, Lccsancom/san/ads/AdInfo;->performActionWhenOffline:Lccsancom/san/ads/AdError;

    .line 5
    :cond_0
    iget p2, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    if-ne p2, p1, :cond_1

    return-void

    .line 7
    :cond_1
    iput p1, p0, Lccsancom/san/ads/AdInfo;->getDownloadingRecordByUrl:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_5

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 15
    :cond_2
    iput-boolean p3, p0, Lccsancom/san/ads/AdInfo;->ActionTypeReserveApp:Z

    .line 22
    :goto_0
    iget-wide p1, p0, Lccsancom/san/ads/AdInfo;->execute:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->execute:J

    .line 24
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->resolveUrl:J

    goto :goto_1

    .line 25
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lccsancom/san/ads/AdInfo;->execute:J

    :cond_5
    :goto_1
    return-void
.end method

.method public updateLoadStatus(IZ)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lccsancom/san/ads/AdInfo;->updateLoadStatus(ILccsancom/san/ads/AdError;Z)V

    return-void
.end method
