.class public Lccsansan/i/deleteDownItem;
.super Lccsansan/i/addDownloadListener;
.source ""


# instance fields
.field private IncentiveSDK:Lccsansan/i/getDownloadedList;

.field private deleteDownItem:Lccsanandroid/widget/ProgressBar;

.field private deleteDownList:Lccsanandroid/widget/ImageView;

.field private getDownloadStatusByUrl:Lccsanandroid/widget/ProgressBar;

.field private getDownloadedCount:Lccsanandroid/widget/LinearLayout;

.field private getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

.field private getDownloadingCount:Lccsanandroid/widget/TextView;

.field private getThumbPathByRecord:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

.field private pause:Lccsansan/dt/removeDownloadListener;

.field private resume:Lccsanandroid/widget/ImageView;

.field private trackReportShow:Z


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lccsansan/i/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lccsansan/i/deleteDownItem;->getDownloadingList(Lccsanandroid/content/Context;)V

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 2

    .line 1
    const-string v0, "ccsan_san_media_view_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lccsanandroid/widget/FrameLayout;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    .line 2
    const-string v0, "san_iv_background"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    .line 3
    const-string v0, "san_loading_progress"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadStatusByUrl:Lccsanandroid/widget/ProgressBar;

    .line 4
    const-string v0, "san_seek_progress"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    .line 5
    const-string v0, "san_iv_sound"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    .line 7
    const-string v0, "san_ll_error_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadedCount:Lccsanandroid/widget/LinearLayout;

    .line 8
    const-string v0, "san_iv_replay_btn"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsansan/i/deleteDownItem;->resume:Lccsanandroid/widget/ImageView;

    .line 9
    const-string v0, "san_tv_error_message"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadingCount:Lccsanandroid/widget/TextView;

    .line 11
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->resume:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 13
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsansan/i/addDownloadListener;->setMuteState(Z)V

    .line 14
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 17
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    return-void
.end method


# virtual methods
.method protected IncentiveDownloadUtils()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->IncentiveSDK:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onSurfaceTextureAvailable()V

    :cond_0
    return-void
.end method

.method public IncentiveDownloadUtils(I)V
    .locals 1

    .line 28
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 29
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method protected addDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public addDownloadListener(Lccsanandroid/widget/ImageView;Z)V
    .locals 2

    .line 30
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 31
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 32
    :cond_0
    iput-object p1, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    .line 33
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 34
    iput-boolean p2, p0, Lccsansan/i/deleteDownItem;->trackReportShow:Z

    return-void
.end method

.method public deleteDownItem()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadStatusByUrl:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public getDownloadedList()V
    .locals 4

    .line 3
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 8
    iget-boolean v3, p0, Lccsansan/i/deleteDownItem;->trackReportShow:Z

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 10
    :cond_3
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->IncentiveSDK:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onComplete()V

    :cond_4
    return-void
.end method

.method public getDownloadedRecordByUrl()V
    .locals 0

    return-void
.end method

.method protected getDownloadingList()Lccsansan/dd/removeDownloadListener;
    .locals 2

    .line 1
    new-instance v0, Lccsansan/dd/removeDownloadListener;

    invoke-direct {v0}, Lccsansan/dd/removeDownloadListener;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList(Ljava/util/List;)V

    .line 9
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 10
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload(Ljava/util/List;)V

    .line 11
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadStatusByUrl(Ljava/util/List;)V

    .line 12
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->addDownloadListener(Ljava/util/List;)V

    .line 13
    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->removeDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener(Ljava/util/List;)V

    :cond_0
    return-object v0
.end method

.method public getDownloadingList(I)V
    .locals 1

    .line 18
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method protected removeDownloadListener()V
    .locals 0

    return-void
.end method

.method protected removeDownloadListener(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setAdData(Lccsansan/dt/removeDownloadListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    .line 4
    invoke-static {p1}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {p1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p1

    invoke-virtual {p1}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object p1

    .line 10
    :goto_0
    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object p1

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    return-void
.end method

.method public setLandingPageData(Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lccsansan/i/deleteDownItem;->getThumbPathByRecord:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    .line 3
    invoke-virtual {p1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object p1

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/i/deleteDownItem;->getThumbPathByRecord:Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;

    invoke-virtual {v1}, Lccsansan/dt/deleteDownItem$IncentiveDownloadUtils;->getDownloadingList()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    return-void
.end method

.method public setMediaViewListener(Lccsansan/i/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/deleteDownItem;->IncentiveSDK:Lccsansan/i/getDownloadedList;

    return-void
.end method

.method public setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsansan/i/addDownloadListener;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public unifiedDownload()V
    .locals 4

    .line 1
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->getDownloadStatusByUrl:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_1
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    :cond_2
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsansan/i/deleteDownItem;->pause:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->trackReportShow()Z

    move-result v0

    if-nez v0, :cond_4

    .line 9
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    iget-boolean v3, p0, Lccsansan/i/deleteDownItem;->trackReportShow:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x0

    :cond_3
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_4
    iget-object v0, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public unifiedDownload(II)V
    .locals 0

    .line 26
    iget-object p1, p0, Lccsansan/i/deleteDownItem;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p1, p2}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 12
    iget-object p2, p0, Lccsansan/i/deleteDownItem;->getDownloadStatusByUrl:Lccsanandroid/widget/ProgressBar;

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 13
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 14
    :cond_0
    iget-object p2, p0, Lccsansan/i/deleteDownItem;->getDownloadedRecordByUrl:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 15
    invoke-virtual {p2, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 16
    :cond_1
    iget-object p2, p0, Lccsansan/i/deleteDownItem;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz p2, :cond_2

    .line 17
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 18
    :cond_2
    iget-object p2, p0, Lccsansan/i/deleteDownItem;->getDownloadedCount:Lccsanandroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p2, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 20
    :cond_3
    iget-object p2, p0, Lccsansan/i/deleteDownItem;->deleteDownList:Lccsanandroid/widget/ImageView;

    if-eqz p2, :cond_5

    .line 21
    iget-boolean v2, p0, Lccsansan/i/deleteDownItem;->trackReportShow:Z

    if-eqz v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 22
    :cond_5
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p2

    const-string v0, "san_media_player_error_wrong"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 23
    const-string v0, "error_io"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "error_open_failed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "error_network"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 24
    :cond_6
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string p2, "san_media_player_network_err_msg"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 25
    :cond_7
    iget-object p1, p0, Lccsansan/i/deleteDownItem;->getDownloadingCount:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
