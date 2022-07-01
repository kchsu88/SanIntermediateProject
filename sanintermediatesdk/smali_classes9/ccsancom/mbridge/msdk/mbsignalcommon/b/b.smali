.class public Lccsancom/mbridge/msdk/mbsignalcommon/b/b;
.super Ljava/lang/Object;
.source "DefaultWebViewListener.java"

# interfaces
.implements Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;


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

    .line 47
    const-string p1, "WindVaneWebView"

    const-string p2, "readyState"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 27
    const-string p1, "WindVaneWebView"

    const-string p2, "onReceivedError"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 0

    .line 32
    const-string p1, "WindVaneWebView"

    const-string p2, "onReceivedSslError"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 37
    const-string p1, "WindVaneWebView"

    const-string p2, "onPageFinished"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public final a(Lccsanandroid/webkit/WebView;Ljava/lang/String;Lccsanandroid/graphics/Bitmap;)V
    .locals 0

    .line 16
    const-string p1, "WindVaneWebView"

    const-string p2, "onPageStarted"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public final b(Lccsanandroid/webkit/WebView;I)V
    .locals 0

    .line 42
    const-string p1, "WindVaneWebView"

    const-string p2, "onProgressChanged"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public final b(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 0

    .line 21
    const-string p1, "WindVaneWebView"

    const-string p2, "shouldOverrideUrlLoading"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lccsanandroid/webkit/WebView;I)V
    .locals 0

    .line 52
    const-string p1, "WindVaneWebView"

    const-string p2, "loadingResourceStatus"

    invoke-static {p1, p2}, Lccsancom/mbridge/msdk/foundation/tools/q;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method
