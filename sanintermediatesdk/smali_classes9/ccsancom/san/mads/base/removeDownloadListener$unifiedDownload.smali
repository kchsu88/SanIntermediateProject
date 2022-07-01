.class Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dt/unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/base/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDownloadingList()Z
    .locals 2

    .line 10
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object v0, v0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object v0, v0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 7

    .line 12
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    const-string v1, "ret_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p1, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener:I

    .line 14
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    const-string v1, "err_msg"

    invoke-virtual {v0, v1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lccsancom/san/mads/base/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    const-string p1, "timestamp"

    const-wide/16 v3, 0x0

    .line 15
    invoke-virtual {v0, p1, v3, v4}, Lccsanorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    .line 16
    invoke-static {}, Lccsansan/ab/addDownloadListener;->unifiedDownload()Lccsansan/ab/addDownloadListener;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lccsansan/ab/addDownloadListener;->addDownloadListener(J)V

    .line 17
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedList:J

    const-string p1, "layer_config_version"

    .line 19
    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-static {p1}, Lccsansan/bw/getErrorCode;->getDownloadedRecordByUrl(Ljava/lang/String;)V

    const-string p1, "placements"

    .line 22
    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 23
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object p1

    const-string v1, "ads"

    invoke-virtual {p1, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 26
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    sget-object v0, Lccsancom/san/ads/AdError;->NO_FILL:Lccsancom/san/ads/AdError;

    invoke-virtual {p1, v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    .line 27
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/ads/AdError;->getErrorCode()I

    move-result v1

    invoke-virtual {v0}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/base/removeDownloadListener;ILjava/lang/String;)V

    return-void

    .line 30
    :cond_0
    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {v1, p1}, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/base/removeDownloadListener;Lccsanorg/json/JSONArray;)V

    .line 31
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {p1}, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/base/removeDownloadListener;)V

    .line 33
    sget-object p1, Lccsansan/dt/IncentiveSDK;->NORMAL:Lccsansan/dt/IncentiveSDK;

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object v1, v1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadStatusByUrl:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getRid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsanorg/json/JSONObject;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {p1}, Lccsancom/san/mads/base/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/base/removeDownloadListener;)V

    .line 36
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-virtual {p1}, Lccsancom/san/mads/base/removeDownloadListener;->IncentiveDownloadUtils()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 39
    invoke-direct {p0}, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object p1, p1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    const-string v0, "3"

    invoke-virtual {p1, v0}, Lccsansan/dt/removeDownloadListener;->pause(Ljava/lang/String;)V

    .line 41
    iget-object p1, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object v0, p1, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z

    const-string p1, "has_ad_cache"

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    new-instance v1, Lccsancom/san/ads/AdError;

    iget-object v2, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget v2, v2, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener:I

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    .line 45
    invoke-virtual {p1}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 47
    :goto_0
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget v1, v0, Lccsancom/san/mads/base/removeDownloadListener;->addDownloadListener:I

    invoke-static {v0, v1, p1}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/base/removeDownloadListener;ILjava/lang/String;)V

    :goto_1
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {v0, p1}, Lccsancom/san/mads/base/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/base/removeDownloadListener;Ljava/lang/String;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    new-instance v1, Lccsancom/san/ads/AdError;

    invoke-direct {v1, p1, p2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdError;)V

    .line 3
    invoke-direct {p0}, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->getDownloadingList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p2, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object p2, p2, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    const-string v0, "3"

    invoke-virtual {p2, v0}, Lccsansan/dt/removeDownloadListener;->pause(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    iget-object v0, p2, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Z)Z

    const-string p2, "has_ad_cache"

    .line 8
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-static {v0, p1, p2}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/base/removeDownloadListener;ILjava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onAdRequestError placementId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/base/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", msg:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.BaseLoader"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
