.class Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;
.super Lccsanandroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/p/getDownloadedRecordByUrl;->removeDownloadListener(Lccsanandroid/content/Context;Ljava/lang/String;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

.field final synthetic removeDownloadListener:Ljava/lang/String;


# direct methods
.method constructor <init>(Lccsansan/p/getDownloadedRecordByUrl;Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    iput-object p3, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageFinished url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageStarted url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onPageStarted(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V

    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError errorCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  description :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "AD.CPI.Helper"

    invoke-static {p3, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-virtual {p1, p4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x2

    if-eq p2, p1, :cond_0

    const/4 p1, -0x8

    if-ne p2, p1, :cond_1

    .line 5
    :cond_0
    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    invoke-interface {p1, p4}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 1

    .line 6
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceivedError errorCode : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  description :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AD.CPI.Helper"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->removeDownloadListener:Ljava/lang/String;

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    const/4 p3, -0x8

    if-ne p1, p3, :cond_1

    .line 10
    :cond_0
    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->addDownloadListener(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shouldOverrideUrlLoading url : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AD.CPI.Helper"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {p2}, Lccsanandroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    .line 9
    :cond_1
    invoke-static {}, Lccsansan/cy/addDownloadListener;->unifiedDownload()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    invoke-static {p2}, Lccsansan/bw/resume;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_2
    return v1

    .line 14
    :cond_3
    invoke-static {p2}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 15
    iget-object p1, p0, Lccsansan/p/getDownloadedRecordByUrl$getDownloadStatusByUrl;->IncentiveDownloadUtils:Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;

    if-eqz p1, :cond_4

    .line 16
    invoke-interface {p1, p2}, Lccsansan/p/getDownloadedRecordByUrl$getDownloadingRecordByUrl;->unifiedDownload(Ljava/lang/String;)V

    :cond_4
    return v1

    .line 20
    :cond_5
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 22
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 24
    :cond_6
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
