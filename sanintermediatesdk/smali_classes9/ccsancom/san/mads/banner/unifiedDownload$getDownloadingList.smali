.class Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsancom/san/mads/banner/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "getDownloadingList"
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;


# direct methods
.method constructor <init>(Lccsancom/san/mads/banner/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadingList(Lccsancom/san/mads/banner/unifiedDownload;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lccsancom/san/mads/banner/unifiedDownload;->removeDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;Z)Z

    .line 9
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->unifiedDownload(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v1}, Lccsancom/san/mads/banner/unifiedDownload;->removeDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;)Lccsanandroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v2}, Lccsancom/san/mads/banner/unifiedDownload;->addDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;)Lccsanandroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener(Lccsanandroid/view/View;Lccsanandroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->unifiedDownload(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload()Z

    move-result v0

    if-nez v0, :cond_1

    .line 12
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->unifiedDownload(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->removeDownloadListener()V

    .line 15
    :cond_1
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->unifiedDownload(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;

    move-result-object v0

    invoke-virtual {v0}, Lccsancom/san/mads/banner/unifiedDownload$IncentiveDownloadUtils;->IncentiveDownloadUtils()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 17
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->IncentiveDownloadUtils(Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;

    move-result-object v0

    invoke-interface {v0}, Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;->unifiedDownload()V

    .line 18
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lccsancom/san/mads/banner/unifiedDownload;->addDownloadListener(Lccsancom/san/mads/banner/unifiedDownload;Z)Z

    .line 24
    :cond_2
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/unifiedDownload;->getDownloadingList(Lccsancom/san/mads/banner/unifiedDownload;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 25
    iget-object v0, p0, Lccsancom/san/mads/banner/unifiedDownload$getDownloadingList;->IncentiveDownloadUtils:Lccsancom/san/mads/banner/unifiedDownload;

    invoke-virtual {v0}, Lccsancom/san/mads/banner/unifiedDownload;->IncentiveDownloadUtils()V

    :cond_3
    return-void
.end method
