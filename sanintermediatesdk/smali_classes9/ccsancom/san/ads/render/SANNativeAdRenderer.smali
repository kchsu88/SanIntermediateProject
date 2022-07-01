.class public Lccsancom/san/ads/render/SANNativeAdRenderer;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/ads/render/SANAdRender;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;,
        Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lccsancom/san/ads/render/SANAdRender<",
        "Lccsancom/san/ads/SANNativeAd;",
        ">;"
    }
.end annotation


# instance fields
.field private final addDownloadListener:Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;

.field final removeDownloadListener:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Lccsanandroid/view/View;",
            "Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer;->addDownloadListener:Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;

    .line 3
    new-instance p1, Ljava/util/WeakHashMap;

    invoke-direct {p1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object p1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer;->removeDownloadListener:Ljava/util/WeakHashMap;

    return-void
.end method

.method private unifiedDownload(Lccsanandroid/view/View;Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;Lccsancom/san/ads/SANNativeAd;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 4

    .line 1
    iget-object v0, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    invoke-virtual {p3}, Lccsancom/san/ads/SANNativeAd;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/ads/render/AdViewRenderHelper;->addTextView(Lccsanandroid/widget/TextView;Ljava/lang/String;)V

    .line 2
    iget-object v0, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {p3}, Lccsancom/san/ads/SANNativeAd;->getContent()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/ads/render/AdViewRenderHelper;->addTextView(Lccsanandroid/widget/TextView;Ljava/lang/String;)V

    .line 3
    iget-object v0, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-virtual {p3}, Lccsancom/san/ads/SANNativeAd;->getCallToAction()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lccsancom/san/ads/render/AdViewRenderHelper;->addTextView(Lccsanandroid/widget/TextView;Ljava/lang/String;)V

    .line 6
    iget-object v0, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->removeDownloadListener:Lccsancom/san/ads/MediaView;

    .line 7
    invoke-virtual {p3}, Lccsancom/san/ads/SANNativeAd;->getAdIconView()Lccsanandroid/view/View;

    move-result-object v1

    .line 8
    invoke-virtual {p3}, Lccsancom/san/ads/SANNativeAd;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lccsancom/san/ads/render/AdViewRenderHelper;->loadMediaView(Lccsancom/san/ads/MediaView;Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 11
    iget-object v1, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->getDownloadStatusByUrl:Lccsancom/san/ads/MediaView;

    .line 12
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p3, v2}, Lccsancom/san/ads/SANNativeAd;->getAdMediaView([Ljava/lang/Object;)Lccsanandroid/view/View;

    move-result-object v2

    .line 13
    invoke-virtual {p3}, Lccsancom/san/ads/SANNativeAd;->getPosterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lccsancom/san/ads/render/AdViewRenderHelper;->loadMediaView(Lccsancom/san/ads/MediaView;Lccsanandroid/view/View;Ljava/lang/String;)V

    .line 16
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v3, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->IncentiveDownloadUtils:Lccsanandroid/widget/TextView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    iget-object v3, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object p2, p2, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->unifiedDownload:Lccsanandroid/widget/TextView;

    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    .line 21
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz v1, :cond_1

    .line 23
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    :cond_1
    invoke-virtual {p3, p1, v2, p4}, Lccsancom/san/ads/SANNativeAd;->prepare(Lccsanandroid/view/View;Ljava/util/List;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public createAdView(Lccsanandroid/content/Context;Lccsancom/san/ads/SANNativeAd;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 2

    .line 2
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer;->addDownloadListener:Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;

    iget v0, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;->addDownloadListener:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p3, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;Z)Lccsanandroid/view/View;

    move-result-object p1

    .line 3
    invoke-virtual {p2}, Lccsancom/san/ads/SANNativeAd;->getCustomAdContainer()Lccsanandroid/view/ViewGroup;

    move-result-object p2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 6
    invoke-virtual {p3}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 7
    invoke-virtual {p2, p1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    .line 8
    invoke-virtual {p3, p2}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2, p1}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;)V

    :goto_0
    return-object p2

    :cond_1
    return-object p1
.end method

.method public bridge synthetic createAdView(Lccsanandroid/content/Context;Lccsancom/san/ads/core/SANAd;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;
    .locals 0

    .line 1
    check-cast p2, Lccsancom/san/ads/SANNativeAd;

    invoke-virtual {p0, p1, p2, p3}, Lccsancom/san/ads/render/SANNativeAdRenderer;->createAdView(Lccsanandroid/content/Context;Lccsancom/san/ads/SANNativeAd;Lccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public renderAdView(Lccsanandroid/view/View;Lccsancom/san/ads/SANNativeAd;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lccsancom/san/ads/render/SANNativeAdRenderer;->renderAdView(Lccsanandroid/view/View;Lccsancom/san/ads/SANNativeAd;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    return-void
.end method

.method public renderAdView(Lccsanandroid/view/View;Lccsancom/san/ads/SANNativeAd;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 2

    .line 3
    iget-object v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer;->removeDownloadListener:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lccsancom/san/ads/render/SANNativeAdRenderer;->addDownloadListener:Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;

    invoke-static {p1, v0}, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->IncentiveDownloadUtils(Lccsanandroid/view/View;Lccsancom/san/ads/render/SANNativeAdRenderer$SViewBinder;)Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lccsancom/san/ads/render/SANNativeAdRenderer;->removeDownloadListener:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    invoke-direct {p0, p1, v0, p2, p3}, Lccsancom/san/ads/render/SANNativeAdRenderer;->unifiedDownload(Lccsanandroid/view/View;Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;Lccsancom/san/ads/SANNativeAd;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    .line 10
    const-string p1, "San.AdRenderer"

    const-string p2, "#renderAdView"

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iget-object p1, v0, Lccsancom/san/ads/render/SANNativeAdRenderer$SNativeViewHolder;->getDownloadingList:Lccsanandroid/view/View;

    if-eqz p1, :cond_1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2}, Lccsanandroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public bridge synthetic renderAdView(Lccsanandroid/view/View;Lccsancom/san/ads/core/SANAd;)V
    .locals 0

    .line 1
    check-cast p2, Lccsancom/san/ads/SANNativeAd;

    invoke-virtual {p0, p1, p2}, Lccsancom/san/ads/render/SANNativeAdRenderer;->renderAdView(Lccsanandroid/view/View;Lccsancom/san/ads/SANNativeAd;)V

    return-void
.end method

.method public supports(Lccsancom/san/ads/core/SANAd;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lccsancom/san/ads/SANNativeAd;

    return p1
.end method
