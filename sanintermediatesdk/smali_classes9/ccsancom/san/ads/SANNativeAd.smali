.class public Lccsancom/san/ads/SANNativeAd;
.super Lccsancom/san/ads/core/SANAd;
.source ""


# instance fields
.field private pause:Lccsancom/san/ads/base/INativeAd;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lccsancom/san/ads/core/SANAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lccsancom/san/ads/core/SANAd;-><init>(Lccsanandroid/content/Context;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/ads/SANNativeAd;Lccsancom/san/ads/base/AdWrapper;)Lccsancom/san/ads/base/AdWrapper;
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    return-object p1
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method static synthetic deleteDownItem(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/ads/SANNativeAd;Lccsancom/san/ads/base/INativeAd;)Lccsancom/san/ads/base/INativeAd;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    return-object p1
.end method

.method static synthetic unifiedDownload(Lccsancom/san/ads/SANNativeAd;)Lccsancom/san/ads/base/IAdListener$AdLoadListener;
    .locals 0

    .line 3
    iget-object p0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadStatusByUrl:Lccsancom/san/ads/base/IAdListener$AdLoadListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->destroy()V

    return-void
.end method

.method public getAdFormat()Lccsancom/san/ads/AdFormat;
    .locals 1

    .line 1
    sget-object v0, Lccsancom/san/ads/AdFormat;->NATIVE:Lccsancom/san/ads/AdFormat;

    return-object v0
.end method

.method public getAdIconView()Lccsanandroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->getAdIconView()Lccsanandroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public varargs getAdMediaView([Ljava/lang/Object;)Lccsanandroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Lccsancom/san/ads/base/INativeAd;->getAdMediaView([Ljava/lang/Object;)Lccsanandroid/view/View;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->getContent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getCustomAdContainer()Lccsanandroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->getCustomAdContainer()Lccsanandroid/view/ViewGroup;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getIconUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getNativeAd()Lccsancom/san/ads/base/INativeAd;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-eqz v0, :cond_0

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/ads/SANNativeAd;->unifiedDownload()Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->getSanAd()Lccsancom/san/ads/base/SANBaseAd;

    move-result-object v1

    instance-of v1, v1, Lccsancom/san/ads/base/INativeAd;

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->getSanAd()Lccsancom/san/ads/base/SANBaseAd;

    move-result-object v0

    check-cast v0, Lccsancom/san/ads/base/INativeAd;

    iput-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    .line 8
    :cond_1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    return-object v0
.end method

.method public getPosterUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->getPosterUrl()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lccsancom/san/ads/base/INativeAd;->getTitle()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public prepare(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lccsancom/san/ads/SANNativeAd;->prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lccsanandroid/view/View;",
            "Ljava/util/List<",
            "Lccsanandroid/view/View;",
            ">;",
            "Lccsanandroid/widget/FrameLayout$LayoutParams;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lccsancom/san/ads/SANNativeAd;->unifiedDownload()Lccsancom/san/ads/base/AdWrapper;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-virtual {p0}, Lccsancom/san/ads/core/SANAd;->IncentiveDownloadUtils()Lccsancom/san/ads/base/IAdListener$AdActionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsancom/san/ads/base/AdWrapper;->setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V

    if-eqz p2, :cond_3

    .line 10
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 13
    :cond_2
    iget-object v1, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    invoke-interface {v1, p1, p2, p3}, Lccsancom/san/ads/base/INativeAd;->prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    goto :goto_1

    .line 14
    :cond_3
    :goto_0
    iget-object p2, p0, Lccsancom/san/ads/SANNativeAd;->pause:Lccsancom/san/ads/base/INativeAd;

    invoke-interface {p2, p1, p3}, Lccsancom/san/ads/base/INativeAd;->prepare(Lccsanandroid/view/View;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    .line 18
    :goto_1
    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->onImpression()V

    return-void
.end method

.method public unifiedDownload()Lccsancom/san/ads/base/AdWrapper;
    .locals 1

    .line 25
    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadedList:Lccsancom/san/ads/base/AdWrapper;

    return-object v0
.end method

.method public unifiedDownload(Z)V
    .locals 1

    .line 2
    iget-object p1, p0, Lccsancom/san/ads/core/SANAd;->unifiedDownload:Lccsancom/san/ads/core/BaseAdLoaderManager;

    invoke-virtual {p0}, Lccsancom/san/ads/SANNativeAd;->getAdFormat()Lccsancom/san/ads/AdFormat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setAdFormat(Lccsancom/san/ads/AdFormat;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/ads/core/SANAd;->getDownloadingRecordByUrl:Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;

    .line 3
    invoke-virtual {p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setLoadTiming(Lccsancom/san/ads/core/AdLoadStrategy$AdLoadTiming;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object p1

    new-instance v0, Lccsancom/san/ads/SANNativeAd$1;

    invoke-direct {v0, p0}, Lccsancom/san/ads/SANNativeAd$1;-><init>(Lccsancom/san/ads/SANNativeAd;)V

    .line 4
    invoke-virtual {p1, v0}, Lccsancom/san/ads/core/BaseAdLoaderManager;->setAdListener(Lccsancom/san/ads/base/IAdListener$AdLoadInnerListener;)Lccsancom/san/ads/core/BaseAdLoaderManager;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lccsancom/san/ads/core/BaseAdLoaderManager;->startLoad()V

    return-void
.end method
