.class public Lccsansan/db/getDownloadedList;
.super Lccsansan/db/getDownloadingList;
.source ""


# instance fields
.field private removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsansan/db/getDownloadingList;-><init>()V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/db/getDownloadedList;)Lccsansan/i/IncentiveDownloadUtils;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public IncentiveDownloadUtils()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/i/IncentiveDownloadUtils;->trackReportClick()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 3

    .line 1
    const-string v0, "FullScreen.Video"

    const-string v1, "#initView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsansan/db/getDownloadedList;->deleteDownItem()I

    move-result v0

    invoke-static {p1, v0, v1}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    .line 6
    new-instance v1, Lccsansan/i/IncentiveDownloadUtils;

    iget-object v2, p0, Lccsansan/db/getDownloadingList;->unifiedDownload:Lccsancom/san/ads/AdFormat;

    invoke-direct {v1, p1, v2}, Lccsansan/i/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;Lccsancom/san/ads/AdFormat;)V

    iput-object v1, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    .line 7
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lccsansan/i/IncentiveDownloadUtils;->setAdData(Lccsansan/dt/removeDownloadListener;)V

    .line 8
    iget-object v1, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsansan/i/addDownloadListener;->setCheckWindowFocus(Z)V

    .line 9
    iget-object v1, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    new-instance v2, Lccsansan/db/getDownloadedList$getDownloadingList;

    invoke-direct {v2, p0, p1}, Lccsansan/db/getDownloadedList$getDownloadingList;-><init>(Lccsansan/db/getDownloadedList;Lccsanandroid/content/Context;)V

    invoke-virtual {v1, v2}, Lccsansan/i/IncentiveDownloadUtils;->setRewardVideoListener(Lccsansan/i/getDownloadedList;)V

    .line 36
    const-string p1, "san_ad_container"

    invoke-static {p1}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object p1

    check-cast p1, Lccsanandroid/widget/FrameLayout;

    .line 37
    invoke-virtual {p1}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 38
    new-instance v1, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 39
    iget-object v2, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    invoke-virtual {p1, v2, v1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public deleteDownItem()I
    .locals 1

    .line 1
    const-string v0, "ccsan_san_full_screen_vast_video"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getDownloadingList(I)Lccsanandroid/graphics/Point;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public removeDownloadListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsansan/i/IncentiveDownloadUtils;->trackReportShow()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lccsansan/db/getDownloadedList;->removeDownloadListener:Lccsansan/i/IncentiveDownloadUtils;

    :cond_0
    return-void
.end method

.method public unifiedDownload()V
    .locals 0

    return-void
.end method
