.class public Lccsansan/af/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Ljava/lang/String;

.field private addDownloadListener:Ljava/lang/String;

.field private getDownloadingList:Ljava/lang/String;

.field private removeDownloadListener:Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lccsansan/af/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    iput-object v0, p0, Lccsansan/af/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    iput-object v0, p0, Lccsansan/af/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iput-object v0, p0, Lccsansan/af/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    return-void
.end method

.method private getDownloadingList(Lccsanorg/json/JSONObject;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    :try_start_0
    invoke-virtual {p1}, Lccsanorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 6
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 8
    invoke-virtual {p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 9
    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 10
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0

    .line 14
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method


# virtual methods
.method public adStatsForJsTag(Ljava/lang/String;)V
    .locals 4
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adStatsForJsTag::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.JsTagBridge"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "eventId"

    const-string v2, ""

    .line 8
    invoke-virtual {v0, p1, v2}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "adStatsForJsTag::  no eventId"

    .line 10
    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v2, "info"

    .line 14
    invoke-virtual {v0, v2}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    .line 15
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    if-eqz v0, :cond_2

    .line 17
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_2

    const/4 v1, 0x0

    .line 18
    :goto_0
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 19
    invoke-virtual {v0, v1}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v3

    .line 20
    invoke-direct {p0, v3}, Lccsansan/af/IncentiveDownloadUtils;->getDownloadingList(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 23
    :cond_1
    invoke-static {p1, v2}, Lccsansan/l/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_1

    :cond_2
    const-string p1, "adStatsForJsTag::  no info data"

    .line 25
    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 28
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lccsanorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public addDownloadListener(Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/af/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;

    return-void
.end method

.method public getRollParam()Ljava/lang/String;
    .locals 7
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    const-string v0, ""

    const-string v1, "Mads.JsTagBridge"

    :try_start_0
    new-instance v2, Lccsanorg/json/JSONObject;

    invoke-direct {v2}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "ad_id"

    .line 2
    :try_start_1
    iget-object v4, p0, Lccsansan/af/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v3, "placement_id"

    .line 3
    :try_start_2
    iget-object v4, p0, Lccsansan/af/IncentiveDownloadUtils;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v3, "creative_id"

    .line 4
    :try_start_3
    iget-object v4, p0, Lccsansan/af/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v3, "formatid"

    .line 5
    :try_start_4
    iget-object v4, p0, Lccsansan/af/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    const-string v3, "tm"

    .line 6
    :try_start_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdStatsParams::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_0

    return-object v0

    :catch_0
    move-exception v2

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAdStatsParams error :: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Lccsanorg/json/JSONException;->printStackTrace()V

    return-object v0
.end method

.method public isCarouselJsTag()V
    .locals 1
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/af/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;->removeDownloadListener()V

    :cond_0
    return-void
.end method
