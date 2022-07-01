.class Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/webview/getDownloadingList$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList(Ljava/lang/String;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

.field final synthetic unifiedDownload:Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/db/getDownloadingRecordByUrl;Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    iput-object p2, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;

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
    .locals 2

    .line 6
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    invoke-static {v0}, Lccsansan/db/getDownloadingRecordByUrl;->IncentiveDownloadUtils(Lccsansan/db/getDownloadingRecordByUrl;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClient shouldOverrideUrlLoading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", placement_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    invoke-virtual {v1}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreen.WebView"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    invoke-virtual {p1}, Lccsanandroid/view/View;->getContext()Lccsanandroid/content/Context;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lccsansan/db/getDownloadingList;->IncentiveDownloadUtils(Lccsanandroid/content/Context;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    invoke-virtual {p1}, Lccsansan/db/getDownloadingList;->getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    invoke-virtual {p1}, Lccsansan/db/getDownloadingList;->getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;

    move-result-object p1

    invoke-interface {p1}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public removeDownloadListener(ILjava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebViewClient onReceivedError  placement_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    invoke-virtual {v1}, Lccsansan/db/getDownloadingList;->addDownloadListener()Lccsansan/dt/removeDownloadListener;

    move-result-object v1

    invoke-virtual {v1}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " errorCode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " failingUrl :  "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FullScreen.WebView"

    invoke-static {v1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;

    new-instance v1, Lccsancom/san/ads/AdError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceivedError : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x3ec

    invoke-direct {v1, p2, p1}, Lccsancom/san/ads/AdError;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public unifiedDownload(Lccsanandroid/webkit/WebView;Ljava/lang/String;)V
    .locals 0

    .line 3
    iget-object p1, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->IncentiveDownloadUtils:Lccsansan/db/getDownloadingRecordByUrl;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lccsansan/db/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/db/getDownloadingRecordByUrl;Z)Z

    .line 4
    iget-object p1, p0, Lccsansan/db/getDownloadingRecordByUrl$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;

    invoke-interface {p1}, Lccsansan/db/getDownloadingRecordByUrl$unifiedDownload;->unifiedDownload()V

    .line 5
    const-string p1, "FullScreen.WebView"

    const-string p2, "Interstitial ad loaded."

    invoke-static {p1, p2}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
