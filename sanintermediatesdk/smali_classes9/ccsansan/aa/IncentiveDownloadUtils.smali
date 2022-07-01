.class public Lccsansan/aa/IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static unifiedDownload()V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/aa/IncentiveDownloadUtils$removeDownloadListener;

    invoke-direct {v1}, Lccsansan/aa/IncentiveDownloadUtils$removeDownloadListener;-><init>()V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method
