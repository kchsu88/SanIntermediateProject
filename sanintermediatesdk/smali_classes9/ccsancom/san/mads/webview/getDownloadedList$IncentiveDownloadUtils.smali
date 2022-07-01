.class Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;
.super Lccsanandroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/getDownloadedList;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->unifiedDownload(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1, p2, p3, p4}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 3

    .line 4
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    .line 5
    iget-object p1, p0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, v1, p2}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onReceivedSslError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, ""

    invoke-interface {p1, p2, p3, v0}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onRenderProcessGone(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils()Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
