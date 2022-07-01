.class Lccsansan/cq/removeDownloadListener$addDownloadListener;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/cq/removeDownloadListener;->unifiedDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/cq/removeDownloadListener;


# direct methods
.method constructor <init>(Lccsansan/cq/removeDownloadListener;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/cq/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/cq/removeDownloadListener;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/cq/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/cq/removeDownloadListener;

    invoke-virtual {v0}, Lccsansan/cq/removeDownloadListener;->removeDownloadListener()Lccsancom/san/mads/banner/removeDownloadListener;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget p1, p1, Lccsanandroid/os/Message;->what:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "#Handler ad click, placement_id = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lccsansan/cq/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/cq/removeDownloadListener;

    invoke-static {v0}, Lccsansan/cq/removeDownloadListener;->IncentiveDownloadUtils(Lccsansan/cq/removeDownloadListener;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AbsBaseBanner"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lccsansan/cq/removeDownloadListener$addDownloadListener;->unifiedDownload:Lccsansan/cq/removeDownloadListener;

    invoke-virtual {p1}, Lccsansan/cq/removeDownloadListener;->removeDownloadListener()Lccsancom/san/mads/banner/removeDownloadListener;

    move-result-object p1

    invoke-interface {p1}, Lccsancom/san/mads/banner/removeDownloadListener;->getDownloadingList()V

    :cond_1
    return-void
.end method
