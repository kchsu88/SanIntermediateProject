.class Lccsansan/az/getDownloadingList$removeDownloadListener;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/az/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/az/getDownloadingList;

.field final synthetic getDownloadingList:Lccsanandroid/content/Context;


# direct methods
.method constructor <init>(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/az/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/az/getDownloadingList;

    iput-object p2, p0, Lccsansan/az/getDownloadingList$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/az/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/az/getDownloadingList;

    invoke-static {v0}, Lccsansan/az/getDownloadingList;->addDownloadListener(Lccsansan/az/getDownloadingList;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lccsansan/az/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/az/getDownloadingList;

    invoke-static {v2}, Lccsansan/az/getDownloadingList;->getDownloadingList(Lccsansan/az/getDownloadingList;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    iget-object v2, p0, Lccsansan/az/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/az/getDownloadingList;

    iget-object v3, p0, Lccsansan/az/getDownloadingList$removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lccsansan/az/unifiedDownload;

    const-string v4, "all"

    invoke-static {v2, v3, v1, v4}, Lccsansan/az/getDownloadingList;->IncentiveDownloadUtils(Lccsansan/az/getDownloadingList;Lccsanandroid/content/Context;Lccsansan/az/unifiedDownload;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
