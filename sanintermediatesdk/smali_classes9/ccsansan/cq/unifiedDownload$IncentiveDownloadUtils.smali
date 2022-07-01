.class Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cq/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/banner/getDownloadingList;

.field final synthetic addDownloadListener:Lccsanandroid/widget/FrameLayout$LayoutParams;

.field final synthetic deleteDownItem:Lccsansan/cq/unifiedDownload;

.field private getDownloadStatusByUrl:Ljava/lang/String;

.field final synthetic getDownloadingList:Ljava/lang/String;

.field final synthetic getDownloadingRecordByUrl:Lccsanandroid/content/Context;

.field final synthetic removeDownloadListener:Lccsansan/dt/removeDownloadListener;

.field final synthetic unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cq/unifiedDownload;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;Lccsancom/san/mads/banner/getDownloadingList;Lccsanandroid/widget/FrameLayout$LayoutParams;Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    iput-object p2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iput-object p3, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    iput-object p4, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/mads/banner/removeDownloadListener;

    iput-object p5, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/getDownloadingList;

    iput-object p6, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/widget/FrameLayout$LayoutParams;

    iput-object p7, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/content/Context;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Support Cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Need mraid js: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    iget-object v2, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/dt/removeDownloadListener;

    invoke-static {v1, v2}, Lccsansan/cq/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cq/unifiedDownload;Lccsansan/dt/removeDownloadListener;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", load html data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Banner.Web"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {v0}, Lccsansan/cq/unifiedDownload;->addDownloadListener(Lccsansan/cq/unifiedDownload;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    new-instance v2, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v2, p0}, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1, v2}, Lccsancom/san/mads/webview/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V

    return-void
.end method

.method public execute()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->deleteDownItem:Lccsansan/cq/unifiedDownload;

    invoke-static {v0}, Lccsansan/cq/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/cq/unifiedDownload;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 2
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    iput-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsansan/ab/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;->getDownloadStatusByUrl:Ljava/lang/String;

    :goto_0
    return-void
.end method
