.class public Lccsansan/m/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public ActionTypeDetailPage:Ljava/lang/String;

.field public ActionTypeDownload:Ljava/lang/String;

.field public IncentiveDownloadUtils:Ljava/lang/String;

.field public IncentiveSDK:Ljava/lang/String;

.field public IncentiveSDK$1:Ljava/lang/String;

.field public addDownloadListener:Ljava/lang/String;

.field public deleteDownItem:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public deleteDownList:Ljava/lang/Long;

.field public execute:Ljava/lang/String;

.field public getActionType:Ljava/lang/String;

.field public getDownloadStatusByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getDownloadedCount:Ljava/lang/Long;

.field public getDownloadedList:Ljava/lang/String;

.field public getDownloadedRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getDownloadingCount:I

.field public getDownloadingList:Ljava/lang/String;

.field public getDownloadingRecordByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getPackageNameByRecord:Ljava/lang/Long;

.field public getThumbPathByRecord:Ljava/lang/Long;

.field public pause:I

.field public performAction:Ljava/lang/String;

.field public performActionWhenOffline:Ljava/lang/String;

.field public removeDownloadListener:Ljava/lang/String;

.field public resolveUrl:Ljava/lang/String;

.field public resume:Ljava/lang/Long;

.field public shouldTryHandlingAction:Ljava/lang/String;

.field public trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

.field public trackReportShow:Ljava/lang/String;

.field public unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    move-object/from16 v16, p12

    move-object/from16 v17, p13

    move-object/from16 v18, p14

    move-object/from16 v19, p15

    .line 1
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    invoke-direct/range {v0 .. v19}, Lccsansan/m/removeDownloadListener;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ")V"
        }
    .end annotation

    .line 2
    move-object v0, p0

    move-object/from16 v1, p18

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    .line 8
    const/4 v2, 0x0

    iput v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadingCount:I

    .line 9
    iput v2, v0, Lccsansan/m/removeDownloadListener;->pause:I

    .line 11
    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    .line 12
    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    .line 13
    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->deleteDownList:Ljava/lang/Long;

    .line 14
    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    .line 15
    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/Long;

    .line 39
    move-object v2, p1

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    .line 40
    move-object v2, p2

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->removeDownloadListener:Ljava/lang/String;

    .line 41
    move-object v2, p3

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadingList:Ljava/lang/String;

    .line 42
    move-object v2, p4

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 43
    move-object v2, p5

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    .line 44
    move-object v2, p6

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadedList:Ljava/lang/String;

    .line 45
    move v2, p7

    iput v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadingCount:I

    .line 46
    move v2, p8

    iput v2, v0, Lccsansan/m/removeDownloadListener;->pause:I

    .line 47
    move-object v2, p9

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->resume:Ljava/lang/Long;

    .line 48
    move-object v2, p10

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadedCount:Ljava/lang/Long;

    .line 49
    move-object v2, p11

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->deleteDownList:Ljava/lang/Long;

    .line 50
    move-object/from16 v2, p12

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getThumbPathByRecord:Ljava/lang/Long;

    .line 51
    move-object/from16 v2, p13

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    .line 52
    move-object/from16 v2, p14

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    .line 53
    move-object/from16 v2, p15

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    .line 54
    move-object/from16 v2, p16

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->deleteDownItem:Ljava/util/List;

    .line 55
    move-object/from16 v2, p17

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->IncentiveSDK:Ljava/lang/String;

    .line 56
    iput-object v1, v0, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    .line 57
    move-object/from16 v2, p19

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->getPackageNameByRecord:Ljava/lang/Long;

    .line 58
    invoke-static/range {p18 .. p18}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 59
    new-instance v2, Lccsansan/m/getDownloadingRecordByUrl;

    invoke-direct {v2, v1}, Lccsansan/m/getDownloadingRecordByUrl;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lccsansan/m/removeDownloadListener;->trackReportClick:Lccsansan/m/getDownloadingRecordByUrl;

    :cond_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/String;
    .locals 3

    .line 3
    iget-object v0, p0, Lccsansan/m/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lccsansan/m/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 8
    iget-object v2, p0, Lccsansan/m/removeDownloadListener;->getDownloadedRecordByUrl:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/m/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 5
    :goto_0
    iget-object v2, p0, Lccsansan/m/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    iget-object v2, p0, Lccsansan/m/removeDownloadListener;->getDownloadStatusByUrl:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 17
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 21
    :cond_0
    :try_start_0
    iget-object v0, p0, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v1, p0, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 24
    :cond_1
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    .line 27
    :goto_0
    invoke-virtual {v0, p1, p2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 28
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    :cond_2
    :goto_1
    return-void
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 3

    .line 8
    iget-object v0, p0, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 13
    iget-object v2, p0, Lccsansan/m/removeDownloadListener;->getDownloadingRecordByUrl:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getDownloadingList(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 29
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    iget-object v2, p0, Lccsansan/m/removeDownloadListener;->trackReportShow:Ljava/lang/String;

    invoke-direct {v0, v2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    :cond_1
    :goto_0
    return-object v1
.end method

.method public getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/m/removeDownloadListener;->resolveUrl:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lccsansan/m/removeDownloadListener;->shouldTryHandlingAction:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDetailPage:Ljava/lang/String;

    .line 4
    iput-object p4, p0, Lccsansan/m/removeDownloadListener;->execute:Ljava/lang/String;

    .line 5
    iput-object p5, p0, Lccsansan/m/removeDownloadListener;->IncentiveSDK$1:Ljava/lang/String;

    .line 6
    iput-object p6, p0, Lccsansan/m/removeDownloadListener;->getActionType:Ljava/lang/String;

    .line 7
    iput-object p7, p0, Lccsansan/m/removeDownloadListener;->performAction:Ljava/lang/String;

    return-object p0
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)Lccsansan/m/removeDownloadListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/m/removeDownloadListener;->ActionTypeDownload:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lccsansan/m/removeDownloadListener;->performActionWhenOffline:Ljava/lang/String;

    return-object p0
.end method
