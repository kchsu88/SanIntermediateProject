.class public Lccsancom/san/mads/webview/removeDownloadListener;
.super Lccsanandroid/webkit/WebView;
.source ""


# static fields
.field private static getDownloadingList:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lccsanandroid/content/Context;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    .line 3
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lccsancom/san/mads/webview/removeDownloadListener;->unifiedDownload(Z)V

    .line 4
    invoke-direct {p0}, Lccsancom/san/mads/webview/removeDownloadListener;->unifiedDownload()V

    .line 5
    invoke-static {p0}, Lccsancom/san/mads/webview/getDownloadStatusByUrl;->removeDownloadListener(Lccsanandroid/webkit/WebView;)V

    .line 7
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 8
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 10
    sget-boolean p1, Lccsancom/san/mads/webview/removeDownloadListener;->getDownloadingList:Z

    if-nez p1, :cond_0

    .line 11
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lccsancom/san/mads/webview/removeDownloadListener;->getDownloadingList(Lccsanandroid/content/Context;)V

    .line 12
    sput-boolean v0, Lccsancom/san/mads/webview/removeDownloadListener;->getDownloadingList:Z

    :cond_0
    return-void
.end method

.method public static addDownloadListener(Lccsanandroid/view/View;)V
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Lccsanandroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lccsanandroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Lccsanandroid/view/ViewGroup;->removeView(Lccsanandroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getDownloadingList(Lccsanandroid/content/Context;)V
    .locals 8

    .line 28
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    .line 30
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-virtual {p1}, Lccsanandroid/content/Context;->getApplicationContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->setBackgroundColor(I)V

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 35
    const-string v4, ""

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    move-object v2, v0

    invoke-virtual/range {v2 .. v7}, Lccsanandroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    new-instance v1, Lccsanandroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Lccsanandroid/view/WindowManager$LayoutParams;-><init>()V

    .line 37
    const/4 v2, 0x1

    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->width:I

    .line 38
    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x7d5

    .line 40
    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->type:I

    const v2, 0x1000018

    .line 41
    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v2, -0x2

    .line 44
    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->format:I

    const v2, 0x800033

    .line 45
    iput v2, v1, Lccsanandroid/view/WindowManager$LayoutParams;->gravity:I

    .line 47
    const-string v2, "window"

    invoke-virtual {p1, v2}, Lccsanandroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/WindowManager;

    .line 49
    invoke-interface {p1, v0, v1}, Lccsanandroid/view/WindowManager;->addView(Lccsanandroid/view/View;Lccsanandroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private unifiedDownload()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 2
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v0, v2, :cond_0

    .line 3
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lccsanandroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    :cond_0
    const/16 v2, 0x10

    if-lt v0, v2, :cond_1

    .line 6
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 7
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 3

    .line 15
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 16
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setAppCacheEnabled(Z)V

    .line 18
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 19
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    sget-object v2, Lccsanandroid/webkit/WebSettings$PluginState;->ON:Lccsanandroid/webkit/WebSettings$PluginState;

    invoke-virtual {v0, v2}, Lccsanandroid/webkit/WebSettings;->setPluginState(Lccsanandroid/webkit/WebSettings$PluginState;)V

    .line 20
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 21
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setSaveFormData(Z)V

    .line 22
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 23
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 24
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 27
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getContext()Lccsanandroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Lccsanandroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 0

    .line 1
    invoke-static {p0}, Lccsancom/san/mads/webview/removeDownloadListener;->addDownloadListener(Lccsanandroid/view/View;)V

    .line 5
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->removeAllViews()V

    .line 6
    invoke-super {p0}, Lccsanandroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public unifiedDownload(Z)V
    .locals 2

    .line 7
    sget v0, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Lccsanandroid/webkit/WebSettings$PluginState;->ON:Lccsanandroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setPluginState(Lccsanandroid/webkit/WebSettings$PluginState;)V

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p0}, Lccsanandroid/webkit/WebView;->getSettings()Lccsanandroid/webkit/WebSettings;

    move-result-object p1

    sget-object v0, Lccsanandroid/webkit/WebSettings$PluginState;->OFF:Lccsanandroid/webkit/WebSettings$PluginState;

    invoke-virtual {p1, v0}, Lccsanandroid/webkit/WebSettings;->setPluginState(Lccsanandroid/webkit/WebSettings$PluginState;)V

    :goto_0
    return-void
.end method
