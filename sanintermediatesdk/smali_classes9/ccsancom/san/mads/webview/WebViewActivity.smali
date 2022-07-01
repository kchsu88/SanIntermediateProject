.class public Lccsancom/san/mads/webview/WebViewActivity;
.super Lccsanandroidx/fragment/app/FragmentActivity;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

.field private addDownloadListener:Lccsanandroid/widget/FrameLayout;

.field private deleteDownItem:Ljava/lang/String;

.field private getDownloadingList:Lccsanandroid/widget/ImageView;

.field private removeDownloadListener:Z

.field private unifiedDownload:Lccsancom/san/mads/webview/getDownloadingList;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lccsanandroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic addDownloadListener(Lccsancom/san/mads/webview/WebViewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/webview/WebViewActivity;->deleteDownItem:Ljava/lang/String;

    return-object p0
.end method

.method private addDownloadListener(Lccsanandroid/view/ViewGroup;)V
    .locals 5

    .line 4
    new-instance v0, Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Lccsanandroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    iget-object v1, p0, Lccsancom/san/mads/webview/WebViewActivity;->deleteDownItem:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "Mads.WebViewActivity"

    if-eqz v1, :cond_0

    .line 7
    const-string p1, "Url is empty!"

    invoke-static {v2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 12
    :cond_0
    :try_start_0
    iget-object v1, p0, Lccsancom/san/mads/webview/WebViewActivity;->deleteDownItem:Ljava/lang/String;

    invoke-static {v1}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Lccsancom/san/mads/webview/getDownloadingRecordByUrl;->unifiedDownload(Lccsanandroid/content/Context;Z)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object v1

    iput-object v1, p0, Lccsancom/san/mads/webview/WebViewActivity;->unifiedDownload:Lccsancom/san/mads/webview/getDownloadingList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "web view create error ::"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :goto_0
    invoke-static {}, Lccsancom/san/ads/TaskHelper;->getInstance()Lccsancom/san/ads/TaskHelper;

    move-result-object v1

    new-instance v2, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;

    invoke-direct {v2, p0, p1, v0}, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;-><init>(Lccsancom/san/mads/webview/WebViewActivity;Lccsanandroid/view/ViewGroup;Lccsanandroid/widget/FrameLayout$LayoutParams;)V

    invoke-virtual {v1, v2}, Lccsancom/san/ads/TaskHelper;->run(Lccsancom/san/ads/Task;)V

    return-void
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/webview/WebViewActivity;)Lccsancom/san/mads/webview/getDownloadingList;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsancom/san/mads/webview/WebViewActivity;->unifiedDownload:Lccsancom/san/mads/webview/getDownloadingList;

    return-object p0
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/webview/WebViewActivity;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lccsancom/san/mads/webview/WebViewActivity;->removeDownloadListener:Z

    return p1
.end method


# virtual methods
.method public IncentiveDownloadUtils()I
    .locals 1

    .line 3
    const-string v0, "san_basic_mads_webview_layout"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public addDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "san_fl_foreground"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/FrameLayout;

    iput-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    .line 2
    const-string v0, "san_iv_back"

    invoke-static {v0}, Lccsansan/bw/shouldTryHandlingAction;->deleteDownItem(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lccsanandroidx/fragment/app/FragmentActivity;->findViewById(I)Lccsanandroid/view/View;

    move-result-object v0

    check-cast v0, Lccsanandroid/widget/ImageView;

    iput-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity;->getDownloadingList:Lccsanandroid/widget/ImageView;

    .line 4
    new-instance v1, Lccsancom/san/mads/webview/WebViewActivity$addDownloadListener;

    invoke-direct {v1, p0}, Lccsancom/san/mads/webview/WebViewActivity$addDownloadListener;-><init>(Lccsancom/san/mads/webview/WebViewActivity;)V

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ImageView;->setOnClickListener(Lccsanandroid/view/View$OnClickListener;)V

    .line 11
    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener:Lccsanandroid/widget/FrameLayout;

    invoke-direct {p0, v0}, Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener(Lccsanandroid/view/ViewGroup;)V

    return-void
.end method

.method public getResources()Lccsanandroid/content/res/Resources;
    .locals 1

    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getResources()Lccsanandroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lccsansan/d/deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/content/res/Resources;)Lccsanandroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Lccsanandroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->onCreate(Lccsanandroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/mads/webview/WebViewActivity;->IncentiveDownloadUtils()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroidx/fragment/app/FragmentActivity;->setContentView(I)V

    .line 3
    invoke-virtual {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->getIntent()Lccsanandroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lccsanandroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity;->deleteDownItem:Ljava/lang/String;

    :cond_0
    nop

    .line 8
    const-string p1, "ad"

    invoke-static {p1}, Lccsansan/bw/setErrorMessage;->IncentiveDownloadUtils(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsansan/dt/removeDownloadListener;

    iput-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    .line 9
    invoke-virtual {p0}, Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lccsanandroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity;->unifiedDownload:Lccsancom/san/mads/webview/getDownloadingList;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lccsancom/san/mads/webview/getDownloadingList;->getDownloadingList()V

    :cond_0
    return-void
.end method

.method public removeDownloadListener()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity;->IncentiveDownloadUtils:Lccsansan/dt/removeDownloadListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lccsansan/ck/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
