.class public Lccsansan/az/addDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lccsansan/az/addDownloadListener;",
        ">;"
    }
.end annotation


# static fields
.field public static IncentiveDownloadUtils:I = 0x0

.field public static addDownloadListener:I = 0x4

.field public static getDownloadStatusByUrl:I = 0x5

.field public static getDownloadingList:I = 0x2

.field public static removeDownloadListener:I = 0x3

.field public static unifiedDownload:I = 0x1


# instance fields
.field public deleteDownItem:Ljava/lang/String;

.field public deleteDownList:D

.field private getDownloadedCount:J

.field public getDownloadedList:I

.field public getDownloadedRecordByUrl:I

.field public getDownloadingCount:D

.field public getDownloadingRecordByUrl:Ljava/lang/String;

.field public pause:I

.field private resume:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private varargs IncentiveDownloadUtils(Lccsanorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    .line 2
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lccsansan/az/addDownloadListener;->getDownloadedCount:J

    return-wide v0
.end method

.method public IncentiveDownloadUtils(I)V
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/az/addDownloadListener;->getDownloadedList:I

    return-void
.end method

.method public IncentiveDownloadUtils(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsansan/az/addDownloadListener;->getDownloadedCount:J

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addDownloadListener()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/az/addDownloadListener;->getDownloadedRecordByUrl:I

    return v0
.end method

.method public addDownloadListener(D)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lccsansan/az/addDownloadListener;->getDownloadingCount:D

    return-void
.end method

.method public addDownloadListener(I)V
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/az/addDownloadListener;->getDownloadedRecordByUrl:I

    return-void
.end method

.method public addDownloadListener(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lccsansan/az/addDownloadListener;->resume:J

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lccsansan/az/addDownloadListener;

    invoke-virtual {p0, p1}, Lccsansan/az/addDownloadListener;->removeDownloadListener(Lccsansan/az/addDownloadListener;)I

    move-result p1

    return p1
.end method

.method public deleteDownItem()D
    .locals 2

    .line 4
    iget-wide v0, p0, Lccsansan/az/addDownloadListener;->deleteDownList:D

    return-wide v0
.end method

.method public deleteDownItem(I)V
    .locals 0

    return-void
.end method

.method public deleteDownItem(J)V
    .locals 0

    return-void
.end method

.method public getDownloadStatusByUrl(J)V
    .locals 0

    return-void
.end method

.method public getDownloadedList(I)V
    .locals 0

    return-void
.end method

.method public getDownloadedList(J)V
    .locals 0

    return-void
.end method

.method public getDownloadedRecordByUrl(J)V
    .locals 0

    return-void
.end method

.method public getDownloadingList()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/az/addDownloadListener;->getDownloadedList:I

    return v0
.end method

.method public getDownloadingList(I)V
    .locals 0

    return-void
.end method

.method public getDownloadingList(J)V
    .locals 0

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getDownloadingRecordByUrl(I)V
    .locals 0

    .line 2
    iput p1, p0, Lccsansan/az/addDownloadListener;->pause:I

    return-void
.end method

.method public removeDownloadListener(Lccsansan/az/addDownloadListener;)I
    .locals 4

    .line 6
    iget-wide v0, p0, Lccsansan/az/addDownloadListener;->getDownloadingCount:D

    iget-wide v2, p1, Lccsansan/az/addDownloadListener;->getDownloadingCount:D

    cmpl-double p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public removeDownloadListener()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lccsansan/az/addDownloadListener;->resume:J

    return-wide v0
.end method

.method public removeDownloadListener(D)V
    .locals 0

    .line 5
    iput-wide p1, p0, Lccsansan/az/addDownloadListener;->deleteDownList:D

    return-void
.end method

.method public removeDownloadListener(I)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(J)V
    .locals 0

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public unifiedDownload()Lccsanorg/json/JSONObject;
    .locals 12

    .line 1
    const-string v0, "unitId"

    const-string v1, "placementid"

    const-string v2, "placementId"

    const-string v3, "content"

    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v5, "networkName"

    .line 4
    :try_start_0
    iget-object v6, p0, Lccsansan/az/addDownloadListener;->deleteDownItem:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    const-string v5, "cy_ecpm"

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lccsansan/az/addDownloadListener;->deleteDownItem()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    const-string v5, "nw_timeout"

    .line 6
    :try_start_2
    invoke-virtual {p0}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    const-string v5, "nw_cache_time"

    .line 7
    :try_start_3
    invoke-virtual {p0}, Lccsansan/az/addDownloadListener;->removeDownloadListener()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    const-string v5, "t_c_u_min_t"

    .line 8
    :try_start_4
    invoke-virtual {p0}, Lccsansan/az/addDownloadListener;->getDownloadingList()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    const-string v5, "t_c_u_max_t"

    .line 9
    :try_start_5
    invoke-virtual {p0}, Lccsansan/az/addDownloadListener;->addDownloadListener()I

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1

    const-string v5, "ecpmLayerLevel"

    .line 10
    :try_start_6
    iget v6, p0, Lccsansan/az/addDownloadListener;->pause:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    .line 13
    :try_start_7
    new-instance v5, Lccsanorg/json/JSONObject;

    iget-object v6, p0, Lccsansan/az/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-direct {v5, v6}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 14
    const/4 v6, 0x4

    new-array v7, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v9, 0x1

    aput-object v1, v7, v9

    const-string v10, "placement_id"

    const/4 v11, 0x2

    aput-object v10, v7, v11

    const/4 v10, 0x3

    aput-object v1, v7, v10

    invoke-direct {p0, v5, v7}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    new-array v6, v6, [Ljava/lang/String;

    aput-object v0, v6, v8

    const-string v7, "unitid"

    aput-object v7, v6, v9

    const-string v7, "unit_id"

    aput-object v7, v6, v11

    const-string v7, "unit_Id"

    aput-object v7, v6, v10

    invoke-direct {p0, v5, v6}, Lccsansan/az/addDownloadListener;->IncentiveDownloadUtils(Lccsanorg/json/JSONObject;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 16
    invoke-virtual {v4, v2, v1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 17
    invoke-virtual {v4, v0, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    const-string v0, "parsed"

    .line 18
    invoke-virtual {v4, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_7
    .catch Lccsanorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 20
    :try_start_8
    iget-object v0, p0, Lccsansan/az/addDownloadListener;->getDownloadingRecordByUrl:Ljava/lang/String;

    invoke-virtual {v4, v3, v0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_8
    .catch Lccsanorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1

    .line 18
    :goto_0
    goto :goto_1

    .line 23
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Lccsanorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v4
.end method

.method public unifiedDownload(I)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(J)V
    .locals 0

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    return-void
.end method
