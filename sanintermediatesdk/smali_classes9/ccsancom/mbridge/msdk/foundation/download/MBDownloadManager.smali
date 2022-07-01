.class public final Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;
.super Ljava/lang/Object;
.source "MBDownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;
    }
.end annotation


# instance fields
.field private initialize:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->initialize:Z

    .line 17
    return-void
.end method

.method synthetic constructor <init>(Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager$1;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;
    .locals 1

    .line 20
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager$ClassHolder;->access$000()Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized cancel(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    .line 37
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->cancel(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    monitor-exit p0

    return-void

    .line 36
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized cancelAll()V
    .locals 1

    monitor-enter p0

    .line 41
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->cancelAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized download(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsancom/mbridge/msdk/foundation/download/DownloadMessage<",
            "*>;)",
            "Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;"
        }
    .end annotation

    monitor-enter p0

    .line 33
    :try_start_0
    new-instance v0, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;

    invoke-direct {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestBuilder;-><init>(Lccsancom/mbridge/msdk/foundation/download/DownloadMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 33
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getDownloadId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 57
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getDownloadId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 57
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized getStatus(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;
    .locals 1

    monitor-enter p0

    .line 45
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getStatus(Ljava/lang/String;)Lccsancom/mbridge/msdk/foundation/download/DownloadStatus;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 45
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V
    .locals 1

    .line 24
    iget-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->initialize:Z

    if-nez v0, :cond_0

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsancom/mbridge/msdk/foundation/download/MBDownloadManager;->initialize:Z

    .line 26
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->initialize(Lccsanandroid/content/Context;Lccsancom/mbridge/msdk/foundation/download/MBDownloadConfig;)V

    .line 27
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/mbridge/msdk/foundation/download/core/DownloadRequestQueue;->initialize()V

    .line 28
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->getInstance()Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;

    move-result-object p1

    invoke-virtual {p1, p3}, Lccsancom/mbridge/msdk/foundation/download/resource/MBResourceManager;->executeResourceStrategy(Lccsancom/mbridge/msdk/foundation/download/resource/ResourceConfig;)V

    .line 30
    :cond_0
    return-void
.end method

.method public final declared-synchronized shutDown()V
    .locals 1

    monitor-enter p0

    .line 49
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/ExecutorManager;->shutDown()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    return-void

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized updateZipResource(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    monitor-enter p0

    .line 53
    :try_start_0
    invoke-static {}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getInstance()Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/mbridge/msdk/foundation/download/core/GlobalComponent;->getDatabaseHelper()Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/foundation/download/database/IDatabaseHelper;->updateUnzipResource(Ljava/lang/String;Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
