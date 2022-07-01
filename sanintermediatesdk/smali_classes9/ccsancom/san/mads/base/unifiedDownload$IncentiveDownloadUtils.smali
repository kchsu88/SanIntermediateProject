.class Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/base/unifiedDownload;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;


# direct methods
.method constructor <init>(Lccsancom/san/mads/base/unifiedDownload;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 6

    .line 1
    const-string v0, "Mads.HandleLoader"

    const-string v1, ", duration:"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    iget-wide v4, v4, Lccsancom/san/mads/base/removeDownloadListener;->deleteDownItem:J

    sub-long/2addr v2, v4

    .line 3
    :try_start_0
    iget v4, p1, Lccsanandroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    iget-object p1, p1, Lccsanandroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    instance-of v4, p1, Lccsancom/san/ads/AdError;

    if-eqz v4, :cond_1

    check-cast p1, Lccsancom/san/ads/AdError;

    goto :goto_0

    :cond_1
    sget-object p1, Lccsancom/san/ads/AdError;->UNKNOWN_ERROR:Lccsancom/san/ads/AdError;

    .line 11
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Handler] Load Failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", placement_id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    invoke-virtual {v5}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v4, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    invoke-virtual {v4, p1}, Lccsancom/san/mads/base/unifiedDownload;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    goto :goto_1

    :cond_2
    nop

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Handler] Load Success  placement_id = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    invoke-virtual {v4}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", adId = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    iget-object v4, v4, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v4}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    invoke-virtual {p1}, Lccsancom/san/mads/base/unifiedDownload;->addDownloadListener()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Handler] load failed placement_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    invoke-virtual {v5}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ex  : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lccsancom/san/mads/base/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/base/unifiedDownload;

    new-instance v1, Lccsancom/san/ads/AdError;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x7d1

    invoke-direct {v1, v2, p1}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lccsancom/san/mads/base/unifiedDownload;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    :goto_1
    return-void
.end method
