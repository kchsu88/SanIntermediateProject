.class public Lccsancom/san/mads/webview/IncentiveDownloadUtils;
.super Lccsancom/san/mads/webview/removeDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/san/mads/webview/IncentiveDownloadUtils$unifiedDownload;
    }
.end annotation


# instance fields
.field protected IncentiveDownloadUtils:Lccsansan/af/unifiedDownload;

.field private addDownloadListener:I

.field private getDownloadingList:Z

.field private getDownloadingRecordByUrl:Lccsancom/san/mads/webview/IncentiveDownloadUtils$unifiedDownload;

.field private removeDownloadListener:Lccsansan/af/IncentiveDownloadUtils;

.field private unifiedDownload:Lccsansan/af/addDownloadListener;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/mads/webview/removeDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    .line 2
    invoke-virtual {p0}, Lccsancom/san/mads/webview/removeDownloadListener;->IncentiveDownloadUtils()V

    .line 3
    invoke-direct {p0}, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->removeDownloadListener()V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 6
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 8
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 11
    :cond_0
    new-instance v0, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;

    invoke-direct {v0, p0}, Lccsancom/san/mads/webview/IncentiveDownloadUtils$getDownloadingList;-><init>(Lccsancom/san/mads/webview/IncentiveDownloadUtils;)V

    iput-object v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/af/unifiedDownload;

    .line 22
    new-instance v0, Lccsansan/af/IncentiveDownloadUtils;

    invoke-direct {v0}, Lccsansan/af/IncentiveDownloadUtils;-><init>()V

    iput-object v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/af/IncentiveDownloadUtils;

    .line 23
    new-instance v1, Lccsancom/san/mads/webview/IncentiveDownloadUtils$IncentiveDownloadUtils;

    invoke-direct {v1, p0}, Lccsancom/san/mads/webview/IncentiveDownloadUtils$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/webview/IncentiveDownloadUtils;)V

    invoke-virtual {v0, v1}, Lccsansan/af/IncentiveDownloadUtils;->addDownloadListener(Lccsansan/af/IncentiveDownloadUtils$IncentiveDownloadUtils;)V

    .line 29
    new-instance v0, Lccsansan/af/addDownloadListener;

    iget-object v1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/af/unifiedDownload;

    invoke-direct {v0, p1, v1}, Lccsansan/af/addDownloadListener;-><init>(Lccsanandroid/content/Context;Lccsansan/af/unifiedDownload;)V

    iput-object v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/af/addDownloadListener;

    .line 30
    iget-object p1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->removeDownloadListener:Lccsansan/af/IncentiveDownloadUtils;

    const-string v0, "adJsTagBrowser"

    invoke-virtual {p0, p1, v0}, Lccsanandroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x7

    .line 31
    new-array p1, p1, [B

    fill-array-data p1, :array_0

    .line 32
    iget-object v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->unifiedDownload:Lccsansan/af/addDownloadListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Bridge"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lccsanandroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    const-string v0, "ad"

    invoke-static {v0, p1, p0}, Lccsancom/san/bridge/addDownloadListener;->getDownloadingList(Ljava/lang/String;Lccsanandroid/content/Context;Lccsanandroid/webkit/WebView;)Lccsanandroid/webkit/DownloadListener;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 36
    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    goto :goto_0

    .line 38
    :cond_1
    new-instance p1, Lccsancom/san/mads/webview/addDownloadListener;

    const-string v0, "ad/APDWeb"

    invoke-direct {p1, v0}, Lccsancom/san/mads/webview/addDownloadListener;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->setDownloadListener(Lccsanandroid/webkit/DownloadListener;)V

    :goto_0
    return-void

    :array_0
    .array-data 1
        0x73t
        0x68t
        0x61t
        0x72t
        0x65t
        0x69t
        0x74t
    .end array-data
.end method

.method static synthetic getDownloadingList(Lccsancom/san/mads/webview/IncentiveDownloadUtils;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->getDownloadingList:Z

    return p1
.end method

.method private removeDownloadListener()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2
    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebSettings;->setSupportZoom(Z)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    const/4 v2, 0x2

    .line 2
    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "javascript:%s(\'%s\')"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    nop

    .line 4
    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "javascript:%s()"

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 6
    :goto_0
    sget p2, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x13

    if-lt p2, v0, :cond_1

    const/4 p2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lccsanandroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Lccsanandroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p2

    .line 10
    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method protected onOverScrolled(IIZZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebView;->onOverScrolled(IIZZ)V

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsancom/san/mads/webview/IncentiveDownloadUtils$unifiedDownload;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1, p0, p2}, Lccsancom/san/mads/webview/IncentiveDownloadUtils$unifiedDownload;->getDownloadingList(Lccsancom/san/mads/webview/IncentiveDownloadUtils;Z)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Lccsanandroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->getDownloadingList:Z

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->addDownloadListener:I

    .line 5
    :cond_0
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iget v1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->addDownloadListener:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v2}, Lccsanandroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 9
    :cond_1
    invoke-virtual {p1}, Lccsanandroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 10
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lccsanandroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 14
    :cond_2
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebView;->onTouchEvent(Lccsanandroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setOnOverScrollListener(Lccsancom/san/mads/webview/IncentiveDownloadUtils$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;->getDownloadingRecordByUrl:Lccsancom/san/mads/webview/IncentiveDownloadUtils$unifiedDownload;

    return-void
.end method
