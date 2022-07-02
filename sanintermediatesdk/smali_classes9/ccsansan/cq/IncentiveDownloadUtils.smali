.class public Lccsansan/cq/IncentiveDownloadUtils;
.super Lccsansan/cq/removeDownloadListener;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/j/unifiedDownload;

.field private final addDownloadListener:Lccsanandroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsansan/cq/removeDownloadListener;-><init>()V

    .line 59
    new-instance v0, Lccsansan/cq/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v0, p0}, Lccsansan/cq/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsansan/cq/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsansan/cq/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 1

    .line 59
    iget-object v0, p0, Lccsansan/cq/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/j/unifiedDownload;

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lccsansan/j/unifiedDownload;->destroy()V

    :cond_0
    return-void
.end method

.method protected getDownloadingList(Lccsancom/san/ads/AdSize;Lccsansan/dt/removeDownloadListener;)Z
    .locals 4

    .line 52
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->pause()F

    move-result v0

    float-to-int v0, v0

    .line 53
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result v1

    float-to-int v1, v1

    .line 54
    invoke-static {p2}, Lccsansan/dt/getDownloadedList;->addDownloadListener(Lccsansan/dt/removeDownloadListener;)Z

    move-result p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    sget-object p2, Lccsancom/san/ads/AdSize;->BANNER:Lccsancom/san/ads/AdSize;

    if-ne p1, p2, :cond_1

    const/16 p1, 0x50

    if-ne v0, p1, :cond_0

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 57
    :cond_1
    invoke-virtual {p0, p1}, Lccsansan/cq/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/ads/AdSize;)Lccsanandroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Lccsanandroid/graphics/Point;->x:I

    if-ne v0, p2, :cond_2

    invoke-virtual {p0, p1}, Lccsansan/cq/IncentiveDownloadUtils;->unifiedDownload(Lccsancom/san/ads/AdSize;)Lccsanandroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Lccsanandroid/graphics/Point;->y:I

    if-ne v1, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method public removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdSize;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
    .locals 10

    .line 1
    const-string v0, "Banner.Native"

    const-string v1, "#loadBanner"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, p4, p5}, Lccsansan/cq/removeDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V

    if-nez p4, :cond_0

    .line 4
    sget-object p1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p5, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    .line 8
    :cond_0
    invoke-virtual {p0, p2, p4}, Lccsansan/cq/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/ads/AdSize;Lccsansan/dt/removeDownloadListener;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p3}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 11
    const-string p2, "ccsan_ccsan_san_banner_native_image_ex"

    invoke-static {p1, p2}, Lccsancom/san/bridge/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;)I

    move-result p2

    if-nez p2, :cond_1

    .line 13
    const-string p2, "ccsan_san_banner_native_image"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result p2

    .line 15
    :cond_1
    invoke-static {p1}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/ViewGroup;

    .line 16
    const-string v0, "san_icon"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 17
    const-string v1, "san_title"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lccsanandroid/widget/TextView;

    .line 18
    const-string v1, "san_message"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lccsanandroid/widget/TextView;

    .line 19
    const-string v1, "san_btn_stereo_progress"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsansan/j/unifiedDownload;

    iput-object v1, p0, Lccsansan/cq/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/j/unifiedDownload;

    .line 20
    const-string v1, "san_iv_ad_icon"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Lccsanandroid/view/ViewGroup;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v1

    check-cast v1, Lccsanandroid/widget/ImageView;

    .line 21
    invoke-static {p4, v1}, Lccsansan/bw/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;Lccsanandroid/view/View;)V

    .line 22
    invoke-virtual {p4}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v9

    .line 23
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object v1

    invoke-virtual {v9}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingRecordByUrl()Ljava/lang/String;

    move-result-object v3

    .line 24
    const-string v2, "ccsan_san_icon_bg"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->addDownloadListener(Ljava/lang/String;)I

    move-result v5

    .line 25
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v2

    const-string v4, "san_common_dimens_7dp"

    invoke-static {v4}, Lccsansan/bw/shouldTryHandlingAction;->unifiedDownload(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v2, v4}, Lccsanandroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 26
    move-object v2, p1

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Lccsancom/san/ads/SanImageLoader;->loadLandingRoundCornerUrl(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;II)V

    .line 29
    invoke-virtual {v9}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadStatusByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    invoke-virtual {v9}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    const/16 v1, 0x8

    .line 31
    invoke-virtual {v8, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {v9}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedRecordByUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    invoke-virtual {v8, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 36
    :goto_0
    iget-object v1, p0, Lccsansan/cq/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/j/unifiedDownload;

    invoke-virtual {v9}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedCount()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lccsansan/j/unifiedDownload;->setText(Ljava/lang/String;)V

    .line 37
    invoke-virtual {p3, p2, v2}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;I)V

    .line 38
    invoke-interface {p5, p2}, Lccsancom/san/mads/banner/removeDownloadListener;->IncentiveDownloadUtils(Lccsanandroid/view/View;)V

    .line 40
    iget-object p2, p0, Lccsansan/cq/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, p2}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 41
    iget-object p2, p0, Lccsansan/cq/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v7, p2}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 42
    iget-object p2, p0, Lccsansan/cq/IncentiveDownloadUtils;->addDownloadListener:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v8, p2}, Lccsanandroid/widget/TextView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 43
    iget-object p2, p0, Lccsansan/cq/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/j/unifiedDownload;

    new-instance p3, Lccsansan/cq/IncentiveDownloadUtils$removeDownloadListener;

    invoke-direct {p3, p0, p1}, Lccsansan/cq/IncentiveDownloadUtils$removeDownloadListener;-><init>(Lccsansan/cq/IncentiveDownloadUtils;Lccsanandroid/content/Context;)V

    invoke-virtual {p2, p4, p3}, Lccsansan/j/unifiedDownload;->registerClick(Lccsansan/dt/removeDownloadListener;Lccsansan/j/unifiedDownload$IncentiveDownloadUtils;)V

    goto :goto_1

    :cond_3
    nop

    .line 50
    const-string p1, "#loadBanner: ad size is not suitable"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object p1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p5, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    :goto_1
    return-void
.end method

.method protected unifiedDownload(Lccsancom/san/ads/AdSize;)Lccsanandroid/graphics/Point;
    .locals 2

    .line 58
    new-instance p1, Lccsanandroid/graphics/Point;

    const/16 v0, 0x140

    const/16 v1, 0x32

    invoke-direct {p1, v0, v1}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p1
.end method
