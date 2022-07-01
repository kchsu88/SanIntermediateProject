.class public Lccsansan/dt/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;
    }
.end annotation


# instance fields
.field private final IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lccsansan/bw/getDownloadingCount<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final addDownloadListener:Ljava/lang/String;

.field private final deleteDownItem:Ljava/lang/String;

.field private final getDownloadStatusByUrl:I

.field private final getDownloadedRecordByUrl:I

.field private final getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final getDownloadingRecordByUrl:I

.field private final removeDownloadListener:I

.field private final unifiedDownload:Lccsanandroid/content/Context;


# direct methods
.method public constructor <init>(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Lccsanandroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    .line 3
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    .line 4
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Lccsansan/bw/getDownloadingCount;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;

    .line 5
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    .line 6
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    .line 7
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedList(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadedRecordByUrl(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener:I

    .line 9
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingRecordByUrl(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)I

    move-result v0

    iput v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    .line 10
    invoke-static {p1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->deleteDownItem(Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    return-void
.end method

.method private IncentiveDownloadUtils()Lccsanorg/json/JSONArray;
    .locals 1

    .line 1
    invoke-static {}, Lccsancom/san/bridge/getDownloadingList;->removeDownloadListener()Lccsanorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method private addDownloadListener()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 55
    invoke-static {}, Lccsansan/bw/toString;->unifiedDownload()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    nop

    .line 58
    const-string v1, "Content-Type"

    const-string v2, "application/json"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v1, "Accept-Charset"

    const-string v2, "UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    iget v1, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "load_type"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private addDownloadListener(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lccsansan/x/addDownloadListener;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lccsansan/x/addDownloadListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    const/4 v1, 0x0

    .line 71
    :goto_0
    invoke-static {}, Lccsansan/cz/unifiedDownload;->removeDownloadListener()I

    move-result v2

    if-ge v1, v2, :cond_0

    const-string v3, "get_ad"

    .line 73
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    iget v7, p0, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener:I

    iget v8, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadedRecordByUrl:I

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v3 .. v8}, Lccsansan/bw/getAdFormat;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[BII)Lccsansan/x/addDownloadListener;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    add-int/lit8 v1, v1, 0x1

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#doRetryPost(): URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Retry count:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and exception:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "Mads.AdRequest"

    invoke-static {v6, v2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :try_start_1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadingRecordByUrl()I

    move-result v2

    .line 80
    new-instance v7, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-direct {v7, v8, v9}, Ljava/util/Random;-><init>(J)V

    invoke-virtual {v7, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    int-to-long v7, v2

    invoke-static {v7, v8}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 82
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 86
    :cond_0
    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private getDownloadingList(Lccsansan/dt/removeDownloadListener;)I
    .locals 1

    .line 42
    iget-object v0, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedCount()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 44
    sget-object p1, Lccsansan/dt/getDownloadingCount;->NEW_CACHE:Lccsansan/dt/getDownloadingCount;

    invoke-virtual {p1}, Lccsansan/dt/getDownloadingCount;->getValue()I

    move-result p1

    return p1

    .line 47
    :cond_0
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 48
    sget-object p1, Lccsansan/dt/getDownloadingCount;->OFFLINE:Lccsansan/dt/getDownloadingCount;

    invoke-virtual {p1}, Lccsansan/dt/getDownloadingCount;->getValue()I

    move-result p1

    return p1

    .line 50
    :cond_1
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 51
    sget-object p1, Lccsansan/dt/getDownloadingCount;->BOTTOM:Lccsansan/dt/getDownloadingCount;

    invoke-virtual {p1}, Lccsansan/dt/getDownloadingCount;->getValue()I

    move-result p1

    return p1

    .line 53
    :cond_2
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->resume()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 54
    sget-object p1, Lccsansan/dt/getDownloadingCount;->PRECACHE:Lccsansan/dt/getDownloadingCount;

    invoke-virtual {p1}, Lccsansan/dt/getDownloadingCount;->getValue()I

    move-result p1

    return p1

    .line 57
    :cond_3
    sget-object p1, Lccsansan/dt/getDownloadingCount;->CPD:Lccsansan/dt/getDownloadingCount;

    invoke-virtual {p1}, Lccsansan/dt/getDownloadingCount;->getValue()I

    move-result p1

    return p1
.end method

.method private getDownloadingList()Lccsanorg/json/JSONArray;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 2
    iget v1, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    sget-object v2, Lccsansan/dt/getDownloadedCount;->ADVANCE:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v2}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v2

    const-string v3, "ad_offline_count"

    const-string v4, "load_type"

    const/4 v5, 0x1

    const-string v6, "support_video"

    const-string v7, "pos_id"

    const-string v8, "ad_count"

    if-eq v1, v2, :cond_2

    iget v1, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    sget-object v2, Lccsansan/dt/getDownloadedCount;->CACHEAD:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v2}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v2

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 33
    :cond_0
    iget-object v1, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 34
    new-instance v9, Lccsanorg/json/JSONObject;

    invoke-direct {v9}, Lccsanorg/json/JSONObject;-><init>()V

    .line 36
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v7, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 37
    iget v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    invoke-virtual {v9, v8, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 38
    iget v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    sget-object v10, Lccsansan/dt/getDownloadedCount;->NORMAL:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v10}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v10

    if-ne v2, v10, :cond_1

    iget-object v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 39
    iget v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    invoke-static {v2}, Lccsansan/cz/unifiedDownload;->getDownloadingList(I)I

    move-result v2

    invoke-virtual {v9, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    :cond_1
    nop

    .line 41
    invoke-virtual {v9, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 42
    iget v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    invoke-virtual {v9, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 44
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "#createPlacementInfo error :"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v10, "Mads.AdRequest"

    invoke-static {v10, v2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_1
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto :goto_0

    .line 47
    :cond_2
    :goto_2
    iget-object v1, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 48
    new-instance v9, Lccsanorg/json/JSONObject;

    invoke-direct {v9}, Lccsanorg/json/JSONObject;-><init>()V

    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v9, v7, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 50
    iget-object v10, p0, Lccsansan/dt/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/bw/getDownloadingCount;

    if-eqz v10, :cond_6

    .line 53
    :try_start_1
    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v10

    .line 54
    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 55
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 56
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 54
    :cond_4
    const-string v2, ""

    .line 60
    :goto_4
    :try_start_2
    sget-object v10, Lccsansan/dt/getDownloadingList;->OFFLINE:Lccsansan/dt/getDownloadingList;

    invoke-virtual {v10}, Lccsansan/dt/getDownloadingList;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 61
    invoke-static {}, Lccsansan/cz/unifiedDownload;->shouldTryHandlingAction()I

    move-result v10

    invoke-virtual {v9, v3, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 63
    :cond_5
    sget-object v10, Lccsansan/dt/getDownloadingList;->CACHE:Lccsansan/dt/getDownloadingList;

    invoke-virtual {v10}, Lccsansan/dt/getDownloadingList;->getValue()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_7

    const-string v2, "ad_cache_count"

    .line 64
    :try_start_3
    invoke-static {}, Lccsansan/cz/unifiedDownload;->execute()I

    move-result v10

    invoke-virtual {v9, v2, v10}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v2

    .line 67
    iget v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    invoke-virtual {v9, v8, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    goto :goto_5

    .line 70
    :cond_6
    iget v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadStatusByUrl:I

    invoke-virtual {v9, v8, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    :cond_7
    :goto_5
    nop

    .line 72
    invoke-virtual {v9, v6, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Z)Lccsanorg/json/JSONObject;

    .line 73
    iget v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    invoke-virtual {v9, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 74
    invoke-virtual {v0, v9}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    goto/16 :goto_3

    :cond_8
    return-object v0
.end method

.method private removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 58
    const-string v0, "Mads.AdRequest"

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 60
    :try_start_0
    invoke-static {}, Lccsansan/cz/unifiedDownload;->trackReportShow()Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    const-string v2, "s2"

    .line 61
    :try_start_1
    invoke-static {p1}, Lccsansan/cb/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lccsansan/cb/unifiedDownload;->removeDownloadListener([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_0
    const-string v2, "s"

    .line 63
    :try_start_2
    invoke-static {p1}, Lccsansan/cb/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 61
    :goto_0
    goto :goto_1

    .line 63
    :catch_0
    move-exception p1

    .line 65
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#syncLoadAd jsonObject error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    :goto_1
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#syncLoadAd, load ad request body is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/dt/IncentiveDownloadUtils;Lccsansan/dt/unifiedDownload;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/unifiedDownload;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private removeDownloadListener(Lccsansan/dt/unifiedDownload;)Ljava/lang/String;
    .locals 8

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v0

    const-string v1, "Network"

    const/4 v2, 0x0

    const-string v3, "Mads.AdRequest"

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 3
    const-string v0, "Network not connected..."

    invoke-interface {p1, v1, v0}, Lccsansan/dt/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string p1, "#LoadAdData Failed, Network not connected..."

    invoke-static {v3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v2

    .line 9
    :cond_1
    invoke-direct {p0}, Lccsansan/dt/IncentiveDownloadUtils;->addDownloadListener()Ljava/util/Map;

    move-result-object v0

    .line 10
    invoke-direct {p0}, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {}, Lccsansan/dp/getDownloadingList;->getDownloadingList()Ljava/lang/String;

    move-result-object v5

    .line 12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#LoadAdData url:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "#LoadAdData postData:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v6, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v6}, Lccsansan/bw/ActionTypeReserveApp;->addDownloadListener(Lccsanandroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 15
    invoke-direct {p0, v4}, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    :cond_2
    invoke-static {v4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 18
    const-string v0, "#LoadAdData Failed, postData is null"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 20
    const-string v0, "BUILD"

    const-string v1, "post data is null"

    invoke-interface {p1, v0, v1}, Lccsansan/dt/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v2

    .line 26
    :cond_4
    :try_start_0
    invoke-direct {p0, v5, v0, v4}, Lccsansan/dt/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Lccsansan/x/addDownloadListener;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v1

    const/16 v4, 0xc8

    const-string v5, "Server"

    if-eq v1, v4, :cond_6

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#LoadAdData Failed, StatusCode : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error status code, code ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0}, Lccsansan/dt/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-object v2

    .line 41
    :cond_6
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->addDownloadListener()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 44
    const-string v0, "#LoadAdData Failed ,response content is null"

    invoke-static {v3, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 46
    const-string v0, "response content is null"

    invoke-interface {p1, v5, v0}, Lccsansan/dt/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-object v2

    :cond_8
    nop

    .line 49
    const-string v1, "#LoadAdData success."

    invoke-static {v3, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-interface {p1, v0}, Lccsansan/dt/unifiedDownload;->addDownloadListener(Ljava/lang/String;)V

    return-object v0

    :catch_0
    move-exception v0

    .line 51
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#LoadAdData error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    .line 53
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lccsansan/dt/unifiedDownload;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    return-object v2
.end method

.method private removeDownloadListener()Lccsanorg/json/JSONArray;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsanorg/json/JSONException;
        }
    .end annotation

    .line 11
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    iget-object v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 14
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v4

    invoke-virtual {v4, v3}, Lccsansan/dc/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 15
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 16
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 19
    :cond_1
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 20
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lccsansan/dt/removeDownloadListener;

    .line 21
    iget v4, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    sget-object v5, Lccsansan/dt/getDownloadedCount;->ADVANCE:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v5}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v6

    if-eq v4, v6, :cond_2

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 24
    :cond_2
    iget v4, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    invoke-virtual {v5}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v5

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->resume()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 27
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 30
    :cond_4
    iget-object v4, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v4}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingRecordByUrl:I

    sget-object v6, Lccsansan/dt/getDownloadedCount;->NORMAL:Lccsansan/dt/getDownloadedCount;

    invoke-virtual {v6}, Lccsansan/dt/getDownloadedCount;->getValue()I

    move-result v6

    if-ne v4, v6, :cond_5

    invoke-static {v3}, Lccsansan/bw/removeDownloadListener;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 33
    :cond_5
    new-instance v4, Lccsanorg/json/JSONObject;

    invoke-direct {v4}, Lccsanorg/json/JSONObject;-><init>()V

    .line 34
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "ad_id"

    invoke-virtual {v4, v7, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 35
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->pause()J

    move-result-wide v6

    const-string v8, "modify_time"

    invoke-virtual {v4, v8, v6, v7}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;J)Lccsanorg/json/JSONObject;

    .line 36
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 37
    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "cid"

    invoke-virtual {v4, v7, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 39
    :cond_6
    invoke-direct {p0, v3}, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)I

    move-result v6

    const-string v7, "pre_type"

    invoke-virtual {v4, v7, v6}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 40
    invoke-virtual {v0, v4}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;

    .line 41
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    return-object v0
.end method

.method private unifiedDownload()Ljava/lang/String;
    .locals 6

    .line 2
    const-string v0, "Mads.AdRequest"

    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1}, Lccsanorg/json/JSONObject;-><init>()V

    .line 4
    :try_start_0
    invoke-direct {p0}, Lccsansan/dt/IncentiveDownloadUtils;->IncentiveDownloadUtils()Lccsanorg/json/JSONArray;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2}, Lccsanorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_0

    const-string v3, "reserved_app"

    .line 6
    invoke-virtual {v1, v3, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string v2, "placements"

    .line 8
    :try_start_1
    invoke-direct {p0}, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingList()Lccsanorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "existed_ad"

    .line 9
    :try_start_2
    invoke-direct {p0}, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener()Lccsanorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 10
    iget-object v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v2
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v2, :cond_1

    const-string v2, "force_ad"

    .line 11
    :try_start_3
    invoke-static {}, Lccsansan/di/removeDownloadListener;->unifiedDownload()Lccsansan/di/removeDownloadListener;

    move-result-object v3

    iget-object v4, p0, Lccsansan/dt/IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lccsansan/di/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 13
    :cond_1
    iget-object v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v2}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "new_cache_request"

    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_2
    const-string v2, "layer_config_version"

    .line 16
    :try_start_4
    invoke-static {}, Lccsansan/bw/getErrorCode;->IncentiveSDK()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v2, "rid"

    .line 17
    :try_start_5
    iget-object v3, p0, Lccsansan/dt/IncentiveDownloadUtils;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 19
    iget-object v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    invoke-static {v2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_5
    .catch Lccsanorg/json/JSONException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    if-nez v2, :cond_3

    const-string v2, "bidder"

    .line 20
    :try_start_6
    new-instance v3, Lccsanorg/json/JSONArray;

    iget-object v4, p0, Lccsansan/dt/IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    invoke-direct {v3, v4}, Lccsanorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 22
    :cond_3
    iget-object v2, p0, Lccsansan/dt/IncentiveDownloadUtils;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v2, v1}, Lccsansan/bw/pause;->removeDownloadListener(Lccsanandroid/content/Context;Lccsanorg/json/JSONObject;)V
    :try_end_6
    .catch Lccsanorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 26
    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#createParams jsonException :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_0
    invoke-virtual {v1}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addDownloadListener(Lccsansan/dt/unifiedDownload;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/unifiedDownload;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unifiedDownload(Lccsansan/dt/unifiedDownload;)V
    .locals 2

    .line 2
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 3
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/dt/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p1}, Lccsansan/dt/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/dt/IncentiveDownloadUtils;Lccsansan/dt/unifiedDownload;)V

    const/4 p1, 0x4

    invoke-virtual {v0, v1, p1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;I)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lccsansan/dt/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/unifiedDownload;)Ljava/lang/String;

    :goto_0
    return-void
.end method
