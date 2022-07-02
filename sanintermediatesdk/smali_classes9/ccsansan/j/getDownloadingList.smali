.class public Lccsansan/j/getDownloadingList;
.super Lccsansan/i/addDownloadListener;
.source ""


# instance fields
.field private IncentiveSDK:Z

.field private deleteDownItem:Lccsanandroid/widget/ProgressBar;

.field private deleteDownList:Lccsanandroid/widget/LinearLayout;

.field private getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

.field private getDownloadedCount:Lccsanandroid/widget/ImageView;

.field private getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

.field private getDownloadingCount:Lccsanandroid/view/View;

.field private getPackageNameByRecord:Lccsansan/i/getDownloadedList;

.field private getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

.field private pause:Lccsanandroid/widget/TextView;

.field private resume:Lccsanandroid/widget/ImageView;

.field private trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

.field private trackReportShow:Lccsansan/cr/addDownloadListener$removeDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lccsansan/i/addDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lccsansan/j/getDownloadingList;->IncentiveSDK:Z

    .line 8
    invoke-direct {p0, p1}, Lccsansan/j/getDownloadingList;->removeDownloadListener(Lccsanandroid/content/Context;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/j/getDownloadingList;)Lccsansan/dg/unifiedDownload;
    .locals 0

    .line 2
    iget-object p0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    return-object p0
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/j/getDownloadingList;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsansan/i/addDownloadListener;->unifiedDownload:Z

    return p1
.end method

.method static synthetic addDownloadListener(Lccsansan/j/getDownloadingList;)Lccsanandroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsansan/j/getDownloadingList;)Lccsanandroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    return-object p0
.end method

.method private getPackageNameByRecord()V
    .locals 5

    .line 1
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportShow:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getDownloadingCount:Lccsanandroid/view/View;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v0, v1, p0, v4, v3}, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lccsansan/i/addDownloadListener;->unifiedDownload:Z

    :cond_0
    return-void
.end method

.method private getVideoPlayUrl()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-static {v0}, Lccsansan/dd/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->resume()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic removeDownloadListener(Lccsansan/j/getDownloadingList;)Lccsanandroid/view/TextureView;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    return-object p0
.end method

.method private removeDownloadListener(Lccsanandroid/content/Context;)V
    .locals 2

    .line 2
    new-instance v0, Lccsansan/cr/addDownloadListener$removeDownloadListener;

    invoke-direct {v0}, Lccsansan/cr/addDownloadListener$removeDownloadListener;-><init>()V

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportShow:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    .line 3
    const-string v0, "ccsan_san_native_media_view"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object p1

    .line 4
    const-string v0, "san_iv_background"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    .line 5
    const-string v0, "san_loading_progress"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    .line 6
    const-string v0, "san_seek_progress"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

    .line 7
    const-string v0, "san_iv_sound"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    .line 9
    const-string v0, "san_iv_start_button"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->resume:Lccsanandroid/widget/ImageView;

    .line 10
    new-instance v1, Lccsansan/j/getDownloadingList$getDownloadingList;

    invoke-direct {v1, p0}, Lccsansan/j/getDownloadingList$getDownloadingList;-><init>(Lccsansan/j/getDownloadingList;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 18
    const-string v0, "san_ll_error_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/LinearLayout;

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownList:Lccsanandroid/widget/LinearLayout;

    .line 19
    const-string v0, "san_tv_error_message"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/j/getDownloadingList;->pause:Lccsanandroid/widget/TextView;

    .line 20
    const-string v0, "san_iv_replay_btn"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    .line 21
    iget-object v1, p0, Lccsansan/i/addDownloadListener;->getDownloadedList:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    iget-object v1, p0, Lccsansan/i/addDownloadListener;->getDownloadingRecordByUrl:Lccsanandroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0}, Lccsanandroid/widget/FrameLayout;->removeAllViews()V

    .line 26
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->removeDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 27
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0}, Lccsancom/san/mads/banner/getDownloadStatusByUrl;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsanandroid/view/View;)Lccsanandroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lccsansan/j/getDownloadingList;->getDownloadingCount:Lccsanandroid/view/View;

    return-void
.end method

.method private trackReportClick()V
    .locals 5

    .line 1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->getDownloadedCount()I

    move-result v0

    .line 2
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->trackReportShow:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    iget-object v2, p0, Lccsansan/j/getDownloadingList;->getDownloadingCount:Lccsanandroid/view/View;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v2, p0, v0, v4}, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-boolean v0, p0, Lccsansan/i/addDownloadListener;->unifiedDownload:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getThumbPathByRecord()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->resume()V

    .line 5
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->resume:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, v3}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lccsansan/j/getDownloadingList;->getPackageNameByRecord()V

    return-void
.end method

.method private trackReportShow()V
    .locals 4

    .line 1
    invoke-static {}, Lccsansan/cz/unifiedDownload;->resume()I

    move-result v0

    .line 2
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->trackReportShow:Lccsansan/cr/addDownloadListener$removeDownloadListener;

    iget-object v2, p0, Lccsansan/j/getDownloadingList;->getDownloadingCount:Lccsanandroid/view/View;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, p0, v0, v3}, Lccsansan/cr/addDownloadListener$removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Lccsanandroid/view/View;ILjava/lang/Integer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsansan/i/addDownloadListener;->getThumbPathByRecord()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lccsansan/j/getDownloadingList;->IncentiveSDK:Z

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lccsansan/j/getDownloadingList;->getDownloadingRecordByUrl()V

    .line 5
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->resume:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 8
    :cond_0
    invoke-direct {p0}, Lccsansan/j/getDownloadingList;->getPackageNameByRecord()V

    return-void
.end method

.method static synthetic unifiedDownload(Lccsansan/j/getDownloadingList;)Lccsansan/dg/unifiedDownload;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    return-object p0
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onTextureAvailable hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getPackageNameByRecord:Lccsansan/i/getDownloadedList;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lccsansan/i/getDownloadedList;->onSurfaceTextureAvailable()V

    .line 4
    :cond_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;->onVideoStart()V

    :cond_1
    return-void
.end method

.method public IncentiveDownloadUtils(I)V
    .locals 1

    .line 43
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public addDownloadListener()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#setBaseImageVisibly hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public deleteDownItem()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#start hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownList:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;->onVideoPlay()V

    :cond_2
    return-void
.end method

.method public getDownloadStatusByUrl()V
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onPlayStatusPause"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->resume:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    if-eqz v0, :cond_2

    .line 8
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;->onVideoPause()V

    :cond_2
    return-void
.end method

.method public getDownloadedList()V
    .locals 3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onPlayStatusCompleted hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :cond_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    .line 10
    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 11
    :cond_1
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 12
    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 13
    :cond_2
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownList:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    .line 14
    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 15
    :cond_3
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->pause:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 16
    invoke-virtual {v0, v2}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 17
    :cond_4
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    if-eqz v0, :cond_5

    .line 18
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;->onVideoEnd()V

    :cond_5
    return-void
.end method

.method public getDownloadedRecordByUrl()V
    .locals 2

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onPlayStatusStopped"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->resume:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :cond_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    .line 32
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public getDownloadingList()Lccsansan/dd/removeDownloadListener;
    .locals 2

    .line 1
    new-instance v0, Lccsansan/dd/removeDownloadListener;

    invoke-direct {v0}, Lccsansan/dd/removeDownloadListener;-><init>()V

    .line 2
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->IncentiveSDK()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getAdFormat()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->removeDownloadListener(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->IncentiveDownloadUtils()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadingList(Ljava/util/List;)V

    .line 9
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->addDownloadListener()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->IncentiveDownloadUtils(Ljava/util/List;)V

    .line 10
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->unifiedDownload()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->unifiedDownload(Ljava/util/List;)V

    .line 11
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadedList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->getDownloadStatusByUrl(Ljava/util/List;)V

    .line 12
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->performAction()Lccsansan/dt/getPackageNameByRecord;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getPackageNameByRecord;->getDownloadingList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsansan/dd/removeDownloadListener;->addDownloadListener(Ljava/util/List;)V

    .line 13
    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

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

    .line 33
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ProgressBar;->setSecondaryProgress(I)V

    :cond_0
    return-void
.end method

.method public getDownloadingRecordByUrl()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsansan/i/addDownloadListener;->getDownloadingRecordByUrl()V

    .line 2
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;->onVideoPlay()V

    :cond_0
    return-void
.end method

.method public onVisibilityChanged(Lccsanandroid/view/View;I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lccsansan/j/getDownloadingList;->IncentiveSDK:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onWindowFocusChanged hasWindowFocus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-direct {p0}, Lccsansan/j/getDownloadingList;->getVideoPlayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Get focus doStartPlay  hashCode\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lccsansan/i/addDownloadListener;->getDownloadingList:Lccsansan/dg/unifiedDownload;

    invoke-virtual {p1}, Lccsansan/dg/unifiedDownload;->getDownloadedRecordByUrl()V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NO focus pausePlay  hashCode\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onPreStart hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/i/addDownloadListener;->addDownloadListener:Lccsanandroid/view/TextureView;

    new-instance v1, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsansan/j/getDownloadingList$IncentiveDownloadUtils;-><init>(Lccsansan/j/getDownloadingList;)V

    invoke-virtual {v0, v1}, Lccsanandroid/view/TextureView;->setSurfaceTextureListener(Lccsanandroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method

.method public removeDownloadListener(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lccsansan/j/getDownloadingList;->trackReportShow()V

    return-void
.end method

.method public removeDownloadListener(Z)V
    .locals 2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onSoundClick hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public setAdData(Lccsansan/dt/removeDownloadListener;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    .line 3
    invoke-direct {p0}, Lccsansan/j/getDownloadingList;->getVideoPlayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lccsansan/i/addDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lccsancom/san/ads/SanImageLoader;->getInstance()Lccsancom/san/ads/SanImageLoader;

    move-result-object p1

    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/getDownloadStatusByUrl;->deleteDownList()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lccsansan/j/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    invoke-virtual {p1, v0, v1, v2}, Lccsancom/san/ads/SanImageLoader;->loadUri(Lccsanandroid/content/Context;Ljava/lang/String;Lccsanandroid/widget/ImageView;)V

    return-void
.end method

.method public setMediaViewListener(Lccsansan/i/getDownloadedList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/j/getDownloadingList;->getPackageNameByRecord:Lccsansan/i/getDownloadedList;

    return-void
.end method

.method public setMuteState(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsansan/i/addDownloadListener;->setMuteState(Z)V

    .line 2
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1}, Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;->onVideoMute(Z)V

    :cond_0
    return-void
.end method

.method public setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsansan/i/addDownloadListener;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    .line 2
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setScaleType(Lccsanandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public setVideoLifecycleCallbacks(Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/j/getDownloadingList;->trackReportClick:Lccsancom/san/ads/base/IAdListener$VideoLifecycleCallbacks;

    return-void
.end method

.method public setVideoOptions(Lccsancom/san/ads/VideoOptions;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#initVideoOptions VideoOptions:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lccsancom/san/ads/VideoOptions;->getStartMuted()Z

    move-result v0

    invoke-super {p0, v0}, Lccsansan/i/addDownloadListener;->setMuteState(Z)V

    .line 4
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lccsancom/san/ads/VideoOptions;->getStartMuted()Z

    move-result p1

    invoke-virtual {v0, p1}, Lccsanandroid/widget/ImageView;->setSelected(Z)V

    :cond_0
    return-void
.end method

.method public unifiedDownload()V
    .locals 3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#onPlayStatusStarted hashCode\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaView.Native"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 7
    :cond_1
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v2}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 9
    :cond_2
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getThumbPathByRecord:Lccsansan/dt/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->trackReportShow()Z

    move-result v0

    if-nez v0, :cond_3

    .line 11
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    invoke-virtual {v0, v2}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 15
    :cond_4
    :goto_0
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->deleteDownList:Lccsanandroid/widget/LinearLayout;

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {v0, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 17
    :cond_5
    iget-object v0, p0, Lccsansan/j/getDownloadingList;->resume:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_6

    .line 18
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public unifiedDownload(II)V
    .locals 0

    .line 39
    iget-object p1, p0, Lccsansan/j/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p1, p2}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    .line 42
    :cond_0
    invoke-direct {p0}, Lccsansan/j/getDownloadingList;->trackReportClick()V

    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 19
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#onPlayStatusError reason:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " hashCode\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "MediaView.Native"

    invoke-static {v0, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lccsansan/j/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    const/16 v0, 0x8

    if-eqz p2, :cond_0

    .line 21
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 22
    :cond_0
    iget-object p2, p0, Lccsansan/j/getDownloadingList;->getDownloadStatusByUrl:Lccsanandroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 23
    invoke-virtual {p2, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 24
    :cond_1
    iget-object p2, p0, Lccsansan/j/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/ProgressBar;

    if-eqz p2, :cond_2

    .line 25
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 26
    :cond_2
    iget-object p2, p0, Lccsansan/j/getDownloadingList;->deleteDownList:Lccsanandroid/widget/LinearLayout;

    if-eqz p2, :cond_3

    .line 27
    invoke-virtual {p2, v1}, Lccsanandroid/widget/LinearLayout;->setVisibility(I)V

    .line 28
    :cond_3
    iget-object p2, p0, Lccsansan/j/getDownloadingList;->getDownloadedCount:Lccsanandroid/widget/ImageView;

    if-eqz p2, :cond_4

    .line 29
    invoke-virtual {p2, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 30
    :cond_4
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p2

    const-string v2, "san_media_player_error_wrong"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 31
    const-string v2, "error_io"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "error_open_failed"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "error_network"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 32
    :cond_5
    invoke-virtual {p0}, Lccsanandroid/widget/FrameLayout;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object p1

    const-string p2, "san_media_player_network_err_msg"

    invoke-static {p2}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lccsanandroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 33
    :cond_6
    iget-object p1, p0, Lccsansan/j/getDownloadingList;->pause:Lccsanandroid/widget/TextView;

    if-eqz p1, :cond_7

    .line 34
    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    iget-object p1, p0, Lccsansan/j/getDownloadingList;->pause:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 37
    :cond_7
    iget-object p1, p0, Lccsansan/j/getDownloadingList;->resume:Lccsanandroid/widget/ImageView;

    if-eqz p1, :cond_8

    .line 38
    invoke-virtual {p1, v0}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    :cond_8
    return-void
.end method
