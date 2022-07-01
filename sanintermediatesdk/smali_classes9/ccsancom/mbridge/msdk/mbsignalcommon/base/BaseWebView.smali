.class public Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;
.super Lccsanandroid/webkit/WebView;
.source "BaseWebView.java"


# instance fields
.field protected a:Lccsanandroid/content/Context;

.field public mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;


# direct methods
.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    .line 22
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a:Lccsanandroid/content/Context;

    .line 23
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a()V

    .line 24
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;)V

    .line 28
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a:Lccsanandroid/content/Context;

    .line 29
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a()V

    .line 30
    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;Lccsanandroid/util/AttributeSet;I)V

    .line 34
    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a:Lccsanandroid/content/Context;

    .line 35
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a()V

    .line 36
    return-void
.end method


# virtual methods
.method protected a()V
    .locals 7

    .line 45
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    if-nez v0, :cond_0

    .line 46
    new-instance v0, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    invoke-direct {v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;-><init>()V

    iput-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    .line 47
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 49
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 50
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setVerticalScrollBarEnabled(Z)V

    .line 51
    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setVerticalScrollBarEnabled(Z)V

    .line 52
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->requestFocus()Z

    .line 54
    invoke-virtual {p0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v1

    .line 55
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 56
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 57
    const-wide/32 v3, 0x500000

    invoke-virtual {v1, v3, v4}, Lccsanandroid/webkit/WebSettings;->setAppCacheMaxSize(J)V

    .line 58
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 59
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 60
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 61
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 62
    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 63
    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 64
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 65
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 66
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 67
    sget-object v3, Lccsanandroid/webkit/WebSettings$RenderPriority;->HIGH:Lccsanandroid/webkit/WebSettings$RenderPriority;

    invoke-virtual {v1, v3}, Lccsanandroid/webkit/WebSettings;->setRenderPriority(Lccsanandroid/webkit/WebSettings$RenderPriority;)V

    .line 68
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-lt v3, v4, :cond_1

    .line 69
    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebSettings;->setSafeBrowsingEnabled(Z)V

    .line 71
    :cond_1
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    .line 72
    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 75
    :cond_2
    :try_start_0
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    goto :goto_0

    .line 76
    :catchall_0
    move-exception v3

    .line 77
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 80
    :goto_0
    :try_start_1
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_3

    .line 81
    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebSettings;->setMixedContentMode(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 85
    :cond_3
    goto :goto_1

    .line 83
    :catch_0
    move-exception v3

    .line 84
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 87
    :goto_1
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-lt v3, v4, :cond_4

    .line 88
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setDatabaseEnabled(Z)V

    .line 89
    iget-object v3, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->a:Lccsanandroid/content/Context;

    const-string v4, "database"

    invoke-virtual {v3, v4, v0}, Lccsanandroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    .line 90
    invoke-virtual {v1, v3}, Lccsanandroid/webkit/WebSettings;->setDatabasePath(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1, v2}, Lccsanandroid/webkit/WebSettings;->setGeolocationEnabled(Z)V

    .line 93
    invoke-virtual {v1, v3}, Lccsanandroid/webkit/WebSettings;->setGeolocationDatabasePath(Ljava/lang/String;)V

    .line 96
    :cond_4
    sget v3, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_5

    .line 99
    :try_start_2
    const-class v3, Lccsanandroid/webkit/WebSettings;

    const-string v4, "setDisplayZoomControls"

    new-array v5, v2, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 100
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 101
    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v0

    invoke-virtual {v3, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 103
    goto :goto_2

    .line 102
    :catch_1
    move-exception v0

    .line 105
    :cond_5
    :goto_2
    return-void
.end method

.method public reload()V
    .locals 0

    .line 114
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->reload()V

    .line 115
    return-void
.end method

.method public setFilter(Lccsancom/mbridge/msdk/mbsignalcommon/base/a;)V
    .locals 1

    .line 39
    iget-object v0, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0, p1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;->a(Lccsancom/mbridge/msdk/mbsignalcommon/base/a;)V

    .line 42
    :cond_0
    return-void
.end method

.method public setTransparent()V
    .locals 2

    .line 108
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setLayerType(ILccsanandroid/graphics/Paint;)V

    .line 109
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->setBackgroundColor(I)V

    .line 110
    return-void
.end method

.method public setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V
    .locals 1

    .line 119
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebView;->setWebViewClient(Lccsanandroid/webkit/WebViewClient;)V

    .line 120
    instance-of v0, p1, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    if-eqz v0, :cond_0

    .line 121
    check-cast p1, Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    iput-object p1, p0, Lccsancom/mbridge/msdk/mbsignalcommon/base/BaseWebView;->mWebViewClient:Lccsancom/mbridge/msdk/mbsignalcommon/base/b;

    .line 123
    :cond_0
    return-void
.end method
