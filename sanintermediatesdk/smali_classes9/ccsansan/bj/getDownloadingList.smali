.class public final Lccsansan/bj/getDownloadingList;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static getDownloadingList(Lccsansan/bj/IncentiveDownloadUtils;)V
    .locals 1

    .line 1
    new-instance v0, Lccsansan/bj/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/bj/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/bj/IncentiveDownloadUtils;)V

    .line 7
    invoke-static {}, Lccsansan/bh/addDownloadListener;->unifiedDownload()Lccsansan/bh/addDownloadListener;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/bh/addDownloadListener;->removeDownloadListener()Lccsansan/bk/getDownloadStatusByUrl;

    move-result-object p0

    invoke-virtual {p0}, Lccsansan/bk/getDownloadStatusByUrl;->removeDownloadListener()Ljava/util/concurrent/Executor;

    move-result-object p0

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
