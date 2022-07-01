.class Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;
.super Lccsancom/san/mads/mraid/getDownloadingCount;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsancom/san/mads/mraid/getDownloadingCount;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {p1, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->IncentiveDownloadUtils(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mraid.Bridge"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {p1, p2, p3, p4}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 2

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mraid.Bridge"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    .line 6
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, v0, p3, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedSslError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SslError"

    invoke-static {p1, p2, v1, v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onReceivedSslError : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lccsanandroid/net/http/SslError;->getPrimaryError()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mraid.Bridge"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRenderProcessGone(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/RenderProcessGoneDetail;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {p1, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Lccsanandroid/webkit/RenderProcessGoneDetail;)V

    const/4 p1, 0x1

    return p1
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-virtual {p1, p2}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
