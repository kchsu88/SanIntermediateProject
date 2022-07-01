.class public Lccsansan/ba/unifiedDownload;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private removeDownloadListener:Lccsanandroid/os/Handler;

.field private unifiedDownload:Lccsansan/aq/removeDownloadListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lccsanandroid/os/Handler;

    invoke-static {}, Lccsanandroid/os/Looper;->getMainLooper()Lccsanandroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    iput-object v0, p0, Lccsansan/ba/unifiedDownload;->removeDownloadListener:Lccsanandroid/os/Handler;

    return-void
.end method

.method private unifiedDownload(Lccsansan/br/IncentiveDownloadUtils;)V
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/ah/removeDownloadListener;->unifiedDownload()Lccsansan/ah/removeDownloadListener$addDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/ah/removeDownloadListener$addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)V

    .line 2
    const-string v0, "client"

    invoke-virtual {p1, v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsansan/ba/unifiedDownload;->unifiedDownload:Lccsansan/aq/removeDownloadListener;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lccsansan/aq/removeDownloadListener;->unifiedDownload()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addDownloadListener(Lccsanandroid/content/Context;Lccsansan/aq/IncentiveDownloadUtils;)Lccsansan/br/IncentiveDownloadUtils;
    .locals 1

    .line 1
    invoke-static {}, Lccsansan/aq/deleteDownItem;->getDownloadingList()Lccsansan/aq/deleteDownItem;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/aq/deleteDownItem;->IncentiveDownloadUtils()Lccsansan/br/IncentiveDownloadUtils;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/aq/IncentiveDownloadUtils;)V

    :cond_0
    return-object v0
.end method

.method public getDownloadingList(Lccsansan/br/IncentiveDownloadUtils;)V
    .locals 2

    .line 8
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lccsansan/br/IncentiveDownloadUtils;->setXzListener(Lccsanandroid/webkit/DownloadListener;)V

    .line 9
    invoke-direct {p0, p1}, Lccsansan/ba/unifiedDownload;->unifiedDownload(Lccsansan/br/IncentiveDownloadUtils;)V

    .line 10
    invoke-static {}, Lccsansan/aq/deleteDownItem;->getDownloadingList()Lccsansan/aq/deleteDownItem;

    move-result-object v1

    invoke-virtual {v1, p1}, Lccsansan/aq/deleteDownItem;->IncentiveDownloadUtils(Lccsansan/br/IncentiveDownloadUtils;)V

    .line 11
    iget-object p1, p0, Lccsansan/ba/unifiedDownload;->removeDownloadListener:Lccsanandroid/os/Handler;

    invoke-virtual {p1, v0}, Lccsanandroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 12
    iput-object v0, p0, Lccsansan/ba/unifiedDownload;->unifiedDownload:Lccsansan/aq/removeDownloadListener;

    return-void
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;Lccsansan/br/IncentiveDownloadUtils;Lccsansan/ba/IncentiveDownloadUtils;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    new-instance p4, Lccsansan/aq/removeDownloadListener;

    invoke-virtual {p2}, Lccsansan/br/IncentiveDownloadUtils;->getResultBack()Lccsansan/bm/getDownloadingRecordByUrl;

    move-result-object v0

    iget-object v1, p2, Lccsansan/br/IncentiveDownloadUtils;->addDownloadListener:Ljava/util/Map;

    invoke-direct {p4, p1, p3, v0, v1}, Lccsansan/aq/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/ba/IncentiveDownloadUtils;Lccsansan/bm/getDownloadingRecordByUrl;Ljava/util/Map;)V

    iput-object p4, p0, Lccsansan/ba/unifiedDownload;->unifiedDownload:Lccsansan/aq/removeDownloadListener;

    .line 5
    invoke-static {}, Lccsansan/ah/removeDownloadListener;->unifiedDownload()Lccsansan/ah/removeDownloadListener$addDownloadListener;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/ah/removeDownloadListener$addDownloadListener;->removeDownloadListener()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p4, v0}, Lccsansan/br/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object p4, p0, Lccsansan/ba/unifiedDownload;->unifiedDownload:Lccsansan/aq/removeDownloadListener;

    invoke-virtual {p4, p5}, Lccsansan/aq/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 7
    new-instance p4, Lccsancom/san/hybrid/ui/removeDownloadListener;

    invoke-direct {p4, p1, p3}, Lccsancom/san/hybrid/ui/removeDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/ba/IncentiveDownloadUtils;)V

    invoke-virtual {p2, p4}, Lccsansan/br/IncentiveDownloadUtils;->setXzListener(Lccsanandroid/webkit/DownloadListener;)V

    return-void
.end method
