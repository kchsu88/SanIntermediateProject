.class public Lccsansan/dt/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:Ljava/lang/String;

.field private removeDownloadListener:I

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDownloadingList(Lccsansan/dt/getDownloadingRecordByUrl;)Lccsansan/dt/getDownloadingRecordByUrl;
    .locals 5

    .line 4
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONArray;

    iget-object v1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    invoke-direct {v0, v1}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 5
    iget v1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener:I

    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, -0x1

    const-string v3, "cid"

    const-string v4, "ad_id"

    if-ne v1, v2, :cond_0

    .line 6
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 7
    iput v1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener:I

    .line 8
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

    goto :goto_0

    .line 11
    :cond_0
    iget v1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener:I

    add-int/lit8 v1, v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v0

    .line 13
    iput v1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener:I

    .line 14
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 15
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()I
    .locals 1

    .line 1
    iget v0, p0, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener:I

    return v0
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    return-void
.end method

.method public addDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dt/getDownloadingRecordByUrl;->getDownloadingList:Ljava/lang/String;

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    return-void
.end method

.method public getDownloadingList()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method public unifiedDownload()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload:Ljava/lang/String;

    return-object v0
.end method

.method public unifiedDownload(I)V
    .locals 0

    .line 3
    iput p1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener:I

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method
