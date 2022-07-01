.class Lccsansan/dg/unifiedDownload$removeDownloadListener;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsansan/dd/getDownloadingList$removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lccsansan/dg/unifiedDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;


# direct methods
.method constructor <init>(Lccsansan/dg/unifiedDownload;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addDownloadListener(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    iget-object v1, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v1}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v1

    invoke-interface {v1}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v1

    mul-int p1, p1, v1

    div-int/lit8 p1, p1, 0x64

    invoke-interface {v0, p1}, Lccsansan/dg/addDownloadListener;->getDownloadingList(I)V

    return-void
.end method

.method public getDownloadingList(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->getDownloadingList(Lccsansan/dg/unifiedDownload;)Lccsansan/dd/getDownloadingList;

    move-result-object v0

    invoke-interface {v0}, Lccsansan/dd/getDownloadingList;->getDownloadStatusByUrl()I

    move-result v0

    if-le p1, v0, :cond_1

    if-lez v0, :cond_1

    move p1, v0

    .line 6
    :cond_1
    iget-object v1, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-virtual {v1}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v1}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lccsansan/dg/addDownloadListener;->unifiedDownload(II)V

    .line 8
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v0, p1}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v1}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lccsansan/dg/addDownloadListener;->removeDownloadListener(II)V

    :goto_0
    return-void
.end method

.method public unifiedDownload(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lccsansan/dg/unifiedDownload$removeDownloadListener;->IncentiveDownloadUtils:Lccsansan/dg/unifiedDownload;

    invoke-static {v0}, Lccsansan/dg/unifiedDownload;->IncentiveDownloadUtils(Lccsansan/dg/unifiedDownload;)Lccsansan/dg/addDownloadListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lccsansan/dg/addDownloadListener;->IncentiveDownloadUtils(I)V

    :cond_0
    return-void
.end method
