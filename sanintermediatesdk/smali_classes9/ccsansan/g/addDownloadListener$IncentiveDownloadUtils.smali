.class Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/g/addDownloadListener;->addDownloadListener(Lccsansan/bw/getDownloadingCount;ILjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/bw/getDownloadingCount;

.field final synthetic getDownloadingList:Ljava/util/List;

.field final synthetic removeDownloadListener:Ljava/util/List;

.field final synthetic unifiedDownload:I


# direct methods
.method constructor <init>(Lccsansan/g/addDownloadListener;Ljava/lang/String;Ljava/util/List;Lccsansan/bw/getDownloadingCount;ILjava/util/List;)V
    .locals 0

    .line 1
    iput-object p3, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    iput-object p4, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/bw/getDownloadingCount;

    iput p5, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:I

    iput-object p6, p0, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/List;

    invoke-direct {p0, p2}, Lccsancom/san/ads/Task;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 27

    .line 1
    move-object/from16 v8, p0

    const-string v9, "_"

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    const-string v10, "advance_get_ads"

    invoke-static {v0, v10}, Lccsansan/v/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 2
    iget-object v0, v8, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ljava/util/List;

    .line 4
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    .line 5
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 6
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    :cond_0
    const-string v1, "Advance.Manager"

    .line 9
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-------start request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v15

    .line 11
    new-instance v1, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, v8, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->addDownloadListener:Lccsansan/bw/getDownloadingCount;

    invoke-direct {v1, v2, v12, v3}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsanandroid/content/Context;Ljava/util/List;Lccsansan/bw/getDownloadingCount;)V

    iget v2, v8, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:I

    .line 12
    invoke-virtual {v1, v2}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener(I)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    move-result-object v1

    iget v2, v8, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->unifiedDownload:I

    .line 13
    invoke-static {v2}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList(I)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    move-result-object v1

    .line 14
    invoke-static {}, Lccsansan/cz/unifiedDownload;->deleteDownList()I

    move-result v2

    invoke-static {}, Lccsansan/cz/unifiedDownload;->trackReportClick()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->removeDownloadListener(II)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    move-result-object v1

    .line 15
    invoke-virtual {v1, v15}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->getDownloadingList(Ljava/lang/String;)Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;

    move-result-object v1

    .line 16
    invoke-virtual {v1}, Lccsansan/dt/IncentiveDownloadUtils$getDownloadingList;->IncentiveDownloadUtils()Lccsansan/dt/IncentiveDownloadUtils;

    move-result-object v7

    new-instance v6, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v6

    move-object/from16 v2, p0

    move-wide v3, v13

    move-object v5, v15

    move-object/from16 v26, v11

    move-object v11, v6

    move-object v6, v12

    move-object/from16 v16, v15

    move-object v15, v7

    move-object v7, v0

    :try_start_2
    invoke-direct/range {v1 .. v7}, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$unifiedDownload;-><init>(Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;JLjava/lang/String;Ljava/util/List;Ljava/lang/StringBuffer;)V

    .line 17
    invoke-virtual {v15, v11}, Lccsansan/dt/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/dt/unifiedDownload;)Ljava/lang/String;

    move-result-object v1

    .line 48
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    .line 51
    :cond_1
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3, v1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v23, v1, v13

    .line 53
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Z

    move-result v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    if-eqz v1, :cond_2

    const-string v1, "true"

    const-string v17, ""

    const-string v18, ""

    .line 54
    :try_start_3
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0xc8

    const-string v22, ""

    const-string v25, "advance"

    move-object/from16 v5, v16

    move-object v15, v5

    move-object/from16 v16, v1

    invoke-static/range {v15 .. v25}, Lccsansan/s/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;JLjava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v5, v16

    const/4 v15, 0x1

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v19, 0x1

    const/16 v20, 0xc8

    const-string v21, ""

    const-string v22, "advance"

    move-object/from16 v17, v5

    move-object/from16 v18, v5

    invoke-static/range {v15 .. v24}, Lccsansan/bn/getDownloadingRecordByUrl;->addDownloadListener(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Ljava/lang/String;J)V

    .line 58
    :goto_2
    iget-object v0, v8, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    const/4 v6, 0x1

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    const/4 v6, 0x0

    .line 59
    :goto_3
    iget-object v2, v8, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;->removeDownloadListener:Ljava/util/List;

    sget-object v4, Lccsansan/dt/IncentiveSDK;->ADVANCE:Lccsansan/dt/IncentiveSDK;

    new-instance v7, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v7, v8, v12}, Lccsansan/g/addDownloadListener$IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/g/addDownloadListener$IncentiveDownloadUtils;Ljava/util/List;)V

    invoke-static/range {v2 .. v7}, Lccsansan/di/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;Lccsanorg/json/JSONObject;Lccsansan/dt/IncentiveSDK;Ljava/lang/String;ZLccsansan/di/IncentiveDownloadUtils$addDownloadListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-object/from16 v11, v26

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v26, v11

    .line 66
    :goto_4
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 67
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    .line 70
    :cond_4
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lccsansan/bn/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    move-object/from16 v11, v26

    goto/16 :goto_0

    .line 73
    :cond_5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, v10}, Lccsansan/v/IncentiveDownloadUtils;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
