.class public Lccsancom/san/bridge/SanServiceImpl;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/bridge/IncentiveDownloadUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 25
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 27
    :cond_0
    invoke-static {p1}, Lccsansan/bw/ActionTypeReserveApp;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    :try_start_0
    const-string p1, "_"

    .line 31
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 32
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    .line 33
    aget-object v0, p1, v0

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-static {}, Lccsansan/di/removeDownloadListener;->unifiedDownload()Lccsansan/di/removeDownloadListener;

    move-result-object p1

    invoke-virtual {p1, p2}, Lccsansan/di/removeDownloadListener;->unifiedDownload(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sale error:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SanServiceImpl"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsansan/dt/removeDownloadListener;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-static {}, Lccsansan/dc/getDownloadingList;->removeDownloadListener()Lccsansan/dc/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsansan/dc/getDownloadingList;->getDownloadingList(Lccsansan/dt/removeDownloadListener;Ljava/util/List;)Z

    return-void
.end method

.method public IncentiveDownloadUtils(Z)V
    .locals 1

    .line 6
    invoke-static {}, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils()Lccsansan/df/getDownloadingList;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsansan/df/getDownloadingList;->getDownloadingList(Z)V

    return-void
.end method

.method public addDownloadListener(ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lccsansan/g/addDownloadListener;->unifiedDownload(ZLjava/lang/String;)V

    .line 2
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object p1

    const-string p2, "SyncWork"

    invoke-static {p1, p2}, Lccsansan/c/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lccsansan/df/getDownloadingList;->IncentiveDownloadUtils()Lccsansan/df/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/df/getDownloadingList;->getDownloadingList()V

    .line 5
    invoke-static {}, Lccsansan/p/getDownloadingRecordByUrl;->getDownloadingList()V

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/content/Context;Z)V
    .locals 3

    .line 7
    new-instance p2, Lccsansan/bw/AdError;

    const-string v0, "puppy"

    invoke-direct {p2, p1, v0}, Lccsansan/bw/AdError;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 8
    const-string v0, "l"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    .line 10
    :goto_0
    invoke-static {v1}, Lccsancom/san/ads/SLog;->setCurrentLevel(I)V

    .line 12
    const-string v1, "ls"

    invoke-virtual {p2, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 14
    invoke-static {v1}, Lccsansan/cm/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)V

    :cond_1
    nop

    .line 18
    const-string v1, "sale"

    invoke-virtual {p2, v1}, Lccsansan/bw/AdError;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 19
    invoke-direct {p0, p1, v2}, Lccsancom/san/bridge/SanServiceImpl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V

    if-nez v0, :cond_2

    .line 21
    const-string p1, ""

    invoke-virtual {p2, v1, p1}, Lccsansan/bw/AdError;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public getDownloadingList(Lccsansan/dt/removeDownloadListener;)V
    .locals 0

    .line 23
    invoke-static {p1}, Lccsansan/ck/deleteDownList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;)Lccsancom/san/mads/webview/getDownloadingList;
    .locals 1

    .line 22
    new-instance v0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;

    invoke-direct {v0, p1}, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;-><init>(Lccsanandroid/content/Context;)V

    return-object v0
.end method
