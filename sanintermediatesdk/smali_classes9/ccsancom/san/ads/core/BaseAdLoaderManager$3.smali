.class Lccsancom/san/ads/core/BaseAdLoaderManager$3;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload(Lccsancom/san/ads/AdInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/ads/core/BaseAdLoaderManager;

.field final synthetic addDownloadListener:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

.field final synthetic unifiedDownload:Lccsancom/san/ads/AdInfo;


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/BaseAdLoaderManager;Lccsancom/san/ads/AdInfo;Ljava/lang/String;Lccsancom/san/ads/base/SANBaseAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->IncentiveDownloadUtils:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iput-object p2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    iput-object p3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->addDownloadListener:Ljava/lang/String;

    iput-object p4, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 5

    .line 1
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    .line 2
    invoke-virtual {v1}, Lccsancom/san/ads/AdInfo;->getDetailId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->addDownloadListener:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->IncentiveDownloadUtils:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-static {v3}, Lccsancom/san/ads/core/BaseAdLoaderManager;->getDownloadingList(Lccsancom/san/ads/core/BaseAdLoaderManager;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3
    const-string v1, "%s#doLoadItem(Thread) with %s on [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "BaseAdLoaderManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->IncentiveDownloadUtils:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iget-object v0, v0, Lccsancom/san/ads/core/BaseAdLoaderManager;->unifiedDownload:Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsansan/cm/addDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)Lccsansan/cm/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->IncentiveDownloadUtils:Lccsancom/san/ads/core/BaseAdLoaderManager;

    iget-object v1, v1, Lccsancom/san/ads/core/BaseAdLoaderManager;->IncentiveDownloadUtils:Ljava/lang/String;

    iget-object v2, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v2}, Lccsancom/san/ads/AdInfo;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsansan/cm/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->removeDownloadListener:Lccsancom/san/ads/base/SANBaseAd;

    iget-object v1, p0, Lccsancom/san/ads/core/BaseAdLoaderManager$3;->unifiedDownload:Lccsancom/san/ads/AdInfo;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/base/SANBaseAd;->load(Lccsancom/san/ads/AdInfo;)V

    return-void
.end method
