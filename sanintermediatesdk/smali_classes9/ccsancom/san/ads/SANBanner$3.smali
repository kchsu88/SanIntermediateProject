.class Lccsancom/san/ads/SANBanner$3;
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
.field final synthetic removeDownloadListener:Lccsancom/san/ads/SANBanner;


# direct methods
.method constructor <init>(Lccsancom/san/ads/SANBanner;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/SANBanner$3;->removeDownloadListener:Lccsancom/san/ads/SANBanner;

    invoke-direct {p0}, Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdLoadError(Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/ads/SANBanner$3;->removeDownloadListener:Lccsancom/san/ads/SANBanner;

    invoke-static {p1}, Lccsancom/san/ads/SANBanner;->removeDownloadListener(Lccsancom/san/ads/SANBanner;)V

    return-void
.end method

.method public onAdLoaded(Lccsancom/san/ads/base/AdWrapper;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lccsancom/san/ads/base/BannerAdWrapper;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/SANBanner$3;->removeDownloadListener:Lccsancom/san/ads/SANBanner;

    invoke-static {v0}, Lccsancom/san/ads/SANBanner;->deleteDownItem(Lccsancom/san/ads/SANBanner;)Lccsancom/san/mads/banner/IncentiveDownloadUtils;

    move-result-object v0

    check-cast p1, Lccsancom/san/ads/base/BannerAdWrapper;

    invoke-virtual {v0, p1}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->removeDownloadListener(Lccsancom/san/ads/base/BannerAdWrapper;)V

    .line 3
    :cond_0
    iget-object p1, p0, Lccsancom/san/ads/SANBanner$3;->removeDownloadListener:Lccsancom/san/ads/SANBanner;

    invoke-static {p1}, Lccsancom/san/ads/SANBanner;->removeDownloadListener(Lccsancom/san/ads/SANBanner;)V

    return-void
.end method
