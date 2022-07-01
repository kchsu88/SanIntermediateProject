.class Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/banner/MadsBannerAd;->innerLoad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;


# direct methods
.method constructor <init>(Lccsancom/san/mads/banner/MadsBannerAd;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsancom/san/mads/banner/getDownloadingList;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-static {v0, p1}, Lccsancom/san/mads/banner/MadsBannerAd;->access$002(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/mads/banner/getDownloadingList;)Lccsancom/san/mads/banner/getDownloadingList;

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    new-instance v0, Lccsancom/san/ads/base/BannerAdWrapper;

    invoke-virtual {p1}, Lccsancom/san/ads/base/SANBaseAd;->getAdInfo()Lccsancom/san/ads/AdInfo;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-direct {v0, v1, v2}, Lccsancom/san/ads/base/BannerAdWrapper;-><init>(Lccsancom/san/ads/AdInfo;Lccsancom/san/ads/base/SANBaseAd;)V

    invoke-static {p1, v0}, Lccsancom/san/mads/banner/MadsBannerAd;->access$100(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/base/AdWrapper;)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onBannerLoaded, pid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.BannerAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/mads/banner/getDownloadingList;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_IMPRESSION:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {p1, v0}, Lccsancom/san/mads/banner/MadsBannerAd;->access$400(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onImpression, pid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.BannerAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Lccsancom/san/mads/banner/getDownloadingList;)V
    .locals 1

    .line 3
    iget-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    sget-object v0, Lccsancom/san/ads/base/IAdListener$AdAction;->AD_ACTION_CLICKED:Lccsancom/san/ads/base/IAdListener$AdAction;

    invoke-static {p1, v0}, Lccsancom/san/mads/banner/MadsBannerAd;->access$300(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/base/IAdListener$AdAction;)V

    .line 4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onBannerClicked, pid = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-virtual {v0}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.BannerAd"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Lccsancom/san/mads/banner/getDownloadingList;Lccsancom/san/ads/AdError;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-static {p1, p2}, Lccsancom/san/mads/banner/MadsBannerAd;->access$200(Lccsancom/san/mads/banner/MadsBannerAd;Lccsancom/san/ads/AdError;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "#onBannerFailed, pid = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lccsancom/san/mads/banner/MadsBannerAd$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/MadsBannerAd;

    invoke-virtual {p2}, Lccsancom/san/ads/base/SANBaseAd;->getPlacementId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.BannerAd"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
