.class public Lccsansan/br/getDownloadingList;
.super Lccsanandroid/webkit/WebChromeClient;
.source ""


# instance fields
.field private IncentiveDownloadUtils:Lccsansan/aq/IncentiveDownloadUtils;

.field private addDownloadListener:Lccsanandroid/widget/TextView;

.field private deleteDownItem:Lccsanandroid/widget/ProgressBar;

.field private getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

.field private getDownloadedCount:Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;

.field private getDownloadedList:Lccsanandroid/view/View;

.field private getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

.field private getDownloadingCount:Lccsanandroid/view/View;

.field private getDownloadingList:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lccsanandroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private getDownloadingRecordByUrl:Lccsanandroid/widget/FrameLayout;

.field private pause:Lccsanandroid/view/View;

.field private removeDownloadListener:Lccsanandroid/view/View;

.field private unifiedDownload:Lccsansan/br/IncentiveDownloadUtils;


# direct methods
.method public constructor <init>(Lccsansan/br/IncentiveDownloadUtils;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsanandroid/webkit/WebChromeClient;-><init>()V

    .line 2
    iput-object p1, p0, Lccsansan/br/getDownloadingList;->unifiedDownload:Lccsansan/br/IncentiveDownloadUtils;

    .line 3
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsanandroid/view/View;

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->removeDownloadListener:Lccsanandroid/view/View;

    .line 4
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadStatusByUrl:Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->addDownloadListener:Lccsanandroid/widget/TextView;

    .line 5
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount:Lccsanandroid/widget/ProgressBar;

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    .line 6
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->pause:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    .line 7
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->deleteDownList:Lccsanandroid/widget/TextView;

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

    .line 8
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->getPackageNameByRecord:Lccsanandroid/view/View;

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View;

    .line 9
    iget-object v0, p1, Lccsansan/br/IncentiveDownloadUtils;->execute:Lccsanandroid/widget/FrameLayout;

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingRecordByUrl:Lccsanandroid/widget/FrameLayout;

    .line 10
    iget-object p1, p1, Lccsansan/br/IncentiveDownloadUtils;->ActionTypeDetailPage:Lccsanandroid/widget/FrameLayout;

    iput-object p1, p0, Lccsansan/br/getDownloadingList;->pause:Lccsanandroid/view/View;

    return-void
.end method

.method static synthetic IncentiveDownloadUtils(Lccsansan/br/getDownloadingList;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method private removeDownloadListener(Lccsanandroid/view/View;Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    .line 5
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p2}, Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    goto :goto_0

    .line 8
    :cond_0
    iput-object p1, p0, Lccsansan/br/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View;

    .line 9
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->pause:Lccsanandroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 10
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->removeDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    .line 12
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1, v1}, Lccsanandroid/view/Window;->setFlags(II)V

    .line 15
    :cond_1
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingRecordByUrl:Lccsanandroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingRecordByUrl:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Lccsanandroid/widget/FrameLayout;->addView(Lccsanandroid/view/View;)V

    .line 17
    iput-object p2, p0, Lccsansan/br/getDownloadingList;->getDownloadedCount:Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;

    :goto_0
    return-void
.end method

.method private unifiedDownload(Lccsanandroid/view/View;ILccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p3}, Lccsansan/br/getDownloadingList;->onShowCustomView(Lccsanandroid/view/View;Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method


# virtual methods
.method public getVideoLoadingProgressView()Lccsanandroid/view/View;
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingCount:Lccsanandroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/content/Context;

    invoke-static {v0}, Lccsanandroid/view/LayoutInflater;->from(Lccsanandroid/content/Context;)Lccsanandroid/view/LayoutInflater;

    move-result-object v0

    .line 3
    const-string v1, "san_basic_browser_video_progress"

    invoke-static {v1}, Lccsansan/bw/shouldTryHandlingAction;->getDownloadedRecordByUrl(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lccsanandroid/view/LayoutInflater;->inflate(ILccsanandroid/view/ViewGroup;)Lccsanandroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingCount:Lccsanandroid/view/View;

    return-object v0

    .line 6
    :cond_0
    invoke-super {p0}, Lccsanandroid/webkit/WebChromeClient;->getVideoLoadingProgressView()Lccsanandroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onConsoleMessage(Lccsanandroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "console lineNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/webkit/ConsoleMessage;->lineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/webkit/ConsoleMessage;->messageLevel()Lccsanandroid/webkit/ConsoleMessage$MessageLevel;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/webkit/ConsoleMessage$MessageLevel;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sourceId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/webkit/ConsoleMessage;->sourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Hybrid"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebChromeClient;->onConsoleMessage(Lccsanandroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onHideCustomView()V
    .locals 5

    .line 1
    invoke-super {p0}, Lccsanandroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 2
    const-string v0, "Hybrid"

    const-string v1, "onHideCustomView"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 4
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->pause:Lccsanandroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 5
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    const/4 v2, 0x1

    const/16 v3, 0x400

    const/16 v4, 0x8

    if-ne v0, v2, :cond_0

    .line 6
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->removeDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsanandroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 9
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->removeDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lccsansan/br/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->addDownloadListener()I

    move-result v0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    .line 11
    :cond_2
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->removeDownloadListener:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 12
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lccsanandroid/app/Activity;

    invoke-virtual {v0}, Lccsanandroid/app/Activity;->getWindow()Lccsanandroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3}, Lccsanandroid/view/Window;->clearFlags(I)V

    .line 15
    :cond_3
    :goto_0
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingRecordByUrl:Lccsanandroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Lccsanandroid/widget/FrameLayout;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View;

    invoke-virtual {v0, v4}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 17
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingRecordByUrl:Lccsanandroid/widget/FrameLayout;

    iget-object v1, p0, Lccsansan/br/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/FrameLayout;->removeView(Lccsanandroid/view/View;)V

    .line 18
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedCount:Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_4

    .line 19
    invoke-interface {v0}, Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    :cond_4
    const/4 v0, 0x0

    .line 22
    iput-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedList:Lccsanandroid/view/View;

    :cond_5
    return-void
.end method

.method public onJsAlert(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lccsanandroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/app/Activity;

    new-instance p2, Lccsansan/br/getDownloadingList$unifiedDownload;

    invoke-direct {p2, p0, p3}, Lccsansan/br/getDownloadingList$unifiedDownload;-><init>(Lccsansan/br/getDownloadingList;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lccsanandroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 9
    invoke-virtual {p4}, Lccsanandroid/webkit/JsResult;->confirm()V

    const/4 p1, 0x1

    return p1

    .line 12
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebChromeClient;->onJsAlert(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public final onJsPrompt(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsPromptResult;)Z
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lccsanandroid/webkit/WebChromeClient;->onJsPrompt(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsPromptResult;)Z

    move-result p1

    return p1
.end method

.method public onProgressChanged(Lccsanandroid/webkit/WebView;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    const/16 v1, 0x8

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0, p2}, Lccsanandroid/widget/ProgressBar;->setProgress(I)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressChanged progress = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Hybrid"

    invoke-static {v2, v0}, Lccsansan/ch/IncentiveDownloadUtils;->IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x64

    if-ne p2, v0, :cond_2

    .line 5
    invoke-static {}, Lccsansan/bw/setErrorMessage;->addDownloadListener()Lccsanandroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bw/getDownloadedList;->getDownloadingList(Lccsanandroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->unifiedDownload:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->unifiedDownload:Lccsansan/br/IncentiveDownloadUtils;

    const-string v2, "failed"

    iput-object v2, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 8
    const-string v2, "Network error or the url is wrong"

    iput-object v2, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadedRecordByUrl:Ljava/lang/String;

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->unifiedDownload:Lccsansan/br/IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    invoke-static {v0}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->unifiedDownload:Lccsansan/br/IncentiveDownloadUtils;

    const-string v2, "success"

    iput-object v2, v0, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingList:Ljava/lang/String;

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->deleteDownItem:Lccsanandroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Lccsanandroid/widget/ProgressBar;->setVisibility(I)V

    .line 18
    :cond_2
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/aq/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/aq/IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lccsanandroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 19
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    invoke-virtual {v0, p2}, Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;->setProgress(I)V

    const/16 v0, 0x4b

    if-le p2, v0, :cond_4

    .line 21
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadStatusByUrl:Lccsancom/san/hybrid/ui/IncentiveDownloadUtils;

    invoke-virtual {v0, v1}, Lccsanandroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadedRecordByUrl:Lccsanandroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 23
    invoke-virtual {v0, v1}, Lccsanandroid/widget/TextView;->setVisibility(I)V

    .line 26
    :cond_3
    iget-object v0, p0, Lccsansan/br/getDownloadingList;->unifiedDownload:Lccsansan/br/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsansan/br/IncentiveDownloadUtils;->getDownloadingCount()V

    .line 30
    :cond_4
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebChromeClient;->onProgressChanged(Lccsanandroid/webkit/WebView;I)V

    return-void
.end method

.method public onReceivedTitle(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebChromeClient;->onReceivedTitle(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsansan/br/getDownloadingList;->addDownloadListener:Lccsanandroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsansan/br/getDownloadingList;->addDownloadListener:Lccsanandroid/widget/TextView;

    invoke-virtual {p1, p2}, Lccsanandroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onShowCustomView(Lccsanandroid/view/View;ILccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lccsansan/br/getDownloadingList;->unifiedDownload(Lccsanandroid/view/View;ILccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public onShowCustomView(Lccsanandroid/view/View;Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lccsansan/br/getDownloadingList;->removeDownloadListener(Lccsanandroid/view/View;Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/app/Activity;Lccsansan/aq/IncentiveDownloadUtils;)V
    .locals 1

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lccsansan/br/getDownloadingList;->getDownloadingList:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lccsansan/br/getDownloadingList;->IncentiveDownloadUtils:Lccsansan/aq/IncentiveDownloadUtils;

    return-void
.end method
