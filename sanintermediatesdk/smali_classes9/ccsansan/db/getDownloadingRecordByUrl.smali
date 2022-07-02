.class public Lccsansan/db/getDownloadingRecordByUrl;
.super Lccsansan/db/getDownloadingList;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;
    }
.end annotation


# instance fields
.field private addDownloadListener:Lccsanandroid/widget/TextView;

.field private deleteDownItem:Z

.field private getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;

.field private removeDownloadListener:Lccsanandroid/widget/ImageView;


# direct methods
.method public static synthetic $r8$lambda$3-f1rAD-NfJd7W-EKdaMBpEGXO4(Lccsansan/db/getDownloadingRecordByUrl;Lccsanandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lccsansan/db/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsanandroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsansan/db/getDownloadingList;-><init>()V

    .line 7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->deleteDownItem:Z

    return-void
.end method

.method private synthetic IncentiveDownloadUtils(Lccsanandroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingList$getDownloadingList;

    if-eqz p1, :cond_0

    .line 47
    invoke-interface {p1}, Lccsansan/db/getDownloadingList$getDownloadingList;->onClick()V

    :cond_0
    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/db/getDownloadingRecordByUrl;Ljava/lang/String;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/db/getDownloadingRecordByUrl;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lccsansan/db/getDownloadingRecordByUrl;->deleteDownItem:Z

    return p0
.end method

.method private addDownloadListener(Lccsanandroid/view/ViewGroup;Lccsansan/dt/removeDownloadListener;)V
    .locals 2

    .line 4
    invoke-virtual {p2}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object p2

    .line 7
    invoke-direct {p0, p2}, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const/4 p2, -0x1

    goto :goto_1

    .line 11
    :cond_0
    invoke-virtual {p2}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadedList()I

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Lccsanandroid/graphics/Point;->x:I

    move v1, p2

    .line 12
    :goto_0
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object p2

    iget p2, p2, Lccsanandroid/graphics/Point;->y:I

    .line 15
    :goto_1
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v1, p2}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 16
    iget-object p2, p0, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;

    invoke-virtual {p2}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 17
    iget-object p2, p0, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;

    invoke-virtual {p2}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Lccsanandroid/view/ViewGroup;

    invoke-virtual {p2}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 18
    :cond_2
    iget-object p2, p0, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;

    invoke-virtual {p2}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private getDownloadingList(Ljava/lang/String;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V
    .locals 2

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Support Cache: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->onPlacementStartLoad()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Need Mraid js: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-direct {p0, v1}, Lccsansan/db/getDownloadingRecordByUrl;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", load html data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreen.WebView"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;

    new-instance v1, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;

    invoke-direct {v1, p0, p2}, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;-><init>(Lccsansan/db/getDownloadingRecordByUrl;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V

    invoke-virtual {v0, p1, v1}, Lccsancom/san/mads/webview/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsansan/db/getDownloadingRecordByUrl;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lccsansan/db/getDownloadingRecordByUrl;->deleteDownItem:Z

    return p1
.end method

.method private removeDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z
    .locals 1

    .line 35
    invoke-virtual {p1}, Lccsansan/dt/getDownloadStatusByUrl;->removeDownloadListener()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z
    .locals 0

    .line 36
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


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;)V
    .locals 2

    .line 25
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 26
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 27
    :cond_0
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/view/View;
    .locals 6

    .line 1
    const-string v0, "FullScreen.WebView"

    const-string v1, "#initView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 6
    :cond_0
    invoke-virtual {p0}, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingRecordByUrl()I

    move-result v1

    invoke-static {p1, v1, v2}, Lccsanandroid/view/View;->inflate(Lccsanandroid/content/Context;ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v1

    .line 8
    const-string v2, "san_fl_foreground"

    invoke-static {v2}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v2

    check-cast v2, Lccsanandroid/widget/FrameLayout;

    .line 9
    const-string v3, "san_iv_close"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/ImageView;

    iput-object v3, p0, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    .line 10
    const-string v3, "san_tv_count"

    invoke-static {v3}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Lccsanandroid/view/View;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v3

    check-cast v3, Lccsanandroid/widget/TextView;

    iput-object v3, p0, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/widget/TextView;

    .line 12
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v3

    invoke-virtual {v3}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v3

    .line 13
    invoke-virtual {v3}, Lccsansan/dt/getDownloadStatusByUrl;->getDownloadingCount()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Lccsansan/dt/getDownloadStatusByUrl;->pause()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, p1, v4, v5}, Lccsansan/db/getDownloadingList;->addDownloadListener(Lccsanandroid/content/Context;II)V

    .line 16
    invoke-direct {p0, v3}, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener(Lccsansan/dt/getDownloadStatusByUrl;)Z

    move-result p1

    const/4 v3, -0x1

    if-eqz p1, :cond_1

    .line 17
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v3, v3}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "layoutParams : x = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Lccsanandroid/graphics/Point;->x:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "  y = "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->getDownloadedRecordByUrl()Lccsanandroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Lccsanandroid/graphics/Point;->y:I

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance p1, Lccsanandroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v3, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    :goto_0
    const/16 v0, 0xd

    .line 22
    invoke-virtual {p1, v0}, Lccsanandroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 23
    invoke-virtual {v2, p1}, Lccsanandroid/widget/FrameLayout;->setLayoutParams(Lccsanandroid/view/ViewGroup$LayoutParams;)V

    .line 24
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener(Lccsanandroid/view/ViewGroup;Lccsansan/dt/removeDownloadListener;)V

    return-object v1

    :cond_2
    :goto_1
    return-object v2
.end method

.method public addDownloadListener(Lccsanandroid/content/Context;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V
    .locals 5

    .line 19
    const-string v0, "FullScreen.WebView"

    const-string v1, "#loadWebFullScreenAd"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->ActionTypeDownload()Lccsansan/dt/getDownloadStatusByUrl;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/getDownloadStatusByUrl;->getThumbPathByRecord()Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x3ec

    if-eqz v1, :cond_0

    .line 22
    new-instance p1, Lccsancom/san/ads/AdError;

    const-string v0, "No JsTag Data"

    invoke-direct {p1, v2, v0}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, p1}, Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void

    :cond_0
    nop

    .line 25
    const/4 v1, 0x0

    iput-boolean v1, p0, Lccsansan/db/getDownloadingRecordByUrl;->deleteDownItem:Z

    .line 27
    :try_start_0
    invoke-virtual {p0}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v3

    invoke-direct {p0, v3}, Lccsansan/db/getDownloadingRecordByUrl;->unifiedDownload(Lccsansan/dt/removeDownloadListener;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    invoke-static {p1, v1}, Lccsancom/san/mads/webview/getDownloadingRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Z)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p1

    iput-object p1, p0, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 29
    new-instance v1, Lccsancom/san/ads/AdError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create WebView failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {p2, v1}, Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    .line 32
    :goto_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object p1

    new-instance v1, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;

    invoke-direct {v1, p0, v0, p2}, Lccsansan/db/getDownloadingRecordByUrl$removeDownloadListener;-><init>(Lccsansan/db/getDownloadingRecordByUrl;Ljava/lang/String;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V

    invoke-virtual {p1, v1}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method public addDownloadListener(Ljava/lang/String;)V
    .locals 4

    .line 38
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v0}, Lccsanandroid/widget/TextView;->getContext()Lccsanandroid/content/Context;

    move-result-object v0

    .line 39
    iget-object v1, p0, Lccsansan/db/getDownloadingList;->unifiedDownload:Lccsancom/san/ads/AdFormat;

    sget-object v2, Lccsancom/san/ads/AdFormat;->REWARDED_AD:Lccsancom/san/ads/AdFormat;

    if-ne v1, v2, :cond_0

    const-string v1, "san_countdown_rewarded"

    goto :goto_0

    :cond_0
    const-string v1, "san_countdown_skip"

    .line 40
    :goto_0
    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->removeDownloadListener(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lccsanandroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected getDownloadingList(I)Lccsanandroid/graphics/Point;
    .locals 2

    .line 37
    new-instance p1, Lccsanandroid/graphics/Point;

    const/16 v0, 0x2d0

    const/16 v1, 0x42b

    invoke-direct {p1, v0, v1}, Lccsanandroid/graphics/Point;-><init>(II)V

    return-object p1
.end method

.method public getDownloadingRecordByUrl()I
    .locals 1

    .line 1
    const-string v0, "ccsan_san_full_screen_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsancom/san/mads/webview/getDownloadingList;->getDownloadingList()V

    .line 3
    iput-object v1, p0, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList:Lccsancom/san/mads/webview/getDownloadingList;

    .line 5
    :cond_0
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setBackground(Lccsanandroid/graphics/drawable/Drawable;)V

    .line 7
    iput-object v1, p0, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    :cond_1
    return-void
.end method

.method public unifiedDownload()V
    .locals 2

    .line 42
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->addDownloadListener:Lccsanandroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 44
    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setVisibility(I)V

    .line 45
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl;->removeDownloadListener:Lccsanandroid/widget/ImageView;

    new-instance v1, Lccsansan/db/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lccsansan/db/getDownloadingRecordByUrl$$ExternalSyntheticLambda0;-><init>(Lccsansan/db/getDownloadingRecordByUrl;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method
