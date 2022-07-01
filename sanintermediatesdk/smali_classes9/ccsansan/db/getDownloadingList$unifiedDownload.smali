.class Lccsansan/db/getDownloadingList$unifiedDownload;
.super Lccsanandroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/db/getDownloadingList;->removeDownloadListener(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic addDownloadListener:Lccsansan/db/getDownloadingList;


# direct methods
.method constructor <init>(Lccsansan/db/getDownloadingList;Lccsanandroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/db/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/db/getDownloadingList;

    invoke-direct {p0, p2}, Lccsanandroid/os/Handler;-><init>(Lccsanandroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Lccsanandroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lccsansan/db/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/db/getDownloadingList;

    invoke-virtual {v0}, Lccsansan/db/getDownloadingList;->getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;

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

    iget-object v0, p0, Lccsansan/db/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/db/getDownloadingList;

    invoke-static {v0}, Lccsansan/db/getDownloadingList;->removeDownloadListener(Lccsansan/db/getDownloadingList;)Lccsansan/dt/removeDownloadListener;

    move-result-object v0

    invoke-virtual {v0}, Lccsansan/dt/removeDownloadListener;->getPackageNameByRecord()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Mads.BaseFullScreen"

    invoke-static {v0, p1}, Lccsansan/ch/IncentiveDownloadUtils;->unifiedDownload(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lccsansan/db/getDownloadingList$unifiedDownload;->addDownloadListener:Lccsansan/db/getDownloadingList;

    invoke-virtual {p1}, Lccsansan/db/getDownloadingList;->getDownloadingList()Lccsansan/db/IncentiveDownloadUtils;

    move-result-object p1

    invoke-interface {p1}, Lccsansan/db/IncentiveDownloadUtils;->removeDownloadListener()V

    :cond_1
    return-void
.end method
