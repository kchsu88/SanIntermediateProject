.class public Lccsansan/di/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/di/IncentiveDownloadUtils$addDownloadListener;
    }
.end annotation


# direct methods
.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V
    .locals 4

    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 17
    :cond_0
    :try_start_0
    invoke-static {p0}, Lccsansan/bw/valueOf;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    .line 18
    invoke-static {p0}, Lccsansan/bw/valueOf;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 19
    invoke-static {p0}, Lccsansan/bw/valueOf;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    .line 21
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, p0, v1, v2, v3}, Lccsansan/co/getDownloadingCount;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;ZLccsansan/co/getDownloadingCount$getDownloadingList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static addDownloadListener(Lccsanorg/json/JSONObject;)V
    .locals 4

    const-string v0, "MadsDataHelper"

    const-string v1, "unexisted_adids"

    if-eqz p0, :cond_3

    .line 27
    :try_start_0
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 30
    :cond_0
    invoke-virtual {p0, v1}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 34
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 35
    :goto_0
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 36
    invoke-virtual {p0, v2}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :cond_2
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsansan/dc/getDownloadingList;->unifiedDownload(Ljava/util/List;)V

    .line 39
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object p0

    invoke-virtual {p0, v1}, Lccsansan/dc/getDownloadingList;->removeDownloadListener(Ljava/util/List;)V

    .line 40
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#handleUnExistAds :"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#handleUnExistAds exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;
    .locals 1

    .line 2
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "video"

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "vast"

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {p0}, Lccsansan/dt/getDownloadedList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "jstag"

    goto :goto_0

    :cond_2
    const-string p0, "image"

    :goto_0
    return-object p0
.end method

.method private static getDownloadingList(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 11
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    const-string v1, "#handleAdsForCache data : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/util/Pair;

    .line 16
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v2, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    iget-object v3, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget-object v1, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, "],"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    nop

    .line 25
    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MadsDataHelper"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private static getDownloadingList(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lccsanandroid/util/Pair<",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/util/List<",
            "Lccsansan/dt/getDownloadingRecordByUrl;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/dc/getDownloadingList;->deleteDownItem(Ljava/util/List;)Z

    :cond_0
    if-eqz p0, :cond_2

    .line 4
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p0}, Lccsansan/di/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;)V

    .line 10
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1, p0}, Lccsansan/dc/getDownloadingList;->IncentiveDownloadUtils(Ljava/util/List;)Z

    .line 11
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v0, Lccsansan/di/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/di/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Ljava/util/List;)V

    invoke-virtual {p1, v0}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static getDownloadingList(Ljava/util/List;Lccsanorg/json/JSONObject;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;ZLccsansan/di/IncentiveDownloadUtils$addDownloadListener;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsanorg/json/JSONObject;",
            "Lccsansan/dt/IncentiveSDK;",
            "Ljava/lang/String;",
            "Z",
            "Lccsansan/di/IncentiveDownloadUtils$addDownloadListener;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 8
    invoke-static {p1}, Lccsansan/di/IncentiveDownloadUtils;->addDownloadListener(Lccsanorg/json/JSONObject;)V

    .line 9
    invoke-static {p1}, Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsanorg/json/JSONObject;)V

    .line 10
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v9, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;

    const-string v2, "Ads.handleResponseAdCache"

    move-object v1, v9

    move-object v3, p1

    move-object v4, p0

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;-><init>(Ljava/lang/String;Lccsanorg/json/JSONObject;Ljava/util/List;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;ZLccsansan/di/IncentiveDownloadUtils$addDownloadListener;)V

    invoke-virtual {v0, v9}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method static synthetic removeDownloadListener(Ljava/util/List;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lccsansan/di/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static removeDownloadListener(Lccsanorg/json/JSONObject;)V
    .locals 3

    const-string v0, "unexisted_cids"

    if-eqz p0, :cond_3

    .line 23
    :try_start_0
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 27
    invoke-virtual {p0}, Lccsanorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 30
    :cond_1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/di/IncentiveDownloadUtils$removeDownloadListener;

    const-string v2, "Ads.handleUnExistAds"

    invoke-direct {v1, v2, p0}, Lccsansan/di/IncentiveDownloadUtils$removeDownloadListener;-><init>(Ljava/lang/String;Lccsanorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#handleUnExistCid exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MadsDataHelper"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static removeDownloadListener(Lccsanorg/json/JSONObject;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 7
    invoke-static {}, Lccsansan/cz/unifiedDownload;->ActionTypeDownload()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v0 .. v5}, Lccsansan/di/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;Lccsanorg/json/JSONObject;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;ZLccsansan/di/IncentiveDownloadUtils$addDownloadListener;)V

    return-void
.end method

.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getSid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-static {v1, v0}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/di/IncentiveDownloadUtils$unifiedDownload;

    invoke-direct {v1, p0}, Lccsansan/di/IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsansan/dt/removeDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
