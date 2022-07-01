.class Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->callBackOnUIThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic getDownloadingList:Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadingList(I)V
    .locals 0

    return-void
.end method

.method public getDownloadingList(Lccsanandroid/view/View;Ljava/lang/String;)Z
    .locals 1

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebViewClient shouldOverrideUrlLoading: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.WebViewActivity"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public removeDownloadListener(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "WebViewClient onReceivedError errorCode : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failingUrl :  "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Mads.WebViewActivity"

    invoke-static {p2, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;

    iget-object p1, p1, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsancom/san/mads/webview/WebViewActivity;->getDownloadingList(Lccsancom/san/mads/webview/WebViewActivity;Z)Z

    .line 3
    iget-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;

    iget-object p1, p1, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-static {p1}, Lccsancom/san/mads/webview/WebViewActivity;->getDownloadingList(Lccsancom/san/mads/webview/WebViewActivity;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;

    iget-object p1, p1, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-static {p1}, Lccsancom/san/mads/webview/WebViewActivity;->getDownloadingList(Lccsancom/san/mads/webview/WebViewActivity;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Lccsanandroid/view/View;->getParent()Lccsanandroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Lccsanandroid/view/ViewGroup;

    invoke-virtual {p1}, Lccsanandroid/view/ViewGroup;->removeAllViews()V

    .line 5
    :cond_0
    iget-object p1, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;

    iget-object p2, p1, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->IncentiveDownloadUtils:Lccsanandroid/view/ViewGroup;

    iget-object p1, p1, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/WebViewActivity;

    invoke-static {p1}, Lccsancom/san/mads/webview/WebViewActivity;->getDownloadingList(Lccsancom/san/mads/webview/WebViewActivity;)Lccsancom/san/mads/webview/getDownloadingList;

    move-result-object p1

    invoke-virtual {p1}, Lccsancom/san/mads/webview/getDownloadingList;->addDownloadListener()Lccsanandroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener$IncentiveDownloadUtils;->getDownloadingList:Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;

    iget-object v0, v0, Lccsancom/san/mads/webview/WebViewActivity$removeDownloadListener;->unifiedDownload:Lccsanandroid/widget/FrameLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0}, Lccsanandroid/view/ViewGroup;->addView(Lccsanandroid/view/View;ILccsanandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
