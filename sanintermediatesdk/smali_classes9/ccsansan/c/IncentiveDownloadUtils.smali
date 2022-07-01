.class public abstract Lccsansan/c/IncentiveDownloadUtils;
.super Lccsanandroidx/work/Worker;
.source ""


# instance fields
.field private final IncentiveDownloadUtils:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroidx/work/WorkerParameters;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p3}, Lccsanandroidx/work/Worker;-><init>(Lccsanandroid/content/Context;Lccsanandroidx/work/WorkerParameters;)V

    .line 2
    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->unifiedDownload(Lccsanandroid/content/Context;)V

    .line 3
    iput-object p2, p0, Lccsansan/c/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    return-void
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string v0, "BG_Worker"

    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "portal"

    .line 3
    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "from"

    .line 4
    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string p2, "tags"

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lccsanandroidx/work/Worker;->getTags()Ljava/util/Set;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string p2, "foreground"

    .line 6
    :try_start_2
    invoke-static {}, Lccsancom/san/ads/CommonActivityLifecycle;->getInstance()Lccsancom/san/ads/CommonActivityLifecycle;

    move-result-object p3

    invoke-virtual {p3}, Lccsancom/san/ads/CommonActivityLifecycle;->isAppInBackground()Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p2, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v1}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-static {p1, v0, v1}, Lccsansan/dl/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    return-void
.end method


# virtual methods
.method public final doWork()Lccsanandroidx/work/ListenableWorker$Result;
    .locals 4

    .line 1
    invoke-virtual {p0}, Lccsanandroidx/work/Worker;->getInputData()Lccsanandroidx/work/Data;

    move-result-object v0

    .line 2
    const-string v1, "from"

    invoke-virtual {v0, v1}, Lccsanandroidx/work/Data;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Lccsanandroidx/work/Worker;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    const-string v2, "job_scheduler"

    invoke-static {v1, v2, v0}, Lccsansan/c/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lccsansan/c/IncentiveDownloadUtils;->removeDownloadListener()Lccsanandroidx/work/ListenableWorker$Result;

    move-result-object v1

    .line 6
    invoke-virtual {p0}, Lccsanandroidx/work/Worker;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lccsansan/c/IncentiveDownloadUtils;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-direct {p0, v2, v3, v0}, Lccsansan/c/IncentiveDownloadUtils;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public abstract removeDownloadListener()Lccsanandroidx/work/ListenableWorker$Result;
.end method
