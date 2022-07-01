.class Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/i/addDownloadListener;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/i/addDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/i/addDownloadListener;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/i/addDownloadListener;

    invoke-direct {p0, p2, p3}, Lccsancom/san/ads/Task$UICallBackTask;-><init>(J)V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/i/addDownloadListener;

    invoke-static {v0}, Lccsansan/i/addDownloadListener;->getDownloadingList(Lccsansan/i/addDownloadListener;)Z

    move-result v0

    const-string v1, "MediaView.Base"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/i/addDownloadListener;

    iget-object v0, v0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/i/addDownloadListener;

    iget-object v0, v0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {v0}, Lccsansan/dg/unifiedDownload;->deleteDownItem()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocus resumePlay  hashCode\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/i/addDownloadListener;

    invoke-static {v0}, Lccsansan/i/addDownloadListener;->removeDownloadListener(Lccsansan/i/addDownloadListener;)V

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getFocus doStartPlay  hashCode\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    :goto_0
    iget-object v0, p0, Lccsansan/i/addDownloadListener$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/i/addDownloadListener;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsansan/i/addDownloadListener;->IncentiveDownloadUtils(Lccsansan/i/addDownloadListener;Z)Z

    return-void
.end method
