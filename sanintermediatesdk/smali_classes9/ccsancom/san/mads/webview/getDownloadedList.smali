.class public Lccsancom/san/mads/webview/getDownloadedList;
.super Lccsancom/san/mads/webview/getDownloadingList;
.source ""


# instance fields
.field private removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lccsancom/san/mads/webview/getDownloadingList;-><init>()V

    .line 2
    new-instance v0, Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    invoke-direct {v0, p1}, Lccsancom/san/mads/webview/IncentiveDownloadUtils;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    return-void
.end method


# virtual methods
.method public addDownloadListener()Lccsanandroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    return-object v0
.end method

.method public getDownloadingList()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lccsanandroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x7

    .line 4
    :try_start_1
    new-array v0, v0, [B

    const/4 v1, 0x0

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x68

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x65

    aput-byte v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x69

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x74

    aput-byte v2, v0, v1

    .line 5
    iget-object v1, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Bridge"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    const-string v1, "adJsTagBrowser"

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    :goto_0
    :try_start_2
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    invoke-virtual {v0}, Lccsancom/san/mads/webview/removeDownloadListener;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :cond_0
    :goto_1
    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V
    .locals 7

    .line 2
    invoke-static {p1}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lccsansan/bb/IncentiveDownloadUtils;->addDownloadListener()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    invoke-static {}, Lccsansan/cw/getDownloadingList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x0

    const-string v4, "text/html"

    const-string v5, "utf-8"

    move-object v3, p1

    invoke-virtual/range {v1 .. v6}, Lccsanandroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    const-string v1, "text/html"

    const-string v2, "utf-8"

    invoke-virtual {v0, p1, v1, v2}, Lccsanandroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    invoke-virtual {v0, p1}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 11
    :goto_0
    iget-object p1, p0, Lccsancom/san/mads/webview/getDownloadedList;->removeDownloadListener:Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    new-instance v0, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;

    invoke-direct {v0, p0, p2}, Lccsancom/san/mads/webview/getDownloadedList$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/webview/getDownloadedList;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    return-void
.end method
