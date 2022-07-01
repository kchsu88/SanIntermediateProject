.class final Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/di/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;Lccsanorg/json/JSONObject;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;ZLccsansan/di/IncentiveDownloadUtils$addDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/dt/IncentiveSDK;

.field final synthetic addDownloadListener:Z

.field final synthetic deleteDownItem:Lccsansan/di/IncentiveDownloadUtils$addDownloadListener;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic removeDownloadListener:Ljava/util/List;

.field final synthetic unifiedDownload:Lccsanorg/json/JSONObject;


# direct methods
.method constructor <init>(Ljava/lang/String;Lccsanorg/json/JSONObject;Ljava/util/List;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;ZLccsansan/di/IncentiveDownloadUtils$addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:Lccsanorg/json/JSONObject;

    iput-object p3, p0, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/util/List;

    iput-object p4, p0, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dt/IncentiveSDK;

    iput-object p5, p0, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    iput-boolean p6, p0, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Z

    iput-object p7, p0, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->deleteDownItem:Lccsansan/di/IncentiveDownloadUtils$addDownloadListener;

    invoke-direct {p0, p1}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 22

    .line 1
    move-object/from16 v1, p0

    const-string v0, "pos_ids"

    const-string v2, "MadsDataHelper"

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 4
    iget-object v6, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:Lccsanorg/json/JSONObject;

    const-string v7, "placements"

    invoke-virtual {v6, v7}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v6

    const/4 v8, 0x0

    :goto_0
    if-eqz v6, :cond_0

    .line 5
    invoke-virtual {v6}, Lccsanorg/json/JSONArray;->length()I

    move-result v9

    goto :goto_1

    :cond_0
    const/4 v9, 0x0

    :goto_1
    if-ge v8, v9, :cond_11

    .line 6
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v9

    const-string v10, "pos_id"

    .line 7
    invoke-virtual {v9, v10}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 8
    invoke-virtual {v6, v8}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v11

    const-string v12, "ads"

    invoke-virtual {v11, v12}, Lccsanorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v11

    .line 10
    iget-object v12, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->unifiedDownload:Lccsanorg/json/JSONObject;

    const-string v13, "update_reservation"

    invoke-virtual {v12, v13}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v12

    if-eqz v12, :cond_1

    .line 11
    invoke-virtual {v12}, Lccsanorg/json/JSONArray;->length()I

    move-result v13

    if-eqz v13, :cond_1

    .line 12
    invoke-static {v12}, Lccsancom/san/bridge/getDownloadingList;->getDownloadingList(Lccsanorg/json/JSONArray;)V

    :cond_1
    const/4 v12, 0x0

    const/4 v13, 0x0

    .line 15
    :goto_2
    invoke-virtual {v11}, Lccsanorg/json/JSONArray;->length()I

    move-result v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v15, "ad_id"

    if-ge v12, v14, :cond_e

    .line 16
    :try_start_1
    invoke-virtual {v11, v12}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v14

    .line 17
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 18
    invoke-virtual {v14, v0}, Lccsanorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16

    move-object/from16 v17, v6

    if-eqz v16, :cond_8

    .line 19
    invoke-virtual {v14, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 20
    invoke-virtual {v6}, Lccsanorg/json/JSONArray;->length()I

    move-result v18

    if-lez v18, :cond_6

    .line 21
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_2

    move-object/from16 v18, v0

    const/4 v0, 0x0

    .line 22
    :goto_3
    move-object/from16 v19, v11

    invoke-virtual {v6}, Lccsanorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_9

    .line 23
    invoke-virtual {v6, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v11, v19

    goto :goto_3

    :cond_2
    move-object/from16 v18, v0

    move-object/from16 v19, v11

    const/4 v0, 0x0

    .line 27
    :goto_4
    invoke-virtual {v6}, Lccsanorg/json/JSONArray;->length()I

    move-result v11

    if-ge v0, v11, :cond_5

    .line 28
    invoke-static {}, Lccsansan/cz/unifiedDownload;->performAction()Z

    move-result v11

    if-eqz v11, :cond_3

    iget-object v11, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/util/List;

    if-eqz v11, :cond_3

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_3

    .line 29
    iget-object v11, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener:Ljava/util/List;

    invoke-virtual {v6, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 30
    invoke-virtual {v6, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 33
    :cond_3
    invoke-virtual {v6, v0}, Lccsanorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    :goto_5
    nop

    .line 33
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v13, 0x1

    goto :goto_6

    .line 20
    :cond_6
    move-object/from16 v18, v0

    move-object/from16 v19, v11

    goto :goto_6

    .line 19
    :cond_7
    move-object/from16 v18, v0

    move-object/from16 v19, v11

    goto :goto_6

    .line 18
    :cond_8
    move-object/from16 v18, v0

    move-object/from16 v19, v11

    .line 40
    :cond_9
    :goto_6
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 41
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_a
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 44
    new-instance v11, Lccsansan/dt/removeDownloadListener;

    move-object/from16 v20, v0

    const/4 v0, 0x1

    invoke-direct {v11, v14, v0, v0}, Lccsansan/dt/removeDownloadListener;-><init>(Lccsanorg/json/JSONObject;ZZ)V

    .line 45
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad()Z

    move-result v16

    if-nez v16, :cond_b

    move-object/from16 v0, v20

    goto :goto_7

    .line 47
    :cond_b
    invoke-virtual {v11, v6}, Lccsansan/dt/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 48
    iget-object v0, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils:Lccsansan/dt/IncentiveSDK;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lccsansan/dt/removeDownloadListener;->getDownloadStatusByUrl(Ljava/lang/String;)V

    .line 49
    iget-object v0, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList:Ljava/lang/String;

    invoke-virtual {v11, v0}, Lccsansan/dt/removeDownloadListener;->deleteDownItem(Ljava/lang/String;)V

    .line 50
    new-instance v0, Lccsanandroid/util/Pair;

    move/from16 v21, v8

    invoke-virtual {v14}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v11, v8}, Lccsanandroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 51
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-virtual {v11}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adData.placementId = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move/from16 v8, v21

    goto :goto_7

    :cond_c
    move/from16 v21, v8

    if-eqz v13, :cond_d

    .line 55
    iget-boolean v0, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->addDownloadListener:Z

    if-nez v0, :cond_d

    .line 56
    invoke-virtual {v14, v15}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    .line 58
    invoke-interface {v6, v7}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 59
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lccsansan/dc/getDownloadingList;->unifiedDownload(Ljava/util/List;Ljava/lang/String;)V

    .line 60
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_d

    .line 61
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleResponseAdCache need remove adId: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  posIds : "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v6, v17

    move-object/from16 v0, v18

    move-object/from16 v11, v19

    move/from16 v8, v21

    goto/16 :goto_2

    .line 65
    :cond_e
    move-object/from16 v18, v0

    move-object/from16 v17, v6

    move/from16 v21, v8

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "play_queue"

    .line 66
    invoke-virtual {v9, v0}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 68
    new-instance v6, Lccsansan/dt/getDownloadingRecordByUrl;

    invoke-direct {v6}, Lccsansan/dt/getDownloadingRecordByUrl;-><init>()V

    .line 69
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v8

    .line 70
    invoke-virtual {v6, v10}, Lccsansan/dt/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0}, Lccsanorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lccsansan/dt/getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v8, v15}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    const-string v0, "cid"

    .line 73
    invoke-virtual {v8, v0}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Lccsansan/dt/getDownloadingRecordByUrl;->removeDownloadListener(Ljava/lang/String;)V

    .line 74
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload(I)V

    .line 75
    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "placementId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "; queue = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lccsansan/dt/getDownloadingRecordByUrl;->unifiedDownload()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 66
    :cond_f
    const/4 v0, 0x0

    goto :goto_8

    .line 65
    :cond_10
    const/4 v0, 0x0

    .line 76
    :goto_8
    add-int/lit8 v8, v21, 0x1

    move-object/from16 v6, v17

    move-object/from16 v0, v18

    goto/16 :goto_0

    .line 80
    :cond_11
    invoke-static {v4, v5}, Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Ljava/util/List;Ljava/util/List;)V

    .line 81
    iget-object v0, v1, Lccsansan/di/IncentiveDownloadUtils$getDownloadingList;->deleteDownItem:Lccsansan/di/IncentiveDownloadUtils$addDownloadListener;

    if-eqz v0, :cond_12

    .line 82
    invoke-interface {v0, v3}, Lccsansan/di/IncentiveDownloadUtils$addDownloadListener;->addDownloadListener(Ljava/util/List;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_9

    :catch_0
    move-exception v0

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#handleResponseAdCache exception="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_9
    return-void
.end method
