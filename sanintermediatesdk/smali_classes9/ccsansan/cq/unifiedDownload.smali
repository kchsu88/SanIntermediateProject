.class public Lccsansan/cq/unifiedDownload;
.super Lccsansan/cq/removeDownloadListener;
.source ""


# instance fields
.field private final IncentiveDownloadUtils:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private getDownloadingList:Z

.field private removeDownloadListener:Lccsancom/san/mads/webview/getDownloadingList;

.field private unifiedDownload:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lccsansan/cq/removeDownloadListener;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lccsansan/cq/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    iput-boolean v1, p0, Lccsansan/cq/unifiedDownload;->getDownloadingList:Z

    .line 6
    iput-boolean v1, p0, Lccsansan/cq/unifiedDownload;->unifiedDownload:Z

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cq/unifiedDownload;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cq/unifiedDownload;->IncentiveDownloadUtils:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/cq/unifiedDownload;Lccsansan/dt/removeDownloadListener;)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lccsansan/cq/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result p0

    return p0
.end method

.method static synthetic addDownloadListener(Lccsansan/cq/unifiedDownload;)Lccsancom/san/mads/webview/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/cq/unifiedDownload;->removeDownloadListener:Lccsancom/san/mads/webview/getDownloadingList;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsansan/cq/unifiedDownload;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsansan/cq/unifiedDownload;->unifiedDownload:Z

    return p1
.end method

.method private getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z
    .locals 0

    .line 43
    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/getDownloadStatusByUrl;->getPackageNameByRecord()Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {}, Lccsansan/cz/unifiedDownload;->IncentiveSDK()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method static synthetic removeDownloadListener(Lccsansan/cq/unifiedDownload;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cq/unifiedDownload;->unifiedDownload:Z

    return p0
.end method

.method static synthetic removeDownloadListener(Lccsansan/cq/unifiedDownload;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lccsansan/cq/unifiedDownload;->getDownloadingList:Z

    return p1
.end method

.method private unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
    .locals 11

    .line 19
    invoke-virtual {p2}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 21
    invoke-virtual {p3}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->pause()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    invoke-static {v1}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v1

    .line 23
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-static {v2}, Lccsansan/bw/values;->addDownloadListener(F)I

    move-result v2

    .line 24
    new-instance v9, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v9, v1, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {p2, v9}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 26
    invoke-virtual {p3}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK$1()Z

    move-result v1

    const/16 v2, 0x7d1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 27
    new-array p1, v4, [Ljava/lang/Object;

    const-string p2, "Ad not loaded."

    aput-object p2, p1, v3

    const-string p2, "Banner.Web"

    const-string p3, "#loadWebView: "

    invoke-static {p2, p3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 28
    new-instance p1, Lccsancom/san/ads/AdError;

    const-string p2, "ad not loaded."

    invoke-direct {p1, v2, p2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    .line 32
    :cond_0
    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-static {v5}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    new-instance p1, Lccsancom/san/ads/AdError;

    const-string p2, "js tag is null."

    invoke-direct {p1, v2, p2}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p4, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    .line 38
    :cond_1
    invoke-direct {p0, p3}, Lccsansan/cq/unifiedDownload;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {v5}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    const/4 v3, 0x1

    :cond_3
    invoke-static {p1, v3}, Lccsancom/san/mads/webview/getDownloadingRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Z)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object v0

    iput-object v0, p0, Lccsansan/cq/unifiedDownload;->removeDownloadListener:Lccsancom/san/mads/webview/getDownloadingList;

    .line 40
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v0

    new-instance v1, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;

    move-object v3, v1

    move-object v4, p0

    move-object v6, p3

    move-object v7, p4

    move-object v8, p2

    move-object v10, p1

    invoke-direct/range {v3 .. v10}, Lccsansan/cq/unifiedDownload$IncentiveDownloadUtils;-><init>(Lccsansan/cq/unifiedDownload;Ljava/lang/String;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;Lccsancom/san/mads/banner/getDownloadingList;Lccsanandroid/widget/FrameLayout$LayoutParams;Lccsanandroid/content/Context;)V

    invoke-virtual {v0, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/cq/unifiedDownload;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lccsansan/cq/unifiedDownload;->getDownloadingList:Z

    return p0
.end method


# virtual methods
.method public removeDownloadListener(Lccsanandroid/content/Context;Lccsancom/san/ads/AdSize;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V
    .locals 2

    .line 4
    const-string v0, "Banner.Web"

    const-string v1, "#loadBanner"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p4, p5}, Lccsansan/cq/removeDownloadListener;->unifiedDownload(Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V

    if-eqz p4, :cond_2

    .line 6
    invoke-virtual {p4}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {p0, p2, p4}, Lccsansan/cq/unifiedDownload;->unifiedDownload(Lccsancom/san/ads/AdSize;Lccsansan/dt/removeDownloadListener;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 13
    invoke-direct {p0, p1, p3, p4, p5}, Lccsansan/cq/unifiedDownload;->unifiedDownload(Lccsanandroid/content/Context;Lccsancom/san/mads/banner/getDownloadingList;Lccsansan/dt/removeDownloadListener;Lccsancom/san/mads/banner/removeDownloadListener;)V

    goto :goto_0

    :cond_1
    nop

    .line 15
    const-string p1, "#loadBanner : ad size is not Suitable"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    sget-object p1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p5, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    nop

    .line 17
    const-string p1, "#loadBanner : no CreativeData"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object p1, Lccsancom/san/ads/AdError;->DIS_CONDITION_ERROR:Lccsancom/san/ads/AdError;

    invoke-interface {p5, p1}, Lccsancom/san/mads/banner/removeDownloadListener;->addDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method protected unifiedDownload(Lccsancom/san/ads/AdSize;Lccsansan/dt/removeDownloadListener;)Z
    .locals 2

    .line 41
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p2

    .line 42
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
