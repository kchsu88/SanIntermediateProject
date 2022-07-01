.class Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/db/IncentiveDownloadUtils;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/interstitial/MadsInterstitialAd;->innerLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;


# direct methods
.method constructor <init>(Lccsancom/san/mads/interstitial/MadsInterstitialAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLOSED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, v1}, Lccsancom/san/mads/interstitial/MadsInterstitialAd;->access$500(Lccsancom/san/mads/interstitial/MadsInterstitialAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 2
    const-string v0, "Mads.InterstitialAd"

    const-string v1, "#onInterstitialDismissed"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener()V
    .locals 0

    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 1
    const-string v0, "Mads.InterstitialAd"

    const-string v1, "#onInterstitialShown"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, v1}, Lccsancom/san/mads/interstitial/MadsInterstitialAd;->access$200(Lccsancom/san/mads/interstitial/MadsInterstitialAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public getDownloadingList(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    invoke-static {v0, p1}, Lccsancom/san/mads/interstitial/MadsInterstitialAd;->access$100(Lccsancom/san/mads/interstitial/MadsInterstitialAd;Lccsancom/san/ads/AdError;)V

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onInterstitialFailed errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.InterstitialAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.InterstitialAd"

    const-string v1, "#onInterstitialClicked"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    sget-object v1, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {v0, v1}, Lccsancom/san/mads/interstitial/MadsInterstitialAd;->access$400(Lccsancom/san/mads/interstitial/MadsInterstitialAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onInterstitialShowError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdError;->getErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.InterstitialAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION_ERROR:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {p1, v0}, Lccsancom/san/mads/interstitial/MadsInterstitialAd;->access$300(Lccsancom/san/mads/interstitial/MadsInterstitialAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    new-instance v1, Lccsancom/san/ads/base/FullScreenAdWrapper;

    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v2

    iget-object v3, p0, Lccsancom/san/mads/interstitial/MadsInterstitialAd$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/interstitial/MadsInterstitialAd;

    invoke-direct {v1, v2, v3}, Lccsancom/san/ads/base/FullScreenAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-static {v0, v1}, Lccsancom/san/mads/interstitial/MadsInterstitialAd;->access$000(Lccsancom/san/mads/interstitial/MadsInterstitialAd;Lccsancom/san/ads/base/AdWrapper;)V

    .line 2
    const-string v0, "Mads.InterstitialAd"

    const-string v1, "#onInterstitialLoaded"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
