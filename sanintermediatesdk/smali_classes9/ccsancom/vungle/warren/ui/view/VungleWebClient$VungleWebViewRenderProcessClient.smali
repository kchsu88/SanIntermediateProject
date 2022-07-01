.class Lccsancom/vungle/warren/ui/view/VungleWebClient$VungleWebViewRenderProcessClient;
.super Lccsanandroid/webkit/WebViewRenderProcessClient;
.source "VungleWebClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/vungle/warren/ui/view/VungleWebClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VungleWebViewRenderProcessClient"
.end annotation


# instance fields
.field errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;


# direct methods
.method constructor <init>(Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;)V
    .locals 0
    .param p1, "errorHandler"    # Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    .line 362
    invoke-direct {p0}, Lccsanandroid/webkit/WebViewRenderProcessClient;-><init>()V

    .line 363
    iput-object p1, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient$VungleWebViewRenderProcessClient;->errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    .line 364
    return-void
.end method


# virtual methods
.method public onRenderProcessResponsive(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebViewRenderProcess;)V
    .locals 0
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;
    .param p2, "webViewRenderProcess"    # Lccsanandroid/webkit/WebViewRenderProcess;

    .line 395
    return-void
.end method

.method public onRenderProcessUnresponsive(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebViewRenderProcess;)V
    .locals 3
    .param p1, "webView"    # Lccsanandroid/webkit/WebView;
    .param p2, "webViewRenderProcess"    # Lccsanandroid/webkit/WebViewRenderProcess;

    .line 382
    sget-object v0, Lccsancom/vungle/warren/ui/view/VungleWebClient;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRenderProcessUnresponsive(Title = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", URL = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", (webViewRenderProcess != null) = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 382
    invoke-static {v0, v1}, Lccsanandroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    iget-object v0, p0, Lccsancom/vungle/warren/ui/view/VungleWebClient$VungleWebViewRenderProcessClient;->errorHandler:Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;

    if-eqz v0, :cond_1

    .line 386
    invoke-interface {v0, p1, p2}, Lccsancom/vungle/warren/ui/view/WebViewAPI$WebClientErrorHandler;->onRenderProcessUnresponsive(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/WebViewRenderProcess;)V

    .line 389
    :cond_1
    return-void
.end method
