.class Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lccsancom/san/mads/banner/removeDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsancom/san/mads/banner/addDownloadListener;->pause()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;


# direct methods
.method constructor <init>(Lccsancom/san/mads/banner/addDownloadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDownloadingList(Lccsanandroid/view/View;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    new-instance v7, Lccsancom/san/mads/banner/unifiedDownload;

    invoke-static {v0}, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadingList(Lccsancom/san/mads/banner/addDownloadListener;)Lccsanandroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/banner/addDownloadListener;->addDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList;

    move-result-object v3

    .line 2
    invoke-static {}, Lccsansan/cz/unifiedDownload;->deleteDownItem()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {}, Lccsansan/cz/unifiedDownload;->IncentiveDownloadUtils()I

    move-result v6

    move-object v1, v7

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lccsancom/san/mads/banner/unifiedDownload;-><init>(Lccsanandroid/content/Context;Lccsanandroid/view/View;Lccsanandroid/view/View;II)V

    .line 3
    invoke-static {v0, v7}, Lccsancom/san/mads/banner/addDownloadListener;->IncentiveDownloadUtils(Lccsancom/san/mads/banner/addDownloadListener;Lccsancom/san/mads/banner/unifiedDownload;)Lccsancom/san/mads/banner/unifiedDownload;

    .line 5
    iget-object p1, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {p1}, Lccsancom/san/mads/banner/addDownloadListener;->getDownloadedRecordByUrl(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/unifiedDownload;

    move-result-object p1

    new-instance v0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;

    invoke-direct {v0, p0}, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList$unifiedDownload;-><init>(Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;)V

    invoke-virtual {p1, v0}, Lccsancom/san/mads/banner/unifiedDownload;->addDownloadListener(Lccsancom/san/mads/banner/unifiedDownload$unifiedDownload;)V

    return-void
.end method


# virtual methods
.method public IncentiveDownloadUtils(Lccsanandroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/banner/addDownloadListener;->removeDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/banner/addDownloadListener;->addDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;->IncentiveDownloadUtils(Lccsancom/san/mads/banner/getDownloadingList;)V

    .line 2
    invoke-direct {p0, p1}, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->getDownloadingList(Lccsanandroid/view/View;)V

    .line 3
    const-string p1, "Mads.BannerLoader"

    const-string v0, "#onAdBannerSuccess"

    invoke-static {p1, v0}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addDownloadListener(Lccsancom/san/ads/AdError;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-virtual {v0, p1}, Lccsancom/san/mads/banner/addDownloadListener;->removeDownloadListener(Lccsancom/san/ads/AdError;)V

    return-void
.end method

.method public getDownloadingList()V
    .locals 2

    .line 5
    iget-object v0, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v0}, Lccsancom/san/mads/banner/addDownloadListener;->removeDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;

    move-result-object v0

    iget-object v1, p0, Lccsancom/san/mads/banner/addDownloadListener$getDownloadingList;->removeDownloadListener:Lccsancom/san/mads/banner/addDownloadListener;

    invoke-static {v1}, Lccsancom/san/mads/banner/addDownloadListener;->addDownloadListener(Lccsancom/san/mads/banner/addDownloadListener;)Lccsancom/san/mads/banner/getDownloadingList;

    move-result-object v1

    invoke-interface {v0, v1}, Lccsancom/san/mads/banner/getDownloadingList$getDownloadingList;->unifiedDownload(Lccsancom/san/mads/banner/getDownloadingList;)V

    return-void
.end method
