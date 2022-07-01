.class public Lccsansan/c/removeDownloadListener;
.super Lccsansan/c/IncentiveDownloadUtils;
.source ""


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V
    .locals 1

    .line 1
    const-string v0, "HighPriority"

    invoke-direct {p0, p1, v0, p2}, Lccsansan/c/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)V

    return-void
.end method

.method private static addDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 9
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsancom/san/bridge/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)V

    .line 10
    invoke-static {}, Lccsancom/san/ads/core/ConfigManager;->getInstance()Lccsancom/san/ads/core/ConfigManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lccsancom/san/ads/core/ConfigManager;->tryToSyncAdConfig(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lccsansan/y/getDownloadingList;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Lccsansan/bw/getDownloadedList;->removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/util/Pair;

    move-result-object p0

    .line 2
    iget-object v0, p0, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lccsanandroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 3
    :cond_0
    invoke-static {p1}, Lccsansan/c/removeDownloadListener;->addDownloadListener(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-static {p1}, Lccsansan/c/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void
.end method

.method private static unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/bridge/getDownloadingList;->addDownloadListener()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "worker-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4
    invoke-static {}, Lccsansan/g/addDownloadListener;->removeDownloadListener()Lccsansan/g/addDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/g/addDownloadListener;->IncentiveDownloadUtils()V

    .line 5
    invoke-static {}, Lccsansan/g/addDownloadListener;->removeDownloadListener()Lccsansan/g/addDownloadListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lccsansan/g/addDownloadListener;->addDownloadListener(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public removeDownloadListener()Lccsanandroidx/work/ListenableWorker$Result;
    .locals 2

    .line 12
    :try_start_0
    invoke-virtual {p0}, Lccsanandroidx/work/Worker;->getInputData()Lccsanandroidx/work/Data;

    move-result-object v0

    const-string v1, "from"

    .line 13
    invoke-virtual {v0, v1}, Lccsanandroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-virtual {p0}, Lccsanandroidx/work/Worker;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lccsansan/c/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 21
    :goto_0
    invoke-static {}, Lccsanandroidx/work/ListenableWorker$Result;->success()Lccsanandroidx/work/ListenableWorker$Result;

    move-result-object v0

    return-object v0
.end method
