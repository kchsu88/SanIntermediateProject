.class public Lccsancom/san/bridge/ExServiceImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/bridge/unifiedDownload;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Lccsansan/w/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lccsansan/az/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/az/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/az/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsanorg/json/JSONArray;)V
    .locals 0

    .line 9
    invoke-static {p1}, Lccsansan/ay/removeDownloadListener;->getDownloadingList(Lccsanorg/json/JSONArray;)V

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z
    .locals 0

    .line 8
    invoke-static {p1, p2, p3, p4}, Lccsansan/ay/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;ZLjava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p1}, Lccsansan/w/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lccsansan/az/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;)Lccsansan/az/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/az/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-static {p1, p2, p3}, Lccsansan/aj/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDownloadingList(Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-static {p1}, Lccsancom/san/api/ActionSdkInitProxy;->collectNetAndWakeUp(Ljava/lang/String;)V

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I
    .locals 2

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "layout"

    :try_start_1
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p2, v1, p1}, Lccsanandroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#getResourceId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 5
    invoke-static {p1}, Lccsansan/w/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public removeDownloadListener()V
    .locals 0

    .line 6
    invoke-static {}, Lccsansan/ay/getDownloadingList;->getDownloadingList()V

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;)Z
    .locals 1

    .line 4
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/as/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 2
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lccsansan/as/getDownloadingList;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public unifiedDownload(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 7
    invoke-static {p1}, Lccsansan/w/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unifiedDownload()Lccsanorg/json/JSONArray;
    .locals 6

    .line 6
    new-instance v0, Lccsanorg/json/JSONArray;

    invoke-direct {v0}, Lccsanorg/json/JSONArray;-><init>()V

    .line 7
    invoke-static {}, Lccsansan/as/getDownloadingList;->removeDownloadListener()Lccsansan/as/getDownloadingList;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/as/getDownloadingList;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 8
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ltz v2, :cond_1

    .line 9
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/aj/getDownloadingList;

    .line 10
    iget-object v3, v2, Lccsansan/aj/getDownloadingList;->removeDownloadListener:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 11
    sget-object v3, Lccsancom/san/bridge/ExServiceImpl$IncentiveDownloadUtils;->IncentiveDownloadUtils:[I

    iget-object v4, v2, Lccsansan/aj/getDownloadingList;->getDownloadingList:Lccsansan/aj/getDownloadingList$IncentiveDownloadUtils;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 20
    :try_start_0
    new-instance v3, Lccsanorg/json/JSONObject;

    invoke-direct {v3}, Lccsanorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lccsanorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "package_name"

    .line 21
    :try_start_1
    iget-object v5, v2, Lccsansan/aj/getDownloadingList;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_1
    .catch Lccsanorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "md5sum"

    .line 22
    :try_start_2
    iget-object v5, v2, Lccsansan/aj/getDownloadingList;->resolveUrl:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lccsanorg/json/JSONObject;
    :try_end_2
    .catch Lccsanorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v4, "cid"

    .line 23
    :try_start_3
    iget-object v5, v2, Lccsansan/aj/getDownloadingList;->unifiedDownload:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;
    :try_end_3
    .catch Lccsanorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    const-string v4, "ad_id"

    .line 24
    :try_start_4
    iget-object v2, v2, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v3, v4, v2}, Lccsanorg/json/JSONObject;->put(Ljava/lang/String;I)Lccsanorg/json/JSONObject;

    .line 25
    invoke-virtual {v0, v3}, Lccsanorg/json/JSONArray;->put(Ljava/lang/Object;)Lccsanorg/json/JSONArray;
    :try_end_4
    .catch Lccsanorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0

    :cond_1
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
