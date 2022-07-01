.class public Lccsancom/san/mads/webview/deleteDownItem;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile getDownloadingList:Lccsancom/san/mads/webview/deleteDownItem;


# instance fields
.field private IncentiveDownloadUtils:Lccsanandroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized IncentiveDownloadUtils()Lccsancom/san/mads/webview/deleteDownItem;
    .locals 2

    const-class v0, Lccsancom/san/mads/webview/deleteDownItem;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lccsancom/san/mads/webview/deleteDownItem;->getDownloadingList:Lccsancom/san/mads/webview/deleteDownItem;

    if-nez v1, :cond_1

    .line 2
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    sget-object v1, Lccsancom/san/mads/webview/deleteDownItem;->getDownloadingList:Lccsancom/san/mads/webview/deleteDownItem;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lccsancom/san/mads/webview/deleteDownItem;

    invoke-direct {v1}, Lccsancom/san/mads/webview/deleteDownItem;-><init>()V

    sput-object v1, Lccsancom/san/mads/webview/deleteDownItem;->getDownloadingList:Lccsancom/san/mads/webview/deleteDownItem;

    .line 5
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 7
    :cond_1
    :goto_0
    sget-object v1, Lccsancom/san/mads/webview/deleteDownItem;->getDownloadingList:Lccsancom/san/mads/webview/deleteDownItem;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object v1

    .line 0
    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public removeDownloadListener(Lccsanandroid/content/Context;)Lccsanandroid/webkit/WebView;
    .locals 3

    .line 8
    iget-object v0, p0, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/webkit/WebView;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lccsanandroid/webkit/WebView;

    invoke-direct {v0, p1}, Lccsanandroid/webkit/WebView;-><init>(Lccsanandroid/content/Context;)V

    iput-object v0, p0, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/webkit/WebView;

    .line 10
    sget v1, Lccsanandroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    :try_start_0
    const-string v1, "searchBoxJavaBridge_"

    .line 12
    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/webkit/WebView;

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/webkit/WebView;

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Lccsanandroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 18
    :cond_0
    :goto_0
    invoke-static {p1}, Lccsansan/bw/toString;->IncentiveDownloadUtils(Lccsanandroid/content/Context;)V

    .line 20
    :cond_1
    iget-object p1, p0, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/webkit/WebView;

    invoke-virtual {p1}, Lccsanandroid/webkit/WebView;->stopLoading()V

    .line 21
    iget-object p1, p0, Lccsancom/san/mads/webview/deleteDownItem;->IncentiveDownloadUtils:Lccsanandroid/webkit/WebView;

    return-object p1
.end method
