.class Lccsancom/san/ads/core/BaseAdLoaderManager$2;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

.field final synthetic removeDownloadListener:Lccsancom/san/ads/base/AdWrapper;

.field final synthetic unifiedDownload:Lccsancom/san/ads/AdError;


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iput-object p2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->removeDownloadListener:Lccsancom/san/ads/base/AdWrapper;

    iput-object p3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->unifiedDownload:Lccsancom/san/ads/AdError;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x3

    .line 3
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    .line 4
    invoke-virtual {v3}, Lccsancom/san/ads/core/BaseAdLoaderManager;->pause()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->removeDownloadListener:Lccsancom/san/ads/base/AdWrapper;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "succeed, ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->removeDownloadListener:Lccsancom/san/ads/base/AdWrapper;

    .line 5
    invoke-virtual {v3}, Lccsancom/san/ads/base/AdWrapper;->getSpotId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->unifiedDownload:Lccsancom/san/ads/AdError;

    :goto_0
    aput-object v1, v0, v2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v3}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Lccsancom/san/ads/core/BaseAdLoaderManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 7
    const-string v1, "%s will notify observer with %s, duration = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdLoaderManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    :try_start_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->removeDownloadListener:Lccsancom/san/ads/base/AdWrapper;

    if-eqz v0, :cond_2

    .line 15
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->removeDownloadListener:Lccsancom/san/ads/base/AdWrapper;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V

    goto :goto_1

    .line 17
    :cond_2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->unifiedDownload:Lccsancom/san/ads/AdError;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :goto_1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/core/BaseAdLoaderManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    :try_start_1
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iget-object v2, v1, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    iget-object v1, v1, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v2, v1, v1, v0}, Lccsansan/bn/removeDownloadListener;->unifiedDownload(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 26
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/core/BaseAdLoaderManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 23
    :goto_2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-virtual {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->onDestroy()V

    .line 26
    :cond_3
    return-void

    :catchall_1
    move-exception v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/core/BaseAdLoaderManager;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 27
    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$2;->getDownloadingList:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-virtual {v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->onDestroy()V

    .line 28
    :cond_4
    throw v0

    :cond_5
    :goto_3
    return-void
.end method
