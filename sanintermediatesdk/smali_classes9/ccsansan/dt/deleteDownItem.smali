.class public Lccsansan/dt/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/dt/deleteDownItem$getDownloadingList;,
        Lccsansan/dt/deleteDownItem$unifiedDownload;,
        Lccsansan/dt/deleteDownItem$removeDownloadListener;,
        Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;,
        Lccsansan/dt/deleteDownItem$addDownloadListener;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Z

.field private addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public getDownloadingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/dt/deleteDownItem$addDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field public removeDownloadListener:Ljava/lang/String;

.field public unifiedDownload:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/deleteDownItem;->getDownloadingList:Ljava/util/List;

    .line 3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/dt/deleteDownItem;->IncentiveDownloadUtils:Z

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lccsansan/dt/deleteDownItem;->addDownloadListener:Ljava/util/List;

    .line 7
    new-instance v0, Lccsanorg/json/JSONObject;

    invoke-direct {v0, p1}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 8
    const-string p1, "title"

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/deleteDownItem;->unifiedDownload:Ljava/lang/String;

    .line 9
    const-string p1, "page_model"

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsansan/dt/deleteDownItem;->removeDownloadListener:Ljava/lang/String;

    .line 10
    const-string p1, "items"

    invoke-virtual {v0, p1}, Lccsanorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lccsanorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    .line 13
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lccsanorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 14
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsanorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 15
    new-instance v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONObject(I)Lccsanorg/json/JSONObject;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;-><init>(Lccsanorg/json/JSONObject;)V

    .line 16
    iget-object v2, p0, Lccsansan/dt/deleteDownItem;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_0
    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lccsanorg/json/JSONArray;

    if-eqz v1, :cond_1

    .line 18
    new-instance v1, Lccsansan/dt/deleteDownItem$removeDownloadListener;

    invoke-virtual {p1, v0}, Lccsanorg/json/JSONArray;->getJSONArray(I)Lccsanorg/json/JSONArray;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/dt/deleteDownItem$removeDownloadListener;-><init>(Lccsanorg/json/JSONArray;)V

    .line 19
    iget-object v2, p0, Lccsansan/dt/deleteDownItem;->getDownloadingList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 25
    :cond_2
    invoke-direct {p0}, Lccsansan/dt/deleteDownItem;->addDownloadListener()V

    return-void
.end method

.method private addDownloadListener()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/dt/deleteDownItem;->getDownloadingList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/dt/deleteDownItem$addDownloadListener;

    .line 2
    instance-of v2, v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    if-eqz v2, :cond_1

    .line 3
    iget-object v2, p0, Lccsansan/dt/deleteDownItem;->addDownloadListener:Ljava/util/List;

    check-cast v1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-direct {p0, v1}, Lccsansan/dt/deleteDownItem;->unifiedDownload(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 4
    :cond_1
    instance-of v2, v1, Lccsansan/dt/deleteDownItem$removeDownloadListener;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Lccsansan/dt/deleteDownItem$removeDownloadListener;

    .line 6
    iget-object v1, v1, Lccsansan/dt/deleteDownItem$removeDownloadListener;->removeDownloadListener:Ljava/util/List;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 8
    iget-object v3, p0, Lccsansan/dt/deleteDownItem;->addDownloadListener:Ljava/util/List;

    invoke-direct {p0, v2}, Lccsansan/dt/deleteDownItem;->unifiedDownload(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static getDownloadingList(Ljava/lang/String;)Lccsansan/dt/deleteDownItem;
    .locals 2

    .line 1
    invoke-static {p0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    :try_start_0
    new-instance v0, Lccsansan/dt/deleteDownItem;

    invoke-direct {v0, p0}, Lccsansan/dt/deleteDownItem;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 7
    const-string p0, "AD.LandingPageData"

    const-string v0, "LandingPageData error "

    invoke-static {p0, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private unifiedDownload(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    iget-object v1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->deleteDownItem:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :cond_0
    invoke-static {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 21
    invoke-static {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_1
    iget-object p1, p1, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingCount:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/dt/deleteDownItem$unifiedDownload;

    .line 23
    invoke-static {v1}, Lccsansan/dt/deleteDownItem$unifiedDownload;->addDownloadListener(Lccsansan/dt/deleteDownItem$unifiedDownload;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 2

    .line 8
    :try_start_0
    iget-object v0, p0, Lccsansan/dt/deleteDownItem;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 9
    invoke-static {v1}, Lccsansan/cv/getDownloadStatusByUrl;->unifiedDownload(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lccsansan/dt/deleteDownItem;->IncentiveDownloadUtils:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p0, Lccsansan/dt/deleteDownItem;->IncentiveDownloadUtils:Z

    .line 16
    :cond_1
    :goto_0
    iget-boolean v0, p0, Lccsansan/dt/deleteDownItem;->IncentiveDownloadUtils:Z

    return v0
.end method

.method public removeDownloadListener()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lccsansan/dt/deleteDownItem;->IncentiveDownloadUtils:Z

    return v0
.end method

.method public unifiedDownload()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/dt/deleteDownItem;->addDownloadListener:Ljava/util/List;

    return-object v0
.end method
