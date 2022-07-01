.class Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;
.super Lccsancom/san/ads/Task;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->onCheckedChanged(Lccsanandroid/widget/CompoundButton;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic unifiedDownload:Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;


# direct methods
.method constructor <init>(Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;

    invoke-direct {p0}, Lccsancom/san/ads/Task;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Ljava/lang/Exception;)V
    .locals 3

    .line 1
    invoke-static {}, Lccsansan/r/IncentiveDownloadUtils;->removeDownloadListener()Lccsansan/r/IncentiveDownloadUtils;

    move-result-object p1

    const-string v0, "operate_reserve"

    invoke-virtual {p1, v0}, Lccsansan/r/IncentiveDownloadUtils;->addDownloadListener(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/at/unifiedDownload;

    invoke-static {p1}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;

    iget-object p1, p1, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/at/unifiedDownload;

    invoke-static {p1}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object p1

    iget-object p1, p1, Lccsansan/aj/getDownloadingList;->deleteDownItem:Ljava/lang/String;

    iget-object v0, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/at/unifiedDownload;

    invoke-static {v0}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object v0

    const-string v1, "toastId"

    invoke-virtual {v0, v1}, Lccsansan/aj/getDownloadingList;->getDownloadingList(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;

    iget-object v1, v1, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->getDownloadingList:Lccsansan/at/unifiedDownload;

    invoke-static {v1}, Lccsansan/at/unifiedDownload;->unifiedDownload(Lccsansan/at/unifiedDownload;)Lccsansan/aj/getDownloadingList;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {p1, v0, v1, v2}, Lccsansan/aj/addDownloadListener;->getDownloadingList(Ljava/lang/String;Ljava/lang/String;Lccsansan/aj/getDownloadingList;I)V

    :cond_0
    return-void
.end method

.method public execute()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils$unifiedDownload;->unifiedDownload:Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;

    iget-object v0, v0, Lccsansan/at/unifiedDownload$IncentiveDownloadUtils;->unifiedDownload:Lccsansan/aj/getDownloadingList;

    const-string v1, "user_cancel"

    invoke-virtual {v0, v1}, Lccsansan/aj/getDownloadingList;->IncentiveDownloadUtils(Ljava/lang/String;)V

    return-void
.end method
