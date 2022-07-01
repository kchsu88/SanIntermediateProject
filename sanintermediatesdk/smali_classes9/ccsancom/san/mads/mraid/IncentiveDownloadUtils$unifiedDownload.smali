.class Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;
.super Lccsanandroid/webkit/WebChromeClient;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsanandroid/webkit/WebChromeClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsoleMessage(Lccsanandroid/webkit/ConsoleMessage;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConsoleMessage() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lccsanandroid/webkit/ConsoleMessage;->message()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mraid.Bridge"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->addDownloadListener(Lccsanandroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lccsanandroid/webkit/WebChromeClient;->onConsoleMessage(Lccsanandroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public onJsAlert(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    invoke-static {p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->getDownloadingList(Lccsancom/san/mads/mraid/IncentiveDownloadUtils;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;

    move-result-object p1

    invoke-interface {p1, p3, p4}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lccsanandroid/webkit/WebChromeClient;->onJsAlert(Lccsanandroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public onShowCustomView(Lccsanandroid/view/View;Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lccsanandroid/webkit/WebChromeClient;->onShowCustomView(Lccsanandroid/view/View;Lccsanandroid/webkit/WebChromeClient$CustomViewCallback;)V

    return-void
.end method
