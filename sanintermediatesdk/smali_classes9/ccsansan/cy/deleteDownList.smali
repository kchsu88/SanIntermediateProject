.class public Lccsansan/cy/deleteDownList;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/cy/deleteDownList$addDownloadListener;
    }
.end annotation


# direct methods
.method public static IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 73
    :try_start_0
    invoke-static {p0}, Lccsanandroid/net/Uri;->parse(Ljava/lang/String;)Lccsanandroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Lccsanandroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AD.TrackUrl"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "unKnown"

    :goto_0
    return-object p0
.end method

.method public static IncentiveDownloadUtils(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsansan/cy/pause;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 15
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 18
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 19
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 21
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 24
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\\["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\\]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 25
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 28
    :cond_2
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p0

    new-instance p3, Lccsansan/cy/deleteDownList$IncentiveDownloadUtils;

    invoke-direct {p3, v0, p1, p2}, Lccsansan/cy/deleteDownList$IncentiveDownloadUtils;-><init>(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public static addDownloadListener(Ljava/util/List;ILjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "{PLAYDURATION}"

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    sget-object p0, Lccsansan/cy/pause;->VIDEO:Lccsansan/cy/pause;

    invoke-static {v0, p0, p2}, Lccsansan/cy/deleteDownList;->addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    return-void
.end method

.method public static addDownloadListener(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsansan/cy/pause;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 8
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cy/deleteDownList$unifiedDownload;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/cy/deleteDownList$unifiedDownload;-><init>(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static addDownloadListener(Lccsansan/dt/removeDownloadListener;)[Ljava/lang/String;
    .locals 1

    .line 76
    invoke-static {p0}, Lccsansan/cy/deleteDownList;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Ljava/util/List;

    move-result-object p0

    .line 77
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;ILjava/lang/String;)Z
    .locals 6

    .line 30
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lccsansan/cy/deleteDownList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;IILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;Ljava/lang/String;)Z
    .locals 1

    .line 29
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0, p3}, Lccsansan/cy/deleteDownList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private static removeDownloadListener(Lccsansan/dt/removeDownloadListener;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setAdSize()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setAdFormat()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getMinIntervalToStart()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setAdFormat()Ljava/util/List;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    return-object v0
.end method

.method public static unifiedDownload(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;Lccsansan/cy/deleteDownList$addDownloadListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lccsansan/cy/pause;",
            "Ljava/lang/String;",
            "Lccsansan/cy/deleteDownList$addDownloadListener;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1

    .line 11
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 14
    :cond_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cy/deleteDownList$getDownloadingList;

    invoke-direct {v1, p0, p1, p2, p3}, Lccsansan/cy/deleteDownList$getDownloadingList;-><init>(Ljava/util/List;Lccsansan/cy/pause;Ljava/lang/String;Lccsansan/cy/deleteDownList$addDownloadListener;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static unifiedDownload(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;IILjava/lang/String;)Z
    .locals 25

    .line 31
    move/from16 v10, p3

    const-string v0, "market://"

    invoke-static/range {p0 .. p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_0

    return v11

    .line 34
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 35
    invoke-static/range {p0 .. p0}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 38
    const/4 v15, 0x1

    :try_start_0
    invoke-static {v14}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 39
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->getDownloadingList()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 40
    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "https://play.google.com/store/apps/"

    .line 41
    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    goto :goto_0

    .line 43
    :cond_1
    invoke-static {v14}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v3, "gp_detail"

    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v12

    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v7, p5

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    return v15

    .line 46
    :cond_2
    invoke-static {v14}, Lccsansan/bw/getAdFormat;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 47
    invoke-static {v14}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const-string v3, "deeplink"

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v5, v0, v12

    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v7, p5

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    return v15

    .line 51
    :cond_3
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "User-Agent"

    .line 52
    move-object/from16 v9, p1

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v16, "TrackHelper"

    const/16 v19, 0x0

    .line 53
    :try_start_3
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->getDownloadingRecordByUrl()I

    move-result v20

    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->getDownloadStatusByUrl()I

    move-result v21

    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->deleteDownItem()Z

    move-result v22

    move-object/from16 v17, v14

    move-object/from16 v18, v0

    invoke-static/range {v16 .. v22}, Lccsansan/bw/getAdFormat;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;IIZ)Lccsansan/x/addDownloadListener;

    move-result-object v0

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v5, v1, v12

    .line 55
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v1

    const/16 v2, 0x12e

    if-ne v1, v2, :cond_7

    .line 56
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->getDownloadingList()Ljava/util/Map;

    move-result-object v0

    const-string v1, "Location"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 57
    invoke-static {v14}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    const-string v3, "redirect"

    :try_start_4
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v8, v1, 0x1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v7, p5

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_6

    .line 58
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1, v14}, Lccsanandroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    add-int/lit8 v7, v10, 0x1

    const/16 v1, 0xa

    if-lt v10, v1, :cond_5

    return v11

    .line 64
    :cond_5
    :try_start_5
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v7

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-static/range {v1 .. v6}, Lccsansan/cy/deleteDownList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Lccsansan/cy/pause;IILjava/lang/String;)Z

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    return v0

    .line 66
    :catch_0
    move-exception v0

    move v10, v7

    goto :goto_2

    .line 64
    :cond_6
    :goto_1
    return v11

    .line 65
    :cond_7
    :try_start_6
    invoke-virtual {v0}, Lccsansan/x/addDownloadListener;->removeDownloadListener()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_9

    .line 66
    invoke-static {v14}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v3, "success"

    :try_start_7
    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v8, v0, 0x1

    move-object/from16 v1, p2

    move/from16 v4, p3

    move-object/from16 v7, p5

    move-object v9, v14

    invoke-static/range {v1 .. v9}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return v15

    :catch_1
    move-exception v0

    :goto_2
    move-object/from16 v24, v14

    if-eqz p4, :cond_8

    add-int/lit8 v1, p4, -0x1

    if-ne v10, v1, :cond_9

    .line 71
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long v20, v1, v12

    .line 72
    invoke-static/range {v24 .. v24}, Lccsansan/cy/deleteDownList;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {p1 .. p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v23, v0, 0x1

    move-object/from16 v16, p2

    move/from16 v19, v10

    move-object/from16 v22, p5

    invoke-static/range {v16 .. v24}, Lccsansan/l/IncentiveDownloadUtils;->getDownloadingList(Lccsansan/cy/pause;Ljava/lang/String;Ljava/lang/String;IJLjava/lang/String;ZLjava/lang/String;)V

    :cond_9
    return v11
.end method
