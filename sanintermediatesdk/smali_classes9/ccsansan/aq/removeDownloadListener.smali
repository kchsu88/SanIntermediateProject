.class public final Lccsansan/aq/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private addDownloadListener:Lccsansan/bm/getDownloadingRecordByUrl;

.field private getDownloadedRecordByUrl:Lccsansan/an/getDownloadingList;

.field private getDownloadingList:Lccsansan/aq/getDownloadingList;

.field private removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

.field private final unifiedDownload:Lccsanandroid/os/Handler;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsansan/ba/IncentiveDownloadUtils;Lccsansan/bm/getDownloadingRecordByUrl;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Lccsansan/ba/IncentiveDownloadUtils;",
            "Lccsansan/bm/getDownloadingRecordByUrl;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-direct {v0}, Lccsanandroid/os/Handler;-><init>()V

    iput-object v0, p0, Lccsansan/aq/removeDownloadListener;->unifiedDownload:Lccsanandroid/os/Handler;

    .line 10
    iput-object p2, p0, Lccsansan/aq/removeDownloadListener;->removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

    .line 11
    iput-object p3, p0, Lccsansan/aq/removeDownloadListener;->addDownloadListener:Lccsansan/bm/getDownloadingRecordByUrl;

    .line 12
    iput-object p4, p0, Lccsansan/aq/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/Map;

    .line 13
    new-instance p2, Lccsansan/aq/getDownloadingList;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lccsansan/aq/getDownloadingList;-><init>(Lccsanandroid/content/Context;Z)V

    iput-object p2, p0, Lccsansan/aq/removeDownloadListener;->getDownloadingList:Lccsansan/aq/getDownloadingList;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/aq/removeDownloadListener;)Lccsansan/bm/getDownloadingRecordByUrl;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/aq/removeDownloadListener;->addDownloadListener:Lccsansan/bm/getDownloadingRecordByUrl;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsansan/aq/removeDownloadListener;)Lccsansan/aq/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadingList:Lccsansan/aq/getDownloadingList;

    return-object p0
.end method

.method private getDownloadingList()Lccsansan/an/getDownloadingList;
    .locals 2

    .line 6
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/an/getDownloadingList;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v0, v1}, Lccsansan/ba/IncentiveDownloadUtils;->getDownloadingList(I)Lccsanandroid/os/IBinder;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lccsansan/an/getDownloadingList$getDownloadingList;->getDownloadingList(Lccsanandroid/os/IBinder;)Lccsansan/an/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/an/getDownloadingList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 11
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :cond_0
    :goto_0
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadedRecordByUrl:Lccsansan/an/getDownloadingList;

    return-object v0
.end method

.method static synthetic removeDownloadListener(Lccsansan/aq/removeDownloadListener;)Lccsansan/an/getDownloadingList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/aq/removeDownloadListener;->getDownloadingList()Lccsansan/an/getDownloadingList;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public asyncInvoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->unifiedDownload:Lccsanandroid/os/Handler;

    new-instance v7, Lccsansan/aq/removeDownloadListener$addDownloadListener;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lccsansan/aq/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/aq/removeDownloadListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lccsanandroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public inject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    :try_start_0
    new-instance p1, Lccsanorg/json/JSONObject;

    invoke-direct {p1, p2}, Lccsanorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lccsansan/aq/unifiedDownload;->unifiedDownload(Lccsanorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 5
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->IncentiveDownloadUtils:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Hybrid"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public syncInvoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .annotation runtime Lccsanandroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadingList:Lccsansan/aq/getDownloadingList;

    invoke-direct {p0}, Lccsansan/aq/removeDownloadListener;->getDownloadingList()Lccsansan/an/getDownloadingList;

    move-result-object v6

    iget-object v7, p0, Lccsansan/aq/removeDownloadListener;->addDownloadListener:Lccsansan/bm/getDownloadingRecordByUrl;

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v7}, Lccsansan/aq/getDownloadingList;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILccsansan/an/getDownloadingList;Lccsansan/bm/getDownloadingRecordByUrl;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public unifiedDownload()V
    .locals 1

    .line 2
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadingList:Lccsansan/aq/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/aq/getDownloadingList;->IncentiveDownloadUtils()V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->removeDownloadListener:Lccsansan/ba/IncentiveDownloadUtils;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadingList:Lccsansan/aq/getDownloadingList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lccsansan/aq/getDownloadingList;->addDownloadListener(ZLjava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/aq/removeDownloadListener;->getDownloadingList:Lccsansan/aq/getDownloadingList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lccsansan/aq/getDownloadingList;->addDownloadListener(ZLjava/lang/String;)V

    :goto_0
    return-void
.end method
