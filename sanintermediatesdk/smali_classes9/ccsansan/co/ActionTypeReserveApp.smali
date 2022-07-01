.class public Lccsansan/co/ActionTypeReserveApp;
.super Lccsancom/san/mads/webview/removeDownloadListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;,
        Lccsansan/co/ActionTypeReserveApp$getDownloadingList;
    }
.end annotation


# instance fields
.field removeDownloadListener:Lccsansan/co/ActionTypeReserveApp$getDownloadingList;


# direct methods
.method constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lccsancom/san/mads/webview/removeDownloadListener;-><init>(Lccsanandroid/content/Context;)V

    .line 3
    invoke-direct {p0}, Lccsansan/co/ActionTypeReserveApp;->unifiedDownload()V

    .line 4
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 6
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->setBackgroundColor(I)V

    .line 7
    new-instance p1, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;

    invoke-direct {p1, p0}, Lccsansan/co/ActionTypeReserveApp$removeDownloadListener;-><init>(Lccsansan/co/ActionTypeReserveApp;)V

    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->setOnTouchListener(Lccsanandroid/view/View$OnTouchListener;)V

    .line 8
    invoke-static {}, Lccsanandroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {p0, p1}, Lccsanandroid/webkit/WebView;->setId(I)V

    return-void
.end method

.method public static unifiedDownload(Lccsanandroid/content/Context;Lccsansan/co/ActionTypeDetailPage;)Lccsansan/co/ActionTypeReserveApp;
    .locals 1

    .line 2
    invoke-static {p0}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 3
    invoke-static {p1}, Lccsansan/cx/addDownloadListener;->addDownloadListener(Ljava/lang/Object;)V

    .line 5
    new-instance v0, Lccsansan/co/ActionTypeReserveApp;

    invoke-direct {v0, p0}, Lccsansan/co/ActionTypeReserveApp;-><init>(Lccsanandroid/content/Context;)V

    .line 6
    invoke-virtual {p1, v0}, Lccsansan/co/ActionTypeDetailPage;->IncentiveDownloadUtils(Lccsansan/co/ActionTypeReserveApp;)V

    return-object v0
.end method

.method private unifiedDownload()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    .line 2
    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    .line 3
    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Lccsanandroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 6
    invoke-virtual {p0, v0}, Lccsanandroid/webkit/WebView;->setScrollBarStyle(I)V

    return-void
.end method


# virtual methods
.method public addDownloadListener(Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-static {}, Lccsansan/cw/getDownloadingList;->IncentiveDownloadUtils()Ljava/lang/String;

    move-result-object v1

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lccsanandroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getVastWebViewClickListener()Lccsansan/co/ActionTypeReserveApp$getDownloadingList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/co/ActionTypeReserveApp;->removeDownloadListener:Lccsansan/co/ActionTypeReserveApp$getDownloadingList;

    return-object v0
.end method

.method public setVastWebViewClickListener(Lccsansan/co/ActionTypeReserveApp$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/co/ActionTypeReserveApp;->removeDownloadListener:Lccsansan/co/ActionTypeReserveApp$getDownloadingList;

    return-void
.end method
