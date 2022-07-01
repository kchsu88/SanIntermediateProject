.class Lccsancom/san/ads/core/SANAd$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/base/IAdListener$AdActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils()Lccsancom/san/ads/base/IAdListener$AdActionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/ads/core/SANAd;


# direct methods
.method constructor <init>(Lccsancom/san/ads/core/SANAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    invoke-static {v0}, Lccsancom/san/ads/core/SANAd;->unifiedDownload(Lccsancom/san/ads/core/SANAd;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v1, v1, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lccsansan/bn/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/base/AdWrapper;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v0, v0, Lccsancom/san/ads/core/SANAd;->getDownloadedRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdClicked()V

    :cond_0
    return-void
.end method

.method public onAdClosed(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v1, v0, Lccsancom/san/ads/core/SANAd;->getDownloadedRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 3
    :cond_0
    iget-object v0, v0, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils:Ljava/lang/String;

    invoke-static {v0}, Lccsancom/san/ads/core/AdLoaderManagerFactory;->removeAdLoaderManager(Ljava/lang/String;)V

    if-eqz v1, :cond_1

    .line 6
    invoke-interface {v1, p1}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdClosed(Z)V

    :cond_1
    return-void
.end method

.method public onAdCompleted()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v1, v0, Lccsancom/san/ads/core/SANAd;->getDownloadingList:Lccsancom/san/ads/AdFormat;

    sget-object v2, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    if-ne v1, v2, :cond_0

    .line 2
    invoke-static {v0}, Lccsancom/san/ads/core/SANAd;->unifiedDownload(Lccsancom/san/ads/core/SANAd;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v1, v1, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/base/AdWrapper;Ljava/util/HashMap;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v0, v0, Lccsancom/san/ads/core/SANAd;->getDownloadedRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdCompleted()V

    :cond_1
    return-void
.end method

.method public onAdImpression()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    invoke-static {v0}, Lccsancom/san/ads/core/SANAd;->unifiedDownload(Lccsancom/san/ads/core/SANAd;)Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v1, v1, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    invoke-static {v0, v1}, Lccsansan/bn/removeDownloadListener;->addDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/base/AdWrapper;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v0, v0, Lccsancom/san/ads/core/SANAd;->getDownloadedRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdImpression()V

    :cond_0
    return-void
.end method

.method public onAdImpressionError(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd$3;->unifiedDownload:Lccsancom/san/ads/core/SANAd;

    iget-object v0, v0, Lccsancom/san/ads/core/SANAd;->getDownloadedRecordByUrl:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lccsancom/san/ads/base/IAdListener$AdActionListener;->onAdImpressionError(Lccsancom/san/ads/AdError;)V

    :cond_0
    return-void
.end method
