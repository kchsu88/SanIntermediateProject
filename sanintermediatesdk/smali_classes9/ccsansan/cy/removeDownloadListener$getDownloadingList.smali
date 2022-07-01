.class Lccsansan/cy/removeDownloadListener$getDownloadingList;
.super Lccsanandroid/webkit/WebViewClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsansan/cy/removeDownloadListener$deleteDownItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/cy/removeDownloadListener;

.field final synthetic removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;


# direct methods
.method constructor <init>(Lccsansan/cy/removeDownloadListener;Lccsansan/cy/removeDownloadListener$deleteDownItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    iput-object p2, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

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

    const-string v1, "AD.Mads.AttributionManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    invoke-static {v0}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z

    .line 4
    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    invoke-interface {v0, v1, p2}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    .line 6
    :cond_0
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

    const-string v1, "AD.Mads.AttributionManager"

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
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    invoke-static {p1}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0, p4}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    .line 4
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z

    .line 6
    :cond_0
    invoke-static {p2, p3, p4}, Lccsansan/l/IncentiveDownloadUtils;->unifiedDownload(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onReceivedError errorCode : "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "  description :"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AD.Mads.AttributionManager"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V
    .locals 2

    .line 8
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebResourceRequest;Lccsanandroid/webkit/WebResourceError;)V

    .line 9
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    invoke-static {p1}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 10
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    .line 11
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z

    .line 13
    :cond_0
    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getErrorCode()I

    move-result p1

    invoke-virtual {p3}, Lccsanandroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2}, Lccsanandroid/webkit/WebResourceRequest;->getUrl()Lccsanandroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Lccsanandroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lccsansan/l/IncentiveDownloadUtils;->unifiedDownload(ILjava/lang/String;Ljava/lang/String;)V

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

    const-string v1, "AD.Mads.AttributionManager"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 3
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->removeDownloadListener(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 6
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    invoke-static {p1}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    invoke-interface {p1, v1, p2}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    .line 8
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    invoke-static {p1, v1}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z

    :cond_1
    return v1

    .line 13
    :cond_2
    invoke-static {p2}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    invoke-static {v0}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->removeDownloadListener:Lccsansan/cy/removeDownloadListener$deleteDownItem;

    invoke-interface {p1, v1, p2}, Lccsansan/cy/removeDownloadListener$deleteDownItem;->onResultClick(ZLjava/lang/String;)V

    .line 15
    iget-object p1, p0, Lccsansan/cy/removeDownloadListener$getDownloadingList;->addDownloadListener:Lccsansan/cy/removeDownloadListener;

    invoke-static {p1, v1}, Lccsansan/cy/removeDownloadListener;->addDownloadListener(Lccsansan/cy/removeDownloadListener;Z)Z

    return v1

    .line 19
    :cond_3
    invoke-static {p2}, Lccsansan/ab/getDownloadingList;->unifiedDownload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 21
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 23
    :cond_4
    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return v1
.end method
