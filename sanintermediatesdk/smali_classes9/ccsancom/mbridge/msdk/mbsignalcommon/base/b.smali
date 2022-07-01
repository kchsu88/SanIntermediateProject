.class public Lccsancom/mbridge/msdk/mbsignalcommon/base/b;
.super Lccsanandroid/webkit/WebViewClient;
.source "BaseWebViewClient.java"


# instance fields
.field private a:Lccsancom/mbridge/msdk/mbsignalcommon/base/a;

.field private b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lccsanandroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lccsancom/mbridge/msdk/mbsignalcommon/base/a;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->a:Lccsancom/mbridge/msdk/mbsignalcommon/base/a;

    .line 16
    return-void
.end method

.method public final a(Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    .line 61
    return-void
.end method

.method public final b()Lccsancom/mbridge/msdk/mbsignalcommon/base/a;
    .locals 1

    .line 19
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->a:Lccsancom/mbridge/msdk/mbsignalcommon/base/a;

    return-object v0
.end method

.method public onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->onPageFinished(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    if-eqz v0, :cond_0

    .line 55
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->a(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    .line 57
    :cond_0
    return-void
.end method

.method public onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 37
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebViewClient;->onReceivedError(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    if-eqz v0, :cond_0

    .line 39
    invoke-interface {v0, p1, p2, p3, p4}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->a(Lccsanandroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-void
.end method

.method public onReceivedSslError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V
    .locals 1

    .line 45
    invoke-super {p0, p1, p2, p3}, Lccsanandroid/webkit/WebViewClient;->onReceivedSslError(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V

    .line 46
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    if-eqz v0, :cond_0

    .line 47
    invoke-interface {v0, p1, p2, p3}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->a(Lccsanandroid/webkit/WebView;Lccsanandroid/webkit/SslErrorHandler;Lccsanandroid/net/http/SslError;)V

    .line 49
    :cond_0
    return-void
.end method

.method public shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 1

    .line 24
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->a:Lccsancom/mbridge/msdk/mbsignalcommon/base/a;

    if-eqz v0, :cond_0

    .line 25
    invoke-interface {v0, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/base/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 26
    const/4 p1, 0x1

    return p1

    .line 29
    :cond_0
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->b:Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;

    if-eqz v0, :cond_1

    .line 30
    invoke-interface {v0, p1, p2}, Lccsancom/mbridge/msdk/mbsignalcommon/windvane/d;->b(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    .line 32
    :cond_1
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebViewClient;->shouldOverrideUrlLoading(Lccsanandroid/webkit/WebView;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
