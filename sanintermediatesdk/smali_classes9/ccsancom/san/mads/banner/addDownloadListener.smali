.class public Lccsancom/san/mads/banner/addDownloadListener;
.super Lccsancom/san/mads/base/unifiedDownload;
.source ""


# instance fields
.field private getDownloadedCount:Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;

.field private final getDownloadingCount:Lccsancom/san/mads/banner/getDownloadingList;

.field private pause:Lccsancom/san/mads/banner/unifiedDownload;

.field private resume:Lccsancom/san/ads/AdSize;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsancom/san/mads/base/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdInfo;)V

    .line 2
    new-instance p1, Lccsancom/san/mads/banner/getDownloadingList;

    iget-object p2, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    invoke-direct {p1, p2}, Lccsancom/san/mads/banner/getDownloadingList;-><init>(Lccsanandroid/content/Context;)V

    iput-object p1, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingCount:Lccsancom/san/mads/banner/getDownloadingList;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/banner/addDownloadListener;Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload;
    .locals 0

    .line 2
    iput-object p1, p0, Lccsancom/san/mads/banner/addDownloadListener;->pause:Lccsancom/san/mads/banner/unifiedDownload;

    return-object p1
.end method

.method static synthetic IncentiveDownloadUtils(Lccsancom/san/mads/banner/addDownloadListener;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingCount:Lccsancom/san/mads/banner/getDownloadingList;

    return-object p0
.end method

.method static synthetic getDownloadedRecordByUrl(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/unifiedDownload;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/banner/addDownloadListener;->pause:Lccsancom/san/mads/banner/unifiedDownload;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/banner/addDownloadListener;)Lccsanandroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    return-object p0
.end method

.method private getDownloadingList(Lccsancom/san/ads/AdSize;)V
    .locals 3

    .line 4
    invoke-virtual {p1}, Lccsancom/san/ads/AdSize;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v0

    .line 5
    invoke-virtual {p1}, Lccsancom/san/ads/AdSize;->getHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result p1

    .line 6
    iget-object v1, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingCount:Lccsancom/san/mads/banner/getDownloadingList;

    new-instance v2, Lccsanandroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v0, p1}, Lccsanandroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic getDownloadingRecordByUrl(Lccsancom/san/mads/banner/addDownloadListener;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method

.method private pause()V
    .locals 8

    .line 1
    invoke-static {}, Lccsansan/cq/getDownloadingList;->getDownloadingList()Lccsansan/cq/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/cq/getDownloadingList;->getDownloadingList(I)Lccsansan/cq/removeDownloadListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v3, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingList:Lccsanandroid/content/Context;

    iget-object v4, p0, Lccsancom/san/mads/banner/addDownloadListener;->resume:Lccsancom/san/ads/AdSize;

    iget-object v5, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingCount:Lccsancom/san/mads/banner/getDownloadingList;

    iget-object v6, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    new-instance v7, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;

    invoke-direct {v7, p0}, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;-><init>(Lccsancom/san/mads/banner/addDownloadListener;)V

    invoke-virtual/range {v2 .. v7}, Lccsansan/cq/removeDownloadListener;->removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdSize;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V

    goto :goto_0

    .line 38
    :cond_0
    sget-object v0, Lccsancom/san/ads/AdError;->UN_SUPPORT_TYPE_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/banner/addDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    :goto_0
    return-void
.end method

.method static synthetic removeDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadedCount:Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;

    return-object p0
.end method

.method static synthetic unifiedDownload(Lccsancom/san/mads/banner/addDownloadListener;)Lccsansan/dt/removeDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    return-object p0
.end method


# virtual methods
.method public addDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.BannerLoader"

    const-string v1, "#onAdLoaded"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lccsancom/san/mads/banner/addDownloadListener;->pause()V

    goto :goto_0

    .line 5
    :cond_0
    sget-object v0, Lccsancom/san/ads/AdError;->INTERNAL_ERROR:Lccsancom/san/ads/AdError;

    invoke-virtual {p0, v0}, Lccsancom/san/mads/banner/addDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    :goto_0
    return-void
.end method

.method public addDownloadListener(Lccsancom/san/ads/AdSize;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lccsancom/san/mads/banner/addDownloadListener;->resume:Lccsancom/san/ads/AdSize;

    .line 5
    invoke-direct {p0, p1}, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingList(Lccsancom/san/ads/AdSize;)V

    return-void
.end method

.method public getDownloadingList()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadedRecordByUrl()Z

    move-result v0

    return v0
.end method

.method public removeDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onAdLoadError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsancom/san/ads/AdError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.BannerLoader"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadedCount:Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;

    iget-object v1, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingCount:Lccsancom/san/mads/banner/getDownloadingList;

    invoke-interface {v0, v1, p1}, Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;->unifiedDownload(Lccsancom/san/mads/banner/getDownloadingList;Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public removeDownloadListener(Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadedCount:Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;

    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 1
    invoke-static {}, Lccsansan/cq/getDownloadingList;->getDownloadingList()Lccsansan/cq/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/base/removeDownloadListener;->getDownloadingRecordByUrl:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->IncentiveDownloadUtils()I

    move-result v1

    invoke-virtual {v0, v1}, Lccsansan/cq/getDownloadingList;->getDownloadingList(I)Lccsansan/cq/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/cq/removeDownloadListener;->IncentiveDownloadUtils()V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingCount:Lccsancom/san/mads/banner/getDownloadingList;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    return-void
.end method
