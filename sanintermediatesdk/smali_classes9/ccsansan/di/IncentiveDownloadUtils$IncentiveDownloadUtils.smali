.class final Lccsansan/di/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/di/IncentiveDownloadUtils;->getDownloadingList(Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/di/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Ljava/util/List;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 6

    .line 1
    iget-object v0, p0, Lccsansan/di/IncentiveDownloadUtils$IncentiveDownloadUtils;->addDownloadListener:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsanandroid/util/Pair;

    .line 2
    iget-object v1, v1, Lccsanandroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1}, Lccsansan/bw/valueOf;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)V

    .line 5
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getPackageNameByRecord()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-static {v1}, Lccsansan/bw/valueOf;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 9
    invoke-static {v1}, Lccsansan/bw/valueOf;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    .line 10
    invoke-static {v1}, Lccsansan/dt/getDownloadedList;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 11
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->unifiedDownload()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v2, v1, v3, v4, v5}, Lccsansan/co/getDownloadingCount;->unifiedDownload(Lccsanandroid/content/Context;Lccsansan/dt/removeDownloadListener;Ljava/lang/String;ZLccsansan/co/getDownloadingCount$getDownloadingList;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method
