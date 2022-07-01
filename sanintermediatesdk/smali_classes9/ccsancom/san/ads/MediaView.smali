.class public Lccsancom/san/ads/MediaView;
.super Lccsanandroid/widget/FrameLayout;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsancom/san/ads/VideoOptions;

.field private addDownloadListener:Lccsansan/j/getDownloadingList;

.field private unifiedDownload:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    new-instance p1, Lccsancom/san/ads/VideoOptions$Builder;

    invoke-direct {p1}, Lccsancom/san/ads/VideoOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lccsancom/san/ads/VideoOptions$Builder;->build()Lccsancom/san/ads/VideoOptions;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/MediaView;->IncentiveDownloadUtils:Lccsancom/san/ads/VideoOptions;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Lccsancom/san/ads/VideoOptions$Builder;

    invoke-direct {p1}, Lccsancom/san/ads/VideoOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lccsancom/san/ads/VideoOptions$Builder;->build()Lccsancom/san/ads/VideoOptions;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/MediaView;->IncentiveDownloadUtils:Lccsancom/san/ads/VideoOptions;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Lccsancom/san/ads/VideoOptions$Builder;

    invoke-direct {p1}, Lccsancom/san/ads/VideoOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lccsancom/san/ads/VideoOptions$Builder;->build()Lccsancom/san/ads/VideoOptions;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/MediaView;->IncentiveDownloadUtils:Lccsancom/san/ads/VideoOptions;

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lccsanandroid/widget/FrameLayout;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;II)V

    .line 8
    new-instance p1, Lccsancom/san/ads/VideoOptions$Builder;

    invoke-direct {p1}, Lccsancom/san/ads/VideoOptions$Builder;-><init>()V

    invoke-virtual {p1}, Lccsancom/san/ads/VideoOptions$Builder;->build()Lccsancom/san/ads/VideoOptions;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/ads/MediaView;->IncentiveDownloadUtils:Lccsancom/san/ads/VideoOptions;

    return-void
.end method

.method static synthetic unifiedDownload(Lccsancom/san/ads/MediaView;)Lccsansan/j/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/ads/MediaView;->addDownloadListener:Lccsansan/j/getDownloadingList;

    return-object p0
.end method


# virtual methods
.method public loadMadsMediaView(Lccsancom/san/ads/base/INativeAd;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    instance-of v0, p1, Lccsancom/san/mads/nativead/MadsNativeAd;

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 5
    check-cast p1, Lccsancom/san/mads/nativead/MadsNativeAd;

    .line 6
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 7
    invoke-virtual {p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->isVideoAd()Z

    move-result v1

    const-string v2, "San.MediaView"

    if-eqz v1, :cond_2

    .line 8
    const-string v1, "#loadMadsMediaView"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance v1, Lccsansan/j/getDownloadingList;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsansan/j/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    iput-object v1, p0, Lccsancom/san/ads/MediaView;->addDownloadListener:Lccsansan/j/getDownloadingList;

    .line 10
    invoke-virtual {p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->getAdData()Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/j/getDownloadingList;->setAdData(Lccsansan/dt/removeDownloadListener;)V

    .line 11
    iget-object v1, p0, Lccsancom/san/ads/MediaView;->addDownloadListener:Lccsansan/j/getDownloadingList;

    sget-object v2, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lccsansan/j/getDownloadingList;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 12
    iget-object v1, p0, Lccsancom/san/ads/MediaView;->addDownloadListener:Lccsansan/j/getDownloadingList;

    iget-object v2, p0, Lccsancom/san/ads/MediaView;->IncentiveDownloadUtils:Lccsancom/san/ads/VideoOptions;

    invoke-virtual {v1, v2}, Lccsansan/j/getDownloadingList;->setVideoOptions(Lccsancom/san/ads/VideoOptions;)V

    .line 13
    iget-object v1, p0, Lccsancom/san/ads/MediaView;->addDownloadListener:Lccsansan/j/getDownloadingList;

    iget-object v2, p0, Lccsancom/san/ads/MediaView;->unifiedDownload:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    invoke-virtual {v1, v2}, Lccsansan/j/getDownloadingList;->setVideoLifecycleCallbacks(Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;)V

    .line 14
    iget-object v1, p0, Lccsancom/san/ads/MediaView;->addDownloadListener:Lccsansan/j/getDownloadingList;

    new-instance v2, Lccsancom/san/ads/MediaView$1;

    invoke-direct {v2, p0, p1}, Lccsancom/san/ads/MediaView$1;-><init>(Lccsancom/san/ads/MediaView;Lccsancom/san/mads/nativead/MadsNativeAd;)V

    invoke-virtual {v1, v2}, Lccsansan/j/getDownloadingList;->setMediaViewListener(Lccsansan/i/getDownloadedList;)V

    .line 20
    iget-object p1, p0, Lccsancom/san/ads/MediaView;->addDownloadListener:Lccsansan/j/getDownloadingList;

    invoke-virtual {p0, p1, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    nop

    .line 22
    const-string v1, "#loadMadsMediaView Image"

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    new-instance v1, Lccsanandroid/widget/ImageView;

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 24
    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 25
    sget-object v0, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v0}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 26
    invoke-virtual {p0, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 27
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lccsancom/san/mads/nativead/MadsNativeAd;->getPosterUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1, v1}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    :goto_0
    return-void
.end method

.method public setVideoLifecycleCallbacks(Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/MediaView;->unifiedDownload:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    return-void
.end method

.method public setVideoOptions(Lccsancom/san/ads/VideoOptions;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/ads/MediaView;->IncentiveDownloadUtils:Lccsancom/san/ads/VideoOptions;

    return-void
.end method
