.class public Lccsansan/cy/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private ActionTypeDetailPage:J

.field private ActionTypeReserveApp:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private IncentiveSDK:Lccsansan/dt/removeDownloadListener;

.field private IncentiveSDK$1:J

.field private addDownloadListener:I

.field private deleteDownItem:J

.field private deleteDownList:I

.field private execute:J

.field private getActionType:Ljava/lang/String;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field private getDownloadedCount:I

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:I

.field private getDownloadingCount:I

.field private getDownloadingList:Ljava/lang/String;

.field private getDownloadingRecordByUrl:I

.field private getPackageNameByRecord:Lccsanandroid/content/Context;

.field private getThumbPathByRecord:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;"
        }
    .end annotation
.end field

.field private pause:Z

.field private performAction:I

.field private performActionWhenOffline:Ljava/lang/String;

.field private removeDownloadListener:Ljava/lang/String;

.field private resolveUrl:Ljava/lang/String;

.field private resume:I

.field private shouldTryHandlingAction:I

.field private trackReportClick:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private trackReportShow:Z

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Lccsansan/cy/getDownloadingRecordByUrl;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->resume:I

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->pause:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 126
    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getPackageNameByRecord:Lccsanandroid/content/Context;

    .line 127
    iput-object p2, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    .line 128
    iput p3, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadedRecordByUrl:I

    .line 130
    iput-object p4, p0, Lccsansan/cy/getDownloadStatusByUrl;->getThumbPathByRecord:Ljava/util/List;

    .line 132
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->trackReportClick:Ljava/util/List;

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "placementID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 134
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;ILccsansan/cy/getDownloadingRecordByUrl;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->resume:I

    .line 4
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->pause:Z

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 31
    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getPackageNameByRecord:Lccsanandroid/content/Context;

    .line 32
    iput-object p2, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    .line 33
    iput p3, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadedRecordByUrl:I

    .line 35
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->removeDownloadListener:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    .line 36
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownItem:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 37
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedList:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->addDownloadListener:I

    .line 38
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/String;

    .line 39
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadStatusByUrl:Ljava/lang/String;

    .line 40
    iget-wide p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveDownloadUtils:J

    iput-wide p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->deleteDownItem:J

    .line 41
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadStatusByUrl:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadedList:I

    .line 42
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedRecordByUrl:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingRecordByUrl:I

    .line 43
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingRecordByUrl:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingCount:I

    .line 44
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->pause:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadedCount:I

    .line 45
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadedCount:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->resume:I

    .line 46
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->deleteDownList:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->deleteDownList:I

    .line 47
    iget-boolean p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getDownloadingCount:Z

    iput-boolean p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->pause:Z

    .line 48
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->IncentiveSDK:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->resolveUrl:Ljava/lang/String;

    .line 49
    iget-wide p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->trackReportShow:J

    iput-wide p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->execute:J

    .line 50
    iget-wide p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->trackReportClick:J

    iput-wide p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveSDK$1:J

    .line 51
    iget-wide p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getThumbPathByRecord:J

    iput-wide p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->ActionTypeDetailPage:J

    .line 52
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->execute:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->shouldTryHandlingAction:I

    .line 53
    iget p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->getPackageNameByRecord:I

    iput p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->performAction:I

    .line 54
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->shouldTryHandlingAction:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->ActionTypeReserveApp:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    .line 55
    iget-boolean p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->resume:Z

    iput-boolean p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->trackReportShow:Z

    .line 56
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->ActionTypeDetailPage:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->getActionType:Ljava/lang/String;

    .line 57
    iget-object p1, p4, Lccsansan/cy/getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

    iput-object p1, p0, Lccsansan/cy/getDownloadStatusByUrl;->performActionWhenOffline:Ljava/lang/String;

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "placementID cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 59
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "context cannot be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveSDK:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public addDownloadListener()Lccsanorg/json/JSONObject;
    .locals 18

    move-object/from16 v1, p0

    .line 1
    :try_start_0
    new-instance v3, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    iget-object v0, v1, Lccsansan/cy/getDownloadStatusByUrl;->getPackageNameByRecord:Lccsanandroid/content/Context;

    iget-object v4, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-direct {v3, v0, v4}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iget-object v4, v1, Lccsansan/cy/getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    iget-object v5, v1, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    iget v6, v1, Lccsansan/cy/getDownloadStatusByUrl;->addDownloadListener:I

    iget-object v7, v1, Lccsansan/cy/getDownloadStatusByUrl;->unifiedDownload:Ljava/lang/String;

    iget-object v8, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadStatusByUrl:Ljava/lang/String;

    iget-wide v9, v1, Lccsansan/cy/getDownloadStatusByUrl;->deleteDownItem:J

    iget v11, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadedList:I

    iget v12, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingRecordByUrl:I

    iget v13, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadedRecordByUrl:I

    iget v14, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingCount:I

    iget v15, v1, Lccsansan/cy/getDownloadStatusByUrl;->deleteDownList:I

    iget-boolean v0, v1, Lccsansan/cy/getDownloadStatusByUrl;->pause:Z

    iget-object v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->performActionWhenOffline:Ljava/lang/String;

    .line 2
    move/from16 v16, v0

    move-object/from16 v17, v2

    invoke-virtual/range {v3 .. v17}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JIIIIIZLjava/lang/String;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadedCount:I

    .line 3
    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->resume:I

    .line 4
    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget-object v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget-wide v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->execute:J

    invoke-virtual {v0, v2, v3}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->removeDownloadListener(J)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget-wide v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveSDK$1:J

    invoke-virtual {v0, v2, v3}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload(J)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget-wide v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->ActionTypeDetailPage:J

    .line 5
    invoke-virtual {v0, v2, v3}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(J)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->shouldTryHandlingAction:I

    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->performAction:I

    .line 6
    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(I)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget-object v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->ActionTypeReserveApp:Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/getDownloadingRecordByUrl$IncentiveDownloadUtils;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget-boolean v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->trackReportShow:Z

    .line 7
    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload(Z)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    iget-object v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->getActionType:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload()Lccsansan/cy/getDownloadedList;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lccsansan/cy/getDownloadedList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v0

    .line 11
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    return-object v2

    .line 13
    :cond_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v0}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "placements"

    .line 14
    invoke-virtual {v2, v0}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    const-string v3, "ads"

    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 15
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 16
    new-instance v2, Lccsansan/dt/removeDownloadListener;

    invoke-direct {v2, v0}, Lccsansan/dt/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    iput-object v2, v1, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveSDK:Lccsansan/dt/removeDownloadListener;

    .line 17
    iget-object v3, v1, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v2, 0x0

    return-object v2
.end method

.method public deleteDownItem()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/dt/removeDownloadListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->trackReportClick:Ljava/util/List;

    return-object v0
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->trackReportClick:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public removeDownloadListener()Lccsansan/dt/removeDownloadListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cy/getDownloadStatusByUrl;->IncentiveSDK:Lccsansan/dt/removeDownloadListener;

    return-object v0
.end method

.method public unifiedDownload()Lccsanorg/json/JSONArray;
    .locals 5

    .line 1
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    iget-object v2, p0, Lccsansan/cy/getDownloadStatusByUrl;->getPackageNameByRecord:Lccsanandroid/content/Context;

    iget-object v3, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    iget-object v2, p0, Lccsansan/cy/getDownloadStatusByUrl;->getThumbPathByRecord:Ljava/util/List;

    .line 2
    invoke-virtual {v1, v2}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/util/List;)Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lccsansan/cy/getDownloadedList$IncentiveDownloadUtils;->unifiedDownload()Lccsansan/cy/getDownloadedList;

    move-result-object v1

    .line 4
    invoke-virtual {v1}, Lccsansan/cy/getDownloadedList;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 7
    :cond_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "placements"

    .line 8
    invoke-virtual {v2, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v1

    const-string v3, "ads"

    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 10
    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 11
    invoke-virtual {v1, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 12
    new-instance v4, Lccsansan/dt/removeDownloadListener;

    invoke-direct {v4, v3}, Lccsansan/dt/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;)V

    .line 13
    iget-object v3, p0, Lccsansan/cy/getDownloadStatusByUrl;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 14
    iget-object v3, p0, Lccsansan/cy/getDownloadStatusByUrl;->trackReportClick:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :catch_0
    move-exception v1

    return-object v0
.end method
