.class Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/mraid/IncentiveDownloadUtils$getDownloadedRecordByUrl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/mraid/removeDownloadListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/mraid/removeDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils()V
    .locals 1

    .line 9
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingRecordByUrl()V

    return-void
.end method

.method public IncentiveDownloadUtils(Ljava/net/URI;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0, p1, p2}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Ljava/net/URI;Z)V

    return-void
.end method

.method public IncentiveDownloadUtils(ZLccsancom/san/mads/mraid/getDownloadingRecordByUrl;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0, p1, p2}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(ZLccsancom/san/mads/mraid/getDownloadingRecordByUrl;)V

    return-void
.end method

.method public addDownloadListener(IIIILccsansan/cx/unifiedDownload$unifiedDownload;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lccsancom/san/mads/mraid/addDownloadListener;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener(IIIILccsansan/cx/unifiedDownload$unifiedDownload;Z)V

    return-void
.end method

.method public addDownloadListener(Lccsancom/san/mads/mraid/getDownloadingList;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener(Lccsancom/san/mads/mraid/getDownloadingList;)V

    return-void
.end method

.method public addDownloadListener(Z)V
    .locals 1

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Z)V

    return-void
.end method

.method public addDownloadListener(Lccsanandroid/webkit/ConsoleMessage;)Z
    .locals 1

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsanandroid/webkit/ConsoleMessage;)Z

    move-result p1

    return p1
.end method

.method public getDownloadingList(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->addDownloadListener(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public removeDownloadListener(Ljava/net/URI;)V
    .locals 1

    .line 12
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Ljava/lang/String;)V

    return-void
.end method

.method public removeDownloadListener(Ljava/lang/String;)Z
    .locals 1

    .line 13
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->IncentiveDownloadUtils(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeDownloadListener(Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z
    .locals 1

    .line 6
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0, p1, p2}, Lccsancom/san/mads/mraid/removeDownloadListener;->IncentiveDownloadUtils(Ljava/lang/String;Lccsanandroid/webkit/JsResult;)Z

    move-result p1

    return p1
.end method

.method public unifiedDownload()V
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->IncentiveDownloadUtils()V

    :cond_0
    return-void
.end method

.method public unifiedDownload(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList()V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->removeDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/mraid/removeDownloadListener;->addDownloadListener(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsanandroid/widget/FrameLayout;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lccsancom/san/mads/mraid/removeDownloadListener$deleteDownItem;->IncentiveDownloadUtils(Lccsanandroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public unifiedDownload(Ljava/net/URI;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Ljava/lang/String;)V

    return-void
.end method

.method public unifiedDownload(Z)V
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->unifiedDownload(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/mraid/removeDownloadListener$unifiedDownload;->IncentiveDownloadUtils:Lccsancom/san/mads/mraid/removeDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/mraid/removeDownloadListener;->getDownloadingList(Lccsancom/san/mads/mraid/removeDownloadListener;)Lccsancom/san/mads/mraid/IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lccsancom/san/mads/mraid/IncentiveDownloadUtils;->removeDownloadListener(Z)V

    :cond_0
    return-void
.end method
