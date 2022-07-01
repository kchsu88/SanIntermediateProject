.class Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;
.super Lccsancom/san/ads/Task$UICallBackTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener(Lccsanandroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsanandroid/view/ViewGroup;

.field private addDownloadListener:Ljava/lang/String;

.field final synthetic removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

.field final synthetic unifiedDownload:Lccsanandroid/widget/FrameLayout$LayoutParams;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/WebViewActivity;Lccsanandroid/view/ViewGroup;Lccsanandroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    iput-object p2, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/view/ViewGroup;

    iput-object p3, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p0}, Lccsancom/san/ads/Task$UICallBackTask;-><init>()V

    return-void
.end method


# virtual methods
.method public callBackOnUIThread()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "load html data: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.WebViewActivity"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-static {v0}, Lccsancom/san/mads/webview/WebViewActivity;->getDownloadingList(Lccsancom/san/mads/webview/WebViewActivity;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    new-instance v2, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;

    invoke-direct {v2, p0}, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;-><init>(Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;)V

    invoke-virtual {v0, v1, v2}, Lccsancom/san/mads/webview/getDownloadingList;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V

    return-void
.end method

.method public execute()V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-static {v0}, Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener(Lccsancom/san/mads/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsanandroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-static {v0}, Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener(Lccsancom/san/mads/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-static {v0}, Lccsancom/san/mads/webview/WebViewActivity;->addDownloadListener(Lccsancom/san/mads/webview/WebViewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ab/getDownloadingList;->addDownloadListener(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->addDownloadListener:Ljava/lang/String;

    :goto_0
    return-void
.end method
