.class public Lccsansan/cq/addDownloadListener;
.super Lccsansan/cq/removeDownloadListener;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/cq/removeDownloadListener;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDownloadingList(Lccsancom/san/ads/AdSize;Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    .line 43
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p2

    .line 44
    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->pause()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Lccsancom/san/ads/AdSize;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {p1}, Lccsancom/san/ads/AdSize;->getHeight()I

    move-result p1

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdSize;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
    .locals 3

    .line 1
    const-string v0, "Banner.SingleImage"

    const-string v1, "#loadBanner"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p4, p5}, Lccsansan/cq/removeDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V

    if-eqz p4, :cond_2

    .line 3
    invoke-virtual {p4}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-virtual {p0, p2, p4}, Lccsansan/cq/addDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdSize;Lccsansan/dt/removeDownloadListener;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p3}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 12
    new-instance p2, Lccsanandroid/widget/ImageView;

    invoke-direct {p2, p1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 13
    invoke-virtual {p4}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    .line 14
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->pause()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v2

    .line 15
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    invoke-static {v0}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v0

    invoke-direct {v1, v2, v0}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    sget-object v0, Lccsanandroid/widget/ImageView$ScaleType;->CENTER_CROP:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 17
    invoke-virtual {p2, v1}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 18
    invoke-virtual {p3, v1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 19
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v0

    invoke-virtual {p4}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1, p2}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    .line 20
    new-instance v0, Lccsansan/cq/addDownloadListener$addDownloadListener;

    invoke-direct {v0, p0}, Lccsansan/cq/addDownloadListener$addDownloadListener;-><init>(Lccsansan/cq/addDownloadListener;)V

    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    .line 26
    invoke-virtual {p3, p2, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;I)V

    .line 28
    new-instance v0, Lccsanandroid/widget/ImageView;

    invoke-direct {v0, p1}, Lccsanandroid/widget/ImageView;-><init>(Lccsanandroid/content/Context;)V

    .line 29
    new-instance p1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v1

    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v2

    invoke-direct {p1, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x35

    .line 30
    iput v1, p1, Lccsanandroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 31
    sget-object v1, Lccsanandroid/widget/ImageView$ScaleType;->FIT_CENTER:Lccsanandroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 32
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 33
    const-string p1, "san_ad_logo"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setImageResource(I)V

    .line 34
    invoke-static {p4, v0}, Lccsansan/bw/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsanandroid/view/View;)V

    .line 35
    invoke-virtual {p3, v0}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 37
    invoke-interface {p5, p2}, Lccsancom/san/mads/banner/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/view/View;)V

    goto :goto_0

    :cond_1
    nop

    .line 39
    const-string p1, "#loadBanner : ad size is not Suitable"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    sget-object p1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p5, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    nop

    .line 41
    const-string p1, "#loadBanner : no CreativeData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    sget-object p1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p5, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void
.end method
