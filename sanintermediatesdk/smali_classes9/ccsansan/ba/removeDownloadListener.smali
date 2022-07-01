.class public Lccsansan/ba/removeDownloadListener;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static addDownloadListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lccsansan/bm/addDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static declared-synchronized IncentiveDownloadUtils()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lccsansan/bm/addDownloadListener;",
            ">;"
        }
    .end annotation

    const-class v0, Lccsansan/ba/removeDownloadListener;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsansan/ba/removeDownloadListener;->addDownloadListener:Ljava/util/List;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lccsansan/ba/removeDownloadListener;->addDownloadListener:Ljava/util/List;

    .line 3
    invoke-static {}, Lccsansan/ah/removeDownloadListener;->unifiedDownload()Lccsansan/ah/removeDownloadListener$addDownloadListener;

    move-result-object v2

    invoke-interface {v2}, Lccsansan/ah/removeDownloadListener$addDownloadListener;->getDownloadingList()Lccsansan/bm/addDownloadListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    sget-object v1, Lccsansan/ba/removeDownloadListener;->addDownloadListener:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
