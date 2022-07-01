.class public Lccsancom/san/mads/webview/getDownloadStatusByUrl;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static removeDownloadListener(Lccsanandroid/webkit/WebView;)V
    .locals 1

    .line 14
    new-instance v0, Lccsancom/san/mads/webview/getDownloadStatusByUrl$removeDownloadListener;

    invoke-direct {v0}, Lccsancom/san/mads/webview/getDownloadStatusByUrl$removeDownloadListener;-><init>()V

    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setWebChromeClient(Lccsanandroid/webkit/WebChromeClient;)V

    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/webkit/WebView;Z)V
    .locals 2

    .line 1
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->stopLoading()V

    .line 10
    const-string p1, ""

    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->onPause()V

    return-void
.end method
