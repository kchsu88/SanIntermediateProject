.class public Lccsansan/dt/deleteDownList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:J

.field private addDownloadListener:I

.field private deleteDownItem:I

.field private deleteDownList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadStatusByUrl:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadedCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadedList:I

.field private getDownloadedRecordByUrl:I

.field private getDownloadingCount:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingList:J

.field private getDownloadingRecordByUrl:I

.field private pause:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private removeDownloadListener:J

.field private resume:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private trackReportClick:Lccsansan/dt/removeDownloadListener;

.field private unifiedDownload:J


# direct methods
.method public constructor <init>(Lccsanorg/json/JSONObject;Lccsansan/dt/removeDownloadListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, -0x1

    iput v0, p0, Lccsansan/dt/deleteDownList;->deleteDownItem:I

    .line 3
    iput v0, p0, Lccsansan/dt/deleteDownList;->getDownloadedRecordByUrl:I

    .line 6
    iput v0, p0, Lccsansan/dt/deleteDownList;->getDownloadedList:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/dt/deleteDownList;->getDownloadStatusByUrl:Ljava/util/List;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/dt/deleteDownList;->getDownloadedCount:Ljava/util/List;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/dt/deleteDownList;->pause:Ljava/util/List;

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/dt/deleteDownList;->deleteDownList:Ljava/util/List;

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/dt/deleteDownList;->getDownloadingCount:Ljava/util/List;

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lccsansan/dt/deleteDownList;->resume:Ljava/util/List;

    .line 20
    iput-object p2, p0, Lccsansan/dt/deleteDownList;->trackReportClick:Lccsansan/dt/removeDownloadListener;

    .line 21
    const-string p2, "start_date"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, p2, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lccsansan/dt/deleteDownList;->IncentiveDownloadUtils:J

    .line 22
    const-string p2, "end_date"

    invoke-virtual {p1, p2, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lccsansan/dt/deleteDownList;->getDownloadingList:J

    .line 23
    const-string p2, "track_end_date"

    invoke-virtual {p1, p2, v1, v2}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lccsansan/dt/deleteDownList;->unifiedDownload:J

    .line 24
    const-string p2, "priority"

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lccsansan/dt/deleteDownList;->addDownloadListener:I

    .line 25
    const-string p2, "network"

    invoke-virtual {p1, p2, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lccsansan/dt/deleteDownList;->getDownloadingRecordByUrl:I

    .line 27
    const-string p2, "track_urls"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 29
    :goto_0
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 30
    iget-object v3, p0, Lccsansan/dt/deleteDownList;->getDownloadStatusByUrl:Ljava/util/List;

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 34
    const-string p2, "click_track_urls"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    const/4 v1, 0x0

    .line 36
    :goto_1
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 37
    iget-object v3, p0, Lccsansan/dt/deleteDownList;->getDownloadedCount:Ljava/util/List;

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    nop

    .line 41
    const-string p2, "display_control"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 43
    const-string v1, "imp"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "user_accumulate_limit"

    const-string v5, "user_day_limit"

    if-eqz v3, :cond_2

    .line 44
    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v1

    .line 45
    invoke-virtual {v1, v5, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lccsansan/dt/deleteDownList;->deleteDownItem:I

    .line 46
    invoke-virtual {v1, v4, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lccsansan/dt/deleteDownList;->getDownloadedRecordByUrl:I

    .line 47
    const-string v3, "interval"

    invoke-virtual {v1, v3}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lccsansan/dt/deleteDownList;->removeDownloadListener:J

    :cond_2
    nop

    .line 50
    const-string v1, "click"

    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 51
    invoke-virtual {p2, v1}, Lccsanorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object p2

    .line 52
    invoke-virtual {p2, v5, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    .line 53
    invoke-virtual {p2, v4, v0}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lccsansan/dt/deleteDownList;->getDownloadedList:I

    :cond_3
    nop

    .line 57
    const-string p2, "landing_page_imp_track_urls"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 58
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 60
    :goto_2
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 61
    iget-object v1, p0, Lccsansan/dt/deleteDownList;->deleteDownList:Ljava/util/List;

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    nop

    .line 65
    const-string p2, "landing_page_click_track_urls"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_5

    const/4 v0, 0x0

    .line 68
    :goto_3
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 69
    iget-object v1, p0, Lccsansan/dt/deleteDownList;->pause:Ljava/util/List;

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    nop

    .line 73
    const-string p2, "detail_page_imp_track_urls"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 74
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p2

    if-eqz p2, :cond_6

    const/4 v0, 0x0

    .line 76
    :goto_4
    invoke-virtual {p2}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_6

    .line 77
    iget-object v1, p0, Lccsansan/dt/deleteDownList;->resume:Ljava/util/List;

    invoke-virtual {p2, v0}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_6
    nop

    .line 81
    const-string p2, "detail_page_click_track_urls"

    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 82
    invoke-virtual {p1, p2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 84
    :goto_5
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result p2

    if-ge v2, p2, :cond_7

    .line 85
    iget-object p2, p0, Lccsansan/dt/deleteDownList;->getDownloadingCount:Ljava/util/List;

    invoke-virtual {p1, v2}, Lccsanorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_7
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/dt/deleteDownList;->IncentiveDownloadUtils:J

    return-wide v0
.end method

.method public addDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/dt/deleteDownList;->unifiedDownload:J

    return-wide v0
.end method

.method public deleteDownItem()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lccsansan/dt/deleteDownList;->getDownloadedCount:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/deleteDownList;->trackReportClick:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public deleteDownList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/dt/deleteDownList;->pause:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/deleteDownList;->trackReportClick:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadStatusByUrl()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dt/deleteDownList;->deleteDownItem:I

    return v0
.end method

.method public getDownloadedList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/dt/deleteDownList;->getDownloadStatusByUrl:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/deleteDownList;->trackReportClick:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadedRecordByUrl()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dt/deleteDownList;->getDownloadedRecordByUrl:I

    return v0
.end method

.method public getDownloadingCount()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/dt/deleteDownList;->deleteDownList:Ljava/util/List;

    iget-object v1, p0, Lccsansan/dt/deleteDownList;->trackReportClick:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, v1}, Lccsansan/di/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingList()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/dt/deleteDownList;->getDownloadingList:J

    return-wide v0
.end method

.method public getDownloadingList(I)V
    .locals 0

    .line 1
    iput p1, p0, Lccsansan/dt/deleteDownList;->getDownloadingRecordByUrl:I

    return-void
.end method

.method public getDownloadingRecordByUrl()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dt/deleteDownList;->getDownloadedList:I

    return v0
.end method

.method public removeDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dt/deleteDownList;->getDownloadingRecordByUrl:I

    return v0
.end method

.method public resume()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/dt/deleteDownList;->removeDownloadListener:J

    return-wide v0
.end method

.method public unifiedDownload()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dt/deleteDownList;->addDownloadListener:I

    return v0
.end method
