.class public Lccsansan/ck/getDownloadingRecordByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static synthetic $r8$lambda$yLo_cRq7o-V1Dr4EXq88jHKuzWk(Lccsansan/ck/IncentiveDownloadUtils;Ljava/util/List;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lccsansan/ck/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/ck/IncentiveDownloadUtils;Ljava/util/List;Z)V

    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/ck/IncentiveDownloadUtils;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportActionTracker  actionParam :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/ck/IncentiveDownloadUtils;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.ActionUtils"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getMinIntervalToReturn()Ljava/util/List;

    move-result-object v0

    .line 4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 6
    iget v4, p0, Lccsansan/ck/IncentiveDownloadUtils;->deleteDownItem:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "{EFFECT_TYPE}"

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->setAdSize()Ljava/util/List;

    move-result-object v0

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 12
    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 14
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 16
    :cond_2
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportActionTracker  track url is empty :"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    :cond_3
    invoke-static {}, Lccsansan/cy/removeDownloadListener;->addDownloadListener()Lccsansan/cy/removeDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    new-instance v4, Lccsansan/ck/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v2}, Lccsansan/ck/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;-><init>(Lccsansan/ck/IncentiveDownloadUtils;Ljava/util/List;)V

    invoke-virtual {v0, v3, v1, v4}, Lccsansan/cy/removeDownloadListener;->getDownloadingList(Ljava/util/List;Lccsansan/dt/removeDownloadListener;Lccsansan/cy/removeDownloadListener$getDownloadingRecordByUrl;)V

    :cond_4
    return-void
.end method

.method public static IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->setLocalExtras()I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static addDownloadListener(III)I
    .locals 3

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/16 p0, 0x8

    return p0

    :cond_0
    const/4 v1, 0x7

    const/4 v2, 0x2

    if-ne p0, v2, :cond_1

    return v1

    :cond_1
    const/4 p0, -0x2

    if-ne p2, p0, :cond_2

    return p0

    :cond_2
    const/4 p0, -0x3

    if-ne p2, p0, :cond_3

    return p0

    :cond_3
    if-eq p1, v2, :cond_8

    const/4 p0, 0x3

    if-ne p1, p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 p0, 0x6

    if-ne p1, p0, :cond_5

    const/4 p0, 0x4

    return p0

    :cond_5
    if-ne p1, v0, :cond_6

    const/4 p0, 0x5

    return p0

    :cond_6
    if-ne p1, v1, :cond_7

    return p0

    :cond_7
    const/4 p0, -0x1

    return p0

    :cond_8
    :goto_0
    return v0
.end method

.method public static addDownloadListener(Ljava/lang/String;)Z
    .locals 3

    .line 27
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0, v0}, Lccsanandroid/content/Intent;->parseUri(Ljava/lang/String;I)Lccsanandroid/content/Intent;

    move-result-object p0

    const/high16 v1, 0x10000000

    .line 28
    invoke-virtual {p0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    const-string v1, "need_safe"

    .line 29
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Z)Lccsanandroid/content/Intent;

    .line 30
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception p0

    return v0
.end method

.method public static getDownloadingList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;
    .locals 3

    .line 82
    :try_start_0
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0}, Lccsanorg/json/JSONObject;-><init>()V

    const-string v1, "portal"

    const-string v2, "ad"

    .line 83
    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "rid"

    .line 84
    :try_start_1
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "placement_id"

    .line 85
    :try_start_2
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v1, "ad_id"

    .line 86
    :try_start_3
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v1, "cid"

    .line 87
    :try_start_4
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v1, "did"

    .line 88
    :try_start_5
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const-string v1, "sid"

    .line 89
    :try_start_6
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->trackReportClick()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    const-string v1, "cpiparam"

    .line 90
    :try_start_7
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getLoadStatus()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 91
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    if-eqz v1, :cond_0

    const-string v1, "versionCode"

    .line 92
    :try_start_8
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    const-string v1, "versionName"

    .line 93
    :try_start_9
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v2

    invoke-virtual {v2}, Lccsansan/dt/resume;->unifiedDownload()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    const-string v1, "pkg"

    .line 94
    :try_start_a
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;

    .line 96
    :cond_0
    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getMadsBasicMsg exception ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AD.ActionUtils"

    invoke-static {v0, p0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getDownloadingList(Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Z
    .locals 3

    .line 76
    :try_start_0
    new-instance v0, Lccsanandroid/content/Intent;

    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v1

    const-class v2, Lccsancom/san/mads/webview/WebViewActivity;

    invoke-direct {v0, v1, v2}, Lccsanandroid/content/Intent;-><init>(Lccsanandroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 77
    invoke-virtual {v0, v1}, Lccsanandroid/content/Intent;->addFlags(I)Lccsanandroid/content/Intent;

    const-string v1, "url"

    .line 78
    invoke-virtual {v0, v1, p0}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p0, "info"

    .line 79
    invoke-virtual {v0, p0, p2}, Lccsanandroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lccsanandroid/content/Intent;

    const-string p0, "ad"

    .line 80
    invoke-static {p0, p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Ljava/lang/String;Ljava/lang/Object;)V

    .line 81
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsanandroid/content/Context;->startActivity(Lccsanandroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method public static removeDownloadListener(ZZ)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, -0x2

    return p0

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, -0x3

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams;
    .locals 12

    .line 31
    const-string v0, "ad"

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "AD.ActionUtils"

    if-eqz v2, :cond_0

    .line 33
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " productData  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/dt/resume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, " productData   null  "

    .line 35
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_0
    new-instance v5, Lccsancom/san/cpi/xz/AdXzParams$Builder;

    invoke-direct {v5}, Lccsancom/san/cpi/xz/AdXzParams$Builder;-><init>()V

    invoke-virtual {v2}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Lccsansan/dt/resume;->unifiedDownload()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v8

    invoke-virtual {v2}, Lccsansan/dt/resume;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadedRecordByUrl()J

    move-result-wide v10

    invoke-virtual/range {v5 .. v11}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendPkgInfo(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;J)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v2

    .line 38
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object v2

    .line 39
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, p1, v4, v5}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendAdStatsInfos(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getLoadStatus()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendCpiInfo(Ljava/lang/String;Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p1

    .line 41
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {p0}, Lccsansan/cy/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    move-object v3, v1

    :goto_1
    invoke-virtual {p1, v2, p2, v3}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendUrls(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p1

    .line 42
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendDeepLinkUrl(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p1

    .line 43
    invoke-virtual {p1, v0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->appendSubPortal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p1

    .line 44
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result p0

    invoke-virtual {p1, p0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->actionType(I)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->portal(Ljava/lang/String;)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->autoStart(Z)Lccsancom/san/cpi/xz/AdXzParams$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lccsancom/san/cpi/xz/AdXzParams$Builder;->build()Lccsancom/san/cpi/xz/AdXzParams;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    return-object v1
.end method

.method public static removeDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/lang/String;)Lccsansan/p/addDownloadListener$getDownloadingList;
    .locals 6

    .line 45
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lccsansan/p/addDownloadListener$getDownloadingList;

    invoke-direct {v1}, Lccsansan/p/addDownloadListener$getDownloadingList;-><init>()V

    .line 46
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->ActionTypeReserveApp()Lccsansan/dt/resume;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "AD.ActionUtils"

    if-eqz v2, :cond_0

    .line 48
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " productData  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lccsansan/dt/resume;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, " productData   null  "

    .line 50
    invoke-static {v3, v4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :goto_0
    invoke-virtual {v2}, Lccsansan/dt/resume;->removeDownloadListener()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    .line 53
    invoke-virtual {v2}, Lccsansan/dt/resume;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingRecordByUrl:Ljava/lang/String;

    .line 54
    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadStatusByUrl()I

    move-result v3

    iput v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadStatusByUrl:I

    .line 55
    invoke-virtual {v2}, Lccsansan/dt/resume;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->deleteDownItem:Ljava/lang/String;

    .line 56
    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadedRecordByUrl()J

    move-result-wide v3

    iput-wide v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedRecordByUrl:J

    .line 58
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->deleteDownList:Ljava/lang/String;

    .line 59
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadingCount:Ljava/lang/String;

    .line 61
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->resume:Ljava/lang/String;

    .line 62
    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedCount:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->shouldTryHandlingAction:Ljava/lang/String;

    .line 64
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->ActionTypeDetailPage:Ljava/lang/String;

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getThumbPathByRecord()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->trackReportClick:Ljava/lang/String;

    .line 67
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getLoadStatus()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->IncentiveSDK:Ljava/lang/String;

    .line 69
    invoke-virtual {v2}, Lccsansan/dt/resume;->getDownloadedList()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->removeDownloadListener:Ljava/lang/String;

    .line 70
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p0}, Lccsansan/cy/deleteDownList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)[Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v0

    :goto_1
    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->unifiedDownload:[Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdError$ErrorCode()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getThumbPathByRecord:Ljava/lang/String;

    .line 73
    invoke-virtual {p0}, Lccsansan/dt/removeDownloadListener;->AdFormat()I

    move-result p0

    iput p0, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->pause:I

    const-string p0, "ad"

    .line 74
    iput-object p0, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->addDownloadListener:Ljava/lang/String;

    const/4 p0, 0x1

    .line 75
    iput-boolean p0, v1, Lccsansan/p/addDownloadListener$getDownloadingList;->getDownloadedList:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    return-object v0
.end method

.method private static synthetic removeDownloadListener(Lccsansan/ck/IncentiveDownloadUtils;Ljava/util/List;Z)V
    .locals 3

    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "report Action Tracker isMainThread : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lccsansan/bw/toString;->addDownloadListener()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.ActionUtils"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 22
    iget-object v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ReportFailure: insertTrackUrls:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v2}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0, p1}, Lccsancom/san/bridge/addDownloadListener;->addDownloadListener(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)V

    :cond_0
    xor-int/lit8 p1, p2, 0x1

    .line 26
    iget-object p2, p0, Lccsansan/ck/IncentiveDownloadUtils;->addDownloadListener:Lccsansan/dt/removeDownloadListener;

    iget-object v0, p0, Lccsansan/ck/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Ljava/lang/String;

    iget p0, p0, Lccsansan/ck/IncentiveDownloadUtils;->deleteDownItem:I

    invoke-static {p1, p2, v0, p0}, Lccsansan/l/unifiedDownload;->IncentiveDownloadUtils(ILccsansan/dt/removeDownloadListener;Ljava/lang/String;I)V

    return-void
.end method
