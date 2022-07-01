.class Lccsancom/san/ads/SANNativeAd$1;
.super Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/SANNativeAd;->unifiedDownload(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;


# direct methods
.method constructor <init>(Lccsancom/san/ads/SANNativeAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-direct {p0}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadError(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-static {v0}, Lccsancom/san/ads/SANNativeAd;->IncentiveDownloadUtils(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-static {v0}, Lccsancom/san/ads/SANNativeAd;->deleteDownItem(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->getSanAd()Lccsancom/san/ads/base/SANBaseAd;

    move-result-object v0

    instance-of v0, v0, Lccsancom/san/ads/base/INativeAd;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-static {v0, p1}, Lccsancom/san/ads/SANNativeAd;->IncentiveDownloadUtils(Lccsancom/san/ads/SANNativeAd;Lccsancom/san/ads/base/AdWrapper;)Lccsancom/san/ads/base/AdWrapper;

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-virtual {p1}, Lccsancom/san/ads/base/AdWrapper;->getSanAd()Lccsancom/san/ads/base/SANBaseAd;

    move-result-object p1

    check-cast p1, Lccsancom/san/ads/base/INativeAd;

    invoke-static {v0, p1}, Lccsancom/san/ads/SANNativeAd;->removeDownloadListener(Lccsancom/san/ads/SANNativeAd;Lccsancom/san/ads/base/INativeAd;)Lccsancom/san/ads/base/INativeAd;

    .line 4
    iget-object p1, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-static {p1}, Lccsancom/san/ads/SANNativeAd;->unifiedDownload(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-static {p1}, Lccsancom/san/ads/SANNativeAd;->getDownloadingList(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-interface {p1, v0}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoaded(Lccsancom/san/ads/core/SANAd;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p1, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-static {p1}, Lccsancom/san/ads/SANNativeAd;->removeDownloadListener(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lccsancom/san/ads/SANNativeAd$1;->IncentiveDownloadUtils:Lccsancom/san/ads/SANNativeAd;

    invoke-static {p1}, Lccsancom/san/ads/SANNativeAd;->addDownloadListener(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object p1

    sget-object v0, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p1, v0}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    :cond_1
    :goto_0
    return-void
.end method
