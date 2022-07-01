.class Lccsansan/i/getDownloadingList$addDownloadListener;
.super Lccsanandroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/i/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Lccsansan/co/getDownloadedRecordByUrl;)Lccsansan/co/ActionTypeReserveApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsansan/i/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/i/getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/i/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 2

    .line 1
    const-string v0, "WebCompanionView"

    const-string v1, "#onReceivedError web error"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    const-string v1, "#onReceivedError main frame error"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lccsansan/i/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-static {v0}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lccsansan/i/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-static {v0}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/i/getDownloadingList$unifiedDownload;->IncentiveDownloadUtils()V

    .line 7
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    return-void
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lccsansan/i/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-static {p1}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lccsansan/i/getDownloadingList$addDownloadListener;->removeDownloadListener:Lccsansan/i/getDownloadingList;

    invoke-static {p1}, Lccsansan/i/getDownloadingList;->removeDownloadListener(Lccsansan/i/getDownloadingList;)Lccsansan/i/getDownloadingList$unifiedDownload;

    move-result-object p1

    invoke-interface {p1}, Lccsansan/i/getDownloadingList$unifiedDownload;->addDownloadListener()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
