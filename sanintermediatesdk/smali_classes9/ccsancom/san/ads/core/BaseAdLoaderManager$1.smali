.class Lccsancom/san/ads/core/BaseAdLoaderManager$1;
.super Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/core/BaseAdLoaderManager;->removeDownloadListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/BaseAdLoaderManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-direct {p0}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;-><init>()V

    return-void
.end method

.method private unifiedDownload(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->getDetailId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#checkAnchor(callback) duration = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v3}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Lccsancom/san/ads/core/BaseAdLoaderManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p2, :cond_0

    const-string p2, "succeed"

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3
    const-string v0, "BaseAdLoaderManager"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Lccsancom/san/ads/AdInfo;->isAnchorItem()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iget-object p1, p1, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList:Lccsansan/bq/removeDownloadListener;

    if-eqz p1, :cond_1

    .line 8
    invoke-virtual {p1}, Lccsansan/bq/removeDownloadListener;->unifiedDownload()V

    :cond_1
    return-void
.end method


# virtual methods
.method public onAdLoadError(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public onAdLoadError(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->unifiedDownload(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    .line 3
    invoke-super {p0, p1, p2}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoadError(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/AdWrapper;)V
    .locals 1

    .line 6
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->unifiedDownload(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/AdError;)V

    .line 7
    invoke-super {p0, p1, p2}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;->onAdLoaded(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/AdWrapper;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V
    .locals 2

    .line 1
    invoke-static {}, Lccsancom/san/ads/core/AdCacheManager;->getInstance()Lccsancom/san/ads/core/AdCacheManager;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iget-object v1, v1, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lccsancom/san/ads/core/AdCacheManager;->setCachedAd(Ljava/lang/String;Lccsancom/san/ads/base/AdWrapper;)V

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils(Lccsancom/san/ads/core/BaseAdLoaderManager;)Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils(Lccsancom/san/ads/core/BaseAdLoaderManager;)Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/ads/base/AdWrapper;->win(Lccsancom/san/ads/base/AdWrapper;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v0, p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/base/AdWrapper;)Lccsancom/san/ads/base/AdWrapper;

    .line 5
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$1;->addDownloadListener:Lccsancom/san/ads/core/BaseAdLoaderManager;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->addDownloadListener(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/base/AdWrapper;Lccsancom/san/ads/AdError;)V

    return-void
.end method
