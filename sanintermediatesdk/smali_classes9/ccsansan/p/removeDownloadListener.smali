.class public Lccsansan/p/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private getDownloadingList:Lccsansan/m/getDownloadingList;

.field private unifiedDownload:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lccsansan/m/getDownloadingList;->getDownloadingList(Lccsanandroid/content/Context;)Lccsansan/m/getDownloadingList;

    move-result-object p1

    iput-object p1, p0, Lccsansan/p/removeDownloadListener;->getDownloadingList:Lccsansan/m/getDownloadingList;

    .line 4
    iput-object p2, p0, Lccsansan/p/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lccsansan/p/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/p/removeDownloadListener;)Lccsansan/m/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/p/removeDownloadListener;->getDownloadingList:Lccsansan/m/getDownloadingList;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/p/removeDownloadListener;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/p/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 2
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v0

    invoke-static {}, Lccsanandroid/os/Looper;->myLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 6
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/removeDownloadListener$addDownloadListener;

    invoke-direct {v1, p0, p1, p2}, Lccsansan/p/removeDownloadListener$addDownloadListener;-><init>(Lccsansan/p/removeDownloadListener;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p0, Lccsansan/p/removeDownloadListener;->getDownloadingList:Lccsansan/m/getDownloadingList;

    iget-object v1, p0, Lccsansan/p/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p1, p2}, Lccsansan/m/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public getDownloadingList()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lccsansan/p/removeDownloadListener;->getDownloadingList:Lccsansan/m/getDownloadingList;

    iget-object v1, p0, Lccsansan/p/removeDownloadListener;->unifiedDownload:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lccsansan/m/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public removeDownloadListener(Ljava/lang/String;)V
    .locals 2

    .line 15
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/p/removeDownloadListener$unifiedDownload;

    invoke-direct {v1, p0, p1}, Lccsansan/p/removeDownloadListener$unifiedDownload;-><init>(Lccsansan/p/removeDownloadListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
