.class Lccsancom/san/ads/SANBanner$2;
.super Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/SANBanner;->removeDownloadListener(Z)Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/ads/SANBanner;


# direct methods
.method constructor <init>(Lccsancom/san/ads/SANBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/SANBanner$2;->IncentiveDownloadUtils:Lccsancom/san/ads/SANBanner;

    invoke-direct {p0}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadError(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANBanner$2;->IncentiveDownloadUtils:Lccsancom/san/ads/SANBanner;

    invoke-static {v0}, Lccsancom/san/ads/SANBanner;->addDownloadListener(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/ads/SANBanner$2;->IncentiveDownloadUtils:Lccsancom/san/ads/SANBanner;

    invoke-static {v0}, Lccsancom/san/ads/SANBanner;->getDownloadedRecordByUrl(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoadError(Lccsancom/san/ads/AdError;)V

    :cond_0
    return-void
.end method

.method public onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsancom/san/ads/SANBanner$2;->IncentiveDownloadUtils:Lccsancom/san/ads/SANBanner;

    invoke-static {p1}, Lccsancom/san/ads/SANBanner;->unifiedDownload(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsancom/san/ads/SANBanner$2;->IncentiveDownloadUtils:Lccsancom/san/ads/SANBanner;

    invoke-static {p1}, Lccsancom/san/ads/SANBanner;->IncentiveDownloadUtils(Lccsancom/san/ads/SANBanner;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/ads/SANBanner$2;->IncentiveDownloadUtils:Lccsancom/san/ads/SANBanner;

    invoke-interface {p1, v0}, Lccsancom/san/ads/base/IAdListener$AdLoadListener;->onAdLoaded(Lccsancom/san/ads/core/SANAd;)V

    :cond_0
    return-void
.end method
