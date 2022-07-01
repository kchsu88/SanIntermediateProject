.class Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener(Ljava/lang/String;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

.field final synthetic removeDownloadListener:Lccsancom/san/mads/webview/getDownloadedRecordByUrl;


# direct methods
.method constructor <init>(Lccsancom/san/mads/webview/getDownloadedRecordByUrl;Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/getDownloadedRecordByUrl;

    iput-object p2, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 2

    .line 1
    const-string v0, "Mads.MraidWeb"

    const-string v1, "Mraid onFailedToLoad"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public IncentiveDownloadUtils(Lccsanandroid/view/View;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p1, "Mads.MraidWeb"

    const-string v0, "Mraid onLoaded"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz p1, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/getDownloadedRecordByUrl;

    invoke-static {v0}, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener(Lccsancom/san/mads/webview/getDownloadedRecordByUrl;)Lccsancom/san/mads/mraid/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils()Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedList;

    move-result-object v0

    invoke-interface {p1, v0, p2}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->unifiedDownload(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/lang/String;)Z
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mraid onShouldOverrideUrl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mads.MraidWeb"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->removeDownloadListener:Lccsancom/san/mads/webview/getDownloadedRecordByUrl;

    invoke-virtual {v1}, Lccsancom/san/mads/webview/getDownloadedRecordByUrl;->removeDownloadListener()Lccsancom/san/mads/webview/IncentiveDownloadUtils;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->getDownloadingList(Lccsanandroid/view/View;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public addDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.MraidWeb"

    const-string v1, "Mraid onExpand"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    const-string v0, "Mads.MraidWeb"

    const-string v1, "Mraid onReceivedError"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    .line 6
    invoke-interface {v0, p1, p2, p3}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->removeDownloadListener(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 11
    const-string v0, "Mads.MraidWeb"

    const-string v1, "Mraid onClose"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 13
    invoke-interface {v0, v1}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->getDownloadingList(I)V

    :cond_0
    return-void
.end method

.method public getDownloadingList(Lccsancom/san/mads/mraid/getDownloadingList;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mraid onRenderProcessGone errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.MraidWeb"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lccsancom/san/mads/webview/getDownloadedRecordByUrl$removeDownloadListener;->IncentiveDownloadUtils:Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;

    if-eqz p1, :cond_0

    .line 9
    invoke-interface {p1}, Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;->IncentiveDownloadUtils()Z

    :cond_0
    return-void
.end method

.method public removeDownloadListener()V
    .locals 2

    .line 1
    const-string v0, "Mads.MraidWeb"

    const-string v1, "Mraid onOpen"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Z)V
    .locals 2

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mraid onResize toOriginalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.MraidWeb"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->removeDownloadListener(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
