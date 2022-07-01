.class public Lccsancom/san/mads/banner/IncentiveDownloadUtils;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;
    }
.end annotation


# instance fields
.field private IncentiveDownloadUtils:Lccsancom/san/ads/base/BannerAdWrapper;

.field private getDownloadingList:Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;

.field private unifiedDownload:Lccsancom/san/ads/base/IAdListener$AdActionListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private getDownloadingList()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/ads/base/BannerAdWrapper;

    iget-object v1, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    invoke-virtual {v0, v1}, Lccsancom/san/ads/base/AdWrapper;->setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/ads/base/BannerAdWrapper;

    invoke-virtual {v0}, Lccsancom/san/ads/base/BannerAdWrapper;->getAdView()Lccsanandroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsancom/san/ads/base/AdWrapper;)Z
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/ads/base/BannerAdWrapper;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lccsanandroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    const-string v0, "BannerController"

    const-string v1, "#onAttachedToWindow"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->getDownloadingList()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lccsanandroid/widget/FrameLayout;->onWindowVisibilityChanged(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onWindowVisibilityChanged visibility = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerController"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;

    if-eqz p1, :cond_2

    .line 5
    invoke-interface {p1}, Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;->onVisibility()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 8
    :cond_1
    iget-object p1, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;

    if-eqz p1, :cond_2

    .line 9
    invoke-interface {p1}, Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;->onInvisible()V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/ads/base/BannerAdWrapper;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#refreshBanner bannerAdWrapper = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BannerController"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p1}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->setBannerAdWrapper(Lccsancom/san/ads/base/BannerAdWrapper;)V

    .line 3
    invoke-direct {p0}, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->getDownloadingList()V

    return-void
.end method

.method public setAdActionListener(Lccsancom/san/ads/base/IAdListener$AdActionListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->unifiedDownload:Lccsancom/san/ads/base/IAdListener$AdActionListener;

    return-void
.end method

.method public setBannerAdWrapper(Lccsancom/san/ads/base/BannerAdWrapper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/ads/base/BannerAdWrapper;

    return-void
.end method

.method public setBannerWindowStatusListener(Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/banner/IncentiveDownloadUtils$removeDownloadListener;

    return-void
.end method

.method public unifiedDownload()Z
    .locals 1

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/banner/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/ads/base/BannerAdWrapper;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsancom/san/ads/base/AdWrapper;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
