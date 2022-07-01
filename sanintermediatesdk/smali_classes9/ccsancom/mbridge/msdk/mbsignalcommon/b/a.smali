.class public Lccsancom/mbridge/msdk/mbsignalcommon/b/a;
.super Ljava/lang/Object;
.source "DefaultRVWebViewListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/windvane/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lccsanandroid/webkit/WebView;I)V
    .locals 0

    .line 69
    const-string p1, "RVWindVaneWebView"

    const-string p2, "readyState"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 49
    const-string p1, "RVWindVaneWebView"

    const-string p2, "onReceivedError"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 0

    .line 54
    const-string p1, "RVWindVaneWebView"

    const-string p2, "onReceivedSslError"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 59
    const-string p1, "RVWindVaneWebView"

    const-string p2, "onPageFinished"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 0

    .line 38
    const-string p1, "RVWindVaneWebView"

    const-string p2, "onPageStarted"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 21
    const-string p1, "RVWindVaneWebView"

    const-string p2, "loadAds"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 1

    .line 16
    const-string p1, "RVWindVaneWebView"

    const-string v0, "getEndScreenInfo"

    invoke-static {p1, v0}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    .line 32
    const-string p1, "RVWindVaneWebView"

    const-string p2, "operateComponent"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public final b(Lccsanandroid/webkit/WebView;I)V
    .locals 0

    .line 64
    const-string p1, "RVWindVaneWebView"

    const-string p2, "onProgressChanged"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public final b(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 43
    const-string p1, "RVWindVaneWebView"

    const-string p2, "shouldOverrideUrlLoading"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const/4 p1, 0x1

    return p1
.end method

.method public final c(Lccsanandroid/webkit/WebView;I)V
    .locals 0

    .line 74
    const-string p1, "RVWindVaneWebView"

    const-string p2, "loadingResourceStatus"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method
