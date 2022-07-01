.class public Lccsansan/aq/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final getDownloadingList:Z

.field private final removeDownloadListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected unifiedDownload:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lccsansan/bm/removeDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsansan/aq/getDownloadingList;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    .line 3
    iput-boolean p2, p0, Lccsansan/aq/getDownloadingList;->getDownloadingList:Z

    .line 4
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lccsansan/aq/getDownloadingList;->unifiedDownload:Ljava/util/HashMap;

    return-void
.end method

.method private getDownloadingList(Lccsansan/bm/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;
    .locals 9

    .line 51
    iget-object v0, p0, Lccsansan/aq/getDownloadingList;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 54
    :try_start_0
    invoke-static {p4}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lccsanorg/json/JSONObject;

    invoke-direct {v1, p4}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v7, v1

    goto :goto_1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception p4

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#exec exception ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Lccsanorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "ActionManager"

    invoke-static {v1, p4}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :goto_0
    move-object v7, v0

    :goto_1
    iget-object p4, p0, Lccsansan/aq/getDownloadingList;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {p4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p4

    move-object v3, p4

    check-cast v3, Lccsanandroid/content/Context;

    move-object v2, p1

    move-object v4, p2

    move v5, p5

    move-object v6, p3

    move-object v8, p6

    invoke-interface/range {v2 .. v8}, Lccsansan/bm/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;ILjava/lang/String;Lccsanorg/json/JSONObject;Lccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "context is null"

    return-object p1
.end method

.method private getDownloadingList(Lccsansan/aq/getDownloadingList;ZLjava/lang/String;)V
    .locals 2

    .line 41
    invoke-static {}, Lccsansan/ba/removeDownloadListener;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/bm/addDownloadListener;

    if-eqz v1, :cond_0

    .line 45
    invoke-interface {v1, p1, p2, p3}, Lccsansan/bm/addDownloadListener;->unifiedDownload(Lccsansan/aq/getDownloadingList;ZLjava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private unifiedDownload()V
    .locals 2

    .line 46
    invoke-static {}, Lccsansan/ba/removeDownloadListener;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v0

    .line 48
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/bm/addDownloadListener;

    if-eqz v1, :cond_0

    .line 50
    invoke-interface {v1}, Lccsansan/bm/addDownloadListener;->unifiedDownload()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/bm/removeDownloadListener;
    .locals 1

    .line 40
    iget-object v0, p0, Lccsansan/aq/getDownloadingList;->unifiedDownload:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/bm/removeDownloadListener;

    return-object p1
.end method

.method public IncentiveDownloadUtils()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsansan/aq/getDownloadingList;->unifiedDownload()V

    .line 2
    iget-object v0, p0, Lccsansan/aq/getDownloadingList;->unifiedDownload:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public addDownloadListener(ZLjava/lang/String;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/aq/getDownloadingList;->removeDownloadListener:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, p0, p1, p2}, Lccsansan/aq/getDownloadingList;->getDownloadingList(Lccsansan/aq/getDownloadingList;ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/getDownloadingList;Lccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;
    .locals 11

    .line 4
    move-object v8, p0

    move-object v0, p2

    move/from16 v9, p5

    move-object/from16 v10, p7

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v2, 0x1

    aput-object p4, v1, v2

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "ActionManager"

    const-string v4, "actionName = %s, jsonParam = %s, exeType = %s"

    invoke-static {v2, v4, v1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 7
    :try_start_0
    invoke-virtual {p0, p2}, Lccsansan/aq/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)Lccsansan/bm/removeDownloadListener;

    move-result-object v2

    if-nez v2, :cond_1

    .line 9
    iget-boolean v1, v8, Lccsansan/aq/getDownloadingList;->getDownloadingList:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v1, :cond_2

    if-nez p6, :cond_0

    const-string v0, "-3"

    goto :goto_2

    .line 14
    :cond_0
    :try_start_1
    new-instance v7, Lccsansan/aq/getDownloadingList$getDownloadingList;

    invoke-direct {v7, p0, v10}, Lccsansan/aq/getDownloadingList$getDownloadingList;-><init>(Lccsansan/aq/getDownloadingList;Lccsansan/bm/getDownloadingRecordByUrl;)V

    move-object/from16 v1, p6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    invoke-interface/range {v1 .. v7}, Lccsansan/an/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Lccsanandroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 29
    :cond_1
    :try_start_2
    invoke-interface {v2}, Lccsansan/bm/removeDownloadListener;->IncentiveDownloadUtils()I

    move-result v0

    if-eq v0, v3, :cond_3

    invoke-interface {v2}, Lccsansan/bm/removeDownloadListener;->IncentiveDownloadUtils()I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-ne v0, v9, :cond_2

    goto :goto_0

    .line 14
    :cond_2
    const-string v0, "-1"

    goto :goto_2

    .line 30
    :cond_3
    :goto_0
    move-object v1, p0

    move-object v3, p1

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p7

    :try_start_3
    invoke-direct/range {v1 .. v7}, Lccsansan/aq/getDownloadingList;->getDownloadingList(Lccsansan/bm/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object v0

    :catch_1
    move-exception v0

    :goto_1
    const-string v0, "-5"

    .line 39
    :goto_2
    invoke-static {v0}, Lccsansan/aq/unifiedDownload;->getDownloadingList(Ljava/lang/String;)Lccsanorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lccsanorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, p3

    invoke-static {v9, p3, v10, v0}, Lccsansan/aq/unifiedDownload;->unifiedDownload(ILjava/lang/String;Lccsansan/bm/getDownloadingRecordByUrl;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unifiedDownload(Z)V
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lccsansan/aq/getDownloadingList;->addDownloadListener(ZLjava/lang/String;)V

    return-void
.end method
