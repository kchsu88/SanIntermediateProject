.class Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->getDownloadingList(Lccsanandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;


# direct methods
.method constructor <init>(Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public unifiedDownload()V
    .locals 2

    .line 1
    const-string v0, "Mads.BannerLoader"

    const-string v1, "#onVisibilityChanged show"

    invoke-static {v0, v1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/banner/addDownloadListener;->removeDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;

    iget-object v1, v1, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/banner/addDownloadListener;->addDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;->removeDownloadListener(Lccsancom/san/mads/banner/getDownloadingList;)V

    .line 3
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/banner/addDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/banner/addDownloadListener;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/di/IncentiveDownloadUtils;->removeDownloadListener(Lccsansan/dt/removeDownloadListener;)V

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/banner/addDownloadListener;->unifiedDownload(Lccsancom/san/mads/banner/addDownloadListener;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/bn/getDownloadingRecordByUrl;->getDownloadingList(Lccsansan/dt/removeDownloadListener;)V

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;->unifiedDownload:Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;

    iget-object v0, v0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingRecordByUrl(Lccsancom/san/mads/banner/addDownloadListener;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-static {v0}, Lccsansan/ck/deleteDownList;->IncentiveDownloadUtils(Lccsansan/dt/removeDownloadListener;)V

    return-void
.end method
