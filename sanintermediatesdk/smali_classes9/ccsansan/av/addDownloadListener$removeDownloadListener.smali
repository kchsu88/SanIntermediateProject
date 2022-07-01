.class Lccsansan/av/addDownloadListener$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/av/addDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/av/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/av/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/av/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/av/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/av/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/av/addDownloadListener;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lccsansan/av/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/av/addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/av/addDownloadListener;)Ljava/io/Writer;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 3
    monitor-exit v0

    return-object v2

    .line 5
    :cond_0
    iget-object v1, p0, Lccsansan/av/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/av/addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener;->removeDownloadListener(Lccsansan/av/addDownloadListener;)V

    .line 6
    iget-object v1, p0, Lccsansan/av/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/av/addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener;->unifiedDownload(Lccsansan/av/addDownloadListener;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lccsansan/av/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/av/addDownloadListener;

    invoke-static {v1}, Lccsansan/av/addDownloadListener;->addDownloadListener(Lccsansan/av/addDownloadListener;)V

    .line 8
    iget-object v1, p0, Lccsansan/av/addDownloadListener$removeDownloadListener;->addDownloadListener:Lccsansan/av/addDownloadListener;

    const/4 v3, 0x0

    invoke-static {v1, v3}, Lccsansan/av/addDownloadListener;->getDownloadingList(Lccsansan/av/addDownloadListener;I)I

    .line 10
    :cond_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lccsansan/av/addDownloadListener$removeDownloadListener;->IncentiveDownloadUtils()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
